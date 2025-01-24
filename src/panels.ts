import _ from "lodash";

import { formatDesc } from "./descriptions";
import { handleFunc } from "./functions";
import { getTypeName, registerPanelType } from "./gmod-types";

const DERMA_REGEX = /^D[A-Z]/;

export function handlePanel(pnl: Panel): undefined | string {
    let desc = formatDesc(pnl.description) + "\n";
    let name = getTypeName(pnl.name);
    let inherits = "";
    if (pnl.parent) {
        inherits = " : " + getTypeName(pnl.parent);
    }
    let def = `--- @meta\n\n--- @class ${name}${inherits}\n`;
    let lua = `local PANEL = {}\n`;
    // Derma panels are registered globally, for fun
    if (DERMA_REGEX.test(name)) {
        lua += `_G.${name} = PANEL;\n`;
    }

    let funcs = pnl.functions;
    if (funcs) {
        funcs = _.sortBy(funcs, "name");
        for (let func of funcs) {
            func.parent = "PANEL";
            let funcdata: string | undefined;
            try {
                funcdata = handleFunc(func, ":");
            } catch (e) {
                console.error(
                    "Problem while getting func definition for %s:%s(): %s",
                    pnl.name,
                    func.name,
                    e,
                );
                throw e;
            }
            if (funcdata) {
                lua += funcdata + "\n";
            }
        }
    }
    return def + desc + lua;
}

export function preProcessPanels(panels: Panel[]): Panel[] {
    for (let panel of panels) {
        if (!DERMA_REGEX.test(panel.name)) {
            registerPanelType(panel.name);
        }
    }
    return _.sortBy(panels, "name");
}
