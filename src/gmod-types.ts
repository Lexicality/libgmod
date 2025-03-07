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

let GMOD_TYPES: { [key: string]: string } = {};
let PANEL_TYPES: { [key: string]: string } = {};

export function getTypeName(ret: string): string {
    if (ret == "vararg") {
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
