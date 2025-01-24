--- @meta

--- @class VMatSelect : VContextBase
--- The panel used by Material & Lamp Sandbox tools for texture selection. Despite being only used in Sandbox, it is **not** exclusive to that gamemode.  
--- See also PropSelect for the prop selecting alternative.  
local PANEL = {}
--- Adds a new material to the selection list.  
--- @param label string @Tooltip for the material, for when the player hovers over the material.
--- @param path string @Path to the material
function PANEL:AddMaterial(label, path)
end

--- Adds a new material to the selection list, with some extra options.  
--- @param label string @Tooltip for the material, for when the player hovers over the material.
--- @param path string @Path to the material
--- @param value any @Overrides the "value" of the material
--- @param convars table @A list of convar names (as keys) and their values to set when the user selects this material
function PANEL:AddMaterialEx(label, path, value, convars)
end

--- Find a material and selects it, if it exists in this panel.  
--- @param mat string @The material to find and select within this MatSelect.
function PANEL:FindAndSelectMaterial(mat)
end

--- Find a DImageButton panel based on the input material path.  
--- @param mat string @The material to find within this MatSelect.
--- @return DImageButton @The found material, or nil.
function PANEL:FindMaterialByValue(mat)
end

--- Returns whether the panel would set its own height to fit all materials within its height.  
--- @return boolean @`true` = auto size itself.
function PANEL:GetAutoHeight()
end

--- Called when the player right clicks a material.  
--- By default, this opens a menu that lets the player copy the material path.  
--- @param pnl GPanel @The DImageButton that was clicked.
function PANEL:OnRightClick(pnl)
end

--- Called when the player selects a material.  
--- @param material string @Material path of the selected material, not including any file extension.
--- @param pnl GPanel @The DImageButton that was clicked.
function PANEL:OnSelect(material, pnl)
end

--- Defines a paint over function for a DImageButton when it is selected.  
--- ⚠ **WARNING**: `self` in the context of this function is the DImageButton!  
--- @param w number @Width of the DImageButton panel.
--- @param h number @Height of the DImageButton panel.
function PANEL:SelectedItemPaintOver(w, h)
end

--- Sets whether the panel should set its own height to fit all materials within its height.  
--- @param autoSize boolean @If `true`, auto size itself.
function PANEL:SetAutoHeight(autoSize)
end

--- Sets the height of a single material in pixels.  
--- @param height_ number @The height of the material, in pixels
function PANEL:SetItemHeight(height_)
end

--- Sets the width of a single material in pixels.  
--- @param width number @The width of the material, in pixels
function PANEL:SetItemWidth(width)
end

--- Sets the target height of the panel, in number of rows.  
--- @param rows number @Amount of rows to target the height to
function PANEL:SetNumRows(rows)
end
