--- The SQL library allows you to access powerful database software included with Garry's Mod. It is the preferred and fastest method of storing large amounts of data. The database is located in sv.db serverside and cl.db clientside, both in the Garry's Mod base folder. SQL is a whole scripting language in itself although relatively simple, it's something you'll need to read up on before using this library.  
--- Known GMod SQL settings:  
--- * No `ATTACH` and `DETACH` operations (`SQLITE_OMIT_ATTACH = 1`)  
--- * No Virtual Tables (`SQLITE_OMIT_VIRTUALTABLE = 1`)  
--- * Temp files are stored in memory (`SQLITE_TEMP_STORE = 3`)  
--- * No `VACUUM` operation  
_G.sql = {}
--- Tells the engine a set of queries is coming. Will wait until sql.Commit is called to run them.  
--- This is most useful when you run more than 100+ queries.  
--- This is equivalent to  
--- ```  
--- sql.Query("BEGIN")  
--- ```  
function sql.Begin()
end

--- Tells the engine to execute a series of queries queued for execution, must be preceded by sql.Begin  
--- This is equivalent to `sql.Query("COMMIT")`.  
function sql.Commit()
end

--- Returns true if the index with the specified name exists.  
--- @param indexName string @The name of the index to check.
--- @return boolean @exists
function sql.IndexExists(indexName)
end

--- Returns the last error from a SQLite query.  
--- @return string @error
function sql.LastError()
end

--- Performs a query on the local SQLite database, returns a table as result set, nil if result is empty and false on error.  
--- @param query string @The query to execute.
--- @return table @false is returned if there is an error, nil if the query returned no data.
function sql.Query(query)
end

--- Performs the query like sql.Query, but returns the first row found.  
--- Basically equivalent to  
--- ```  
--- sql.Query("*query* LIMIT 1")  
--- ```  
--- @param query string @The input query
--- @param row number @The row number
--- @return table @The returned row.
function sql.QueryRow(query, row)
end

--- Performs the query like sql.QueryRow, but returns the first value found.  
--- @param query string @The input query.
--- @return any @The returned value; the engine automatically converts numerical output to Lua numbers.
function sql.QueryValue(query)
end

--- Escapes dangerous characters and symbols from user input used in an SQLite SQL Query.  
--- ℹ **NOTE**: this function is not meant to be used with external database engines such as `MySQL`. Escaping strings with inadequate functions is dangerous!  
--- @param string string @The string to be escaped.
--- @param bNoQuotes boolean @Set this as true, and the function will not wrap the input string in apostrophes.
--- @return string @The escaped input.
function sql.SQLStr(string, bNoQuotes)
end

--- Returns true if the table with the specified name exists.  
--- @param tableName string @The name of the table to check.
--- @return boolean @exists
function sql.TableExists(tableName)
end

