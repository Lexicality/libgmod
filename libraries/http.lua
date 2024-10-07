--- The http library allows either the server or client to communicate with external websites via HTTP, both `GET` (http.Fetch) and `POST` (http.Post) are supported. A more powerful & advanced method can be used via the global Global.HTTP function.  
_G.http = {}
--- Launches an asynchronous **GET** request to an HTTP server. Internally calls Global.HTTP.  
--- HTTP requests returning a status code >= `400` are still considered a success and will call the onSuccess callback.  
--- The onFailure callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).  
--- A rough overview of possible onFailure messages:  
--- * `invalid url` - Invalid/empty url ( no request was attempted )  
--- * `invalid request` - Steam HTTP lib failed to create a HTTP request  
--- * `error` - OnComplete callback's second argument, `bError`, is `true`  
--- * `unsuccessful` - OnComplete's first argument, `pResult->m_bRequestSuccessful`, returned `false`  
--- 🦟 **BUG**: [This cannot send or receive multiple headers with the same name.](https://github.com/Facepunch/garrysmod-issues/issues/2232)  
--- ℹ **NOTE**: HTTP-requests that respond with a large body may return an `unsuccessful` error. Try using the [Range](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Range) header to download the file in chunks.  
--- ℹ **NOTE**:   
--- HTTP-requests to destinations on private networks (such as `192.168.0.1`, or `127.0.0.1`) won't work.  
--- To enable HTTP-requests to destinations on private networks use Command Line Parameters `-allowlocalhttp`. (Dedicated servers only)  
--- **Not all headers are allowed in the client realm, here is a list of known blacklisted headers inside the client realm:**  
--- ```  
--- host  
--- expect  
--- content-length  
--- proxy-authenticate  
--- accept-charset  
--- connection  
--- accept-encoding  
--- origin  
--- date  
--- ```  
--- @param url string @The URL of the website to fetch.
--- @param onSuccess? function @Function to be called on success
--- @param onFailure? function @Function to be called on failure
--- @param headers? table @KeyValue table for headers.
function http.Fetch(url, onSuccess, onFailure, headers)
end

--- Sends an asynchronous **POST** request to an HTTP server. Internally calls Global.HTTP.  
--- HTTP requests returning a status code >= `400` are still considered a success and will call the onSuccess callback.  
--- The onFailure callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).  
--- 🦟 **BUG**: [This cannot send or receive multiple headers with the same name.](https://github.com/Facepunch/garrysmod-issues/issues/2232)  
--- ℹ **NOTE**: HTTP-requests that respond with a large body may return an `unsuccessful` error. Try using the [Range](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Range) header to download the file in chunks.  
--- ℹ **NOTE**:   
--- HTTP-requests to destinations on private networks (such as `192.168.0.1`, or `127.0.0.1`) won't work.  
--- To enable HTTP-requests to destinations on private networks use Command Line Parameters `-allowlocalhttp`. (Dedicated servers only)  
--- @param url string @The url to of the website to post.
--- @param parameters table @The post parameters (x-www-form-urlencoded) to be send to the server
--- @param onSuccess? function @Function to be called on success
--- @param onFailure? function @Function to be called on failure
--- @param headers? table @KeyValue table for headers.
function http.Post(url, parameters, onSuccess, onFailure, headers)
end

