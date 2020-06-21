--- The baseclass library. Used to lookup a field from a metatable.  
_G.baseclass = {}
--- Gets the base class of an an object.  
--- This is used not just by entities, but also by widgets, panels, drive modes, weapons and gamemodes (with "gamemode_" prefix).  
--- The keyword **DEFINE_BASECLASS** translates into a call to this function. In the engine, it is replaced with:  
--- ```  
--- local BaseClass = baseclass.Get  
--- ```  
--- @param name string @The child class.
--- @return table @The base class's meta table.
function baseclass.Get(name)
end

--- Add a new base class that can be derived by others. This is done automatically for:  
--- * widgets  
--- * panels  
--- * drive modes  
--- * entities  
--- * weapons  
--- * gamemodes (with prefix "gamemode_")  
--- @param name string @The name of this base class
--- @param tab table @The base class.
function baseclass.Set(name, tab)
end

