import _ from "lodash";

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

    let fields = enumData.fields;

    lua += fields.map(handleValue).join("\n");
    lua += "\n\n";

    if (enumData.description) {
        lua += formatDesc(enumData.description);
        lua += "\n";
    }
    lua += "--- @alias E" + enumData.name + " ";
    lua += (enumData.extraFields ?? fields)
        .map((f) => "`" + f.name + "`")
        .join("|");
    lua += "\n";

    return lua;
}

const BUTTON_ENUMS = new Set(["BUTTON_CODE", "KEY", "MOUSE", "JOYSTICK"]);

export function preProcessEnums(enums: Enum[]): Enum[] {
    let buttonFields: EnumValue[] = [];
    let buttonEnum;
    for (let enumData of enums) {
        let name = enumData.name;
        let fields = enumData.fields.filter((f) => !!f.name);
        enumData.fields = fields;
        if (BUTTON_ENUMS.has(name)) {
            buttonFields = buttonFields.concat(fields);
        }
        if (name == "BUTTON_CODE") {
            buttonEnum = enumData;
        }
    }
    buttonEnum!.extraFields = buttonFields;
    return _.sortBy(enums, "name");
}
