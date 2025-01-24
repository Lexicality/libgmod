--- @meta

--- @class VIconEditor : DFrame
--- An icon editor that permits a user to modify a SpawnIcon and re-render it. This is used by the spawn menu and is what is shown when you right-click an icon and select `Edit Icon`.  
--- This makes use of the DAdjustableModelPanel element.  
--- ℹ **NOTE**: This panel is only available in Sandbox and Sandbox derived gamemodes!  
local PANEL = {}
--- Applies the top-down view camera settings for the model in the DAdjustableModelPanel.  
--- Called when a user clicks the `Above` (third) button (See IconEditor).  
function PANEL:AboveLayout()
end

--- Applies the best camera settings for the model in the DAdjustableModelPanel, using the values returned by Global.PositionSpawnIcon.  
--- Called when a user clicks the `wand` button (See the ) and when IconEditor:Refresh is called.  
function PANEL:BestGuessLayout()
end

--- Applies the front view camera settings for the model in the DAdjustableModelPanel.  
--- Called when a user clicks the `Front` (second) button (See the ).  
function PANEL:FullFrontalLayout()
end

--- Places the camera at the origin (0,0,0), relative to the entity, in the DAdjustableModelPanel.  
--- Called when a user clicks the `Center` (fifth) button (See the ).  
function PANEL:OriginLayout()
end

--- Updates the internal DAdjustableModelPanel and SpawnIcon.  
--- This should be called immediately after setting the SpawnIcon with IconEditor:SetIcon.  
function PANEL:Refresh()
end

--- Re-renders the SpawnIcon.  
--- Called when a user clicks the `RENDER` button, this retrieves the render data from the internal DAdjustableModelPanel and passes it as a table to Panel:RebuildSpawnIconEx.  
function PANEL:RenderIcon()
end

--- Applies the right side view camera settings for the model in the DAdjustableModelPanel.  
--- Called when a user clicks the `Right` (fourth) button (See the ). (Note: The icon for this points left.)  
function PANEL:RightLayout()
end

--- Sets the editor's model and icon from an entity. Alternative to IconEditor:SetIcon, with uses a SpawnIcon.  
--- You do not need to call IconEditor:Refresh after this.  
--- @param ent GEntity @The entity to retrieve the model and skin from.
function PANEL:SetFromEntity(ent)
end

--- Sets the SpawnIcon to modify. You should call Panel:Refresh immediately after this, as the user will not be able to make changes to the icon beforehand.  
--- @param icon GPanel @The SpawnIcon object to be modified.
function PANEL:SetIcon(icon)
end
