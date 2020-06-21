import _ = require("lodash");
import path = require("path");
import libfs = require("fs");
import { extractTables, hasWikiTable, WikiTable } from "./wiki-table";
const fs = libfs.promises;
import mkdirp = require("mkdirp");
import { table } from "console";
import { stringify } from "querystring";

const LUA_TYPES = [
    "any",
    "boolean",
    "function",
    "nil",
    "number",
    "string",
    "table",
    "thread",
    "userdata",
    "vararg",
];

// urgh
const ENTITY_CHILDREN = [
    //
    "CSEnt",
    "NPC",
    "Player",
    "Vehicle",
    "Weapon",
];

let GMOD_TYPES: { [key: string]: string } = {};

function getTypeName(ret: string): string {
    return GMOD_TYPES[ret] ?? ret;
}

interface FuncArg {
    name: string;
    type: string;
    description?: string;
    default?: string;
}

type FuncRet = {
    type: string;
    description?: string;
}[];

interface Func {
    name: string;
    parent: string;
    realms: ("menu" | "client" | "server")[];
    description?: string;
    arguments?: FuncArg[];
    returnValues?: FuncRet;
}

// Libs, classes etc
interface FuncContainer {
    name: string;
    description?: string;
    functions: Func[];
}

// Time to parse XML with regular expressions
const INTERNAL_REGEX = /<internal>/;
const UNWANTED_REGEX = /<(note|warning)>.+?<\/(note|warning)>/g;
const PAGE_REGEX = /<page>(.+?)<\/page>/g;
const ARG_REGEX = /^(.+?)(\.\s|\n|$)/;
const BUG_REGEX = /<bug issue="(.+?)">(.+?)<\/bug>/g;

function trimArg(text: string): string {
    let match = text.match(ARG_REGEX);
    if (match) {
        text = match[1];
    }
    return text.substring(0, 140);
}

function unpaginate(text: string): string {
    return text.replace(PAGE_REGEX, "$1");
}

function linkBugs(text: string): string {
    return text.replace(
        BUG_REGEX,
        (_, issue, text) =>
            `\n* **BUG**: [${text}](https://github.com/Facepunch/garrysmod-issues/issues/${issue})\n`
    );
}

function getArgDef(arg: FuncArg): string {
    if (arg.type == "vararg") {
        return "...";
    }
    return arg.name;
}

function getFuncDef(func: Func, sepr?: string) {
    let args = "";
    if (func.arguments) {
        args = func.arguments.map(getArgDef).join(", ");
    }
    let prefix = "";
    if (sepr) {
        prefix = getTypeName(func.parent) + sepr;
    }
    return `function ${prefix}${func.name}(${args})\nend\n`;
}

function* matchAll(str: string, regex: RegExp) {
    let match: RegExpExecArray | null;
    while ((match = regex.exec(str)) != null) {
        yield match;
    }
}

function getArgDoc(arg: FuncArg): string {
    let desc = "";
    if (arg.description) {
        desc = "@" + trimArg(unpaginate(arg.description));
    }
    if (arg.type == "vararg") {
        return `--- @vararg any ${desc}`;
    }
    return `--- @param ${arg.name} ${getTypeName(arg.type)} ${desc}`;
}

function getRetDoc(retvals: FuncRet): string {
    if (retvals.length == 1) {
        let ret = retvals[0];
        let retType = getTypeName(ret.type);
        let desc = "";
        if (ret.description) {
            desc = "@" + trimArg(unpaginate(ret.description));
        }
        return `--- @return ${retType} ${desc}`;
    }
    let types = retvals.map((r) => getTypeName(r.type)).join(", ");
    return `--- @return ${types}`;
}

function formatDesc(desc: string): string {
    return unpaginate(linkBugs(desc))
        .replace(UNWANTED_REGEX, "")
        .replace(/\n+/g, "\n")
        .split("\n")
        .filter((line) => line)
        .map((line) => "--- " + line + "  ")
        .join("\n");
}

function handleFunc(func: Func, sepr?: string): undefined | string {
    if (func.description?.match(INTERNAL_REGEX)) {
        // Hide internal functions
        return;
    } else if (!func.realms.some((realm) => realm != "menu")) {
        // Hide menu-only functions
        return;
    }
    let desc = "";
    if (func.description) {
        desc = formatDesc(func.description) + "\n";
    }
    let args = "";
    if (func.arguments) {
        args = func.arguments.map(getArgDoc).join("\n") + "\n";
    }
    let ret = "";
    if (func.returnValues && func.returnValues.length > 0) {
        ret = getRetDoc(func.returnValues) + "\n";
    }
    let def = getFuncDef(func, sepr);
    return desc + args + ret + def;
}

