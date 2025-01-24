--- @meta

--- @class DFileBrowser : DPanel
--- A tree and list-based file browser.  
--- It allows filtering by folder (directory) name and file extension, and can display models as SpawnIcons.  
local PANEL = {}
_G.DFileBrowser = PANEL;
--- Clears the file tree and list, and resets all values.  
function PANEL:Clear()
end

--- An Global.AccessorFunc that returns the root directory/folder of the file tree.  
--- @return string @The path to the root folder.
function PANEL:GetBaseFolder()
end

--- An Global.AccessorFunc that returns the current directory/folder being displayed.  
--- @return string @The directory the file list is currently displaying.
function PANEL:GetCurrentFolder()
end

--- An Global.AccessorFunc that returns the current file type filter on the file list.  
--- @return string @The current filter applied to the file list.
function PANEL:GetFileTypes()
end

--- Returns the DTree Node that the file tree stems from.  
--- This is a child of the root node of the DTree.  
--- @return GPanel @The DTree_Node used for the tree.
function PANEL:GetFolderNode()
end

--- An Global.AccessorFunc that returns whether or not the model viewer mode is enabled. In this mode, files are displayed as SpawnIcons instead of a list.  
--- @return boolean @Whether or not files will be displayed using SpawnIcons.
function PANEL:GetModels()
end

--- An Global.AccessorFunc that returns the name being used for the file tree.  
--- @return string @The name used for the root of the file tree.
function PANEL:GetName()
end

--- An Global.AccessorFunc that returns whether or not the file tree is open.  
--- @return boolean @Whether or not the file tree is open.
function PANEL:GetOpen()
end

--- An Global.AccessorFunc that returns the access path of the file tree. This is `GAME` unless changed with DFileBrowser:SetPath.  
--- See file.Read for how paths work.  
--- @return string @The current access path i.e
function PANEL:GetPath()
end

--- An Global.AccessorFunc that returns the current search filter on the file tree.  
--- @return string @The filter in use on the file tree.
function PANEL:GetSearch()
end

--- Called when a file is double-clicked.  
--- ℹ **NOTE**: Double-clicking a file or icon will trigger **both** this and DFileBrowser:OnSelect.  
--- @param selectedPanel GPanel @The panel that was double-clicked to select this file.<br><br>This will either be a DListView_Line or SpawnIcon depending on whether the mod
--- @param filePath string @The path to the file that was double-clicked.
function PANEL:OnDoubleClick(selectedPanel, filePath)
end

--- Called when a file is right-clicked.  
--- ℹ **NOTE**: When not in model viewer mode, DFileBrowser:OnSelect will also be called if the file is not already selected.  
--- @param filePath string @The path to the file that was right-clicked.
--- @param selectedPanel GPanel @The panel that was right-clicked to select this file
function PANEL:OnRightClick(filePath, selectedPanel)
end

--- Called when a file is selected.  
--- @param selectedPanel GPanel @The panel that was clicked to select this file.<br><br>This will either be a DListView_Line or SpawnIcon depending on whether the model view
--- @param filePath string @The path to the file that was selected.
function PANEL:OnSelect(selectedPanel, filePath)
end

--- An Global.AccessorFunc that sets the root directory/folder of the file tree.  
--- This needs to be set for the file tree to be displayed.  
--- @param baseDir string @The path to the folder to use as the root.
function PANEL:SetBaseFolder(baseDir)
end

--- An Global.AccessorFunc that sets the directory/folder from which to display the file list.  
--- @param currentDir string @The directory to display files from.
function PANEL:SetCurrentFolder(currentDir)
end

--- An Global.AccessorFunc that sets the file type filter for the file list.  
--- This accepts the same file extension wildcards as file.Find.  
--- @param fileTypes? string @A list of file types to display, separated by spaces e.g
function PANEL:SetFileTypes(fileTypes)
end

--- Enables or disables the model viewer mode. In this mode, files are displayed as SpawnIcons instead of a list.  
--- ℹ **NOTE**: This should only be used for `.mdl` files; the spawn icons will display error models for others. See DFileBrowser:SetFileTypes  
--- @param showModels? boolean @Whether or not to display files using SpawnIcons.
function PANEL:SetModels(showModels)
end

--- An Global.AccessorFunc that sets the name to use for the file tree.  
--- @param treeName? string @The name for the root of the file tree
function PANEL:SetName(treeName)
end

--- An Global.AccessorFunc that opens or closes the file tree.  
--- @param open? boolean @`true` to open the tree, `false` to close it.
--- @param useAnim? boolean @If `true`, the DTree's open/close animation is used.
function PANEL:SetOpen(open, useAnim)
end

--- An Global.AccessorFunc that sets the access path for the file tree. This is set to `GAME` by default.  
--- See file.Read for how paths work.  
--- @param path string @The access path i.e
function PANEL:SetPath(path)
end

--- An Global.AccessorFunc that sets the search filter for the file tree.  
--- This accepts the same wildcards as file.Find.  
--- @param filter? string @The filter to use on the file tree.
function PANEL:SetSearch(filter)
end

--- Sorts the file list.  
--- ℹ **NOTE**: This is only functional when not using the model viewer. See DFileBrowser:SetModels  
--- @param descending? boolean @The sort order
function PANEL:SortFiles(descending)
end
