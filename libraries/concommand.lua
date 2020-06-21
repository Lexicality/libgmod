--- The concommand library is used to create console commands which can be used to network (basic) information & events between the client and the server.  
_G.concommand = {}
--- Creates a console command that runs a function in lua with optional autocompletion function and help text.  
--- 🦟 **BUG**: [This will fail if the concommand was previously removed with concommand.Remove in a different realm (creating a command on the client that was removed from the server and vice-versa).](https://github.com/Facepunch/garrysmod-issues/issues/1183)  
--- @param name string @The command name to be used in console
--- @param callback function @The function to run when the concommand is executed
--- @param autoComplete function @The function to call which should return a table of options for autocompletion
--- @param helpText string @The text to display should a user run 'help cmdName'.
--- @param flags number @Concommand modifier flags
function concommand.Add(name, callback, autoComplete, helpText, flags)
end

--- Returns the tables of all console command callbacks, and autocomplete functions, that were added to the game with concommand.Add.  
--- @return table, table
function concommand.GetTable()
end

--- Removes a console command.  
--- 🦟 **BUG**: [This will not always remove the command from auto-complete.](https://github.com/Facepunch/garrysmod-issues/issues/1183)  
--- 🦟 **BUG**: [concommand.Add will fail if the concommand was previously removed with this function in a different realm (creating a command on the client that was removed from the server and vice-versa).](https://github.com/Facepunch/garrysmod-issues/issues/1183)  
--- @param name string @The name of the command to be removed.
function concommand.Remove(name)
end