// This entire function relies on everything being like what it looked like when
// I wrote it, so it's v fragile.
function handleFieldDefinitons(tabs: WikiTable[]): undefined | string {
    let tab = tabs.find(
        (tab) =>
            tab.headers.length == 3 &&
            tab.headers[0].toLowerCase() == "type" &&
            tab.headers[1].toLowerCase() == "name" &&
            tab.headers[2].toLowerCase() == "description"
    );
    if (!tab) {
        return;
    }
    let fields: string[] = [];
    for (let [type, name, desc] of tab) {
        let names = name.split(" or ");
        type = getTypeName(unpaginate(type));
        desc = trimArg(unpaginate(desc));
        // goddamnit angles
        let seen = new Set<string>();
        for (let name of names) {
            name = name.replace(/\W/g, "");
            if (name.match(/^\d*$/)) {
                continue;
            } else if (seen.has(name)) {
                continue;
            }
            seen.add(name);
            fields.push(`--- @field ${name} ${type} @${desc}`);
        }
    }
    return fields.join("\n");
}

function handleClass(cls: FuncContainer): string {
    let desc = "";
    if (cls.description) {
        desc = cls.description;
        let tabs: undefined | WikiTable[];
        if (hasWikiTable(desc)) {
            [desc, tabs] = extractTables(desc);
        }
        desc = formatDesc(desc) + "\n";
        if (tabs) {
            let fields = handleFieldDefinitons(tabs);
            if (fields) {
                desc += fields + "\n";
            }
        }
    }
    let name = getTypeName(cls.name);
    let inherits = "";
    if (ENTITY_CHILDREN.includes(cls.name)) {
        inherits = " : " + getTypeName("Entity");
    }
    let def = `--- @class ${name}${inherits}\n`;
    let lua = `local ${name} = {}\n`;
    return def + desc + lua;
}

async function doGlobals(): Promise<void> {
    let data: Func[] = JSON.parse(
        await fs.readFile("output/global-functions.json", "utf-8")
    );
    data = _.sortBy(data, "name");
    await fs.writeFile("globals.lua", "", "utf-8");
    for (let func of data) {
        let funcdata: string | undefined;
        try {
            funcdata = handleFunc(func);
        } catch (e) {
            console.error(
                "Problem while getting func definition for _G.%s(): %s",
                func.name,
                e
            );
            throw e;
        }
        if (funcdata) {
            await fs.appendFile("globals.lua", funcdata + "\n", "utf-8");
        }
    }
    console.log("Done globals!");
}

async function getClasses(): Promise<FuncContainer[]> {
    let data: FuncContainer[] = JSON.parse(
        await fs.readFile("output/classes.json", "utf-8")
    );
    return data;
}

async function doClasses(data: FuncContainer[]): Promise<void> {
    data = _.sortBy(data, "name");
    await mkdirp("classes");
    for (let cls of data) {
        let classdata: string;
        try {
            classdata = handleClass(cls);
        } catch (e) {
            console.error(
                "Problem while getting class definition for %s: %s",
                cls.name,
                e
            );
            throw e;
        }

        let filename = path.join("classes", `${cls.name}.lua`);
        await fs.writeFile(filename, classdata);

        let funcs = cls.functions;
        funcs = _.sortBy(funcs, "name");
        for (let func of funcs) {
            let funcdata: string | undefined;
            try {
                funcdata = handleFunc(func, ":");
            } catch (e) {
                console.error(
                    "Problem while getting func definition for %s:%s(): %s",
                    cls.name,
                    func.name,
                    e
                );
                throw e;
            }
            if (funcdata) {
                await fs.appendFile(filename, funcdata + "\n", "utf-8");
            }
        }
        console.log("Done %s!", cls.name);
    }
}

async function main() {
    console.log("hello");

    try {
        let classes = await getClasses();
        // I'm not entirely sure what EmmyLua does when you have a class and a
        // function with the same name, so don't have that problem.
        for (let cls of classes) {
            GMOD_TYPES[cls.name] = "G" + cls.name;
        }

        await Promise.all([
            doGlobals(),
            //
            doClasses(classes),
        ]);
        console.log("woop");
    } catch (e) {
        console.error(e);
    }
}

main();