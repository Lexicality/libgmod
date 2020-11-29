--- Coroutines are similar to threads, however they do not run simultaneously. They offer a way to split up tasks and dynamically pause & resume functions.  
_G.coroutine = {}
--- Creates a coroutine of the given function.  
--- @param func function @The function for the coroutine to use
--- @return thread @coroutine
function coroutine.create(func)
end

--- Resumes the given coroutine and passes the given vararg to either the function arguments or the coroutine.yield that is inside that function and returns whatever yield is called with the next time or by the final return in the function.  
--- @param coroutine thread @Coroutine to resume.
--- @vararg any @Arguments to be returned by coroutine.yield.
--- @return boolean @If the executed thread code had no errors occur within it.
--- @return any @If an error occured, this will be a string containing the error message
function coroutine.resume(coroutine, ...)
end

--- Returns the active coroutine or nil if we are not within a coroutine.  
--- @return thread @coroutine
function coroutine.running()
end

--- Returns the status of the coroutine passed to it, the possible statuses are "suspended", "running", and "dead".  
--- @param coroutine thread @Coroutine to check the status of.
--- @return string @status
function coroutine.status(coroutine)
end

--- Yields the coroutine for the given duration before continuing.  
--- This only works inside a coroutine.  
--- This function uses Global.CurTime instead of Global.RealTime.  
--- @param duration number @The number of seconds to wait
function coroutine.wait(duration)
end

--- Returns a function which calling is equivalent with calling coroutine.resume with the coroutine and all extra parameters.  
--- @param coroutine function @Coroutine to resume.
--- @return function @func
function coroutine.wrap(coroutine)
end

--- Pauses the active coroutine and passes all additional variables to the call of coroutine.resume that resumed the coroutine last time, and returns all additional variables that were passed to the previous call of resume.  
--- @vararg any @Arguments to be returned by the last call of coroutine.resume
--- @return any @Arguments that were set previously by coroutine.resume
function coroutine.yield(...)
end

