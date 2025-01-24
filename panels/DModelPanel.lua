--- @meta

--- @class DModelPanel : DButton
--- DModelPanel is a VGUI element that projects a 3D model onto a 2D plane. See also DAdjustableModelPanel  
local PANEL = {}
_G.DModelPanel = PANEL;
--- Returns the ambient lighting used on the rendered entity.  
--- @return table @The color of the ambient lighting.
function PANEL:GetAmbientLight()
end

--- Returns the animation speed of the panel entity, see DModelPanel:SetAnimSpeed.  
--- @return number @The animation speed.
function PANEL:GetAnimSpeed()
end

--- Returns whether or not the panel entity should be animated when the default DModelPanel:LayoutEntity function is called.  
--- @return boolean @True if the panel entity can be animated with Entity:SetSequence directly, false otherwise.
function PANEL:GetAnimated()
end

--- Returns the position of the model viewing camera.  
--- @return GVector @The position of the camera.
function PANEL:GetCamPos()
end

--- Returns the color of the rendered entity.  
--- @return table @The color of the entity, see Color.
function PANEL:GetColor()
end

--- Returns the entity being rendered by the model panel.  
--- @return GCSEnt @The rendered entity (client-side)
function PANEL:GetEntity()
end

--- Returns the FOV (field of view) the camera is using.  
--- @return number @The FOV of the camera.
function PANEL:GetFOV()
end

--- Returns the angles of the model viewing camera. Is **nil** until changed with DModelPanel:SetLookAng.  
--- @return GAngle @The angles of the camera.
function PANEL:GetLookAng()
end

--- Returns the position the viewing camera is pointing toward.  
--- @return GVector @The position the camera is pointing toward.
function PANEL:GetLookAt()
end

--- Gets the model of the rendered entity.  
--- @return string @The model of the rendered entity.
function PANEL:GetModel()
end

--- By default, this function slowly rotates and animates the entity being rendered.  
--- If you want to change this behavior, you should override it.  
--- @param entity GEntity @The entity that is being rendered.
function PANEL:LayoutEntity(entity)
end

--- Called when the entity of the DModelPanel was drawn.  
--- This is a rendering hook with 3d drawing context.  
--- @param ent GEntity @The clientside entity of the DModelPanel that has been drawn.
function PANEL:PostDrawModel(ent)
end

--- Called **before** the entity of the DModelPanel is drawn.  
--- @param ent GEntity @The clientside entity of the DModelPanel that has been drawn.
--- @return boolean @Return false to stop the entity from being drawn
function PANEL:PreDrawModel(ent)
end

--- This function is used in DModelPanel:LayoutEntity. It will progress the animation, set using Entity:SetSequence. By default, it is the walking animation.  
function PANEL:RunAnimation()
end

--- Sets the ambient lighting used on the rendered entity.  
--- @param color table @The color of the ambient lighting.
function PANEL:SetAmbientLight(color)
end

--- Sets the speed used by DModelPanel:RunAnimation to advance frame on an entity sequence.  
--- ℹ **NOTE**: Entity:FrameAdvance doesn't seem to have any functioning arguments and therefore changing this will not have any affect on the panel entity's sequence speed without reimplementation. It only affects the value returned by DModelPanel:GetAnimSpeed  
--- @param animSpeed number @The animation speed.
function PANEL:SetAnimSpeed(animSpeed)
end

--- Sets whether or not to animate the entity when the default DModelPanel:LayoutEntity is called.  
--- @param animated boolean @True to animate, false otherwise.
function PANEL:SetAnimated(animated)
end

--- Sets the position of the camera.  
--- @param pos GVector @The position to set the camera at.
function PANEL:SetCamPos(pos)
end

--- Sets the color of the rendered entity.  
--- ℹ **NOTE**: This does not work on Garry's Mod player models since they use a different color system. To modify a player model color, see Example 2 on the DModelPanel page  
--- @param color table @The render color of the entity.
function PANEL:SetColor(color)
end

--- Sets the directional lighting used on the rendered entity.  
--- @param direction number @The light direction, see Enums/BOX.
--- @param color table @The color of the directional lighting.
function PANEL:SetDirectionalLight(direction, color)
end

--- Sets the entity to be rendered by the model panel.  
--- ℹ **NOTE**: If you set `ent` to a shared entity you must set `ent` to nil before removing this panel or else a "Trying to remove server entity on client!" error is thrown  
--- @param ent GEntity @The new panel entity.
function PANEL:SetEntity(ent)
end

--- Sets the panel camera's FOV (field of view).  
--- @param fov number @The field of view value.
function PANEL:SetFOV(fov)
end

--- Sets the angles of the camera.  
--- @param ang GAngle @The angles to set the camera to.
function PANEL:SetLookAng(ang)
end

--- Makes the panel's camera face the given position. Basically sets the camera's angles (DModelPanel:SetLookAng) after doing some math.  
--- @param pos GVector @The position to orient the camera toward.
function PANEL:SetLookAt(pos)
end

--- Sets the model of the rendered entity.  
--- ℹ **NOTE**: This function may give a different model than expected. This is not a bug, however this problem may appear with some player models which are renamed several times in a wrong way. To solve that, you can use Entity:SetModel and Entity:SetModelName on the internal panel entity. More information : https://github.com/Facepunch/garrysmod-issues/issues/4534.  
--- @param model string @The model to apply to the entity.
function PANEL:SetModel(model)
end

--- Runs a Global.ClientsideScene on the panel's entity.  
--- @param path string @The path to the scene file
function PANEL:StartScene(path)
end
