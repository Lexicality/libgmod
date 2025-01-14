--- @meta

--- The **TOOL** table is used in Sandbox tool creation. You can find a list of callbacks on the  page and a list of methods on the  page. Do note that some of the fields below have no effect on server-side operations.  
--- The tool information box drawn on the HUD while your tool is selected has 2 values that are set by language.Add.  
--- * `tool.[tool mode].name` - The tool name (Note this is NOT the same as TOOL.Name)  
--- * `tool.[tool mode].desc` - The tool description  
--- Ensure that all tool file names are entirely lowercase.  Including capital letters can lead to unintended behavior.  
--- @class STOOL : GWeapon
--- @field AddToMenu? boolean @If set to false, the tool won't be added to the tool menu and players will have to access it by other means.
--- @field Category? string @The tool menu category under which the tool should be listed.
--- @field Command? string @The console command to execute upon being selected in the Q menu.
--- @field Name? string @The name of the tool in the Q menu
--- @field ClientConVar table @A key-value ( convar name-default value ) table containing the client-side convars to create
--- @field ServerConVar table @Same as above, but created server-side instead.
--- @field ClientConVars table @A key-value ( string name - ConVar object ) table containing the cached convar objected created from `ClientConVar`.
--- @field ServerConVars table @Same as above, but server-side (`ServerConVar`) instead.
--- @field BuildCPanel function @The function that is called to build the context menu for your tool
--- @field Information table @Allows you to override the tool usage information shown when the tool is equipped
--- @field Mode string @Class name of the tool
--- @field Tab string @The tool tab (spawnmenu.AddToolTab) to add this tool to
--- @field LeftClickAutomatic? boolean @When enabled the game tries to run the left mouse click as soon as possible
--- @field RightClickAutomatic? boolean @When enabled the game tries to run the right mouse click as soon as possible
_G.TOOL = {}

--- Called when the tool's control panel needs to be rebuilt.  
--- ⚠ **WARNING**: Due to historical reasons, this hook does not provide the tool object as `self`! See examples.  
--- @param cpanel GPanel @The DForm control panel to add settings to.
function TOOL:BuildCPanel(cpanel)
end

--- Called when WEAPON:Deploy of the toolgun is called.  
--- This is also called when switching from another tool on the server.  
--- @return boolean @Return true to allow switching away from the toolgun using lastinv command
function TOOL:Deploy()
end

--- Called when WEAPON:DrawHUD of the toolgun is called, only when the user has this tool selected.  
function TOOL:DrawHUD()
end

--- Called after the default tool screen has been drawn from WEAPON:RenderScreen.  
--- ℹ **NOTE**: If this method exists on the TOOL object table, the default scrolling text will not be drawn  
--- ℹ **NOTE**: Materials rendered in this hook require $ignorez parameter to draw properly.  
--- @param width number @The width of the tool's screen in pixels.
--- @param height number @The height of the tool's screen in pixels.
function TOOL:DrawToolScreen(width, height)
end

--- Called when WEAPON:Think of the toolgun is called, only when the user has this tool selected.  
--- @return boolean @Return true to freeze the player
function TOOL:FreezeMovement()
end

--- Called when WEAPON:Holster of the toolgun is called, when switching between different toolguns.  
function TOOL:Holster()
end

--- Called when the user left clicks with the tool.  
--- @param tr table @A trace from user's eyes to wherever they aim at
--- @return boolean @Return `true` to draw the tool gun beam and play fire animations, `false` otherwise.
function TOOL:LeftClick(tr)
end

--- Called when the user presses the reload key with the tool out.  
--- @param tr table @A trace from user's eyes to wherever they aim at
--- @return boolean @Return `true` to draw the tool gun beam and play fire animations, `false` otherwise
function TOOL:Reload(tr)
end

--- Called when the user right clicks with the tool.  
--- @param tr table @A trace from user's eyes to wherever they aim at
--- @return boolean @Return `true` to draw the tool gun beam and play fire animations, `false` otherwise
function TOOL:RightClick(tr)
end

--- Called when WEAPON:Think of the toolgun is called. This only happens when the tool gun is currently equipped/selected by the player and the selected tool is this tool.  
function TOOL:Think()
end
