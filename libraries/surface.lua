--- The surface library allows you to draw text and shapes on the screen. Primarily used for making HUDs & custom GUI panels.  
_G.surface = {}
--- Creates a new font.  
--- To prevent the font from displaying incorrectly when using the "outline" setting, set "antialias" to false. This will ensure the text properly fills out the entire outline.  
--- Be sure to check the List of Default Fonts first! Those fonts can be used without using this function.  
--- See Also: Finding the Font Name.  
--- ⚠ **WARNING**: Due to the static nature of fonts, do **NOT** create the font more than once. You should only be creating them once, it is recommended to create them at the top of your script. Do not use this function within GM:HUDPaint or any other hook!  
--- ⚠ **WARNING**: Define fonts that you will actually use, as fonts are very taxing on performance and will cause crashes! Do not create fonts for every size.  
--- @param fontName string @The new font name.
--- @param fontData table @The font properties
function surface.CreateFont(fontName, fontData)
end

--- 🛑 **DEPRECATED**:   
--- Alias of Global.DisableClipping so use that instead.  
--- Enables or disables the clipping used by the VGUI that limits the drawing operations to a panels bounds.  
--- Identical to Global.DisableClipping. See also Panel:NoClipping.  
--- @param disable boolean @True to disable, false to enable the clipping
function surface.DisableClipping(disable)
end

--- Draws a hollow circle, made of dots. For a filled circle, see examples for surface.DrawPoly.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param originX number @The center x integer coordinate.
--- @param originY number @The center y integer coordinate.
--- @param radius number @The radius of the circle.
--- @param r number @The red value of the color to draw the circle with, or a Color.
--- @param g number @The green value of the color to draw the circle with
--- @param b number @The blue value of the color to draw the circle with
--- @param a number @The alpha value of the color to draw the circle with
function surface.DrawCircle(originX, originY, radius, r, g, b, a)
end

--- Draws a line from one point to another.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param startX number @The start x integer coordinate.
--- @param startY number @The start y integer coordinate.
--- @param endX number @The end x integer coordinate.
--- @param endY number @The end y integer coordinate.
function surface.DrawLine(startX, startY, endX, endY)
end

--- Draws a hollow box with a border width of 1 px.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param x number @The start x integer coordinate.
--- @param y number @The start y integer coordinate.
--- @param w number @The integer width.
--- @param h number @The integer height.
function surface.DrawOutlinedRect(x, y, w, h)
end

--- Draws a textured polygon (secretly a triangle fan) with a maximum of 256 vertices.  
--- Only works properly with convex polygons. You may try to render concave polygons, but there is no guarantee that things wont get messed up.  
--- Unlike most surface library functions, non-integer coordinates are not rounded.  
--- ⚠ **WARNING**: You must reset the drawing color and texture before calling the function to ensure consistent results. See examples below.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param vertices table @A table containing integer vertices
function surface.DrawPoly(vertices)
end

--- Draws a solid rectangle on the screen.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param x number @The X integer co-ordinate.
--- @param y number @The Y integer co-ordinate.
--- @param width number @The integer width of the rectangle.
--- @param height number @The integer height of the rectangle.
function surface.DrawRect(x, y, width, height)
end

--- Draw the specified text on the screen, using the previously set position, font and color.  
--- ℹ **NOTE**: This function does not handle newlines properly  
--- ℹ **NOTE**: This function sets new text position at the end of the previous drawn text length - this can be used to change text properties (such as font or color) without recalculating and resetting text position. See example #2 for example use of this behavior.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param text string @The text to be rendered.
function surface.DrawText(text)
end

--- Draw a textured rectangle with the given position and dimensions on the screen, using the current active texture set with surface.SetMaterial. It is also affected by surface.SetDrawColor.  
--- See also render.SetMaterial and render.DrawScreenQuadEx.  
--- See also surface.DrawTexturedRectUV.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param x number @The X integer co-ordinate.
--- @param y number @The Y integer co-ordinate.
--- @param width number @The integer width of the rectangle.
--- @param height number @The integer height of the rectangle.
function surface.DrawTexturedRect(x, y, width, height)
end

