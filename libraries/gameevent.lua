--- Used to interface with the built-in game events system.  
--- ℹ **NOTE**:   
--- All Serverside gameevents are networked and called clientside. It could happen that a gameevent is called twice because of this like OnRequestFullUpdate.  
--- The following is a list of all available game events.  
_G.gameevent = {}
--- Adds a [game event](gameevent) listener, creating a new hook using the hook library, which can be listened to via hook.Add with the given `eventName` as event.  
--- ℹ **NOTE**:   
--- All gameevents are called in the **Menu State**, but if you want to use them you need to use some DLL(like [this](https://github.com/RaphaelIT7/gmod-gameevent) one) or you need to create your own.  
--- @param eventName string @The event to listen to
function gameevent.Listen(eventName)
end
