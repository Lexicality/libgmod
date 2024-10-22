--- Used to display notifications on the screen (mid-right).  
_G.notification = {}
--- Adds a standard notification to your screen.  
--- @param text string @The text to display.
--- @param type number @Determines the notification method (e.g
--- @param length number @The number of seconds to display the notification for.
function notification.AddLegacy(text, type, length)
end

--- Adds a notification with an animated progress bar.  
--- @param id any @Can be any type
--- @param strText string @The text to show
--- @param frac? number @If set, overrides the progress bar animation with given percentage
function notification.AddProgress(id, strText, frac)
end

--- Removes the notification after 0.8 seconds.  
--- @param uid any @The unique ID of the notification
function notification.Kill(uid)
end
