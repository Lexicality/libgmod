--- The package library is a standard Lua library, it's mainly for use with the module system built into Lua.  
_G.package = {}
--- A list of all loaded packages.  
--- @return table @The list of all loaded packages.
function package.loaded()
end

--- Sets a metatable for module with its __index field referring to the global environment, so that this module inherits values from the global environment. To be used as an option to Global.module.  
--- @param module table @The module table to be given a metatable
function package.seeall(module)
end

