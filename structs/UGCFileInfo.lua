--- @meta

--- Table structure used by steamworks.FileInfo.  
--- @class SUGCFileInfo
--- @field id number @The Workshop item ID
--- @field title string @The title of the Workshop item
--- @field description string @The description of the Workshop item
--- @field fileid number @The internal File ID of the workshop item, if any
--- @field previewid number @The internal File ID of the workshop item preview, if any
--- @field previewurl string @A URL to the preview image of the workshop item
--- @field owner number @The SteamID64 of the original uploader of the addon
--- @field created number @Unix timestamp of when the item was created
--- @field updated number @Unix timestamp of when the file was last updated
--- @field banned boolean @Whether the file is banned or not
--- @field tags string @Comma (,) separated list of tags, may be truncated to some length
--- @field size number @File size of the workshop item contents in bytes
--- @field previewsize number @Filesize of the preview file in bytes
--- @field installed boolean @If the addon is subscribed, this value represents whether it is installed on the client and its files are accessible, false otherwise.
--- @field disabled boolean @If the addon is subscribed, this value represents whether it is disabled on the client, false otherwise.
--- @field children table @A list of child Workshop Items for this item
--- @field ownername string @<warning>We advise against using this
--- @field error number @If this key is set, no other data will be present in the response
--- @field up number @Number of "up" votes for this item.
--- @field down number @Number of "down" votes for this item.
--- @field total number @Number of total votes (up and down) for this item
--- @field score number @The up down vote ratio for this item, i.e
--- @field content_descriptors string[] @A list of Steam content descriptiors for this Steam Workshop item
