--- @meta

--- @class DTree_Node : DPanel
--- 🚷 **INTERNAL**:   
--- This panel is created whenever you add a node to a DTree.  
--- The root node of a DTree is also a DTree_Node and controls much of its action. it can be accessed with DTree:Root.  
local PANEL = {}
_G.DTree_Node = PANEL;
--- A helper function that adds a new node and calls to DTree_Node:MakeFolder on it.  
--- @param name string @The name of the new node
--- @param folder string @The folder in the filesystem to use, relative to the garrysmod/ folder.
--- @param path string @The path to search in
--- @param showFiles? boolean @Should files be added as nodes (true) or folders only (false)
--- @param wildcard? string @The wildcard to use when searching for files.
--- @param bDontForceExpandable? boolean 
--- @return GPanel @The created DTree_Node
function PANEL:AddFolder(name, folder, path, showFiles, wildcard, bDontForceExpandable)
end

--- Add a child node to the DTree_Node  
--- @param name string @Name of the node.
--- @param icon? string @The icon that will show next to the node in the DTree.
--- @return GPanel @Returns the created DTree_Node panel.
function PANEL:AddNode(name, icon)
end

--- Cleans up the internal table of items (sub-nodes) of this node from invalid panels or sub-nodes that were moved from this node to another.  
--- Appears the be completely unused by the game on its own.  
function PANEL:CleanList()
end

--- Create and returns a copy of this node, including all the sub-nodes.  
--- @return GPanel @The copied DTree_Node.
function PANEL:Copy()
end

--- Called when the node is clicked.  
--- See also DTree_Node:DoRightClick.  
--- @return boolean @Return true to prevent DoClick from being called on parent nodes or the DTree itself.
function PANEL:DoClick()
end

--- Called when the node is right clicked.  
--- See also DTree_Node:DoClick.  
--- @return boolean @Return true to prevent DoRightClick from being called on parent nodes or the DTree itself.
function PANEL:DoRightClick()
end

--- Expands or collapses this node, as well as ALL child nodes of this node.  
--- Works opposite of DTree_Node:ExpandTo.  
--- @param expand boolean @Whether to expand (true) or collapse (false)
function PANEL:ExpandRecurse(expand)
end

--- Collapses or expands all nodes from the topmost-level node to this one.  
--- Works opposite of DTree_Node:ExpandRecurse.  
--- @param expand boolean @Whether to expand (true) or collapse (false)
function PANEL:ExpandTo(expand)
end

--- Returns n-th child node.  
--- Basically an alias of Panel:GetChild.  
--- @param num number @The number of the child to get, starting with 0
--- @return GPanel @The child panel, if valid ID is given
function PANEL:GetChildNode(num)
end

--- Returns the number of child nodes this node has. For use with DTree_Node:GetChildNode  
--- @return number @Number of child nodes.
function PANEL:GetChildNodeCount()
end

--- Returns a table containing all child nodes of this node.  
--- @return table @A list of all child nodes.
function PANEL:GetChildNodes()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Returns value set by DTree_Node:SetDirty.  
--- @return boolean 
function PANEL:GetDirty()
end

--- Returns whether the double clock to collapse/expand functionality is enabled on this node.  
--- @return boolean 
function PANEL:GetDoubleClickToOpen()
end

--- Returns whether the node is expanded or not.  
--- @return boolean @Expanded or not.
function PANEL:GetExpanded()
end

--- Returns the filepath of the file attached to this node.  
--- @return string 
function PANEL:GetFileName()
end

--- Returns the folder path to search in, set by DTree_Node:MakeFolder.  
--- @return string @The folder path.
function PANEL:GetFolder()
end

--- Returns whether the expand/collapse button is shown on this node regardless of whether or not it has sub-nodes.  
--- See also DTree_Node:SetForceShowExpander.  
--- @return boolean 
function PANEL:GetForceShowExpander()
end

--- Returns whether the expand button (little + button) should be shown or hidden.  
--- @return boolean @Цhether the expand button should be shown or hidden.
function PANEL:GetHideExpander()
end

--- Returns the image path to the icon of this node.  
--- @return string @The path to the image
function PANEL:GetIcon()
end

--- Returns the indentation level of the DTree this node belongs to.  
--- Alias of DTree:GetIndentSize, see it for more info.  
--- @return number @The indentation level.
function PANEL:GetIndentSize()
end

