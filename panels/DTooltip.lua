--- @meta

--- @class DTooltip : DLabel
--- 🚷 **INTERNAL**:   
--- The panel used internally for tool tips. See Panel:SetTooltip.  
local PANEL = {}
_G.DTooltip = PANEL;
--- Forces the tooltip to close. This will remove the panel.  
function PANEL:Close()
end

--- Used to draw a triangle beneath the DTooltip  
--- ℹ **NOTE**: Requires DTooltip:SetContents, without this it will error  
--- @param x number @arrow location on the x axis
--- @param y number @arrow location on the y axis
function PANEL:DrawArrow(x, y)
end

--- What Panel you want put inside of the DTooltip  
--- ℹ **NOTE**: You can only have one Panel at a time; use Parenting to add more  
--- @param panel GPanel @Contents
--- @param delete? boolean @If set to true, the panel in the first argument will be automatically removed when DTooltip is closed via DTooltip:Close.
function PANEL:SetContents(panel, delete)
end
