--- @meta

--- @class DTree : DScrollPanel
--- A tree view element for Derma.  
--- See also DTree_Node.  
local PANEL = {}
_G.DTree = PANEL;
--- Add a node to the DTree  
--- @param name string @Name of the option.
--- @param icon? string @The icon that will show nexto the node in the DTree.
--- @return GPanel @Returns the created DTree_Node panel.
function PANEL:AddNode(name, icon)
end

--- Called when the any node is clicked. Called by DTree_Node:DoClick.  
--- @param node DTree_Node @The right clicked node.
--- @return boolean 
function PANEL:DoClick(node)
end

--- Called when the any node is right clicked. Called by DTree_Node:DoRightClick.  
--- @param node DTree_Node @The right clicked node.
--- @return boolean 
function PANEL:DoRightClick(node)
end

--- Returns the status of DTree:SetClickOnDragHover. See that for more info.  
--- @return boolean 
function PANEL:GetClickOnDragHover()
end

--- Returns the indentation size of the DTree, the distance between each "level" of the tree is offset on the left from the previous level.  
--- Currently this feature has no effect on the DTree element.  
--- @return number @The indentation size.
function PANEL:GetIndentSize()
end

--- Returns the height of each DTree_Node in the tree.  
--- @return number @The height of each DTree_Node in the tree.
function PANEL:GetLineHeight()
end

--- Returns the currently selected node.  
--- @return GPanel @Curently selected DTree_Node.
function PANEL:GetSelectedItem()
end

--- Returns whether or not the Silkicons next to each node of the DTree will be displayed.  
--- Individual icons can be set with DTree_Node:SetIcon or passed as the second argument in DTree:AddNode.  
--- @return boolean @Whether or not the silkicons next to each node will be displayed.
function PANEL:GetShowIcons()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
function PANEL:LayoutTree()
end

--- Moves given node to the top of DTrees children. (Makes it the topmost mode)  
--- Used as a placeholder function alongside DTree:ExpandTo, DTree:SetExpanded and DTree:ChildExpanded.  
--- The DTree acts a root node and methods with the same name in DTree_Node call to the parent.  
--- @param child GPanel @The node to move
--- @param pos number @<deprecated></deprecated> Unused, does nothing.
function PANEL:MoveChildTo(child, pos)
end

--- This function is called when a node within a tree is selected.  
--- @param node GPanel @The node that was selected.
function PANEL:OnNodeSelected(node)
end

--- Returns the root DTree_Node, the node that is the parent to all other nodes of the DTree.  
--- @return GPanel @Root node.
function PANEL:Root()
end

--- Enables the "click when drag-hovering" functionality.  
--- If enabled, when hovering over any DTree_Node of this DTree while dragging a panel, the node will be automatically clicked on (and subsequently DTree:OnNodeSelected will be called) to open any attached panels, such as spawnlists in spawnmenu.  
--- See also: PANEL:DragHoverClick.  
--- @param enable boolean 
function PANEL:SetClickOnDragHover(enable)
end

--- Sets the indentation size of the DTree, the distance between each "level" of the tree is offset on the left from the previous level.  
--- Currently this feature has no effect on the DTree element.  
--- @param size number @The new indentation size.
function PANEL:SetIndentSize(size)
end

--- Sets the height of each DTree_Node in the tree.  
--- The default value is 17.  
--- @param h number @The height to set.
function PANEL:SetLineHeight(h)
end

--- Set the currently selected top-level node.  
--- @param node GPanel @DTree_Node to select.
function PANEL:SetSelectedItem(node)
end

--- Sets whether or not the Silkicons next to each node of the DTree will be displayed.  
--- Individual icons can be set with DTree_Node:SetIcon or passed as the second argument in DTree:AddNode.  
--- @param show boolean @Whether or not to show icons.
function PANEL:SetShowIcons(show)
end

--- Returns whether or not the Silkicons next to each node of the DTree will be displayed.  
--- Alias of DTree:GetShowIcons.  
--- @return boolean @Whether or not the silkicons next to each node will be displayed.
function PANEL:ShowIcons()
end
