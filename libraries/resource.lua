--- The resource library is used to control what files are sent to clients who join a server, this includes models, materials, sounds, text files but not Lua files.  
_G.resource = {}
--- Adds the specified and all related files to the files the client should download.  
--- For convenience, this function will automatically add any other files that are related to the selected one, and throw an error if it can't find them. For example, a `.vmt` file will automatically add the `.vtf` with the same name, and a `.mdl` file will automatically add all `.vvd`, `.ani`, `.dx80.vtx`, `.dx90.vtx`, `.sw.vtx`, `.phy` and `.jpg` files with the same name, with a separate error for each missing file.  
--- If you do not want it to do this, use resource.AddSingleFile.  
--- ⚠ **WARNING**: There's a 8192 downloadable file limit. If you need more, consider using Workshop addons - resource.AddWorkshop. You should also consider the fact that you have way too many downloads. This limit is shared among all resource.Add functions.  
--- ℹ **NOTE**: Running this function using a path relative to the main `garrysmod/` folder will not work for files in addons and gamemodes. Instead, the files must be added relative to their respective content folders. For example, a sound file from an addon would use the path "sound/[FILENAME_AND_EXTENSION]," despite the file being located in "addons/[ADDON_NAME]/sound/[FILENAME_AND_EXTENSION]"  
--- ℹ **NOTE**: The file must exist on the server or players will not download it!  
--- @param path string @Virtual path of the file to be added, relative to `garrysmod/`
function resource.AddFile(path)
end

--- Adds the specified file to the files the client should download.  
--- If you wish to add textures or models, consider using resource.AddFile to add all the files required for a texture/model.  
--- ⚠ **WARNING**: There's a 8192 downloadable file limit.   
--- ℹ **NOTE**: If you need more than 8192, consider using Workshop addons - resource.AddWorkshop. You should also consider the fact that you have way too many downloads. This limit is shared among all resource.Add functions.  
--- ℹ **NOTE**: The file must exist on the server or players will not download it!  
--- @param path string @Path of the file to be added, relative to garrysmod/
function resource.AddSingleFile(path)
end

--- Adds a workshop addon for the client to download before entering the server.  
--- Having the raw files from a workshop item does not count as having already downloaded it.  
--- So players who previously downloaded a map through Fast Download will have to re-download it if you use the workshop.  
--- You should try to only add addons that have custom content ( models, sounds, etc ).  
--- Gamemodes that are workshop enabled are automatically added to this list - so there's no need to add them.  
--- The server's current map is also automatically added, if it is loaded from a workshop addon.  
--- ⚠ **WARNING**: This will not "install" the addon on your server, see Workshop for Dedicated Servers for installing Steam Workshop addons onto your servers  
--- @param workshopid string @The workshop id of the file
function resource.AddWorkshop(workshopid)
end

