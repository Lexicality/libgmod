--- @meta

--- @class GWorkshopFileBase
--- <internal></internal>  
--- This object is created by Global.WorkshopFileBase which is used internally to fetch data of the specific namespace  
--- or to publish saves and dupes.  
--- This also exists on the Server but most functions may throw an error. It's meant to be used clientside.  
--- ℹ **NOTE**:   
--- You need to set the `HTML` field to a DHTML panel that is set up correctly like [here](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/creationmenu/content/contenttypes/dupes.lua#L12), or else you might get errors.  
local GWorkshopFileBase = {}
--- Fetches all subscriptions for the set namespace and type  
--- ℹ **NOTE**:   
--- If you want to use the type `local` you need to implement the `:FetchLocal(offset, perpage)` function!  
--- @param type string @The type to search for
--- @param offset number @Skips the first x results.
--- @param perpage number @How many results per page should be returned.
--- @param extratags table @additional tags to filter the results.
--- @param searchText string @text that needs to be in the addon title
--- @param filter? number @The filter for the results
--- @param sort? string @How it should be sorted
function GWorkshopFileBase:Fetch(type, offset, perpage, extratags, searchText, filter, sort)
end

--- Fetches all subscriptions for the set namespace and passes the result to WorkshopFileBase:FillFileInfo.  
--- @param offset number @Skips the first x results.
--- @param perpage number @How many results per page should be returned.
--- @param tags table @additional tags to filter the results.
--- @param searchText string @text that needs to be in the addon title
--- @param isUGC? boolean @if true it will use engine.GetUserContent instead of engine.GetAddons
--- @param filter? number @The filter for the results
--- @param sort? string @How it should be sorted
function GWorkshopFileBase:FetchSubscribed(offset, perpage, tags, searchText, isUGC, filter, sort)
end

--- Updates the set HTML panel with the newly fetched results  
--- @param results table @The type to search for
--- @param isUGC boolean @Skips the first x results.
function GWorkshopFileBase:FillFileInfo(results, isUGC)
end

--- Creates a UGCPublishWindow to publish the dupe or save  
--- @param filename string @The type to search for
--- @param image string @The image to use
function GWorkshopFileBase:Publish(filename, image)
end

--- Retrieves the username for the given SteamID.  
--- @param steamid string @SteamID to retrieve the name for
--- @param callback function @Callback function
function GWorkshopFileBase:RetrieveUserName(steamid, callback)
end
