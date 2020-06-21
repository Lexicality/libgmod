--- The vgui library allows you to script and create your own panels using Valve's GUI system.  
--- For an alphabetically ordered list of VGUI panels, see VGUI Element List.  
_G.vgui = {}
--- Creates a panel by the specified classname.  
--- ℹ **NOTE**: Custom VGUI elements are not loaded instantly. Use GM:OnGamemodeLoaded to create them on startup.  
--- @param classname string @Classname of the panel to create
--- @param parent GPanel @Parent of the created panel.
--- @param name string @Name of the created panel.
--- @return GPanel @panel
function vgui.Create(classname, parent, name)
end

--- Creates a panel from table.  
--- @param metatable table @Your PANEL table
--- @param parent GPanel @Which panel to parent the newly created panel to
--- @param name string @Name of your panel
--- @return GPanel @Created panel
function vgui.CreateFromTable(metatable, parent, name)
end

--- Returns whenever the cursor is currently active and visible.  
--- @return boolean @isCursorVisible
function vgui.CursorVisible()
end

--- Returns whether the currently focused panel is a child of the given one.  
--- @param parent GPanel @The parent panel to check the currently focused one against
--- @return boolean @Whether or not the focused panel is a child of the passed one.
function vgui.FocusedHasParent(parent)
end

--- Gets the method table of this panel. Does not return parent methods!  
--- @param Panelname string @The name of the panel
--- @return table @methods
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

--- Returns the global world panel which is the parent to all others.  
--- See also Global.GetHUDPanel.  
--- @return GPanel @The world panel
function vgui.GetWorldPanel()
end

--- Returns whenever the cursor is hovering the world panel.  
--- @return boolean @isHoveringWorld
function vgui.IsHoveringWorld()
end

--- Registers a panel for later creation.  
--- @param classname string @Classname of the panel to create.
--- @param panelTable table @The table containg the panel information.
--- @param baseName string @Name of the base of the panel.
--- @return table @The given panel table from second argument
function vgui.Register(classname, panelTable, baseName)
end

--- Registers a new VGUI panel from a file.  
--- @param file string @The file to register
--- @return table @A table containing info about the panel
function vgui.RegisterFile(file)
end

--- Registers a table to use as a panel. All this function does is assigns Base key to your table and returns the table.  
--- @param panel table @The PANEL table
--- @param base string @A base for the panel
--- @return table @The PANEL table
function vgui.RegisterTable(panel, base)
end

