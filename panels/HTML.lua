--- @meta

--- @class VHTML : GPanel
--- The HTML control can be used to display web pages just like an internet browser.  
--- DHTML has additional functionality for interfacing with the page, such as sending and receiving data.  
--- ## Blocked URL Extentions  
--- This means your url cannot end in any of these extensions, e.g.: (http://yourdomain.com/garry.exe)  
--- * .exe  
--- * .bat  
--- * .dll  
--- * .zip  
--- * .mp3  
--- * .swf  
local PANEL = {}
--- Called when the page inside the HTML window runs the `console.log` javascript function.  
--- On the x86-64 beta, it's called for all built-in `console.*` javascript functions.  
--- Overwriting this function in any way will disable default behavior of printing the message to the in-game console.  
--- @param msg string @The message to be logged (or Lua code to be executed; see above).
--- @param file string @The message source file, if any.
--- @param lineNr number @The line number in the file the message was output from.
--- @param severity string @The severity of the message
function PANEL:ConsoleMessage(msg, file, lineNr, severity)
end

--- Called when this panel begins loading a page.  
--- @param url string @The URL of the current page.
function PANEL:OnBeginLoadingDocument(url)
end

--- Called by the engine when a callback function is called.  
--- @param library string @Library name of the JS function that was called.
--- @param name string @Name of the JS function that was called.
--- @param arguments table @Table containing all arguments passed to the JS function.
--- @return boolean @Return `true` to suppress default engine action.
function PANEL:OnCallback(library, name, arguments)
end

--- Called when this panel's address changes.  
--- @param url string @The URL of the new page.
function PANEL:OnChangeAddressBar(url)
end

--- Called by HTML panels when the target URL of the frame has changed, this happens when you hover over a link.  
--- @param url string @New target URL.
function PANEL:OnChangeTargetURL(url)
end

--- Called by HTML panels when the title of the loaded page has been changed.  
--- @param newTitle string @The new title of the page.
function PANEL:OnChangeTitle(newTitle)
end

--- Called by HTML panels when the page attempts to open a new child view (such as a popup or new tab).  
--- @param sourceURL string @The URL of the page requesting to create a child.
--- @param targetURL string @The URL of the requested child.
--- @param isPopup boolean @True if the requested view is a popup.
function PANEL:OnChildViewCreated(sourceURL, targetURL, isPopup)
end

--- Called by HTML panels when the panel's DOM has been set up. You can run JavaScript in here.  
--- @param url string @The URL of the current page.
function PANEL:OnDocumentReady(url)
end

--- Called when this panel successfully loads a page.  
--- @param url string @The URL of the current page.
function PANEL:OnFinishLoadingDocument(url)
end
