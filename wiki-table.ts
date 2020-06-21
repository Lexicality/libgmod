import { head } from "lodash";

// Every table has to have a header line
const TABLE_DETECT = /^[|\- ]*- \| -[|\- ]*$/gm;
// This detects every line or set of lines with ` | ` in it.
// I'm sure this could never have bad false positives.
const MATCH_ENTIRE_TABLE = /^(\|?[^\n|]+ \| ([^\n]+)+(\n|$))+/gm;

export function hasWikiTable(text: string): boolean {
    return text.match(TABLE_DETECT) != null;
}

export interface WikiTable extends Array<string[]> {
    headers: string[];
}

function getRow(raw: string): string[] {
    return raw
        .split("|")
        .map((f) => f.trim())
        .filter((f) => f);
}

export function extractTables(text: string): [string, WikiTable[]] {
    let tables: WikiTable[] = [];
    text = text.replace(MATCH_ENTIRE_TABLE, (match) => {
        let rows = match
            .split("\n")
            .map((r) => r.trim())
            .filter((r) => r);
        let headers = getRow(rows[0]);
        // Get rid of the headers
        rows.shift();
        // Get rid of the table line
        rows.shift();
        let table: WikiTable = rows.map(getRow) as any;
        table.headers = headers;
        tables.push(table);
        return "";
    });
    return [text, tables];
}
