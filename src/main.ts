import fs from "node:fs/promises";
import path from "node:path";

import _ from "lodash";

import { handleClass, preProcessClasses } from "./classes";
import { handleFunc } from "./functions";
import { handleLib } from "./libraries";
import { handleStruct } from "./structs";
import { handlePanel, preProcessPanels } from "./panels";

async function doGlobals(): Promise<void> {
    let data: Func[] = JSON.parse(
        await fs.readFile("output/global-functions.json", "utf-8"),
    );
    data = _.sortBy(data, "name");
    let lua = "--- @meta\n\n";
    for (let func of data) {
        let funcdata: string | undefined;
        try {
            funcdata = handleFunc(func, ".");
        } catch (e) {
            console.error(
                "Problem while getting func definition for _G.%s(): %s",
                func.name,
                e,
            );
            throw e;
        }
        if (funcdata) {
            lua += funcdata + "\n";
        }
    }
    await fs.writeFile("globals.lua", lua.trimEnd() + "\n", "utf-8");
    console.log("Done globals!");
}

async function doLibs(): Promise<void> {
    let data: FuncContainer[] = JSON.parse(
        await fs.readFile("output/libraries.json", "utf-8"),
    );
    data = _.sortBy(data, "name");
    await fs.mkdir("libraries", { recursive: true });
    for (let lib of data) {
        let libdata: string;
        try {
            libdata = handleLib(lib);
        } catch (e) {
            console.error(
                "Problem while getting library definition for %s: %s",
                lib.name,
                e,
            );
            throw e;
        }

        let filename = path.join("libraries", `${lib.name}.lua`);
        await fs.writeFile(filename, libdata.trimEnd() + "\n");
        console.log("Done %s!", lib.name);
    }
}

async function getClasses(): Promise<FuncContainer[]> {
    let data: FuncContainer[] = JSON.parse(
        await fs.readFile("output/classes.json", "utf-8"),
    );
    return data;
}

async function doClasses(data: FuncContainer[]): Promise<void> {
    await fs.mkdir("classes", { recursive: true });
    for (let cls of data) {
        let classdata: string;
        try {
            classdata = handleClass(cls);
        } catch (e) {
            console.error(
                "Problem while getting class definition for %s: %s",
                cls.name,
                e,
            );
            throw e;
        }

        let filename = path.join("classes", `${cls.name}.lua`);
        await fs.writeFile(filename, classdata.trimEnd() + "\n");
        console.log("Done %s!", cls.name);
    }
}

async function doStructs(): Promise<void> {
    let structs: Struct[] = JSON.parse(
        await fs.readFile("output/structs.json", "utf-8"),
    );
    structs = _.sortBy(structs, "name");
    let hooks: FuncContainer[] = JSON.parse(
        await fs.readFile("output/hooks.json", "utf-8"),
    );
    let hookup: { [t: string]: FuncContainer } = {};
    for (let hook of hooks) {
        let name = hook.name;
        if (name == "ENTITY") {
            name = "ENT";
            for (let fn of hook.functions) {
                fn.parent = "ENT";
            }
        } else if (name == "WEAPON") {
            name = "SWEP";
            for (let fn of hook.functions) {
                fn.parent = "SWEP";
            }
        }
        hookup[name] = hook;
    }

    await fs.mkdir("structs", { recursive: true });

    for (let struct of structs) {
        let structdata: string;
        try {
            structdata = handleStruct(struct, hookup[struct.name]);
        } catch (e) {
            console.error(
                "Problem while getting library definition for %s: %s",
                struct.name,
                e,
            );
            throw e;
        }

        let filename = path.join("structs", `${struct.name}.lua`);
        await fs.writeFile(filename, structdata.trimEnd() + "\n");
        console.log("Done %s!", struct.name);
    }
    //
}

async function getPanels(): Promise<Panel[]> {
    return JSON.parse(await fs.readFile("output/panels.json", "utf-8"));
}

async function doPanels(data: Panel[]): Promise<void> {
    await fs.mkdir("panels", { recursive: true });
    for (let panel of data) {
        let paneldata: string | undefined;
        try {
            paneldata = handlePanel(panel);
        } catch (e) {
            console.error(
                "Problem while getting library definition for %s: %s",
                panel.name,
                e,
            );
            throw e;
        }

        if (paneldata) {
            let filename = path.join("panels", `${panel.name}.lua`);
            await fs.writeFile(filename, paneldata.trimEnd() + "\n");
            console.log("Done %s!", panel.name);
        }
    }
}

async function main() {
    console.log("hello");

    try {
        let classes = await getClasses();
        classes = preProcessClasses(classes);
        let panels = await getPanels();
        panels = preProcessPanels(panels);

        await Promise.all([
            doGlobals(),
            doLibs(),
            doClasses(classes),
            doStructs(),
            doPanels(panels),
        ]);
        console.log("woop");
    } catch (e) {
        console.error(e);
    }
}

main();
