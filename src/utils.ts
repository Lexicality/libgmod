const PAGE_REGEX = /<page( text="(.+?)")?>(.+?)<\/page>/g;
const ARG_REGEX = /^(.+?)(\.\s|\n|$)/;

export function trimArg(text: string): string {
    let match = text.match(ARG_REGEX);
    if (match) {
        text = match[1];
    }
    return text.substring(0, 140);
}

export function unpaginate(text: string): string {
    return text.replace(PAGE_REGEX, (_1, _2, title, text) => title ?? text);
}
