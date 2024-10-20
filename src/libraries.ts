import _ from "lodash";

import { formatDesc } from "./descriptions";
import { handleFunc } from "./functions";

export function handleLib(lib: FuncContainer): string {
    let desc = "--- @meta\n\n";
    if (lib.description) {
        desc = formatDesc(lib.description) + "\n";
    }
    let lua = `_G.${lib.name} = {}\n`;

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
