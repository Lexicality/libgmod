--- @meta

--- The list library allows you add and retrieve values to and from lists. The list library is basically a fancy wrapper for a table, but with much more limited functionality.  
--- It is used extensively in the built-in Sandbox gamemode for addon-extensible lists of things (list of wheel models, list of thruster effects, etc) , without using global tables for this task.  
--- See Default Lists for a page of default Sandbox lists.  
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
--- ⚠ **WARNING**: This function uses table.Copy which can be very slow for larger lists. You should avoid calling it repeatedly or in performance sensitive hooks such as GM:Think.  
--- Where possible you should use the much faster helper functions:  
--- list.Contains,  
--- list.HasEntry, or  
--- list.GetEntry  
--- There is also the more dangerous option of calling list.GetForEdit to get the unprotected list if you absolutely must iterate through it in a think hook.  
--- @param identifier string @The list identifier
--- @return table @The copy of the list
function list.Get(identifier)
end

--- Returns a copy of the entry in the list `list` with key `key`.  
--- @param list string @List to search through
--- @param key string @The key to search for
--- @return any|nil @Returns the  value if the list contains the key, nil otherwise
function list.GetEntry(list, key)
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

--- Removes a single entry from the list `list` with key `key`.  
--- This is equivalent to `list.Set( myList, myKey, nil )`.  
--- @param list string @List to remove an entry in.
--- @param key string @The key for the entry to remove.
function list.RemoveEntry(list, key)
end

--- Sets a specific position in the named list to a value.  
--- @param identifier string @The list identifier
--- @param key any @The key in the list to set
--- @param item any @The item to set to the list as key
function list.Set(identifier, key, item)
end
