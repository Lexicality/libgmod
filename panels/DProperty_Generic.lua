--- @meta

--- @class DProperty_Generic : GPanel
--- 🚷 **INTERNAL**:   
--- A base for other controls for DProperties. Acts as a generic text input on its own.  
local PANEL = {}
_G.DProperty_Generic = PANEL;
--- Returns the internal row panel of a DProperties that this panel belongs to.  
--- @return GPanel @The row panel.
function PANEL:GetRow()
end

--- Sets up a generic control for use by DProperties.  
--- @param data table @See Editable Entities.
function PANEL:Setup(data)
end

--- Called by this control, or a derived control, to alert the row of the change.  
--- @param newVal any @The new value.
--- @param force boolean @Force an update.
function PANEL:ValueChanged(newVal, force)
end
