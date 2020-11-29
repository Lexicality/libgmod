--- The draw library's purpose is to simplify the usage of the surface library.  
_G.draw = {}
--- Simple draw text at position, but this will expand newlines and tabs.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- See also MarkupObject for limited width and markup support.  
--- @param text string @Text to be drawn.
--- @param font string @Name of font to draw the text in
--- @param x number @The X Coordinate.
--- @param y number @The Y Coordinate.
--- @param color table @Color to draw the text in
--- @param xAlign number @Where to align the text horizontally
function draw.DrawText(text, font, x, y, color, xAlign)
end

--- Returns the height of the specified font in pixels.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param font string @Name of the font to get the height of.
--- @return number @The font height
function draw.GetFontHeight(font)
end

--- Sets drawing texture to a default white texture (vgui/white) via surface.SetMaterial. Useful for resetting the drawing texture.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
function draw.NoTexture()
end

--- Draws a rounded rectangle.  
--- ℹ **NOTE**: If you intend to draw a non-rounded rectangle, then it's more efficient to use surface.DrawRect.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param cornerRadius number @Radius of the rounded corners, works best with a multiple of 2.
--- @param x number @The x coordinate of the top left of the rectangle.
--- @param y number @The y coordinate of the top left of the rectangle.
--- @param width number @The width of the rectangle.
--- @param height number @The height of the rectangle.
--- @param color table @The color to fill the rectangle with
function draw.RoundedBox(cornerRadius, x, y, width, height, color)
end

--- Draws a rounded rectangle. This function also lets you specify which corners are drawn rounded.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param cornerRadius number @Radius of the rounded corners, works best with a power of 2 number.
--- @param x number @The x coordinate of the top left of the rectangle.
--- @param y number @The y coordinate of the top left of the rectangle.
--- @param width number @The width of the rectangle.
--- @param height number @The height of the rectangle.
--- @param color table @The color to fill the rectangle with
--- @param roundTopLeft boolean @Whether the top left corner should be rounded.
--- @param roundTopRight boolean @Whether the top right corner should be rounded.
--- @param roundBottomLeft boolean @Whether the bottom left corner should be rounded.
--- @param roundBottomRight boolean @Whether the bottom right corner should be rounded.
function draw.RoundedBoxEx(cornerRadius, x, y, width, height, color, roundTopLeft, roundTopRight, roundBottomLeft, roundBottomRight)
end

--- Draws text on the screen.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param text string @The text to be drawn.
--- @param font string @The font
--- @param x number @The X Coordinate.
--- @param y number @The Y Coordinate.
--- @param color table @The color of the text
--- @param xAlign number @The alignment of the X coordinate using Enums/TEXT_ALIGN.
--- @param yAlign number @The alignment of the Y coordinate using Enums/TEXT_ALIGN.
--- @return number @The width of the text
--- @return number @The height of the text
function draw.SimpleText(text, font, x, y, color, xAlign, yAlign)
end

--- Creates a simple line of text that is outlined.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param Text string @The text to draw.
--- @param font string @The font name to draw with
--- @param x number @The X Coordinate.
--- @param y number @The Y Coordinate.
--- @param color table @The color of the text
--- @param xAlign number @The alignment of the X Coordinate using Enums/TEXT_ALIGN.
--- @param yAlign number @The alignment of the Y Coordinate using Enums/TEXT_ALIGN.
--- @param outlinewidth number @Width of the outline.
--- @param outlinecolor table @Color of the outline
--- @return number @The width of the text
--- @return number @The height of the text
function draw.SimpleTextOutlined(Text, font, x, y, color, xAlign, yAlign, outlinewidth, outlinecolor)
end

--- Works like draw.SimpleText but uses a table structure instead.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param textdata table @The text properties
--- @return number @Width of drawn text
--- @return number @Height of drawn text
function draw.Text(textdata)
end

--- Works like draw.Text, but draws the text as a shadow.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param textdata table @The text properties
--- @param distance number @How far away the shadow appears.
--- @param alpha number @How visible the shadow is (0-255).
function draw.TextShadow(textdata, distance, alpha)
end

--- Draws a texture with a table structure.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param texturedata table @The texture properties
function draw.TexturedQuad(texturedata)
end

--- Draws a rounded box with text in it.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param bordersize number @Size of border, should be multiple of 2
--- @param x number @The X Coordinate.
--- @param y number @The Y Coordinate.
--- @param text string @Text to draw.
--- @param font string @Font to draw in
--- @param boxcolor table @The box color
--- @param textcolor table @The text color
--- @return number @The width of the word box.
--- @return number @The height of the word box.
function draw.WordBox(bordersize, x, y, text, font, boxcolor, textcolor)
end

