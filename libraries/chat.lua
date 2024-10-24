--- @meta

--- The chat library's purpose is to interface with the default chatbox.  
_G.chat = {}
--- Adds text to the local player's chat box (which only they can read).  
--- @vararg any @The arguments
function chat.AddText(...)
end

--- Closes the chat window.  
function chat.Close()
end

--- Returns the chatbox position.  
--- @return number @The X coordinate of the chatbox's position.
--- @return number @The Y coordinate of the chatbox's position.
function chat.GetChatBoxPos()
end

--- Returns the chatbox size.  
--- @return number @The width of the chatbox.
--- @return number @The height of the chatbox.
function chat.GetChatBoxSize()
end

--- Opens the chat window.  
--- @param mode number @If equals 1, opens public chat, otherwise opens team chat
function chat.Open(mode)
end

--- Plays the chat "tick" sound.  
function chat.PlaySound()
end
