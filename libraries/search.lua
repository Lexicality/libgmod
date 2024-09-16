--- The search library  
_G.search = {}
--- Adds a search result provider. For examples, see [gamemodes/sandbox/gamemode/cl_search_models.lua](https://github.com/Facepunch/garrysmod/blob/7c23addd2c35d3d046c80e3d0cb6052055eca3e2/garrysmod/gamemodes/sandbox/gamemode/cl_search_models.lua)  
--- @param provider? function @Provider function
--- @param id? string @If provided, ensures that only one provider exists with the given ID at a time.
function search.AddProvider(provider, id)
end

--- Retrieves search results.  
--- @param query? string @Search query
--- @param types? string @If set, only searches given provider type(s), instead of everything
--- @param maxResults? number @How many results to stop at
--- @return table @A table of results
function search.GetResults(query, types, maxResults)
end

