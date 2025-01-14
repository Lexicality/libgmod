import _ from "lodash";

import { formatDesc } from "./descriptions";
import { handleFunc } from "./functions";
import { getTypeName } from "./gmod-types";
import { trimArg, unpaginate } from "./utils";

const GLOBALS = new Set(["ENT", "GM", "WEAPON", "TOOL"]);
const BASES: { [t: string]: string } = {
    EFFECT: "GEntity",
    ENT: "GEntity",
    NEXTBOT: "GEntity",
    SWEP: "GWeapon",
    TOOL: "GWeapon",
};

function handleField(field: Field): string {
    let ret = `--- @field ${field.name}`;
    if (field.default) {
        ret += "?";
    }
    ret += " " + getTypeName(unpaginate(field.type));
    if (field.description) {
        ret += " @" + trimArg(unpaginate(field.description));
    }
    return ret;
}

export function handleStruct(struct: Struct, hook?: FuncContainer): string {
    let desc = "--- @meta\n\n";

    let description = struct.description ?? hook?.description;

    if (description) {
        desc += formatDesc(description) + "\n";
    }
    let name = struct.name;
    desc += `--- @class S${name}`;
    if (name in BASES) {
        desc += ` : ${BASES[name]}`;
    }
    desc += "\n";

    desc += struct.fields.map(handleField).join("\n") + "\n";

    if (hook == null) {
        return desc;
    }

    if (GLOBALS.has(name)) {
        desc += "_G.";
    } else {
        desc += "local ";
    }
    desc += name + " = {}\n\n";

    let funcs = hook.functions;
    funcs = _.sortBy(funcs, "name");
    for (let func of funcs) {
        let funcdata: string | undefined;
        try {
            funcdata = handleFunc(func, ":");
        } catch (e) {
            console.error(
                "Problem while getting func definition for %s:%s(): %s",
                hook.name,
                func.name,
                e,
            );
            throw e;
        }
        if (funcdata) {
            desc += funcdata + "\n";
        }
    }

    return desc;
}
