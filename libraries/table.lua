--- @meta

--- The table **type** is an object that can store multiple values.  
--- The table **library** is a standard Lua library which provides functions to manipulate tables. In Garry's Mod there are several extra useful functions added to this library.  
--- This category lists the functions available in the table `library`.  
_G.table = {}
--- Adds all values from `source` table into the `target` table. This is most useful for sequential tables, not "dictionary" or "map" tables. See table.Merge if you want to merge 2 tables into one.  
--- See table.insert for a function that adds a single value, and table.Inherit for a function that inherits keys from one table to another.  
--- @param target table @The table to insert the new values into.
--- @param source table @The table to retrieve the values from.
--- @return table @The target table.
function table.Add(target, source)
end

--- Changes all keys to sequential integers. This creates a new table object and does not affect the original.  
--- @param table table @The original table to modify.
--- @param saveKeys? boolean @Save the keys within each member table
--- @return table @Table with integer keys.
function table.ClearKeys(table, saveKeys)
end

--- Collapses a table with keyvalue structure  
--- @param input table @Input table
--- @return table @Output table
function table.CollapseKeyValue(input)
end

--- Creates a deep copy and returns that copy.  
--- ⚠ **WARNING**: This function does NOT copy userdata, such as Vectors and Angles!  
--- @param originalTable table @The table to be copied.
--- @return table @A deep copy of the original table
function table.Copy(originalTable)
end

--- Empties the target table, and merges all values from the source table into it.  
--- @param source table @The table to copy from.
--- @param target table @The table to write to.
function table.CopyFromTo(source, target)
end

