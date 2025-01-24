--- @meta

--- @class DTileLayout : DDragBase
--- Similarly to DIconLayout, this lays out panels in two dimensions as tiles.  
--- The difference between this and DIconLayout is that DIconLayout items all have the same height while  
--- DTileLayout items do not have this enforcement.  
--- DTileLayout will find the best way to "pack" its children.  
--- For example, in a two column layout, a item of height 2 units will be placed in one column while  
--- two items of height 1 unit will be placed in the other column.  
--- It is worth noting however that because this panel iterates through its children in an undefined order and lays out while  
--- it is iterating, there is no guarantee that this packing will lead to the lowest possible height.  
--- This is used by the spawnmenu to arrange spawnicons.  
--- The base size defines the smallest a tile can be, and it will resize vertically to accommodate all child panels.  
--- The number of elements in each row is determined by the base size and width.  
--- It also optionally permits the rearrangement of these tiles.  
--- To enable this functionality, call DDragBase:MakeDroppable on the DTileLayout with a unique identifier.  
--- All panels added following this will be moveable.  
local PANEL = {}
_G.DTileLayout = PANEL;
--- Creates and returns an exact copy of the DTileLayout.  
--- @return GPanel @The created copy.
function PANEL:Copy()
end

--- Creates copies of all the children from the given panel object and parents them to this one.  
--- @param source GPanel @The source panel from which to copy all children.
function PANEL:CopyContents(source)
end

--- Returns the size of each single tile, set with DTileLayout:SetBaseSize.  
--- @return number @Base tile size.
function PANEL:GetBaseSize()
end

--- Returns the border spacing set by DTileLayout:SetBorder.  
--- @return number @The border spacing
function PANEL:GetBorder()
end

--- Returns the minimum height the DTileLayout can resize to.  
--- @return number @The minimum height the panel can shrink to.
function PANEL:GetMinHeight()
end

--- Returns the X axis spacing between 2 elements set by DTileLayout:SetSpaceX.  
--- @return number 
function PANEL:GetSpaceX()
end

--- Returns the Y axis spacing between 2 elements set by DTileLayout:SetSpaceY.  
--- @return number 
function PANEL:GetSpaceY()
end

--- Resets the last width/height info, and invalidates the panel's layout, causing it to recalculate all child positions. It is called whenever a child is added or removed, and can be called to refresh the panel.  
function PANEL:Layout()
end

--- Called when anything is dropped on or rearranged within the DTileLayout.  
function PANEL:OnModified()
end

--- Sets the size of a single tile. If a child panel is larger than this size, it will occupy several tiles.  
--- If you are setting the size of the children properly then you probably don't need to change this.  
--- @param size number @The size of each tile
function PANEL:SetBaseSize(size)
end

--- Sets the spacing between the border/edge of the DTileLayout and all the elements inside.  
--- @param border number 
function PANEL:SetBorder(border)
end

--- Determines the minimum height the DTileLayout will resize to. This is useful if child panels will be added/removed often.  
--- @param minH number @The minimum height the panel can shrink to.
function PANEL:SetMinHeight(minH)
end

--- Sets the spacing between 2 elements in the DTileLayout on the X axis.  
--- @param spacingX number @New X axis spacing.
function PANEL:SetSpaceX(spacingX)
end

--- Sets the spacing between 2 elements in the DTileLayout on the Y axis.  
--- @param spaceY number @New Y axis spacing.
function PANEL:SetSpaceY(spaceY)
end
