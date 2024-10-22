--- The debug library is intended to help you debug your scripts, however it also has several other powerful uses. Some builtin debug function were removed in GMod due to security reasons  
_G.debug = {}
--- Prints out the lua function call stack to the console.  
function debug.Trace()
end

--- 🛑 **DEPRECATED**:   
--- ℹ **NOTE**:  This only works on the source dedicated server.   
--- Enters an interactive mode with the user, running each string that the user enters. Using simple commands and other debug facilities, the user can inspect global and local variables, change their values, evaluate expressions, and so on. A line containing only the word cont finishes this function, so that the caller continues its execution.  
--- * Commands for debug.debug are not lexically nested within any function, and so have no direct access to local variables.  
--- * To exit this interactive mode, you can press Ctrl + Z then Enter OR type the word 'cont' on a single line and press enter.  
function debug.debug()
end

--- 🛑 **DEPRECATED**:   
--- Returns the environment of the passed object. This can be set with debug.setfenv  
--- @param object table @Object to get environment of
--- @return table @Environment
function debug.getfenv(object)
end

--- 🛑 **DEPRECATED**:   
--- Returns the current hook settings of the passed thread. The thread argument can be omitted. This is completely different to gamemode hooks. More information on hooks can be found at http://www.lua.org/pil/23.2.html. This function will simply return the function, mask, and count of the last called debug.sethook.  
--- @param thread? thread @Which thread to retrieve it's hook from, doesn't seem to actually work.
--- @return function @Hook function.
--- @return string @Hook mask
--- @return number @Hook count.
function debug.gethook(thread)
end

--- Returns debug information about a function.  
--- @param funcOrStackLevel function @Takes either a function or a number representing the stack level as an argument
--- @param fields? string @A string whose characters specify the information to be retrieved
--- @param func? function @Function to use
--- @return table @A table as a Structures/DebugInfo containing information about the function you passed
function debug.getinfo(funcOrStackLevel, fields, func)
end

--- 🛑 **DEPRECATED**:   
--- Gets the name and value of a local variable indexed from the level.  
--- ⚠ **WARNING**: When a function has a tailcall return, you cannot access the locals of this function.  
--- @param thread? thread @The thread
--- @param level? number @The level above the thread
--- @param index? number @The variable's index you want to get
--- @return string @The name of the variable
--- @return any @The value of the local variable.
function debug.getlocal(thread, level, index)
end

--- 🛑 **DEPRECATED**:   
--- Returns the metatable of an object. This function ignores the metatable's __metatable field.  
--- @param object any @The object to retrieve the metatable from.
--- @return table @The metatable of the given object.
function debug.getmetatable(object)
end

--- 🛑 **DEPRECATED**:   
--- This function **will** return an empty table.  
--- If you get an error because of this see the example below for a workaround  
--- Returns the internal Lua registry table.  
--- The Lua registry is used by the engine and binary modules to create references to Lua values. The registry contains every global ran and used in the Lua environment. Avoid creating entries into the registry with a number as the key, as they are reserved for the reference system.  
--- ⚠ **WARNING**: Improper editing of the registry can result in unintended side effects, including crashing the game.  
--- @return table @The Lua registry
function debug.getregistry()
end

--- 🛑 **DEPRECATED**:   
--- Used for getting variable values in an index from the passed function. This does nothing for C functions.  
--- @param func function @Function to get the upvalue indexed from.
--- @param index number @The index in the upvalue array
--- @return string @Name of the upvalue
--- @return any @Value of the upvalue.
function debug.getupvalue(func, index)
end

--- 🛑 **DEPRECATED**:   
--- Sets the environment of the passed object.  
--- @param object table @Object to set environment of
--- @param env table @Environment to set
--- @return table @The object
function debug.setfenv(object, env)
end

--- 🛑 **DEPRECATED**:   
--- Sets the given function as a Lua hook. This is completely different to gamemode hooks. The thread argument can be completely omitted and calling this function with no arguments will remove the current hook. This is used by default for infinite loop detection. More information on hooks can be found at http://www.lua.org/pil/23.2.html and https://www.gammon.com.au/scripts/doc.php?lua=debug.sethook  
--- Hooks are not always ran when code that has been compiled by LuaJIT's JIT compiler is being executed, this is due to Intermediate Representation internally storing constantly running bytecode for performance reasons.  
--- @param thread thread @Thread to set the hook on
--- @param hook function @Function for the hook to call
--- @param mask string @The hook's mask
--- @param count number @How often to call the hook (in instructions)
function debug.sethook(thread, hook, mask, count)
end

--- <removed>This function was removed due to security concerns.</removed>  
--- Sets a local variable's value.  
--- @param thread? thread @The thread
--- @param level? number @The level above the thread
--- @param index? number @The variable's index you want to get
--- @param value? any @The value to set the local to
--- @return string @The name of the local variable if the local at the index exists, otherwise nil is returned.
function debug.setlocal(thread, level, index, value)
end

--- 🛑 **DEPRECATED**:   
--- Sets the object's metatable. Unlike Global.setmetatable, this function works regardless of whether the first object passed is a valid table or not; this function even works on primitive datatypes such as numbers, functions, and even nil.  
--- @param object any @Object to set the metatable for.
--- @param metatable table @The metatable to set for the object
--- @return boolean @true if the object's metatable was set successfully.
function debug.setmetatable(object, metatable)
end

--- <removed>This function was removed due to security concerns.</removed>  
--- Sets the variable indexed from func  
--- @param func function @The function to index the upvalue from
--- @param index number @The index from func
--- @param val? any @The value to set the upvalue to.
--- @return string @Returns nil if there is no upvalue with the given index, otherwise it returns the upvalue's name.
function debug.setupvalue(func, index, val)
end

--- 🛑 **DEPRECATED**:   
--- Returns a full execution stack trace.  
--- @param thread? thread @Thread (ie
--- @param message? string @Appended at the beginning of the traceback.
--- @param level? number @Which level to start the traceback.
--- @return string @A dump of the execution stack.
function debug.traceback(thread, message, level)
end

--- <removed>This function was removed due to security concerns.</removed>  
--- Returns an unique identifier for the upvalue indexed from func  
--- @param func function @The function to index the upvalue from
--- @param index number @The index from func
--- @return number @A unique identifier
function debug.upvalueid(func, index)
end

--- <removed>This function was removed due to security concerns.</removed>  
--- Make the n1-th upvalue of the Lua closure f1 refer to the n2-th upvalue of the Lua closure f2.  
--- @param f1 function 
--- @param n1 number 
--- @param f2 function 
--- @param n2 number 
function debug.upvaluejoin(f1, n1, f2, n2)
end
