--- @meta

--- The spawnmenu library is a set of functions that allow you to control the spawn (Q) menu.  
_G.spawnmenu = {}
--- Activates a tool, opens context menu and brings up the tool gun.  
--- @param tool string @Tool class/file name
--- @param menu_only? boolean @Should we activate this tool in the menu only or also the toolgun? `true` = menu only,`false` = toolgun aswell
function spawnmenu.ActivateTool(tool, menu_only)
end

--- Activates tools context menu in specified tool tab.  
--- @param tab number @The tabID of the tab to open the context menu in
--- @param cp GPanel @The control panel to open
function spawnmenu.ActivateToolPanel(tab, cp)
end

--- Returns currently opened control panel of a tool, post process effect or some other menu in spawnmenu.  
--- @return GPanel @The currently opened control panel, if any.
function spawnmenu.ActiveControlPanel()
end

--- Registers a new content type that is saveable into spawnlists.  
--- Created/called by spawnmenu.CreateContentIcon.  
--- @param name string @An unique name of the content type.
--- @param constructor function @A function that is called whenever we need create a new panel for this content type
function spawnmenu.AddContentType(name, constructor)
end

--- Inserts a new tab into the CreationMenus table, which will be used by the creation menu to generate its tabs (Spawnlists, Weapons, Entities, etc.)  
--- @param name string @What text will appear on the tab (i.e Spawnlists).
--- @param func function @The function called to generate the content of the tab
--- @param material? string @Path to the material that will be used as an icon on the tab.
--- @param order? number @The order in which this tab should be shown relative to the other tabs on the creation menu.
--- @param tooltip? string @The tooltip to be shown for this tab.
function spawnmenu.AddCreationTab(name, func, material, order, tooltip)
end

--- Used to add addon spawnlists to the spawnmenu tree. This function should be called within SANDBOX:PopulatePropMenu.  
--- Addon spawnlists will not save to disk if edited.  
--- ⚠ **WARNING**: You should never try to modify player customized spawnlists!  
--- @param classname string @A unique classname of the list.
--- @param name string @The name of the category displayed to the player, e.g
--- @param contents table @A table of entries for the spawn menu
--- @param icon string @The icon to use in the tree.
--- @param id? number @The unique ID number for the spawnlist category
--- @param parentID? number @The unique ID of the parent category
--- @param needsApp? string @The needed game for this prop category, if one is needed
function spawnmenu.AddPropCategory(classname, name, contents, icon, id, parentID, needsApp)
end

--- Used to create a new category in the list inside of a spawnmenu ToolTab.  
--- You must call this function from SANDBOX:AddToolMenuCategories for it to work properly.  
--- @param tab string @The ToolTab name, as created with spawnmenu.AddToolTab
--- @param RealName string @The identifier name
--- @param PrintName string @The displayed name
function spawnmenu.AddToolCategory(tab, RealName, PrintName)
end

--- Adds an option to the right side of the spawnmenu  
--- @param tab string @The spawnmenu tab to add into (for example "Utilities")
--- @param category string @The category to add into (for example "Admin")
--- @param class string @Unique identifier of option to add
--- @param name string @The nice name of item
--- @param cmd string @Command to execute when the item is selected
--- @param config string @Config name, used in older versions to load tool settings UI from a file
--- @param cpanel function @A function to build the context panel
--- @param table? table @Allows to override the table that will be added to the tool list
function spawnmenu.AddToolMenuOption(tab, category, class, name, cmd, config, cpanel, table)
end

--- Adds a new tool tab to the right side of the spawnmenu via the SANDBOX:AddToolMenuTabs hook.  
--- This function is a inferior duplicate of spawnmenu.GetToolMenu, just without its return value.  
--- @param name string @The internal name of the tab
--- @param label? string @The 'nice' name of the tab (Tip: language.Add)
--- @param icon? string @The filepath to the icon of the tab
function spawnmenu.AddToolTab(name, label, icon)
end

--- Clears all the tools from the different tool categories and the categories itself, if ran at the correct place.  
--- Seems to only work when ran at initialization.  
function spawnmenu.ClearToolMenus()
end

--- Creates a new content icon, previously defined via spawnmenu.AddContentType.  
--- @param type string @The type of the content icon
--- @param parent? GPanel @The parent to add the content icon to.
--- @param data? table @The data to send to the content icon in spawnmenu.AddContentType
--- @return GPanel @The created content icon, if it was returned by spawnmenu.AddContentType.
function spawnmenu.CreateContentIcon(type, parent, data)
end

--- Returns the function to create an vgui element for a specified content type, previously defined by spawnmenu.AddContentType.  
--- If a content type doesn't exist, a dummy function will be returned, and a warning printed to the console.  
--- You probably want to use spawnmenu.CreateContentIcon to create icons.  
--- @param contentType string @The content type name.
--- @return function @The panel creation function
function spawnmenu.GetContentType(contentType)
end

--- Returns the list of Creation tabs. Creation tabs are added via spawnmenu.AddCreationTab.  
--- @return table @The list of Creation tabs
function spawnmenu.GetCreationTabs()
end

--- Similar to spawnmenu.GetPropTable, but only returns spawnlists created by addons via spawnmenu.AddPropCategory.  
--- These spawnlists are shown in a separate menu in-game.  
--- @return table @See spawnmenu.GetPropTable for table format.
function spawnmenu.GetCustomPropTable()
end

--- Returns a table of all prop categories and their props in the spawnmenu.  
--- Note that if the spawnmenu has not been populated, this will return an empty table.  
--- This will not return spawnlists created by addons, see  spawnmenu.GetCustomPropTable for that.  
--- @return table @Table of all the prop categories and props in the following format:
function spawnmenu.GetPropTable()
end

--- Adds a new tool tab (or returns an existing one by name) to the right side of the spawnmenu via the SANDBOX:AddToolMenuTabs hook.  
--- @param name string @The internal name of the tab
--- @param label? string @The 'nice' name of the tab
--- @param icon? string @The filepath to the icon of the tab
--- @return table @A table of tables representing categories and items in the left part of the tab
function spawnmenu.GetToolMenu(name, label, icon)
end

--- Gets a table of tools on the client.  
--- @return table @A table with groups of tools, along with information on each tool.
function spawnmenu.GetTools()
end

--- Switches the creation tab (left side of the spawnmenu) on the spawnmenu to the given tab.  
--- @param id string @The tab ID to open
function spawnmenu.SwitchCreationTab(id)
end

--- Opens specified tool tab in spawnmenu.  
--- @param id number @The tab ID to open
function spawnmenu.SwitchToolTab(id)
end