--- Returns whether this node is the last child on this level or not.  
--- @return boolean @Whether this node is the last child on this level or not.
function PANEL:GetLastChild()
end

--- The height of a single DTree_Node of the DTree this node belongs to.  
--- Alias of DTree:GetLineHeight.  
--- @return number @The height of a single DTree_Node.
function PANEL:GetLineHeight()
end

--- Returns the parent DTree_Node. Note that Panel:GetParent will not be the same!  
--- @return GPanel @The parent node.
function PANEL:GetParentNode()
end

--- Returns the path ID (File Search Paths) used in populating the DTree from the filesystem.  
--- See DTree_Node:SetPathID and DTree_Node:MakeFolder.  
--- @return string @The Path ID
function PANEL:GetPathID()
end

--- Returns the root node, the DTree this node is under.  
--- See also DTree_Node:GetParentNode.  
--- @return GPanel @The root node
function PANEL:GetRoot()
end

--- Returns whether or not nodes for files should/will be added when populating the node from filesystem.  
--- @return boolean 
function PANEL:GetShowFiles()
end

--- Returns the wildcard set by DTree_Node:MakeFolder.  
--- @return string @The search wildcard
function PANEL:GetWildCard()
end

--- Inserts a sub-node into this node before or after the given node.  
--- @param node GPanel @The DTree_Node to insert.
--- @param nodeNextTo GPanel @The node to insert the node above before or after.
--- @param before boolean @true to insert before, false to insert after.
function PANEL:Insert(node, nodeNextTo, before)
end

--- Returns true if DTree_Node:GetRoot is the same as DTree_Node:GetParentNode of this node.  
--- @return boolean @If this is a root node.
function PANEL:IsRootNode()
end

--- Removes given node as a sub-node of this node.  
--- It doesn't actually remove or unparent the panel, just removes it from the internal DListView.  
--- @param pnl GPanel @The node to remove
function PANEL:LeaveTree(pnl)
end

--- Makes this node a folder in the filesystem. This will make it automatically populated.  
--- See also DTree_Node:AddFolder.  
--- @param folder string @The folder in the filesystem to use, relative to the garrysmod/ folder.
--- @param path string @The path to search in
--- @param showFiles? boolean @Should files be added as nodes (true) or folders only (false)
--- @param wildcard? string @The wildcard to use when searching for files.
--- @param dontForceExpandable? boolean @If set to true, don't show the expand buttons on empty nodes.
function PANEL:MakeFolder(folder, path, showFiles, wildcard, dontForceExpandable)
end

--- Moves given panel to the top of the children of this node.  
--- Despite name of this function, it cannot move the children to any position but the topmost.  
--- @param node GPanel @The node to move.
function PANEL:MoveChildTo(node)
end

--- Moves this node to the top of the level.  
function PANEL:MoveToTop()
end

--- Called when sub-nodes of this DTree_Node were changed, such as being rearranged if that functionality is enabled.  
function PANEL:OnModified()
end

--- Called when a new sub-node is added this node.  
--- @param newNode DTree_Node @The newly added sub node.
function PANEL:OnNodeAdded(newNode)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Appears to have no effect on the DTree_Node.  
--- @param dirty boolean 
function PANEL:SetDirty(dirty)
end

--- Sets whether double clicking the node should expand/collapse it or not.  
--- @param enable boolean @true to enable, false to disable this functionality.
function PANEL:SetDoubleClickToOpen(enable)
end

--- Expands or collapses this node.  
--- @param expand boolean @Whether to expand (true) or collapse (false)
--- @param surpressAnimation? boolean @Whether to play animation (false) or not (true)
function PANEL:SetExpanded(expand, surpressAnimation)
end

--- Sets whether or not the expand/collapse button (+/- button) should be shown on this node regardless of whether it has sub-elements or not.  
--- @param forceShow boolean 
function PANEL:SetForceShowExpander(forceShow)
end

--- Sets the material for the icon of the DTree_Node.  
--- @param path string @The path to the material to be used
function PANEL:SetIcon(path)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Currently does nothing, not implemented.  
function PANEL:SetupCopy()
end

--- Returns whether or not the DTree this node is in has icons enabled.  
--- See DTree:ShowIcons for more info.  
--- @return number @Whether the icons are shown or not
function PANEL:ShowIcons()
end
