--- @class GConVar
--- An object returned by Global.CreateConVar, Global.CreateClientConVar (which uses Global.CreateConVar internally), and Global.GetConVar. It represents a console variable. See this page for more information.  
local GConVar = {}
--- Tries to convert the current string value of a ConVar to a boolean.  
--- @return boolean @The boolean value of the console variable
function GConVar:GetBool()
end

--- Returns the default value of the ConVar  
--- @return string @The default value of the console variable.
function GConVar:GetDefault()
end

--- Returns the Enums/FCVAR flags of the ConVar  
--- @return number @The bitflag
function GConVar:GetFlags()
end

--- Attempts to convert the ConVar value to a float  
--- @return number @The float value of the console variable
function GConVar:GetFloat()
end

--- Returns the help text assigned to that convar.  
--- @return string @The help text
function GConVar:GetHelpText()
end

--- Attempts to convert the ConVar value to a integer.  
--- @return number @The integer value of the console variable
function GConVar:GetInt()
end

--- Returns the maximum value of the ConVar  
--- @return number @The maximum value of the ConVar
function GConVar:GetMax()
end

--- Returns the minimum value of the ConVar  
--- @return number @The minimum value of the ConVar
function GConVar:GetMin()
end

--- Returns the name of the ConVar.  
--- @return string @The name of the console variable.
function GConVar:GetName()
end

--- Returns the current ConVar value as a string.  
--- @return string @The current console variable value as a string.
function GConVar:GetString()
end

--- Returns whether the specified flag is set on the ConVar  
--- @param flag number @The Enums/FCVAR flag to test
--- @return boolean @Whether the flag is set or not
function GConVar:IsFlagSet(flag)
end

--- Reverts ConVar to its default value  
function GConVar:Revert()
end

--- Sets a ConVar's value to 1 or 0 based on the input boolean. This can only be ran on ConVars created from within Lua.  
--- @param value boolean @Value to set the ConVar to.
function GConVar:SetBool(value)
end

--- Sets a ConVar's value to to the input number. This can only be ran on ConVars created from within Lua.  
--- @param value number @Value to set the ConVar to.
function GConVar:SetFloat(value)
end

--- Sets a ConVar's value to the input number after converting it to an integer. This can only be ran on ConVars created from within Lua.  
--- @param value number @Value to set the ConVar to.
function GConVar:SetInt(value)
end

--- Sets a ConVar's value to the input string. This can only be ran on ConVars created from within Lua.  
--- @param value string @Value to set the ConVar to.
function GConVar:SetString(value)
end

