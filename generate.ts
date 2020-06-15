import _ = require("lodash");
import libfs = require("fs");
const fs = libfs.promises;

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

interface FuncArg {
    name: string;
    type: string;
    description: string;
    default?: string;
}

type FuncRet = {
    type: string;
    description: string;
}[];

interface Func {
    name: string;
    parent: string;
    realms: ("menu" | "client" | "server")[];
    description: string;
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
        prefix = func.parent + sepr;
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
    let desc = trimArg(unpaginate(arg.description));
    if (arg.type == "vararg") {
        return `--- @vararg any @${desc}`;
    }
    return `--- @param ${arg.name} ${arg.type} @${desc}`;
}

function getRetDoc(retvals: FuncRet): string {
    if (retvals.length == 1) {
        let ret = retvals[0];
        let desc = ret.description ? trimArg(unpaginate(ret.description)) : "";
        return `--- @return ${ret.type} @${desc}`;
    }
    let types = retvals.map((r) => r.type).join(", ");
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
    if (func.description.match(INTERNAL_REGEX)) {
        // Hide internal functions
        return;
    } else if (!func.realms.some((realm) => realm != "menu")) {
        // Hide menu-only functions
        return;
    }
    let desc = formatDesc(func.description) + "\n";
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

async function doGlobals(): Promise<void> {
    let data: Func[] = JSON.parse(
        await fs.readFile("output/global-functions.json", { encoding: "utf-8" })
    );
    data = _.sortBy(data, "name");
    await fs.truncate("globals.lua");
    for (let func of data) {
        let funcdata = handleFunc(func);
        if (funcdata) {
            await fs.appendFile("globals.lua", funcdata + "\n", {
                encoding: "utf-8",
            });
        }
    }
}

function main() {
    console.log("hello");
    let p = doGlobals();
    p.then(
        () => console.log("woop"),
        (err) => console.error(err)
    );
}

main();
