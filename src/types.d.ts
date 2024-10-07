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

interface Func {
    name: string;
    parent: string;
    realms: ("menu" | "client" | "server")[];
    description?: string;
    arguments?: FuncArg[];
    returnValues?: FuncRet;
}

// Libs, classes etc
interface FuncContainer {
    name: string;
    description?: string;
    functions: Func[];
}
