--- @meta

--- The list library allows you add and retrieve values to and from lists. The list library is basically a fancy wrapper for a table, but with much more limited functionality. See Default Lists for a page of default Sandbox lists.  
_G.list = {}
--- Adds an item to a named list  
--- @param identifier string @The list identifier
--- @param item any @The item to add to the list
--- @return number @The index at which the item was added.
function list.Add(identifier, item)
end

--- Returns true if the list contains the value. (as a value - not a key)  
--- For a function that looks for a key and not a value see list.HasEntry.  
--- @param list string @List to search through
--- @param value any @The value to test
--- @return boolean @Returns true if the list contains the value, false otherwise
function list.Contains(list, value)
end

--- Returns a copy of the list stored at identifier  
--- @param identifier string @The list identifier
--- @return table @The copy of the list
function list.Get(identifier)
end

--- Returns the actual table of the list stored at identifier. Modifying this will affect the stored list  
--- @param identifier string @The list identifier
--- @param dontCreate? boolean @If the list at given identifier does not exist, do **not** create it.
--- @return table @The actual list
function list.GetForEdit(identifier, dontCreate)
end

--- Returns a list of all lists currently in use.  
--- @return table @The list of all lists, i.e
function list.GetTable()
end

--- Returns true if the list contains the given key.  
--- For a function that looks for values and not keys see list.Contains.  
--- @param list string @List to search through
--- @param key any @The key to test
--- @return boolean @Returns true if the list contains the key, false otherwise
function list.HasEntry(list, key)
end

--- Sets a specific position in the named list to a value.  
--- @param identifier string @The list identifier
--- @param key any @The key in the list to set
--- @param item any @The item to set to the list as key
function list.Set(identifier, key, item)
end
