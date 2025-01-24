--- @meta

--- The timer library is a very useful set of functions which allow you to run a function periodically or after a given delay.  
_G.timer = {}
--- Adjusts a previously created (timer.Create) timer with the given identifier.  
--- @param identifier any @Identifier of the timer to adjust.
--- @param delay number @The delay interval in seconds
--- @param repetitions? number @Repetitions
--- @param func? function @The new function
--- @return boolean @`true` if succeeded.
function timer.Adjust(identifier, delay, repetitions, func)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: If you want to check if whether or not a timer exists, use timer.Exists.  
---  This function does nothing.  
function timer.Check()
end

--- Creates a new timer that will repeat its function given amount of times.  
--- This function also requires the timer to be named, which allows you to control it after it was created via the timer.  
--- For a simple one-time timer with no identifiers, see timer.Simple.  
--- ⚠ **WARNING**: Timers use Global.CurTime internally. Due to this, they won't advance while the client is timing out from the server or on an empty dedicated server due to hibernation. (unless `sv_hibernate_think` is set to `1`).  
--- @param identifier string @Identifier of the timer to create
--- @param delay number @The delay interval in seconds
--- @param repetitions number @The number of times to repeat the timer
--- @param func function @Function called when timer has finished the countdown.
function timer.Create(identifier, delay, repetitions, func)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using timer.Remove instead.  
---  Stops and destroys the given timer. Alias of timer.Remove.  
--- @param identifier string @Identifier of the timer to destroy.
function timer.Destroy(identifier)
end

--- Returns whenever the given timer exists or not.  
--- For debugging purposes you can use the following commands:  
--- * `lua_dumptimers_cl`  
--- * `lua_dumptimers_sv`  
--- * `lua_dumptimers_menu`  
--- These will list all active timers in each realm.  
--- @param identifier string @Identifier of the timer.
--- @return boolean @Returns true if the timer exists, false if it doesn't
function timer.Exists(identifier)
end

--- Pauses the given timer.  
--- @param identifier any @Identifier of the timer.
--- @return boolean @false if the timer didn't exist or was already paused, true otherwise.
function timer.Pause(identifier)
end

--- Stops and removes a timer created by timer.Create.  
--- ⚠ **WARNING**: The timers are removed in the next frame! Keep this in mind when storing identifiers in variables.  
--- @param identifier string @Identifier of the timer to remove.
function timer.Remove(identifier)
end

--- Returns amount of repetitions/executions left before the timer destroys itself.  
--- @param identifier any @Identifier of the timer.
--- @return number @The amount of executions left.
function timer.RepsLeft(identifier)
end

--- Creates a simple timer that runs the given function after a specified delay.  
--- For a more advanced version that you can control after creation, see timer.Create.  
--- ⚠ **WARNING**: Timers use Global.CurTime internally. Due to this, they won't advance while the client is timing out from the server or on an empty dedicated server due to hibernation. (unless `sv_hibernate_think` is set to `1`).  
--- @param delay number @How long until the function should be ran (in seconds)
--- @param func function @The function to run after the specified delay.
function timer.Simple(delay, func)
end

--- Restarts the given timer.  
--- ℹ **NOTE**: Timers use Global.CurTime for timing.  
--- ⚠ **WARNING**: Timers won't advance while the client is timing out from the server.  
--- @param identifier any @Identifier of the timer.
--- @return boolean @true if the timer exists, false if it doesn't.
function timer.Start(identifier)
end

--- Stops the given timer and rewinds it.  
--- @param identifier any @Identifier of the timer.
--- @return boolean @false if the timer didn't exist or was already stopped, true otherwise.
function timer.Stop(identifier)
end

--- Returns amount of time left (in seconds) before the timer executes its function.  
--- ℹ **NOTE**: If the timer is paused, the amount will be negative.  
--- @param identifier any @Identifier of the timer.
--- @return number @The amount of time left (in seconds).
function timer.TimeLeft(identifier)
end

--- Runs either timer.Pause or timer.UnPause based on the timer's current status.  
--- @param identifier any @Identifier of the timer.
--- @return boolean @status of the timer.
function timer.Toggle(identifier)
end

--- Unpauses the timer.  
--- @param identifier any @Identifier of the timer.
--- @return boolean @false if the timer didn't exist or was already running, true otherwise.
function timer.UnPause(identifier)
end
