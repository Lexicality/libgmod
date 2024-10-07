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
    realms: ("menu" | "client" | "server")[];
    description?: string;
    overloads?: FuncInstance[];
}

// Libs, classes etc
interface FuncContainer {
    name: string;
    description?: string;
    functions: Func[];
}
