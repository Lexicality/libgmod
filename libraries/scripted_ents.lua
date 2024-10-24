--- @meta

--- The scripted_ents library allows you to access information about any scripted entities loaded into the game, as well as register your own entities.  
_G.scripted_ents = {}
--- Defines an alias string that can be used to refer to another classname  
--- @param alias string @A new string which can be used to refer to another classname
--- @param classname string @The classname the alias should refer to
function scripted_ents.Alias(alias, classname)
end

--- Returns a copy of the list of all ENT tables registered  
--- @return table @A table of all entities in the following format: (table keys are the classnames)
function scripted_ents.GetList()
end

--- Retrieves a member of entity's table.  
--- @param class string @Entity's class name
--- @param name string @Name of member to retrieve
--- @return any @The member or nil if failed
function scripted_ents.GetMember(class, name)
end

--- Returns a list of all ENT tables which contain ENT.Spawnable  
--- @return table @A table of Structures/ENTs
function scripted_ents.GetSpawnable()
end

--- Returns the actual ENT table for a class. Modifying functions/variables in this table will change newly spawned entities  
--- @param classname string @The classname of the ENT table to return
--- @return table @entTable
function scripted_ents.GetStored(classname)
end

--- Returns the 'type' of a class, this will one of the following: 'anim', 'ai', 'brush', 'point'.  
--- @param classname string @The classname to check
--- @return string @type
function scripted_ents.GetType(classname)
end

--- Checks if name is based on base  
--- @param name string @Entity's class name to be checked
--- @param base string @Base class name to be checked
--- @return boolean @Returns true if class name is based on base, else false.
function scripted_ents.IsBasedOn(name, base)
end

--- Registers an ENT table with a classname. Reregistering an existing classname will automatically update the functions of all existing entities of that class.  
--- 🦟 **BUG**: [Sub-tables provided in the first argument will not carry over their metatable, and will receive a BaseClass key if the table was merged with the base's. Userdata references, which includes Vectors, Angles, Entities, etc. will not be copied.](https://github.com/Facepunch/garrysmod/pull/1300)  
--- @param ENT table @The ENT table to register
--- @param classname string @The classname to register.
function scripted_ents.Register(ENT, classname)
end
