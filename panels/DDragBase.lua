--- @meta

--- @class DDragBase : DPanel
--- 🚷 **INTERNAL**:   
--- A VGUI base panel providing drag/drop functionality. Used by DIconLayout, DListLayout and DTileLayout.  
local PANEL = {}
_G.DDragBase = PANEL;
--- Returns the drag'n'drop group this panel belongs to. See DDragBase:MakeDroppable. An Global.AccessorFunc  
--- @return string @Name of the DnD family.
function PANEL:GetDnD()
end

--- Returns whether this panel is read only or not for drag'n'drop purposes. An Global.AccessorFunc  
--- @return boolean @Whether this panel is read only or not.
function PANEL:GetReadOnly()
end

--- Whether this panel uses live drag'n'drop previews. An Global.AccessorFunc  
--- @return boolean 
function PANEL:GetUseLiveDrag()
end

--- Makes the panel a receiver for any droppable panel with the same DnD name. Internally calls Panel:Receiver.  
--- See Drag and Drop for VGUI.  
--- @param name string @The unique name for the receiver slot
--- @param allowCopy boolean @Whether or not to allow droppable panels to be copied when the <key>Ctrl</key> key is held down.
function PANEL:MakeDroppable(name, allowCopy)
end

--- Called when anything is dropped on or rearranged within the DDragBase. For Override  
function PANEL:OnModified()
end

--- Determines where you can drop stuff.  
--- "4" for left  
--- "5" for center  
--- "6" for right  
--- "8" for top  
--- "2" for bottom  
--- @param pos? string @Where you're allowed to drop things.
function PANEL:SetDropPos(pos)
end

--- Sets whether this panel is read only or not for drag'n'drop purposes. If set to `true`, you can only copy from this panel, and cannot modify its contents. This is an Global.AccessorFunc  
--- @param name boolean @Whether this panel should be read only or not.
function PANEL:SetReadOnly(name)
end

--- Whether to use live drag'n'drop previews. This is an Global.AccessorFunc  
--- @param newState boolean 
function PANEL:SetUseLiveDrag(newState)
end
