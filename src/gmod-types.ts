const TYPE_REPLACEMENTS = new Map<string, string>([
    ["vector", "GVector"],
    ["file_class", "GFile"],
    ["String", "string"],
    ["Boolean", "boolean"],
    ["color", "Color"],
    // Terrible hack until I make enums nice
    ["Enums/STENCILCOMPARISONFUNCTION", "ESTENCILCOMPARISONFUNCTION"],
    ["Enums/STENCILOPERATION", "ESTENCILOPERATION"],
]);
const JANKY_WIKI_CLASSES = new Map<string, string>([
    ["ENTITY", "Entity"],
    ["WEAPON", "Weapon"],
]);

const TABLE_REGEX = /^table<([^,]+)(,\s*([^,]+))?>$/;
const STRUCT_REGEX = /^table\{([^,]+)\}$/;
const ENUM_REGEX = /^number\{(.+)\}$/;

let GMOD_TYPES: { [key: string]: string } = {};
let PANEL_TYPES: { [key: string]: string } = {};

export function getTypeName(ret: string): string {
    let tableMatch = ret.match(TABLE_REGEX);
    let enumMatch = ret.match(ENUM_REGEX);
    let structMatch = ret.match(STRUCT_REGEX);
    if (tableMatch) {
        if (tableMatch[2]) {
            let key = tableMatch[1];
            let value = tableMatch[3];
            return `{[${getTypeName(key)}]: ${getTypeName(value)}}`;
        } else {
            let value = tableMatch[1];
            return getTypeName(value) + "[]";
        }
    } else if (enumMatch) {
        return "E" + enumMatch[1];
    } else if (structMatch) {
        return "S" + structMatch[1];
    } else if (ret.includes("|")) {
        let union = ret.split("|").map((value) => getTypeName(value));

        // Workaround for LuaLS/lua-language-server#3141
        if (
            union.some((v) => v.startsWith("E") && !v.endsWith("[]")) &&
            union.some((v) => v.endsWith("[]"))
        ) {
            // Honestly I don't know what the best option is here, but this one
            // makes the convar functions behave correctly:
            return union.find((v) => v.startsWith("E"))!;
        }

        return union.join("|");
    } else if (ret == "vararg") {
        // TODO: I don't think emmylua lets you mark returns as arbitrary varargs
        return "any";
    } else if (ret == "Global") {
        // I can't think of a better way of handling this rn
        return "_G";
    } else if (TYPE_REPLACEMENTS.has(ret)) {
        ret = TYPE_REPLACEMENTS.get(ret)!;
    }
    // Get rid of any creative type names
    ret = ret.replace(/[^\w.]/g, "_");
    return GMOD_TYPES[ret] ?? PANEL_TYPES[ret] ?? ret;
}

export function registerGModType(name: string): string {
    let fixedName = JANKY_WIKI_CLASSES.get(name) ?? name;
    GMOD_TYPES[name] = "G" + fixedName;
    return fixedName;
}

export function registerPanelType(name: string) {
    PANEL_TYPES[name] = "V" + name;
}
