--- The system library provides functions that allow you to gather information about the system running the game, such as operating system, uptime and battery level.  
_G.system = {}
--- Returns the total uptime of the current application as reported by Steam.  
--- This will return a similar value to Global.SysTime.  
--- ℹ **NOTE**: This function does not work on Dedicated Servers and will instead return no value.  
--- @return number @Seconds of game uptime as an integer.
function system.AppTime()
end

--- Returns the current battery power.  
--- @return number @0-100 if a battery (laptop, UPS, etc) is present
function system.BatteryPower()
end

--- Flashes the window, turning the border to white briefly  
function system.FlashWindow()
end

--- Returns the country code of this computer, determined by the localisation settings of the OS.  
--- ℹ **NOTE**: This function does not work on Dedicated Servers and will instead return no value.  
--- @return string @Two-letter country code, using [ISO 3166-1](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) standard.
function system.GetCountry()
end

--- Returns whether or not the game window has focus.  
--- ℹ **NOTE**: This function does not work on dedicated servers and will instead return no value.  
--- @return boolean @Whether or not the game window has focus.
function system.HasFocus()
end

--- Returns whether the current OS is Linux.  
--- @return boolean @Whether or not the game is running on Linux.
function system.IsLinux()
end

--- Returns whether the current OS is OSX.  
--- @return boolean @Whether or not the game is running on OSX.
function system.IsOSX()
end

--- Returns whether the game is being run in a window or in fullscreen (you can change this by opening the menu, clicking 'Options', then clicking the 'Video' tab, and changing the Display Mode using the dropdown menu):  
--- @return boolean @Is the game running in a window?
function system.IsWindowed()
end

--- Returns whether the current OS is Windows.  
--- @return boolean @Whether the system the game runs on is Windows or not.
function system.IsWindows()
end

--- Returns the synchronized Steam time. This is the number of seconds since the [Unix epoch](http://en.wikipedia.org/wiki/Unix_time).  
--- ℹ **NOTE**: This function does not work on Dedicated Servers and will instead return no value.  
--- @return number @Current Steam-synchronized Unix time.
function system.SteamTime()
end

--- Returns the amount of seconds since the Steam user last moved their mouse.  
--- This is a direct binding to ISteamUtils->GetSecondsSinceComputerActive, and is most likely related to Steam's automatic "Away" online status.  
--- ℹ **NOTE**: This function does not work on Dedicated Servers and will instead return no value.  
--- @return number @The amount of seconds since the Steam user last moved their mouse.
function system.UpTime()
end

