--- @meta

--- @class DKillIcon : GPanel
--- Uses the killicon to persistently draw a killicon.  
local PANEL = {}
_G.DKillIcon = PANEL;
--- Gets the killicon being shown.  
--- @return string @The name of the killicon currently being displayed.
function PANEL:GetName()
end

--- Sets the killicon to be displayed. You should call Panel:SizeToContents following this.  
--- Killicons can be added with killicon.Add and killicon.AddFont.  
--- @param iconName string @The name of the killicon to be displayed.
function PANEL:SetName(iconName)
end