--- Counts the amount of keys in a table. This should only be used when a table is not numerically and sequentially indexed. For those tables, consider the length (**#**) operator.  
--- If you only want to test if the table is empty or not, use table.IsEmpty instead as it is a lot faster.  
--- @param tbl table @The table to count the keys of.
--- @return number @The number of keyvalue pairs
function table.Count(tbl)
end

--- Converts a table that has been sanitised with table.Sanitise back to its original form  
--- @param tbl table @Table to be de-sanitised
--- @return table @De-sanitised table
function table.DeSanitise(tbl)
end

--- Removes all values from a table. If your table is not a metatable, it is almost always better to use `tab = {}` to preserve performance.  
--- @param tbl table @The table to empty.
function table.Empty(tbl)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Instead, iterate the table using ipairs or increment from the previous index using Global.next. Non-numerically indexed tables are not ordered.  
--- Returns the value positioned after the supplied value in a table. If it isn't found then the first element in the table is returned  
--- @param tbl table @Table to search
--- @param value any @Value to return element after
--- @return any @Found element
function table.FindNext(tbl, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Instead, iterate your table with ipairs, storing the previous value and checking for the target. Non-numerically indexed tables are not ordered.  
--- Returns the value positioned before the supplied value in a table. If it isn't found then the last element in the table is returned  
--- @param tbl table @Table to search
--- @param value any @Value to return element before
--- @return any @Found element
function table.FindPrev(tbl, value)
end

--- Flips key-value pairs of each element within a table, so that each value becomes the key, and each key becomes the value.  
--- ⚠ **WARNING**: Take care when using this function, as a Lua table cannot contain multiple instances of the same key. As such, data loss is possible when using this function on tables with duplicate values.  
--- ```  
--- local test = { test = 1, test2 = 1 }  
--- local f = table.Flip( test )  
--- PrintTable( f )  
--- -- Outputs "1	=	test2"  
--- ```  
--- @param input table @The table to flip items of.
--- @return table @The flipped table.
function table.Flip(input)
end

--- Inserts a value in to the given table even if the table is non-existent  
--- @param tab? table @Table to insert value in to
--- @param value? any @Value to insert
--- @return table @The supplied or created table
function table.ForceInsert(tab, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Instead, expect the first key to be 1.  
--- Non-numerically indexed tables are not ordered and do not have a first key.  
--- Returns the first key found in the given table  
--- @param tab table @Table to retrieve key from
--- @return any @Key
function table.GetFirstKey(tab)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Instead, index the table with a key of 1.  
--- Non-numerically indexed tables are not ordered and do not have a first key.  
--- Returns the first value found in the given table  
--- @param tab table @Table to retrieve value from
--- @return any @Value
function table.GetFirstValue(tab)
end

--- Returns all keys of a table.  
--- @param tabl table @The table to get keys of
--- @return table @Table of keys
function table.GetKeys(tabl)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Instead, use the result of the length (#) operator, ensuring it is not zero. Non-numerically indexed tables are not ordered and do not have a last key.  
--- Returns the last key found in the given table  
--- @param tab table @Table to retrieve key from
--- @return any @Key
function table.GetLastKey(tab)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Instead, index the table with the result of the length (#) operator, ensuring it is not zero. Non-numerically indexed tables are not ordered and do not have a last key.  
--- Returns the last value found in the given table  
--- @param tab table @Table to retrieve value from
--- @return any @Value
function table.GetLastValue(tab)
end

--- Returns a key of the supplied table with the highest number value.  
--- @param inputTable table @The table to search in.
--- @return any @winningKey
function table.GetWinningKey(inputTable)
end

--- Checks if a table has a value.  
--- ⚠ **WARNING**: This function is **very inefficient for large tables** (O(n)) and should probably not be called in things that run each frame. Instead, consider a table structure such as example 2 below. Also see: Tables: Bad Habits  
--- ℹ **NOTE**: For optimization, functions that look for a value by sorting the table should never be needed if you work on a table that you built yourself.  
--- @param tbl table @Table to check
--- @param value any @Value to search for
--- @return boolean @Returns true if the table has that value, false otherwise
function table.HasValue(tbl, value)
end

--- Copies any missing data from `base` to `target`, and sets the `target`'s `BaseClass` member to the `base` table's pointer.  
--- See table.Merge, which overrides existing values and doesn't add a BaseClass member.  
--- See also table.Add, which simply adds values of one table to another.  
--- 🦟 **BUG**: [Sub-tables aren't inherited. The target's table value will take priority.](https://github.com/Facepunch/garrysmod/pull/1304)  
--- @param target table @Table to copy data to
--- @param base table @Table to copy data from
--- @return table @Target
function table.Inherit(target, base)
end

--- Returns whether or not the given table is empty.  
--- This works on both sequential and non-sequential tables, and is a lot faster for non-sequential tables than `table.Count(tbl) == 0`.  
--- If you want to check if a table is not empty, use `next(tbl) ~= nil`, as it is slightly faster.  
--- For sequential tables it is better to use `tab[1] ~= nil`.  
--- @param tab table @Table to check.
--- @return boolean @Is empty?
function table.IsEmpty(tab)
end

--- Returns whether or not the table's keys are sequential  
--- @param tab table @Table to check
--- @return boolean @Is sequential
function table.IsSequential(tab)
end

--- Returns the first key found to be containing the supplied value  
--- @param tab table @Table to search
--- @param value any @Value to search for
--- @return any @Key
function table.KeyFromValue(tab, value)
end

--- Returns a table of keys containing the supplied value  
--- @param tab table @Table to search
--- @param value any @Value to search for
--- @return table @Keys
function table.KeysFromValue(tab, value)
end

--- Returns a copy of the input table with all string keys converted to be lowercase recursively  
--- @param tbl table @Table to convert
--- @return table @New table
function table.LowerKeyNames(tbl)
end

--- Returns an array of values of given with given key from each table of given table.  
--- See also table.KeysFromValue.  
--- @param inputTable table @The table to search in.
--- @param keyName any @The key to lookup.
--- @return table @A list of found values, or an empty table.
function table.MemberValuesFromKey(inputTable, keyName)
end

--- Recursively merges the key-value pairs of the `source` table with the key-value pairs in the `destination` table.  
--- See table.Inherit, which doesn't override existing values.  
--- See also table.Add, which simply adds values of one table to another.  
--- ℹ **NOTE**: This function can cause a stack overflow under certain circumstances.  
--- @param destination table @The table you want the source table to merge with.
--- @param source table @The table you want to merge with the destination table.
--- @param forceOverride? boolean @If `true`, does not recursively merge sub-tables, and simply replaces them.
--- @return table @Destination table
function table.Merge(destination, source, forceOverride)
end

--- Packs a set of items into a table and returns the new table. It is meant as an alternative implementation of `table.pack` from newer versions of Lua.  
--- @vararg any @The items to pack into a table.
--- @return table @A table containing the `items`.
--- @return number @The amount of items that were added to the table.
function table.Pack(...)
end

--- Returns a random value from the supplied table.  
--- ⚠ **WARNING**: This function iterates over the given table **twice**, therefore with sequential tables you should instead use following:  
--- ```  
--- mytable[ math.random( #mytable ) ]  
--- ```  
--- @param haystack table @The table to choose from.
--- @return any @A random value from the table.
--- @return any @The key associated with the random value.
function table.Random(haystack)
end

--- Removes the first instance of a given value from the specified table with table.remove, then returns the key that the value was found at.  
--- ⚠ **WARNING**: Avoid usage of this function. It does not remove all instances of given value in the table, only the first found, and it does not work with non sequential tables!  
--- @param tbl table @The table that will be searched.
--- @param val any @The value to find within the table.
--- @return any @The key at which the value was found, or false if the value was not found.
function table.RemoveByValue(tbl, val)
end

--- Returns a reversed copy of a sequential table. Any non-sequential and non-numeric keyvalue pairs will not be copied.  
--- @param tbl table @Table to reverse.
--- @return table @A reversed copy of the table.
function table.Reverse(tbl)
end

--- Converts Vectors, Angles and booleans to be able to be converted to and from key-values via util.TableToKeyValues.  
--- table.DeSanitise performs the opposite transformation.  
--- @param tab table @Table to sanitise
--- @return table @Sanitised table
function table.Sanitise(tab)
end

--- Performs an inline [Fisher-Yates shuffle](https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle) on the table in `O(n)` time  
--- @param target table @The table to shuffle.
function table.Shuffle(target)
end

--- Returns a list of keys sorted based on values of those keys.  
--- For normal sorting see table.sort.  
--- @param tab table @Table to sort
--- @param descending? boolean @Should the order be descending?
--- @return table @A table of keys sorted by values from supplied table.
function table.SortByKey(tab, descending)
end

--- Sorts a table by a named member.  
--- @param tab table @Table to sort.
--- @param memberKey any @The key used to identify the member.
--- @param ascending? boolean @Whether or not the order should be ascending.
function table.SortByMember(tab, memberKey, ascending)
end

--- Sorts a table in reverse order from table.sort.  
--- ℹ **NOTE**: This function modifies the table you give to it. Like table.sort, it does not return anything.  
--- @param tbl table @The table to sort in descending order.
function table.SortDesc(tbl)
end

--- Converts a table into a string  
--- @param tbl table @The table to iterate over.
--- @param displayName string @Optional
--- @param niceFormatting boolean @Adds new lines and tabs to the string.
--- @return string @The table formatted as a string.
function table.ToString(tbl, displayName, niceFormatting)
end

--- Concatenates the contents of a table to a string.  
--- @param tbl table @The table to concatenate.
--- @param concatenator? string @A separator to insert between strings
--- @param startPos? number @The key to start at
--- @param endPos? number @The key to end at
--- @return string @Concatenated values
function table.concat(tbl, concatenator, startPos, endPos)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: This was deprecated in Lua 5.1 and removed in 5.2. You should use Global.pairs instead.  
---  Iterates for each key-value pair in the table, calling the function with the key and value of the pair. If the function returns anything, the loop is broken.  
--- The GLua interpretation of this is table.ForEach.  
--- @param tbl table @The table to iterate over.
--- @param callback function @The function to run for each key and value
function table.foreach(tbl, callback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: This was deprecated in Lua 5.1 and removed in 5.2. You should use Global.ipairs() instead.  
---  Iterates for each numeric index in the table in order.  
--- This is inherited from the original Lua implementation and is deprecated in Lua as of 5.1; see [here](http://lua-users.org/wiki/TableLibraryTutorial). You should use Global.ipairs() instead.  
--- @param table table @The table to iterate over.
--- @param func function @The function to run for each index.
function table.foreachi(table, func)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: This function was deprecated in Lua 5.1 and is removed in 5.2. Use the length (#) operator instead.  
---  Returns the length of the table.  
--- @param tbl table @The table to check.
--- @return number @Sequential length.
function table.getn(tbl)
end

--- Inserts a value into a table at the end of the table or at the given position.  
--- ℹ **NOTE**: This function does not call the `__newindex` [metamethod](Metamethods).  
--- @param tbl table @The table to insert the variable into.
--- @param position number @The position in the table to insert the variable
--- @param value any @The variable to insert into the table.
--- @return number @The index the object was placed at.
function table.insert(tbl, position, value)
end

--- Returns the highest numerical key.  
--- @param tbl table @The table to search.
--- @return number @The highest numerical key.
function table.maxn(tbl)
end

--- Moves elements from one part of a table to another part a given table. This is similar to assigning elements from the source table to the destination table in multiple assignments.  
--- @param sourceTbl table @The source table from which the elements are to be moved.
--- @param from number @The start index of the source range from which the elements are to be moved.
--- @param to number @The end index of the source range until which the elements are to be moved.
--- @param dest number @The index within the destination table where the moved elements should be inserted.
--- @param destTbl? table @The destination table to which the elements are to be moved
--- @return table @The modified destination table.
function table.move(sourceTbl, from, to, dest, destTbl)
end

--- Removes a value from a table and shifts any other values down to fill the gap.  
--- ℹ **NOTE**: Does nothing if index is less than 1 or greater than `#tbl`  
--- @param tbl table @The table to remove the value from.
--- @param index? number @The index of the value to remove.
--- @return any @The value that was removed.
function table.remove(tbl, index)
end

--- Sorts a sequential table either ascending or by the given sort function.  
--- ℹ **NOTE**: This function modifies the table you give to it and internally uses the [quick sort algorithm](http://www.lua.org/source/5.2/ltablib.c.html#sort).  
--- @param tbl table @The table to sort.
--- @param sorter? function @If specified, the sorting function
function table.sort(tbl, sorter)
end
