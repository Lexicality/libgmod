--- @class GITexture
--- An object representing game texture, like a .vtf file. Do not confuse with IMaterial. Returned by IMaterial:GetTexture  
local GITexture = {}
--- Invokes the generator of the texture. Reloads file based textures from disk and clears render target textures.  
function GITexture:Download()
end

--- Returns the color of the specified pixel, only works for textures created from PNG files.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param x number @The X coordinate.
--- @param y number @The Y coordinate.
--- @return table @The color of the pixel as a Color.
function GITexture:GetColor(x, y)
end

--- Returns the true unmodified height of the texture.  
--- @return number @height
function GITexture:GetMappingHeight()
end

--- Returns the true unmodified width of the texture.  
--- @return number @width
function GITexture:GetMappingWidth()
end

--- Returns the name of the texture, in most cases the path.  
--- @return string @name
function GITexture:GetName()
end

--- Returns the number of animation frames in this texture.  
--- @return number @The number of animation frames in this texture.
function GITexture:GetNumAnimationFrames()
end

--- Returns the modified height of the texture, this value may be affected by mipmapping and other factors.  
--- @return number @height
function GITexture:Height()
end

--- Returns whenever the texture is valid. (i.e. was loaded successfully or not)  
--- ℹ **NOTE**: The "error" texture is a valid texture, and therefore this function will return false when used on it. Use ITexture:IsErrorTexture, instead.  
--- @return boolean @Whether the texture was loaded successfully or not.
function GITexture:IsError()
end

--- Returns whenever the texture is the error texture (pink and black checkerboard pattern).  
--- @return boolean @Whether the texture is the error texture or not.
function GITexture:IsErrorTexture()
end

--- Returns the modified width of the texture, this value may be affected by mipmapping and other factors.  
--- @return number @width
function GITexture:Width()
end

