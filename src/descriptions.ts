import { decodeHTML } from "entities";

import { unpaginate } from "./utils";

// Time to parse XML with regular expressions
const WARNINGS_REGEX =
    /<(note|warning|deprecated|bug|validate|internal)>((?:.|\n)*?)<\/\1>/g;
const USELESS_REGEX = /<br>|<pagelist.+?\/pagelist>|<img.+?>/g;
const RENDER_REGEX =
    /<rendercontext hook="(true|false)" type="(\dD)"><\/rendercontext>/;
const KEY_REGEX = /<key>(.+?)<\/key>/g;
const BUG_REGEX =
    /<bug (issue|request|pull)="(.+?)">(.+?)(\n(?:.|\n)*?)?<\/bug>/g;
const EMJOI = {
    note: "ℹ",
    warning: "⚠",
    deprecated: "🛑",
    bug: "🦟",
    validate: "⁉",
    internal: "🚷",
    "3D": "🧱",
    "2D": "🟥",
};

const BUG_URLS = {
    issue: "https://github.com/Facepunch/garrysmod-issues/issues/",
    request: "https://github.com/Facepunch/garrysmod-requests/issues/",
    pull: "https://github.com/Facepunch/garrysmod/pull/",
};

function linkBugs(text: string): string {
    return text.replace(
        BUG_REGEX,
        (
            _,
            type: "pull" | "issue" | "request",
            issue: string,
            text: string,
            extra?: string,
        ) =>
            `<bug>[${text}](${BUG_URLS[type]}${issue})${
                extra != null ? "\n" + extra : ""
            }</bug>`,
    );
}

function handleRenderContext(text: string): string {
    return text.replace(
        RENDER_REGEX,
        (_, hook: "true" | "false", type: "3D" | "2D") =>
            `\n${EMJOI[type]} **NOTE**: ${
                hook == "true" ? "Provides" : "Requires"
            } a ${type} rendering context\n`,
    );
}

function formatWarnings(text: string): string {
    return text.replace(
        WARNINGS_REGEX,
        (match, type: keyof typeof EMJOI, text: string) => {
            let deprecated = "";
            if (type == "deprecated") {
                deprecated = "@deprecated\n";
            }
            return `\n${deprecated}${EMJOI[type]} **${type.toUpperCase()}**: ${text.trim()}\n`;
        },
    );
}

export function formatDesc(desc: string): string {
    return unpaginate(handleRenderContext(formatWarnings(linkBugs(desc))))
        .replace(USELESS_REGEX, "\n")
        .replace(KEY_REGEX, "`$1`")
        .replace(/\n+/g, "\n")
        .split("\n")
        .filter((line) => line)
        .map((line) => "--- " + decodeHTML(line) + "  ")
        .join("\n");
}
