--- @meta

--- Used for serverlist.Query.  
--- @class SServerQueryData
--- @field GameDir? string @The game directory to get the servers for
--- @field Type string @Type of servers to retrieve
--- @field AppID? number @Steam application ID to get the servers for
--- @field Callback function @Called when a new server is found and queried
--- @field CallbackFailed function @Called if the query has failed, called with the servers IP Address
--- @field Finished function @Called when the query is finished
