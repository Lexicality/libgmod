--- Coroutines are similar to threads, however they do not run simultaneously. They offer a way to split up tasks and dynamically pause & resume functions.  
_G.coroutine = {}
--- Creates a coroutine of the given function.  
--- @param func function @The function for the coroutine to use.
--- @return thread @coroutine
function coroutine.create(func)
end

--- Returns whether the running coroutine can yield.  
--- A running coroutine is yieldable if it is not in the main thread, and it is not inside a non-yieldable C function.  
--- ℹ **NOTE**: This is only available on the x86-64 versions, because of the difference in the LuaJIT version. [See here](jit.version)  
--- @return boolean @Returns true when the running coroutine can yield.
function coroutine.isyieldable()
end

--- Resumes the given coroutine and passes the given vararg to either the function arguments or the coroutine.yield that is inside that function and returns whatever yield is called with the next time or by the final return in the function.  
--- @param coroutine thread @Coroutine to resume.
--- @vararg any @Arguments to be returned by coroutine.yield.
--- @return boolean @If the executed thread code had no errors occur within it.
--- @return any @If an error occurred, this will be a string containing the error message
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

--- Repeatedly yields the coroutine for the given duration before continuing.  
--- Only works inside a coroutine. Only useful in nextbot coroutine think function.  
--- This function uses Global.CurTime instead of Global.RealTime.  
--- @param duration number @The number of seconds to wait
function coroutine.wait(duration)
end

--- Returns a function which calling is equivalent with calling coroutine.resume with the coroutine and all extra parameters.  
--- The values returned by the returned function only contain the values passed to the inner coroutine.yield call and do not include the *no error* status that coroutine.resume provides. In case of failure, an error is thrown instead.  
--- @param coroutine function @Coroutine to resume.
--- @return function 
function coroutine.wrap(coroutine)
end

--- Pauses the active coroutine and passes all additional variables to the call of coroutine.resume that resumed the coroutine last time, and returns all additional variables that were passed to the previous call of resume.  
--- @vararg any @Arguments to be returned by the last call of coroutine.resume.
--- @return any @Arguments that were set previously by coroutine.resume.
function coroutine.yield(...)
end

