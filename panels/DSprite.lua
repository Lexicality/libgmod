--- @meta

--- @class DSprite : DPanel
--- A panel that draws a sprite on the player's HUD with the given IMaterial, Global.Color and rotation.  
--- A shortcut for this is Global.CreateSprite().  
local PANEL = {}
_G.DSprite = PANEL;
--- Gets the color the sprite is using as a modifier.  
--- @return table @The Global.Color being used.
function PANEL:GetColor()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Returns the value set by DSprite:SetHandle  
--- @return GVector 
function PANEL:GetHandle()
end

--- Gets the material the sprite is using.  
--- @return GIMaterial @The material in use.
function PANEL:GetMaterial()
end

--- Gets the 2D rotation angle of the sprite, in the plane of the screen.  
--- @return number @The anti-clockwise rotation in degrees.
function PANEL:GetRotation()
end

--- Sets the color modifier for the sprite.  
--- @param color table @The Global.Color to use.
function PANEL:SetColor(color)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Seems to be an unused feature. Does nothing.  
--- @param vec GVector 
function PANEL:SetHandle(vec)
end

--- Sets the source material for the sprite.  
--- @param material GIMaterial @The material to use
function PANEL:SetMaterial(material)
end

--- Sets the 2D rotation angle of the sprite, in the plane of the screen.  
--- @param ang number @The anti-clockwise rotation in degrees.
function PANEL:SetRotation(ang)
end
