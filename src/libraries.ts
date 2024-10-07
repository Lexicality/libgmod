import { formatDesc } from "./descriptions";

export function handleLib(lib: FuncContainer): string {
    let desc = "";
    if (lib.description) {
        desc = formatDesc(lib.description) + "\n";
    }
    let lua = `_G.${lib.name} = {}\n`;
    return desc + lua;
}
