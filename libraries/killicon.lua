--- @meta

--- The killicon library is used to add to and control the icons that appear in the top right of your screen when a player is killed.  
_G.killicon = {}
--- Creates new kill icon using a texture.  
--- @param class string @Weapon or entity class
--- @param texture string @Path to the texture
--- @param color table @Color of the kill icon
function killicon.Add(class, texture, color)
end

--- Creates kill icon from existing one.  
--- @param new_class string @New class of the kill icon
--- @param existing_class string @Already existing kill icon class
function killicon.AddAlias(new_class, existing_class)
end

--- Adds kill icon for given weapon/entity class using special font.  
--- @param class string @Weapon or entity class.
--- @param font string @Font to be used.
--- @param symbol string @The symbol to be used.
--- @param color table @Color of the killicon.
--- @param heightScale_? number @Used internally to correct certain killicons to more closely match their visual size.
function killicon.AddFont(class, font, symbol, color, heightScale_)
end

--- Creates new kill icon using a sub-rectangle of a texture.  
--- @param class string @Weapon or entity class this killicon is for.
--- @param texture string @Path to the texture.
--- @param color table @Color of the kill icon.
--- @param x number @The start position (X axis) of the rectangle on the given texture
--- @param y number @The start position (Y axis) of the rectangle on the given texture
--- @param w number @The width of the rectangle on the given texture
--- @param h number @The height of the rectangle on the given texture
function killicon.AddTexCoord(class, texture, color, x, y, w, h)
end

--- Draws a kill icon.  
--- @deprecated  
--- 🛑 **DEPRECATED**: This function applies unpredictable vertical offsets, you should use killicon.Render instead, which does not suffer from this issue.  
--- @param x number @X coordinate of the icon
--- @param y number @Y coordinate of the icon
--- @param name string @Classname of the kill icon
--- @param alpha? number @Alpha/transparency value ( 0 - 255 ) of the icon
function killicon.Draw(x, y, name, alpha)
end

--- Checks if kill icon exists for given class.  
--- @param class string @The class to test
--- @return boolean @Returns true if kill icon exists
function killicon.Exists(class)
end

--- Returns the size of a kill icon.  
--- @param name string @Classname of the kill icon
--- @param dontEqualizeHeight? boolean @If set to `true`, returns the real size of the kill icon, without trying to equalize the height to match the default kill icon font.
--- @return number @Width of the kill icon
--- @return number @Height of the kill icon
function killicon.GetSize(name, dontEqualizeHeight)
end

--- Renders a kill icon.  
--- @param x number @X coordinate of the icon
--- @param y number @Y coordinate of the icon
--- @param name string @Classname of the kill icon
--- @param alpha? number @Alpha/transparency value ( 0 - 255 ) of the icon
--- @param dontEqualizeHeight? number @Do not rescale the icon to match the default kill icon font.
function killicon.Render(x, y, name, alpha, dontEqualizeHeight)
end
