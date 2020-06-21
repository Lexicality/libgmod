--- Used to store permanent variables/settings on clients that will persist between servers. They are stored in the cl.db SQLite database located in the root Garry's Mod folder.  
_G.cookie = {}
--- Deletes a cookie on the client.  
--- @param name string @The name of the cookie that you want to delete.
function cookie.Delete(name)
end

--- Gets the value of a cookie on the client as a number.  
--- @param name string @The name of the cookie that you want to get.
--- @param default any @Value to return if the cookie does not exist.
--- @return number @The cookie value
function cookie.GetNumber(name, default)
end

--- Gets the value of a cookie on the client as a string.  
--- @param name string @The name of the cookie that you want to get.
--- @param default any @Value to return if the cookie does not exist.
--- @return string @The cookie value
function cookie.GetString(name, default)
end

--- Sets the value of a cookie, which is saved automatically by the sql.  
--- These are stored in the *.db files - cl.db for clients, mn.db for menu state and sv.db for servers.  
--- @param key string @The name of the cookie that you want to set.
--- @param value string @Value to store in the cookie.
function cookie.Set(key, value)
end

