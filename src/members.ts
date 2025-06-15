import { formatDesc } from "./descriptions";
import { INTERNAL_REGEX } from "./functions";
import { getTypeName } from "./gmod-types";
import { trimArg, unpaginate } from "./utils";


export function handleMember(member: Member): undefined | string {
    if (member.description?.match(INTERNAL_REGEX)) {
        // Hide internal functions
        return;
    } else if (!member.realms.some((realm) => realm != "menu")) {
        // Hide menu-only functions
        return;
    }

    let lua = "";
    if (member.description) {
        lua = formatDesc(member.description) + "\n";
    }
    let type = getTypeName(member.type);
    // We need to set the member to *something*, but given we don't know what
    // the value is it's going to have to be nil which is going to cause type
    // errors unless we do this silly thing.
    let tomfoolery = `nil --[[@as ${type}]]`;

    lua += `--- @type ${type}\n`;
    lua += getTypeName(member.parent) + "." + member.name + " = " + tomfoolery + "\n";

    return lua;
}
