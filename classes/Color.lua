--- @meta

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
--- Converts a Color into [HWB color space](https://en.wikipedia.org/wiki/HWB_color_model), adds given value to the "blackness" and converts it back into an RGB color.  
--- A slightly more efficient combination of COLOR:GetBlackness & COLOR:SetBlackness  
--- @param blackness number @The "blackness" value to add in range [0, 1]
function GColor:AddBlackness(blackness)
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV), adds given value to the [brightness also known as "value"](https://en.wikipedia.org/wiki/Brightness) and converts it back into an RGB color.  
--- A slightly more efficient combination of COLOR:GetBrightness & COLOR:SetBrightness  
--- This is useful to quickly change the saturation of the color without changing hue or luminance, allowing for things like easy theming.  
--- @param saturation number @The brightness value to add in range [0, 1]
function GColor:AddBrightness(saturation)
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV), adds given value to the [hue](https://en.wikipedia.org/wiki/Hue) and converts it back into an RGB color.  
--- A slightly more efficient combination of COLOR:GetHue & COLOR:SetHue  
--- This is useful to quickly change the hue of the color without changing saturation or luminance, allowing for things like easy theming.  
--- @param hue number @The hue value to add in degrees [0, 360).
function GColor:AddHue(hue)
end

--- Converts a Color into [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV), adds given value to the ["lightness"](https://en.wikipedia.org/wiki/Lightness) and converts it back into an RGB color.  
--- A slightly more efficient combination of COLOR:GetLightness & COLOR:SetLightness  
--- This is useful to quickly change the lightness of the color without changing hue or saturation, allowing for things like easy theming.  
--- @param lightness number @The lightness value to add in range [0, 1]
function GColor:AddLightness(lightness)
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV), adds given value to the [saturation](https://en.wikipedia.org/wiki/Colorfulness) and converts it back into an RGB color.  
--- A slightly more efficient combination of COLOR:GetSaturation & COLOR:SetSaturation  
--- This is useful to quickly change the saturation of the color without changing hue or luminance, allowing for things like easy theming.  
--- @param saturation number @The saturation value to add in range [0, 1]
function GColor:AddSaturation(saturation)
end

--- Converts a Color into [HWB color space](https://en.wikipedia.org/wiki/HWB_color_model), adds given value to the "whiteness" and converts it back into an RGB color.  
--- A slightly more efficient combination of COLOR:GetWhiteness & COLOR:SetWhiteness  
--- @param whiteness number @The "whiteness" value to add in range [0, 1]
function GColor:AddWhiteness(whiteness)
end

--- Returns a copy of this color, usually so it can be safely modified later without affecting the original color.  
--- @param target GColor @The target color to copy.
--- @return GColor @The copy of the given color, safe to modify.
function GColor:Copy(target)
end

--- Converts a Color into [HWB color space](https://en.wikipedia.org/wiki/HWB_color_model) and returns the "blackness" of the color.  
--- See COLOR:ToHWB if you want to get all 3 components.  
--- @return number @Blackness of the color in range [0, 1]
function GColor:GetBlackness()
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV) and returns the [brightness also known as "value"](https://en.wikipedia.org/wiki/Brightness).  
--- See COLOR:ToHSV if you want to get all 3 components.  
--- @return number @Brightness in range [0, 1]
function GColor:GetBrightness()
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV) and returns the [hue](https://en.wikipedia.org/wiki/Hue).  
--- See COLOR:ToHSV if you want to get all 3 components.  
--- @return number @The hue in degrees [0, 360).
function GColor:GetHue()
end

--- Converts a Color into [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV) and returns the ["lightness"](https://en.wikipedia.org/wiki/Lightness) of the color.  
--- See COLOR:ToHSL if you want to get all 3 components.  
--- @return number @Lightness in range [0, 1]
function GColor:GetLightness()
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV) and returns the [saturation](https://en.wikipedia.org/wiki/Colorfulness).  
--- See COLOR:ToHSV if you want to get all 3 components.  
--- @return number @Saturation in range [0, 1]
function GColor:GetSaturation()
end

--- Converts a Color into [HWB color space](https://en.wikipedia.org/wiki/HWB_color_model) and returns the "whiteness" of the color.  
--- See COLOR:ToHWB if you want to get all 3 components.  
--- @return number @Whiteness of the color in range [0, 1]
function GColor:GetWhiteness()
end

--- Performs linear interpolation between this and given colors.  
--- @param target GColor @The target color to interpolate towards.
--- @param fraction number @The interpolation fraction
--- @return GColor @The result of linear interpolation.
function GColor:Lerp(target, fraction)
end

--- Converts a Color into [HWB color space](https://en.wikipedia.org/wiki/HWB_color_model), sets the "blackness" and converts it back into an RGB color.  
--- @param blackness number @The new "blackness" value in range [0, 1]
function GColor:SetBlackness(blackness)
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV), sets the [brightness also known as "value"](https://en.wikipedia.org/wiki/Brightness) and converts it back into an RGB color.  
--- This is useful to quickly change the brightness of the color without changing hue or saturation, allowing for things like easy theming.  
--- @param saturation number @The new brightness value in range [0, 1]
function GColor:SetBrightness(saturation)
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV), sets the [hue](https://en.wikipedia.org/wiki/Hue) and converts it back into an RGB color.  
--- This is useful to quickly change the hue of the color without changing saturation or luminance, allowing for things like easy theming.  
--- @param hue number @The new hue value in degrees [0, 360).
function GColor:SetHue(hue)
end

--- Converts a Color into [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV), sets the ["lightness"](https://en.wikipedia.org/wiki/Lightness) and converts it back into an RGB color.  
--- This is useful to quickly change the lightness of the color without changing hue or saturation, allowing for things like easy theming.  
--- @param lightness number @The new lightness value in range [0, 1]
function GColor:SetLightness(lightness)
end

--- Converts a Color into [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV), sets the [saturation](https://en.wikipedia.org/wiki/Colorfulness) and converts it back into an RGB color.  
--- This is useful to quickly change the saturation of the color without changing hue or luminance, allowing for things like easy theming.  
--- @param saturation number @The new saturation value in range [0, 1]
function GColor:SetSaturation(saturation)
end

--- Sets the red, green, blue, and alpha of the color.  
--- @param r number @The red component
--- @param g number @The green component
--- @param b number @The blue component
--- @param a number @The alpha component
function GColor:SetUnpacked(r, g, b, a)
end

--- Converts a Color into [HWB color space](https://en.wikipedia.org/wiki/HWB_color_model), sets the "whiteness" and converts it back into an RGB color.  
--- @param whiteness number @The new "whiteness" value in range [0, 1]
function GColor:SetWhiteness(whiteness)
end

--- Converts a Color into [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV) .  
--- This calls Global.ColorToHSL internally.  
--- @return number @The hue in degrees [0, 360).
--- @return number @The saturation in the range [0, 1].
--- @return number @The lightness in the range [0, 1].
function GColor:ToHSL()
end

--- Encodes a RGB Color into the [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV).  
--- This function uses Global.ColorToHSV internally.  
--- @return number @Hue in degrees in range [0, 360)
--- @return number @Saturation in range [0, 1]
--- @return number @Brightness in range [0, 1]
function GColor:ToHSV()
end

--- Converts a Color into [HWB color space](https://en.wikipedia.org/wiki/HWB_color_model). See Global.HWBToColor for more info.  
--- @return number @The hue in degrees [0, 360).
--- @return number @The whiteness in the range [0, 1].
--- @return number @The blacknessin the range [0, 1].
function GColor:ToHWB()
end

--- Returns the color as a table (an array or a list) with four elements.  
--- @return table @The table with elements 1 = r, 2 = g, 3 = b, 4 = a,( `{ r, g, b, a }` )
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
