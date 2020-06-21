--- The http library allows either the server or client to communicate with external websites via HTTP, both GET (http.Fetch) and POST (http.Post) are supported. A more powerful & advanced method can be used via the global Global.HTTP function.  
_G.http = {}
--- Launches a GET request.  
--- ℹ **NOTE**: HTTP-requests on private networks don't work.  
---  To enable HTTP-requests on private networks use Command Line Parameters `-allowlocalhttp`  
--- @param url string @The URL of the website to fetch.
--- @param onSuccess function @Function to be called on success
--- @param onFailure function @Function to be called on failure
--- @param headers table @KeyValue table for headers
function http.Fetch(url, onSuccess, onFailure, headers)
end

--- Sends an asynchronous POST request to a HTTP server.  
--- HTTP requests returning a status code >= 400 are still considered a success and will call the onSuccess callback.  
--- The onFailure callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist)  
--- ℹ **NOTE**: HTTP-requests on private networks don't work. To enable HTTP-requests on private networks use Command Line Parameters `-allowlocalhttp`  
--- @param url string @The url to of the website to fetch.
--- @param parameters table @The post parameters to be send to the server
--- @param onSuccess function @The function called on success: function( string responseText, number contentLength, table responseHeaders, number statusCode )
--- @param onFailure function @The function called on failure: function( string errorMessage )
--- @param headers table @KeyValue table for headers
function http.Post(url, parameters, onSuccess, onFailure, headers)
end

