import { formatDesc } from "./descriptions";
import { getTypeName } from "./gmod-types";
import { trimArg, unpaginate } from "./utils";

const INTERNAL_REGEX = /<internal>/;

const KEYWORD_REPLACEMENTS = new Map<string | RegExp, string>([
    [/^function$/, "func"],
    [/^end$/, "end_"],
    [/^until$/, "until_"],
    [/\//g, "_or_"],
    [/[^\w.]/g, "_"],
]);

export function handleFunc(func: Func, sepr?: string): undefined | string {
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
    let seenArgs = new Set<string>();
    let forceOptional = false;
    let args = "";
    if (func.arguments) {
        args =
            func.arguments
                .filter((arg) => {
                    if (seenArgs.has(arg.name)) {
                        return false;
                    }
                    seenArgs.add(arg.name);
                    // Throwing this in here because I can't think of a better place
                    if (arg.default) {
                        forceOptional = true;
                    }
                    return true;
                })
                .map((arg) => getArgDoc(arg, forceOptional))
                // Some arguments might be deleted because they're bogus
                .filter((l) => l)
                .join("\n") + "\n";
    }
    let ret = "";
    if (func.returnValues && func.returnValues.length > 0) {
        ret = getRetDoc(func.returnValues) + "\n";
    }
    let def = getFuncDef(func, sepr);
    return desc + args + ret + def;
}

function getArgName(arg: FuncArg): string {
    let name = arg.name;
    for (let [find, replace] of KEYWORD_REPLACEMENTS) {
        name = name.replace(find, replace);
    }
    if (name == "") {
        name = "arg";
    }
    return name;
}

function getArgDef(arg: FuncArg): string {
    if (arg.type == "vararg") {
        return "...";
    }
    return getArgName(arg);
}

function getFuncDef(func: Func, sepr?: string) {
    let seenArgs = new Set<string>();
    let args = "";
    if (func.arguments) {
        args = func.arguments
            .filter((arg) => {
                if (seenArgs.has(arg.name)) {
                    return false;
                }
                seenArgs.add(arg.name);
                return true;
            })
            .map(getArgDef)
            .join(", ");
    }
    let prefix = "";
    if (sepr) {
        prefix = getTypeName(func.parent) + sepr;
    }
    return `function ${prefix}${func.name}(${args})\nend\n`;
}

function getArgDoc(arg: FuncArg, forceOptional: boolean): string {
    let desc = "";
    if (arg.description) {
        desc = "@" + trimArg(unpaginate(arg.description));
    }
    let type = getTypeName(arg.type);
    if (arg.type == "vararg" || arg.name == "...") {
        return `--- @vararg ${type} ${desc}`;
    }
    let name = getArgName(arg);
    if (arg.default || forceOptional) {
        name += "?";
    }
    return `--- @param ${name} ${type} ${desc}`;
}

function getRetDoc(retvals: FuncRet): string {
    let rets = [];
    for (let ret of retvals) {
        let retType = getTypeName(ret.type);
        let desc = "";
        if (ret.description) {
            desc = "@" + trimArg(unpaginate(ret.description));
        }
        rets.push(`--- @return ${retType} ${desc}`);
    }
    return rets.join("\n");
}
