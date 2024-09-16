--- The **vgui** library allows you to script and create your own panels using **V**alve's **G**raphical **U**ser **I**nterface (VGUI) system.  
--- For an alphabetically ordered list of VGUI panels, see VGUI Element List.  
_G.vgui = {}
--- Creates a panel by the specified classname.  
--- ℹ **NOTE**: Custom VGUI elements are not loaded instantly. Use GM:OnGamemodeLoaded to create them on startup.  
--- @param classname? string @Classname of the panel to create
--- @param parent? GPanel @Panel to parent to.
--- @param name? string @Custom name of the created panel for scripting/debugging purposes
--- @return GPanel @The created panel, or `nil` if creation failed for whatever reason.
function vgui.Create(classname, parent, name)
end

--- Creates a panel from a table, used alongside vgui.RegisterFile and vgui.RegisterTable to efficiently define, register, and instantiate custom panels.  
--- @param metatable? table @Your PANEL table.
--- @param parent? GPanel @Which panel to parent the newly created panel to.
--- @param name? string @Custom name of the created panel for scripting/debugging purposes
--- @return GPanel @The created panel, or `nil` if creation failed for whatever reason.
function vgui.CreateFromTable(metatable, parent, name)
end

--- Returns whenever the cursor is currently active and visible.  
--- @return boolean @Whether the cursor is visible or not.
function vgui.CursorVisible()
end

--- Returns true if Lua-defined panel exists by name. Uses vgui.GetControlTable internally.  
--- @param Panelname string @The name of the panel to get test.
--- @return boolean @Whether a panel with given name was registered yet or not.
function vgui.Exists(Panelname)
end

--- Returns whether the currently focused panel is a child of the given one.  
--- @param parent GPanel @The parent panel to check the currently focused one against
--- @return boolean @Whether or not the focused panel is a child of the passed one.
function vgui.FocusedHasParent(parent)
end

--- Returns all Lua-created panels.  
--- Used internally for PANEL:PreAutoRefresh and PANEL:PostAutoRefresh.  
--- @return table @List of all Lua created panels.
function vgui.GetAll()
end

--- Returns the table of a Lua-defined panel by name. Does not return parent members of the table!  
--- @param Panelname string @The name of the panel to get the table of.
--- @return table @The `PANEL` table of the a Lua-defined panel with given name.
function vgui.GetControlTable(Panelname)
end

--- Returns the panel the cursor is hovering above.  
--- ⚠ **WARNING**: This returns a cached value that is only updated after rendering and `before` the next VGUI Think/Layout pass.  
--- ie. it lags one frame behind panel layout and is completely unhelpful for PANEL:Paint if your panels are moving around under the mouse a lot every frame.  
--- @return GPanel @The panel that the user is currently hovering over with their cursor.
function vgui.GetHoveredPanel()
end

--- Returns the panel which is currently receiving keyboard input.  
--- @return GPanel @The panel with keyboard focus
function vgui.GetKeyboardFocus()
end

--- Returns the global world panel which is the parent to all others, except for the HUD panel.  
--- See also Global.GetHUDPanel.  
--- @return GPanel @The world panel
function vgui.GetWorldPanel()
end

--- Returns whenever the cursor is hovering the world panel.  
--- @return boolean @isHoveringWorld
function vgui.IsHoveringWorld()
end

--- Registers a panel for later creation via vgui.Create.  
--- @param classname? string @Classname of the panel to register
--- @param panelTable? table @The table containing the panel information.
--- @param baseName? string @Classname of a panel to inherit functionality from
--- @return table @The given panel table from second argument
function vgui.Register(classname, panelTable, baseName)
end

--- Registers a new VGUI panel from a file, to be used with vgui.CreateFromTable.  
--- File file must use the `PANEL` global that is provided just before the file is Global.included, for example:  
--- ```  
--- PANEL.Base = "Panel"  
--- function PANEL:Init()  
--- -- Your code...  
--- end  
--- function PANEL:Think()  
--- -- Your code...  
--- end  
--- ```  
--- @param file string @The file to register
--- @return table @A table containing info about the panel.
function vgui.RegisterFile(file)
end

--- Registers a table to use as a panel, to be used with vgui.CreateFromTable.  
--- All this function does is assigns Base key to your table and returns the table.  
--- @param panel? table @The PANEL table.
--- @param base? string @A base for the panel.
--- @return table @The PANEL table
function vgui.RegisterTable(panel, base)
end

