--- @meta

--- @class DEntityProperties : DProperties
--- 🚷 **INTERNAL**: Unless you know what you are doing and you benefit from this panel, you should be using the DProperties instead.  
--- A panel used by the Editable Entities system.  
local PANEL = {}
_G.DEntityProperties = PANEL;
--- Called when we were editing an entity and then it became invalid (probably removed). For Override  
function PANEL:OnEntityLost()
end

--- Sets the entity to be edited by this panel. The entity must support the Editable Entities system or nothing will happen.  
--- @param ent GEntity @The entity to edit
function PANEL:SetEntity(ent)
end
