--- @meta

--- @class VControlPresets : GPanel
--- A preset manager, found at the top of almost every default tool's C-menu.  
--- This control only exists in Sandbox derived gamemodes.  
local PANEL = {}
--- Adds a convar to be managed by this control.  
--- @param convar string @The convar to add.
function PANEL:AddConVar(convar)
end

--- Adds option to the DComboBox subelement with DComboBox:AddChoice then adds it to the `options` subtable  
--- @param strName string @Name
--- @param data any @data
function PANEL:AddOption(strName, data)
end

--- Runs Panel:Clear on the Internal DComboBox  
function PANEL:Clear()
end

--- Get a list of all Console Variables being managed by this panel.  
--- @return table @numbered table of convars
function PANEL:GetConVars()
end

--- Checks if Data is valid then uses Global.pairs to iterate over the data parameter and run each entry using Global.RunConsoleCommand  
--- ⁉ **VALIDATE**: Index and Value parameters appear to not be used. Further testing should be done to confirm  
--- @param index number @Name
--- @param value any 
--- @param data table 
function PANEL:OnSelect(index, value, data)
end

--- Creates and opens PresetEditor  
function PANEL:OpenPresetEditor()
end

--- @param text string 
function PANEL:QuickSaveInternal(text)
end

function PANEL:QuickSavePreset()
end

function PANEL:ReloadPresets()
end

--- Set the name label text.  
--- @param name string @The text to put in the label
function PANEL:SetLabel(name)
end

--- Uses table.Merge to combine the provided table into the `Options` subtable  
--- @param Options table @Options
function PANEL:SetOptions(Options)
end

--- @param strName string @Name of preset to set
function PANEL:SetPreset(strName)
end

--- Alias of ControlPresets:ReloadPresets  
function PANEL:Update()
end
