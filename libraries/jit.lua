--- Library to work with the [LuaJIT](http://luajit.org/) functionality of gmod.  
_G.jit = {}
--- A variable containing the target architecture name: `x86`, `x64`, `arm`, `ppc`, `ppcspe`, or `mips`. This will be `x86` or `x64` in GMod.  
--- @return string @The system architecture.
function jit.arch()
end

--- You can attach callbacks to a number of compiler events with jit.attach. The callback can be called:  
--- * when a function has been compiled to bytecode (`"bc"`);  
--- * when trace recording starts or stops (`"trace"`);  
--- * as a trace is being recorded (`"record"`);  
--- * or when a trace exits through a side exit (`"texit"`).  
--- Set a callback with `jit.attach(callback, "event")` and clear the same callback with `jit.attach(callback)`  
--- ⚠ **WARNING**: This function isn't officially documented on LuaJIT wiki, use it at your own risk.  
--- ⚠ **WARNING**: Using these constantly (especially bytecode) can be very performance heavy due to the constant stream of data being compiled at a time.  
--- @param callback function @The callback function
--- @param event string @The event to hook into.
function jit.attach(callback, event)
end

--- Flushes the whole cache of compiled code.  
function jit.flush()
end

--- Disables LuaJIT Lua compilation.  
function jit.off()
end

--- Enables LuaJIT Lua compilation.  
function jit.on()
end

--- JIT compiler optimization control. The opt sub-module provides the backend for the -O command line LuaJIT option.  
--- You can also use it programmatically, e.g.:  
--- ```  
--- jit.opt.start(2) -- same as -O2  
--- jit.opt.start("-dce")  
--- jit.opt.start("hotloop=10", "hotexit=2")  
--- ```  
--- A list of LuaJIT -O command line options can be found here(a table of various optimization levels are displayed towards the bottom of the page along with exactly which optimization options are enabled for each level): http://luajit.org/running.html  
--- @vararg any 
function jit.opt.start(...)
end

--- This is NOT a function, it's a variable containing the target OS name: `Windows`, `Linux`, `OSX`, `BSD`, `POSIX` or `Other`.  
--- @return string @The operating system.
function jit.os()
end

--- Returns the status of the JIT compiler and the current optimizations enabled.  
--- @return boolean @Is JIT enabled
--- @return any @Strings for CPU-specific features and enabled optimizations
function jit.status()
end

--- Returns bytecode of a function at a position.  
--- ℹ **NOTE**: This function only works for Lua defined functions.  
--- @param func function @Function to retrieve bytecode from.
--- @param pos number @Position of the bytecode to retrieve.
--- @return number @bytecode instruction
--- @return number @bytecode opcode
function jit.util.funcbc(func, pos)
end

--- Retrieves LuaJIT information about a given function, similarly to debug.getinfo. Possible table fields:  
--- * linedefined: as for debug.getinfo  
--- * lastlinedefined: as for debug.getinfo  
--- * params: the number of parameters the function takes  
--- * stackslots: the number of stack slots the function's local variable use  
--- * upvalues: the number of upvalues the function uses  
--- * bytecodes: the number of bytecodes it the compiled function  
--- * gcconsts: the number of garbage collectable constants  
--- * nconsts: the number of lua_Number (double) constants  
--- * children: Boolean representing whether the function creates closures  
--- * currentline: as for debug.getinfo  
--- * isvararg: if the function is a vararg function  
--- * source: as for debug.getinfo  
--- * loc: a string describing the source and currentline, like "<source>:<line>"  
--- * ffid: the fast function id of the function (if it is one). In this case only upvalues above and addr below are valid  
--- * addr: the address of the function (if it is not a Lua function). If it's a C function rather than a fast function, only upvalues above is valid*  
--- @param func function @Function or Proto to retrieve info about.
--- @param pos? number 
--- @return table @Information about the supplied function/proto.
function jit.util.funcinfo(func, pos)
end

--- Gets a constant at a certain index in a function.  
--- 🛑 **DEPRECATED**: This function was disabled due to security concerns.  
--- ⚠ **WARNING**: This function isn't officially documented on LuaJIT wiki, use it at your own risk.  
--- ℹ **NOTE**: Numbers constants goes from 0 (included) to n-1, n being the value of nconsts in jit.util.funcinfo in other words, the consts goes from (nconsts-1) to -n  
--- ℹ **NOTE**: This function only works for Lua defined functions.  
--- @param func function @Function to get constant from
--- @param index number @Constant index (counting down from the top of the function at -1)
--- @return any @The constant found
function jit.util.funck(func, index)
end

--- 🛑 **DEPRECATED**: This function was disabled due to security concerns.  
--- Does the exact same thing as debug.getupvalue except it only returns the name, not the name and the object. The upvalue indexes also start at 0 rather than 1, so doing `jit.util.funcuvname(func, 0)` will get you the same name as `debug.getupvalue(func, 1)`  
--- ⚠ **WARNING**: This function isn't officially documented on LuaJIT wiki, use it at your own risk.  
--- @param func function @Function to get the upvalue indexed from
--- @param index number @The upvalue index, starting from 0
--- @return string @The function returns nil if there is no upvalue with the given index, otherwise the name of the upvalue is returned
function jit.util.funcuvname(func, index)
end

--- 🛑 **DEPRECATED**: This function was disabled due to security concerns.  
--- Previously got the address of a function from a set list of functions, but now always returns `0` as it is deprecated.  
--- @param index number @This arugment is ignored.
--- @return number @Always returns `0`
function jit.util.ircalladdr(index)
end

--- 🛑 **DEPRECATED**: This function was disabled due to security concerns. It will always return 0.  
--- Grabs the address of a function based on it's trace exit number. Grabbed via jit.attach (with the texit event).  
--- @param exitno number @exit number to retrieve exit stub address from (gotten via jit.attach with the texit event)
--- @return number @exitstub trace address
function jit.util.traceexitstub(exitno)
end

--- 🛑 **DEPRECATED**: This function was disabled due to security concerns.  
--- Return table fields:  
--- * link (number): the linked trace (0 for link types: none, return, interpreter)  
--- * nk (number): the lowest IR constant (???)  
--- * nins (number): the next IR instruction (???)  
--- * linktype (string): the link type (none, root, loop, tail-recursion, up-recursion, down-recursion, interpreter, return)  
--- * nexit (number): number of snapshots (for use with jit.util.tracesnap)  
--- @param trace number @trace index to retrieve info for (gotten via jit.attach)
--- @return table @trace info
function jit.util.traceinfo(trace)
end

--- 🛑 **DEPRECATED**: This function was disabled due to security concerns.  
--- @param tr number 
--- @param index number 
--- @return number @m
--- @return number @ot
--- @return number @op1
--- @return number @op2
--- @return number @prev
function jit.util.traceir(tr, index)
end

--- 🛑 **DEPRECATED**: This function was disabled due to security concerns.  
--- @param tr number 
--- @param index number 
--- @return any @k
--- @return number @t
--- @return number @slot; optional
function jit.util.tracek(tr, index)
end

--- 🛑 **DEPRECATED**: This function was disabled due to security concerns. It will always return 3 `0`s.  
--- @param tr number 
--- @return string @mcode
--- @return number @address
--- @return number @loop
function jit.util.tracemc(tr)
end

--- 🛑 **DEPRECATED**: This function was disabled due to security concerns.  
--- Return table fields:  
--- * 0 (ref) (number): first IR ref for the snapshot  
--- * 1 (nslots) (number): the number of valid slots  
--- * all indexes except first 2 and last (there might not be any of these): the snapshot map  
--- * last index in table (number): -16777216 (255 << 24)  
--- @param tr number @trace index to retrieve snapshot for (gotten via jit.attach)
--- @param sn number @snapshot index for trace (starting from 0 to nexit - 1, nexit gotten via jit.util.traceinfo)
--- @return table @snapshot
function jit.util.tracesnap(tr, sn)
end

--- A variable containing the LuaJIT version string. This is `LuaJIT 2.0.4` in GMod, and `LuaJIT 2.1.0-beta3` on the x86-64 branch of GMod.  
--- @return string @The version string.
function jit.version()
end

--- A variable containing the version number of the LuaJIT core.  
--- @return number @The version number
function jit.version_num()
end

