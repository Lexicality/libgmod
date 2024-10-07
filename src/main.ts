import fs from "node:fs/promises";
import path from "node:path";

import _ from "lodash";

import { handleClass } from "./classes";
import { handleFunc } from "./functions";
import { registerGModType } from "./gmod-types";
import { handleLib } from "./libraries";

async function doGlobals(): Promise<void> {
    let data: Func[] = JSON.parse(
        await fs.readFile("output/global-functions.json", "utf-8"),
    );
    data = _.sortBy(data, "name");
    let lua = "";
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
    await fs.writeFile("globals.lua", lua, "utf-8");
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
        await fs.writeFile(filename, libdata);
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
    data = _.sortBy(data, "name");
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
        await fs.writeFile(filename, classdata);
        console.log("Done %s!", cls.name);
    }
}

async function main() {
    console.log("hello");

    try {
        let classes = await getClasses();
        // I'm not entirely sure what EmmyLua does when you have a class and a
        // function with the same name, so don't have that problem.
        for (let cls of classes) {
            registerGModType(cls.name);
        }

        await Promise.all([
            doGlobals(),
            doLibs(),
            doClasses(classes),
            //
        ]);
        console.log("woop");
    } catch (e) {
        console.error(e);
    }
}

main();
