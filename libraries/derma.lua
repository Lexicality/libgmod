--- The derma library allows you to add custom derma controls and create & modify derma skins.  
_G.derma = {}
--- Gets the color from a Derma skin of a panel and returns default color if not found  
--- @param name string 
--- @param pnl GPanel 
--- @param default table @The default color in case of failure.
function derma.Color(name, pnl, default)
end

--- This is NOT a function, it's a variable containing all derma controls, registered with derma.DefineControl.  
--- Use derma.GetControlList to retrieve this list.  
--- It's a list of tables, each having 3 keys, all from derma.DefineControl arguments:  
--- * string ClassName - The class name of the panel  
--- * string Description - The description of the panel  
--- * string BaseClass - The base class of the panel  
--- @return table @The list of all registered derma controls.
function derma.Controls()
end

--- Defines a new Derma control with an optional base.  
--- This calls vgui.Register internally, but also does the following:  
--- * Adds the control to derma.GetControlList  
--- * Adds a key "Derma" - This is returned by derma.GetControlList  
--- * Makes a global table with the name of the control (This is technically deprecated and should not be relied upon)  
--- * If reloading (i.e. called this function with name of an existing panel), updates all existing instances of panels with this name. (Updates functions, calls PANEL:PreAutoRefresh and PANEL:PostAutoRefresh, etc.)  
--- @param name string @Name of the newly created control
--- @param description string @Description of the control
--- @param tab table @Table containing control methods and properties
--- @param base string @Derma control to base the new control off of
--- @return table @A table containing the new control's methods and properties
function derma.DefineControl(name, description, tab, base)
end

--- Defines a new skin so that it is usable by Derma. The default skin can be found in `garrysmod/lua/skins/default.lua`  
--- @param name string @Name of the skin
--- @param descriptions string @Description of the skin
--- @param skin table @Table containing skin data
function derma.DefineSkin(name, descriptions, skin)
end

--- Returns the derma.Controls table, a list of all derma controls registered with derma.DefineControl.  
--- @return table @A listing of all available derma-based controls
function derma.GetControlList()
end

--- Returns the default skin table, which can be changed with the hook GM:ForceDermaSkin  
--- @return table @Skin table
function derma.GetDefaultSkin()
end

--- Returns the skin table of the skin with the supplied name  
--- @param name string @Name of skin
--- @return table @Skin table
function derma.GetNamedSkin(name)
end

--- Returns a copy of the table containing every Derma skin  
--- @return table @Table of every Derma skin
function derma.GetSkinTable()
end

--- Clears all cached panels so that they reassess which skin they should be using.  
function derma.RefreshSkins()
end

--- Returns how many times derma.RefreshSkins has been called.  
--- @return number @Amount of times derma.RefreshSkins has been called.
function derma.SkinChangeIndex()
end

--- Calls the specified hook for the given panel  
--- @param type string @The type of hook to run
--- @param name string @The name of the hook to run
--- @param panel GPanel @The panel to call the hook for
--- @param vararg1? any @First parameter for the panel hook
--- @param vararg2? any @Second parameter for the panel hook
--- @param vararg3? any @Third parameter for the panel hook.
--- @param vararg4? any @Fourth parameter for the panel hook.
--- @return any @The returned variable from the skin hook
function derma.SkinHook(type, name, panel, vararg1, vararg2, vararg3, vararg4)
end

--- This is NOT a function, it's a variable containing all registered via derma.DefineSkin derma skins.  
--- @return table @The list of all registered derma skins.
function derma.SkinList()
end

--- Returns a function to draw a specified texture of panels skin.  
--- These are usually generated via GWEN.CreateTextureBorder and similar.  
--- @param name string @The identifier of the texture
--- @param pnl GPanel @Panel to get the skin of.
--- @param fallback? function @What to return if we failed to retrieve the texture
--- @return function @A function that is created with the GWEN library to draw a texture
function derma.SkinTexture(name, pnl, fallback)
end
