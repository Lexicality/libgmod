import _ from "lodash";

import { formatDesc } from "./descriptions";
import { handleFunc } from "./functions";
import { handleMember } from "./members";

export function handleLib(lib: FuncContainer): string {
    let desc = "--- @meta\n\n";
    if (lib.description) {
        desc += formatDesc(lib.description) + "\n";
    }
    let lua = `_G.${lib.name} = {}\n`;

    let fields = lib.fields ?? [];
    fields = _.sortBy(fields, "name");
    for (let field of fields) {
        let fieldData: string | undefined;
        try {
            fieldData = handleMember(field);
        } catch (e) {
            console.error(
                "Problem while getting field definition for %s.%s(): %s",
                lib.name,
                field.name,
                e,
            );
            throw e;
        }
        if (fieldData) {
            lua += fieldData + "\n";
        }
    }


    let funcs = lib.functions;
    funcs = _.sortBy(funcs, "name");
    for (let func of funcs) {
        let funcdata: string | undefined;
        try {
            funcdata = handleFunc(func, ".");
        } catch (e) {
            console.error(
                "Problem while getting func definition for %s.%s(): %s",
                lib.name,
                func.name,
                e,
            );
            throw e;
        }
        if (funcdata) {
            lua += funcdata + "\n";
        }
    }
    return desc + lua;
}
