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

export function handleFunc(func: Func, sepr: string): undefined | string {
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
    let overloads = [func, ...(func.overloads ?? [])];
    let funcret = "";
    for (let overload of overloads) {
        let args = getArgDocs(overload);
        let ret = getRetDoc(overload);
        let def = getFuncDef(func, overload, sepr);
        funcret += desc + args + ret + def;
    }
    return funcret;
}

function getArgName(arg: FuncArg): string {
    let name = arg.name ?? "arg";
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

function getFuncDef(func: Func, funcInstance: FuncInstance, sepr: string) {
    let args = "";
    if (funcInstance.arguments) {
        args = funcInstance.arguments.map(getArgDef).join(", ");
    }
    let prefix = getTypeName(func.parent) + sepr;
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
    if (arg.default != null || forceOptional) {
        name += "?";
    }
    return `--- @param ${name} ${type} ${desc}`;
}

function getArgDocs(func: FuncInstance): string {
    if (!func.arguments) {
        return "";
    }
    let forceOptional = false;
    return (
        func.arguments
            .map((arg) => {
                let ret = getArgDoc(arg, forceOptional);
                // Once we've seen a default argument, all following ones
                // need to be optional
                if (arg.default != null) {
                    forceOptional = true;
                }
                return ret;
            })
            // Some arguments might be deleted because they're bogus
            .filter((l) => l)
            .join("\n") + "\n"
    );
}

function getRetDoc(func: FuncInstance): string {
    if (!func.returnValues || func.returnValues.length == 0) {
        return "";
    }
    let rets = [];
    for (let ret of func.returnValues) {
        let retType = getTypeName(ret.type);
        let desc = "";
        if (ret.description) {
            desc = "@" + trimArg(unpaginate(ret.description));
        }
        rets.push(`--- @return ${retType} ${desc}`);
    }
    return rets.join("\n") + "\n";
}
