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
--- @return number, number
function chat.GetChatBoxPos()
end

--- Returns the chatbox size.  
--- @return number, number
function chat.GetChatBoxSize()
end

--- Opens the chat window.  
--- @param mode number @If equals 1, opens public chat, otherwise opens team chat
function chat.Open(mode)
end

--- Plays the chat "tick" sound.  
function chat.PlaySound()
end

