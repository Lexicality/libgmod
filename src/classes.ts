import _ from "lodash";

import { formatDesc } from "./descriptions";
import { handleFunc } from "./functions";
import { getTypeName } from "./gmod-types";
import { trimArg, unpaginate } from "./utils";
import { extractTables, hasWikiTable, WikiTable } from "./wiki-table";

// urgh
const ENTITY_CHILDREN = [
    //
    "CSEnt",
    "NPC",
    "Player",
    "Vehicle",
    "Weapon",
];

// This entire function relies on everything being like what it looked like when
// I wrote it, so it's v fragile.
function handleFieldDefinitons(tabs: WikiTable[]): undefined | string {
    let tab = tabs.find(
        (tab) =>
            tab.headers.length == 3 &&
            tab.headers[0].toLowerCase() == "type" &&
            tab.headers[1].toLowerCase() == "name" &&
            tab.headers[2].toLowerCase() == "description",
    );
    if (!tab) {
        return;
    }
    let fields: string[] = [];
    for (let [type, name, desc] of tab) {
        let names = name.split(" or ");
        type = getTypeName(unpaginate(type));
        desc = trimArg(unpaginate(desc));
        // goddamnit angles
        let seen = new Set<string>();
        for (let name of names) {
            name = name.replace(/\W/g, "");
            if (name.match(/^\d*$/)) {
                continue;
            } else if (seen.has(name)) {
                continue;
            }
            seen.add(name);
            fields.push(`--- @field ${name} ${type} @${desc}`);
        }
    }
    return fields.join("\n");
}

export function handleClass(cls: FuncContainer): string {
    let desc = "";
    if (cls.description) {
        desc = cls.description;
        let tabs: undefined | WikiTable[];
        if (hasWikiTable(desc)) {
            [desc, tabs] = extractTables(desc);
        }
        desc = formatDesc(desc) + "\n";
        if (tabs) {
            let fields = handleFieldDefinitons(tabs);
            if (fields) {
                desc += fields + "\n";
            }
        }
    }
    let name = getTypeName(cls.name);
    let inherits = "";
    if (ENTITY_CHILDREN.includes(cls.name)) {
        inherits = " : " + getTypeName("Entity");
    }
    let def = `--- @class ${name}${inherits}\n`;
    let lua = `local ${name} = {}\n`;

    let funcs = cls.functions;
    funcs = _.sortBy(funcs, "name");
    for (let func of funcs) {
        let funcdata: string | undefined;
        try {
            funcdata = handleFunc(func, ":");
        } catch (e) {
            console.error(
                "Problem while getting func definition for %s:%s(): %s",
                cls.name,
                func.name,
                e,
            );
            throw e;
        }
        if (funcdata) {
            lua += funcdata + "\n";
        }
    }
    return def + desc + lua;
}
