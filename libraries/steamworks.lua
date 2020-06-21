--- Steamworks related functions.  
_G.steamworks = {}
--- Downloads a file from the supplied addon and saves it as a .cache file in garrysmod/cache folder.  
--- This is mostly used to download the preview image of the addon, but the game seems to also use it to download replays and saves.  
--- In case the retrieved file is an image and you need the IMaterial, use Global.AddonMaterial with the path supplied from the callback.  
--- @param workshopPreviewID string @The Preview ID of workshop item.
--- @param uncompress boolean @Whether to uncompress the file or not, assuming it was compressed with LZMA.<br>
--- @param resultCallback function @The function to process retrieved data
function steamworks.Download(workshopPreviewID, uncompress, resultCallback)
end

--- Downloads a Steam Workshop file by its ID and returns a path to it.  
--- @param workshopID string @The ID of workshop item to download
--- @param resultCallback function @The function to process retrieved data
function steamworks.DownloadUGC(workshopID, resultCallback)
end

--- Retrieves info about supplied Steam Workshop addon.  
--- @param workshopItemID string @The ID of Steam Workshop item.
--- @param resultCallback function @The function to process retrieved data, with the following arguments:
function steamworks.FileInfo(workshopItemID, resultCallback)
end

--- Retrieves a customized list of Steam Workshop addons.  
--- @param type string @The type of items to retrieve
--- @param tags table @A table of tags to match.
--- @param offset number @How much of results to skip from first one
--- @param numRetrieve number @How much items to retrieve, up to 50 at a time.
--- @param days number @When getting Most Popular content from Steam, this determines a time period
--- @param userID string @"0" to retrieve all addons, "1" to retrieve addons only published by you, or a valid SteamID64 of a user to get workshop items of.
--- @param resultCallback function @The function to process retrieved data
function steamworks.GetList(type, tags, offset, numRetrieve, days, userID, resultCallback)
end

--- 🛑 **DEPRECATED**: You should use the callback of steamworks.RequestPlayerInfo instead.  
--- Retrieves players name by his 64bit SteamID.  
--- You must call steamworks.RequestPlayerInfo a decent amount of time before calling this function.  
--- @param steamID64 string @The 64bit Steam ID ( aka Community ID ) of the player
--- @return string @The name of that player
function steamworks.GetPlayerName(steamID64)
end

--- Returns whenever the client is subscribed to the specified Steam Workshop item.  
--- @param workshopItemID string @The ID of the Steam Workshop item.
--- @return boolean @Is the client subscribed to the addon or not.
function steamworks.IsSubscribed(workshopItemID)
end

--- Opens the workshop website in the steam overlay browser.  
function steamworks.OpenWorkshop()
end

--- Requests information of the player with SteamID64 for later use with steamworks.GetPlayerName.  
--- @param steamID64 string @The 64bit Steam ID of player.
--- @param callback function @A callback function with only 1 argument - string name.
function steamworks.RequestPlayerInfo(steamID64, callback)
end

--- Returns whenever the specified Steam Workshop addon will be mounted or not.  
--- @param workshopItemID string @The ID of the Steam Workshop
--- @return boolean @Will the workshop item be mounted or not
function steamworks.ShouldMountAddon(workshopItemID)
end

--- Opens the workshop website for specified Steam Workshop item in the Steam overlay browser.  
--- @param workshopItemID string @The ID of workshop item.
function steamworks.ViewFile(workshopItemID)
end

--- 🛑 **DEPRECATED**: Use data steamworks.FileInfo instead.  
--- Retrieves vote info of supplied addon.  
--- @param workshopItemID string @The ID of workshop item.
--- @param resultCallback function @The function to process retrieved data
function steamworks.VoteInfo(workshopItemID, resultCallback)
end

