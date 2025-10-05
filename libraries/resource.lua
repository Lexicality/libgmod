--- @meta

--- The resource library is used to control what files are sent to clients who join a server, this includes models, materials, sounds, text files but not Lua files.  
_G.resource = {}
--- Adds the specified and all related files to the list of files the client should download from the server.  
--- For convenience, this function will automatically add any other files that are related to the selected one, and throw an error if it can't find them. For example, a `.vmt` file will automatically add the `.vtf` with the same name, and a `.mdl` file will automatically add all `.vvd`, `.ani`, `.dx80.vtx`, `.dx90.vtx` and `.phy` files with the same name, with a separate error for each missing file.  
--- If you do not want it to do this, use resource.AddSingleFile.  
--- See also Serving Content  
--- ⚠ **WARNING**: There's a 8192 downloadable file limit. If you need more, consider using Workshop addons - resource.AddWorkshop. You should also consider the fact that you have way too many downloads. This limit is shared among all `resource.Add*` functions.  
--- ℹ **NOTE**: The file must exist on the server it will not be added to the downloadables list!  
--- @param path string @**Virtual path** of the file to be added, relative to `garrysmod/`
function resource.AddFile(path)
end

--- Adds the specified file to the files the client should download from the server.  
--- If you wish to add textures or models, consider using resource.AddFile to add all the files required for a texture/model.  
--- ⚠ **WARNING**: There's a 8192 downloadable file limit. If you need more, consider using Workshop addons - resource.AddWorkshop. You should also consider the fact that you have way too many downloads. This limit is shared among all `resource.Add*` functions.  
--- ℹ **NOTE**: The file must exist on the server or players will not download it!  
--- See also Serving Content  
--- @param path string @Path of the file to be added, relative to garrysmod/
function resource.AddSingleFile(path)
end

--- Adds a workshop addon for the client to download before entering the server. This will not "install" the addon on your server, see Workshop for Dedicated Servers for installing Steam Workshop addons onto your servers.  
--- Having the raw files from a workshop item does not count as having already downloaded it.  
--- So players who previously downloaded a map through [FastDL](Serving_Content) will have to re-download it if it is part of a workshop addon.  
--- You should try to only add addons that have custom content (models, sounds, etc). Lua files are not considered content, and are handled by a separate system. Adding workshop addons that only have Lua files is a waste, it will do nothing.  
--- Gamemodes that are workshop enabled and the current map are automatically added to this list, if they come from the servers' workshop collection - so there's no need to manually add them.  
--- ⚠ **WARNING**: There's a 8192 downloadable file limit. If you need more, consider the fact that you have way too many downloads. This limit is shared among all `resource.Add*` functions.  
--- See also Serving Content  
--- @param workshopid string @The workshop id of the file
function resource.AddWorkshop(workshopid)
end