--- Draw a textured rotated rectangle with the given position and dimensions and angle on the screen, using the current active texture.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param x number @The X integer co-ordinate, representing the center of the rectangle.
--- @param y number @The Y integer co-ordinate, representing the center of the rectangle.
--- @param width number @The integer width of the rectangle.
--- @param height number @The integer height of the rectangle.
--- @param rotation number @The rotation of the rectangle, in degrees.
function surface.DrawTexturedRectRotated(x, y, width, height, rotation)
end

--- Draws a textured rectangle with a repeated or partial texture.  
--- u and v refer to texture coordinates.  
--- * (u, v) = (0, 0) is the top left  
--- * (u, v) = (1, 0) is the top right  
--- * (u, v) = (1, 1) is the bottom right  
--- * (u, v) = (0, 1) is the bottom left  
--- Using a start point of (1, 0) and an end point to (0, 1), you can draw an image flipped horizontally, same goes with other directions. Going above 1 will tile the texture. Negative values are allowed as well.  
--- Here's a helper image:  
--- <upload src="70c/8d7bba248dc08bd.png" size="183359" name="image.png">  
--- ℹ **NOTE**: If you are using a .png image, you need supply the "noclamp" flag as second parameter for Global.Material if you intend to use tiling.  
--- ℹ **NOTE**: If you find that surface.DrawTexturedRectUV is getting your texture coordinates (u0, v0), (u1, v1) wrong and you're rendering with a material created with Global.CreateMaterial, try adjusting them with the following code:  
--- ```  
--- local du = 0.5 / 32 -- half pixel anticorrection  
--- local dv = 0.5 / 32 -- half pixel anticorrection  
--- local u0, v0 = (u0 - du) / (1 - 2 * du), (v0 - dv) / (1 - 2 * dv)  
--- local u1, v1 = (u1 - du) / (1 - 2 * du), (v1 - dv) / (1 - 2 * dv)  
--- ```  
--- **Explanation:**  
--- surface.DrawTexturedRectUV tries to correct the texture coordinates by half a pixel (something to do with sampling) and computes the correction using IMaterial::GetMappingWidth()/GetMappingHeight(). If the material was created without a $basetexture, then GetMappingWidth()/GetMappingHeight() uses the width and height of the error material (which is 32x32).  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- 🦟 **BUG**: [The UV offsets might require (sub-)pixel correction for accurate tiling results.](https://github.com/Facepunch/garrysmod-issues/issues/3173)  
--- </upload>  
--- @param x number @The X integer coordinate.
--- @param y number @The Y integer coordinate.
--- @param width number @The integer width of the rectangle.
--- @param height number @The integer height of the rectangle.
--- @param startU number @The U texture mapping of the rectangle origin.
--- @param startV number @The V texture mapping of the rectangle origin.
--- @param endU number @The U texture mapping of the rectangle end.
--- @param endV number @The V texture mapping of the rectangle end.
function surface.DrawTexturedRectUV(x, y, width, height, startU, startV, endU, endV)
end

--- Returns the current alpha multiplier affecting drawing operations.  
--- @return number @The multiplier ranging from 0 to 1.
function surface.GetAlphaMultiplier()
end

--- Returns the current color affecting draw operations.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @return table @The color that drawing operations will use as a Color.
function surface.GetDrawColor()
end

--- Gets the [HUD icon](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/hud_textures.txt) TextureID with the specified name.  
--- @param name string @The name of the texture.
--- @return number 
function surface.GetHUDTexture(name)
end

--- Returns the current color affecting text draw operations.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @return table @The color that text drawing operations will use as a Color.
function surface.GetTextColor()
end

--- Returns the width and height (in pixels) of the given text, but only if the font has been set with surface.SetFont.  
--- @param text string @The string to check the size of.
--- @return number, number
function surface.GetTextSize(text)
end

--- Returns the texture id of the material with the given name/path.  
--- ℹ **NOTE**: This function will not work with .png or .jpg images. For that, see Global.Material  
--- @param name_or_path string @Name or path of the texture.
--- @return number @The texture ID
function surface.GetTextureID(name_or_path)
end

--- Returns the size of the texture with the associated texture ID.  
--- For `.png/.jpg` textures loaded with Global.Material you can use the `$realheight` and `$realwidth` material parameters (IMaterial:GetInt) to get the size of the image.  
--- @param textureID number @The texture ID, returned by surface.GetTextureID.
--- @return number, number
function surface.GetTextureSize(textureID)
end

--- Play a sound file directly on the client (such as UI sounds, etc).  
--- @param soundfile string @The path to the sound file, which must be relative to the sound/ folder.
function surface.PlaySound(soundfile)
end

--- 🛑 **DEPRECATED**: You should use Global.ScrH instead.  
--- Returns the height of the current client's screen.  
--- @return number @screenHeight
function surface.ScreenHeight()
end

--- 🛑 **DEPRECATED**: You should use Global.ScrW instead.  
--- Returns the width of the current client's screen.  
--- @return number @screenWidth
function surface.ScreenWidth()
end

--- Sets the alpha multiplier that will influence all upcoming drawing operations.  
--- See also render.SetBlend.  
--- @param multiplier number @The multiplier ranging from 0 to 1.
function surface.SetAlphaMultiplier(multiplier)
end

--- Set the color of any future shapes to be drawn, can be set by either using R, G, B, A as separate values or by a Color.  
--- Using a color structure is not recommended to be created procedurally.  
--- ℹ **NOTE**: Providing a Color structure is slower than providing four numbers. You may use Color:Unpack for this.  
--- @param r number @The red value of color, or a Color.
--- @param g number @The green value of color
--- @param b number @The blue value of color
--- @param a number @The alpha value of color
function surface.SetDrawColor(r, g, b, a)
end

--- Set the current font to be used for text operations later.  
--- The fonts must first be created with surface.CreateFont or be one of the Default Fonts.  
--- @param fontName string @The name of the font to use.
function surface.SetFont(fontName)
end

--- Sets the material to be used in all upcoming draw operations using the surface library.  
--- Not to be confused with render.SetMaterial.  
--- See also surface.SetTexture.  
--- ⚠ **WARNING**: Global.Material function calls are expensive to be done inside this function or inside rendering context, you should be caching the results of Global.Material calls  
--- ℹ **NOTE**: When using render.PushRenderTarget or render.SetRenderTarget, `material` should have the `$ignorez` flag set to make it visible. If the material is not used in 3D rendering, it is probably safe to add it with this code:  
--- ```lua  
--- material:SetInt( "$flags", bit.bor( material:GetInt( "$flags" ), 32768 ) )  
--- ```  
--- @param material GIMaterial @The material to be used.
function surface.SetMaterial(material)
end

--- Set the color of any future text to be drawn, can be set by either using R, G, B, A as separate numbers or by a Color.  
--- Using a color structure is not recommended to be created procedurally.  
--- ℹ **NOTE**: Providing a Color structure is slower than providing four numbers. You may use Color:Unpack for this.  
--- @param r number @The red value of color, or a Color.
--- @param g number @The green value of color
--- @param b number @The blue value of color
--- @param a number @The alpha value of color
function surface.SetTextColor(r, g, b, a)
end

--- Set the top-left position to draw any future text at.  
--- @param x number @The X integer co-ordinate.
--- @param y number @The Y integer co-ordinate.
function surface.SetTextPos(x, y)
end

--- Sets the texture to be used in all upcoming draw operations using the surface library.  
--- See also surface.SetMaterial for an IMaterial alternative.  
--- @param textureID number @The ID of the texture to draw with returned by surface.GetTextureID.
function surface.SetTexture(textureID)
end

