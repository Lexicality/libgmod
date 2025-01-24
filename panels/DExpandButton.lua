--- @meta

--- @class DExpandButton : DButton
--- 🚷 **INTERNAL**:   
--- The little "+" button used by DProperties and DTree_Node.  
local PANEL = {}
_G.DExpandButton = PANEL;
--- Returns whether this DExpandButton is expanded or not.  
--- @return boolean @True if expanded, false otherwise
function PANEL:GetExpanded()
end

--- Sets whether this DExpandButton should be expanded or not. Only changes appearance.  
--- @param expanded boolean @True to expand ( visually will show a "-" )
function PANEL:SetExpanded(expanded)
end
