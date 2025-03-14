import { formatDesc } from "./descriptions";

function handleValue(value: EnumValue): string {
    let ret = "";

    if (value.description) {
        ret += formatDesc(value.description);
        ret += "\n";
    }

    ret += "_G." + value.name + " = " + JSON.stringify(value.value);

    return ret;
}

export function handleEnum(enumData: Enum) {
    let lua = "--- @meta\n\n";

    let fields = enumData.fields.filter((f) => f.name);

    lua += fields.map(handleValue).join("\n");
    lua += "\n\n";

    if (enumData.description) {
        lua += formatDesc(enumData.description);
        lua += "\n";
    }
    lua += "--- @alias E" + enumData.name + " ";
    lua += fields.map((f) => "`" + f.name + "`").join("|");
    lua += "\n";

    return lua;
}
