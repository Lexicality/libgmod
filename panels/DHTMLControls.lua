--- @meta

--- @class DHTMLControls : GPanel
--- An element providing navigation controls for a DHTML window.  
local PANEL = {}
_G.DHTMLControls = PANEL;
--- Sets the color of the navigation buttons.  
--- @param clr table @A Color
function PANEL:SetButtonColor(clr)
end

--- Sets the DHTML element to control with these DHTMLControls.  
--- @param dhtml GPanel @The HTML panel
function PANEL:SetHTML(dhtml)
end
