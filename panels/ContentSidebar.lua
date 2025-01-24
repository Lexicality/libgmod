--- @meta

--- @class VContentSidebar : DPanel
--- 🚷 **INTERNAL**:   
--- The ContentSidebar is internally used by the spawnmenu and manages things like the Spawnmenu Toolbar.  
--- It internally uses a DTree which is accessible with ContentSidebar .Tree.  
--- When ContentSidebar:EnableModify has been called ContentSidebar.Toolbox will return a ContentSidebarToolbox  
local PANEL = {}
--- Creates a Save Notification which will be shown when SANDBOX:SpawnlistContentChanged has been called.  
--- @param style string 
--- @param hookname? string @A Populate Hook like PopulateEntities
function PANEL:CreateSaveNotification(style, hookname)
end

--- Internally calls ContentSidebar:EnableSearch, ContentSidebar:CreateSaveNotification and creates a ContentSidebarToolbox which is accessible under ContentSidebar.Toolbox. Call the Hook SANDBOX:OpenToolbox to open the created Toolbox  
function PANEL:EnableModify()
end

--- Creates a search bar which will be displayed over the Nodes.  
--- @param style string 
--- @param hookname? string @A Populate Hook like PopulateEntities
function PANEL:EnableSearch(style, hookname)
end
