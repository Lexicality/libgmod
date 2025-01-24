--- @meta

--- @class DSizeToContents : GPanel
--- A helper panel that will automatically resize itself to fit all its children using Panel:SizeToChildren.  
local PANEL = {}
_G.DSizeToContents = PANEL;
--- Returns whether the DSizeToContents panel should size to contents horizontally.  
--- @return boolean @Whether the panel should size to contents horizontally.
function PANEL:GetSizeX()
end

--- Returns whether the DSizeToContents panel should size to contents vertically.  
--- @return boolean @Whether the panel should size to contents vertically.
function PANEL:GetSizeY()
end

--- Sets whether the DSizeToContents panel should size to contents horizontally. This is `true` by default.  
--- @param sizeX boolean @Whether the panel should size to contents horizontally.
function PANEL:SetSizeX(sizeX)
end

--- Sets whether the DSizeToContents panel should size to contents vertically. This is `true` by default.  
--- @param sizeY boolean @Whether the panel should size to contents vertically.
function PANEL:SetSizeY(sizeY)
end
