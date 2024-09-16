--- @class GColor
--- List of all possible functions to manipulate colors.  
--- Colors are implemented in Lua thus Global.type(color) == "table" and Global.TypeID(color) == TYPE_TABLE.  
--- For type checking use Global.IsColor.  
--- Created by Global.Color, Global.HSVToColor, and Global.HSLToColor.  
--- @field r number @The red component of the color.
--- @field g number @The green component of the color.
--- @field b number @The blue component of the color.
--- @field a number @The alpha component of the color.
local GColor = {}
--- Performs linear interpolation between this and given colors.  
--- @param target GColor @The target color to interpolate towards.
--- @param fraction number @The interpolation fraction
--- @return GColor @The result of linear interpolation.
function GColor:Lerp(target, fraction)
end

--- Sets the red, green, blue, and alpha of the color.  
--- @param r number @The red component
--- @param g number @The green component
--- @param b number @The blue component
--- @param a number @The alpha component
function GColor:SetUnpacked(r, g, b, a)
end

--- Converts a Color into HSL color space. This calls Global.ColorToHSL internally.  
--- @return number @The hue in degrees [0, 360).
--- @return number @The saturation in the range [0, 1].
--- @return number @The lightness in the range [0, 1].
function GColor:ToHSL()
end

--- Encodes a RGB Color into the HSV color space.  
--- This function uses Global.ColorToHSV internally.  
--- @return number @Degrees in range [ 0 , 360 )
--- @return number @Range [ 0 , 1 ]
--- @return number @Range [ 0 , 1 ]
function GColor:ToHSV()
end

--- Returns the color as a table with four elements.  
--- @return table @The table with elements 1 = r, 2 = g, 3 = b, 4 = a.
function GColor:ToTable()
end

--- Translates the Color into a Vector, losing the alpha channel.  
--- This will also range the values from 0 - 255 to 0 - 1  
--- r / 255 -> x  
--- g / 255 -> y  
--- b / 255 -> z  
--- This is the opposite of Vector:ToColor  
--- @return GVector @The created Vector
function GColor:ToVector()
end

--- Returns the red, green, blue, and alpha of the color.  
--- @return number @Red
--- @return number @Green
--- @return number @Blue
--- @return number @Alpha
function GColor:Unpack()
end

