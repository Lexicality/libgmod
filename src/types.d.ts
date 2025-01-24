type Realm = "menu" | "client" | "server";

interface FuncArg {
    name: string;
    type: string;
    description?: string;
    default?: string;
}

type FuncRet = {
    type: string;
    description?: string;
}[];

interface FuncInstance {
    arguments?: FuncArg[];
    returnValues?: FuncRet;
}

interface Func extends FuncInstance {
    name: string;
    parent: string;
    realms: Realm[];
    description?: string;
    overloads?: FuncInstance[];
}

// Libs, classes etc
interface FuncContainer {
    name: string;
    description?: string;
    functions: Func[];
}

interface Field {
    name: string;
    type: string;
    default?: string;
    description?: string;
}

interface Struct {
    name: string;
    description?: string;
    realms: Realm[];
    fields: Field[];
}

interface Panel {
    name: string;
    parent: string;
    description: string;
    functions?: func[];
}
