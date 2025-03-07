--- @meta

--- The render library is a powerful set of functions that let you control how the world and its contents are rendered. It can also be used to draw some 3D clientside effects such as beams, boxes and spheres.  
_G.render = {}
--- Adds a Beam Segment to the Beam started by render.StartBeam.  
--- For more detailed information on Beams, as well as usage examples, see the Beams Render Reference  
--- @param startPos GVector @Beam start position.
--- @param width number @The width of the beam.
--- @param textureEnd number @The end coordinate of the texture used.
--- @param color table @The color to be used
function render.AddBeam(startPos, width, textureEnd, color)
end

--- Blurs the render target ( or a given texture )  
--- ⚠ **WARNING**: Calling this on a RenderTarget created with TEXTUREFLAGS_POINTSAMPLE will result in strange visual glitching.  
--- @param rendertarget GITexture @The texture to blur
--- @param blurx number @Horizontal amount of blur
--- @param blury number @Vertical amount of blur
--- @param passes number @Amount of passes to go through
function render.BlurRenderTarget(rendertarget, blurx, blury, passes)
end

--- This function overrides the brush material for next render operations. It can be used with Entity:DrawModel.  
--- @param mat? GIMaterial 
function render.BrushMaterialOverride(mat)
end

--- Captures a part of the current render target and returns the data as a binary string in the given format.  
--- Since the pixel buffer clears itself every frame, this will return a black screen outside of render hooks. To capture the user's final view, use GM:PostRender. This will not capture the Steam overlay or third-party injections (such as the Discord overlay, Overwolf, and advanced cheats) on the user's screen.  
--- 🦟 **BUG**: [In PNG mode, this function can produce unexpected result where foreground is rendered as transparent.](https://github.com/Facepunch/garrysmod-issues/issues/2571)  
--- This is caused by render.SetWriteDepthToDestAlpha set to `true` when doing most of render operations, including rendering in `_rt_fullframefb`. If you want to capture render target's content as PNG image only for output quality, set Structures/RenderCaptureData's `alpha` to `false` when capturing render targets with render.SetWriteDepthToDestAlpha set to `true`.  
--- ⚠ **WARNING**: This function will return nil if escape menu is open  
--- @param captureData table @Parameters of the capture
--- @return string @binaryData
function render.Capture(captureData)
end

--- 🟥 **NOTE**: Requires a 2D rendering context  
--- Dumps the current render target and allows the pixels to be accessed by render.ReadPixel.  
--- Capturing outside a render hook will return 0 0 0 255  
function render.CapturePixels()
end

--- Clears the current render target and the specified buffers.  
--- 🦟 **BUG**: [This sets the alpha incorrectly for surface draw calls for render targets.](https://github.com/Facepunch/garrysmod-issues/issues/2085)  
--- @param r number @Red component to clear to.
--- @param g number @Green component to clear to.
--- @param b number @Blue component to clear to.
--- @param a number @Alpha component to clear to.
--- @param clearDepth? boolean @Clear the depth.
--- @param clearStencil? boolean @Clear the stencil.
function render.Clear(r, g, b, a, clearDepth, clearStencil)
end

--- Tests every pixel of the active Render Target against the current Stencil configuration and sets the Color Channel values and, optionally, the Depth Buffer values for every pixel that passes.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- ℹ **NOTE**: This function does **not** clear the Stencil Buffer on its own.  
--- If you would like to clear the Stencil Buffer, you can use render.ClearStencil  
--- @param red number @The red Color Channel value for each pixel that is cleared
--- @param green number @The green Color Channel value for each pixel that is cleared
--- @param blue number @The blue Color Channel value for each pixel that is cleared
--- @param alpha number @The alpha (translucency) Color Channel value for each pixel that is cleared
--- @param clearDepth boolean @If true, reset the Depth Buffer values.
function render.ClearBuffersObeyStencil(red, green, blue, alpha, clearDepth)
end

--- Resets the depth buffer.  
--- @param clearStencil? boolean @Whether to also clear the stencil buffer.
function render.ClearDepth(clearStencil)
end

--- Clears a render target  
--- It uses render.Clear then render.SetRenderTarget on the modified render target.  
--- @param texture GITexture 
--- @param color table @The color, see Color
function render.ClearRenderTarget(texture, color)
end

--- Sets the Stencil Buffer value to `0` for all pixels in the currently active Render Target.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
function render.ClearStencil()
end

--- Sets the Stencil Buffer value for every pixel in a given rectangle to a given value.  
--- This is **not** affected by render.SetStencilWriteMask  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- @param startX number @The X coordinate of the top left corner of the rectangle to be cleared.
--- @param startY number @The Y coordinate of the top left corner of the rectangle to be cleared.
--- @param endX number @The X coordinate of the bottom right corner of the rectangle to be cleared
--- @param endY number @The Y coordinate of the bottom right corner of the rectangle to be cleared
--- @param stencilBufferValue number @The Stencil Buffer value that all pixels within the rectangle will be set to.
function render.ClearStencilBufferRectangle(startX, startY, endX, endY, stencilBufferValue)
end

--- Calculates the lighting caused by dynamic lights for the specified surface.  
--- @param position GVector @The position to sample from.
--- @param normal GVector @The normal of the surface.
--- @return GVector @A vector representing the light at that point.
function render.ComputeDynamicLighting(position, normal)
end

--- Calculates the light color of a certain surface.  
--- @param position GVector @The position of the surface to get the light from.
--- @param normal GVector @The normal of the surface to get the light from.
--- @return GVector @A vector representing the light at that point.
function render.ComputeLighting(position, normal)
end

--- Calculates diameter of a 3D sphere on a 2D screen.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param point GVector @The position of the sphere in 3D space.
--- @param radius number @The radius of the sphere in 3D space.
--- @return number @The diameter of the sphere in 2D screen space.
function render.ComputePixelDiameterOfSphere(point, radius)
end

--- Copies the currently active Render Target to the specified texture.  
--- ⚠ **WARNING**: This does not copy the Depth buffer, no method for that is known at this moment so a common workaround is to store the source texture somewhere else, perform your drawing operations, save the result somewhere else and reapply the source texture.  
--- @param Target GITexture @The texture to copy to
function render.CopyRenderTargetToTexture(Target)
end

--- Copies the contents of one texture to another. Only works with rendertargets.  
--- ⚠ **WARNING**: This does not copy the Depth buffer, no method for that is known at this moment so a common workaround is to store the source texture somewhere else, perform your drawing operations, save the result somewhere else and reapply the source texture.  
--- @param texture_from GITexture 
--- @param texture_to GITexture 
function render.CopyTexture(texture_from, texture_to)
end

--- Sets the cull mode. The culling mode defines how back faces are culled when rendering geometry.  
--- @param cullMode number @Cullmode, see Enums/MATERIAL_CULLMODE
function render.CullMode(cullMode)
end

--- Set's the depth range of the upcoming render.  
--- @param depthmin number @The minimum depth of the upcoming render
--- @param depthmax number @The maximum depth of the upcoming render
function render.DepthRange(depthmin, depthmax)
end

--- 🧱 **NOTE**: Requires a 3D rendering context  
--- Draws a single-segment Beam made out of a textured, billboarded quad stretching between two points.  
--- For more detailed information, including usage examples, see the Beams Render Reference  
--- @param startPos GVector @The Beam's start position.
--- @param endPos GVector @The Beam's end position.
--- @param width number @The width of the Beam.
--- @param textureStart number @The starting coordinate of the Beam's texture.
--- @param textureEnd number @The end coordinate of the Beam's texture.
--- @param color? GColor @What Color to tint the Beam.
function render.DrawBeam(startPos, endPos, width, textureStart, textureEnd, color)
end

--- Draws a box in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Origin of the box.
--- @param angles GAngle @Orientation of the box.
--- @param mins GVector @Start position of the box, relative to origin.
--- @param maxs GVector @End position of the box, relative to origin.
--- @param color? table @The color of the box
function render.DrawBox(position, angles, mins, maxs, color)
end

--- Draws a line in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param startPos GVector @Line start position in world coordinates.
--- @param endPos GVector @Line end position in world coordinates.
--- @param color? table @The color to be used
--- @param writeZ? boolean @Whether or not to consider the Z buffer
function render.DrawLine(startPos, endPos, color, writeZ)
end

--- Draws 2 connected triangles. Expects material to be set by render.SetMaterial.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param vert1 GVector @First vertex.
--- @param vert2 GVector @The second vertex.
--- @param vert3 GVector @The third vertex.
--- @param vert4 GVector @The fourth vertex.
--- @param color? table @The color of the quad
function render.DrawQuad(vert1, vert2, vert3, vert4, color)
end

--- Draws a quad.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Origin of the sprite.
--- @param normal GVector @The face direction of the quad.
--- @param width number @The width of the quad.
--- @param height number @The height of the quad.
--- @param color table @The color of the quad
--- @param rotation? number @The rotation of the quad counter-clockwise in degrees around the normal axis
function render.DrawQuadEasy(position, normal, width, height, color, rotation)
end

--- Draws the current material set by render.SetMaterial to the whole screen. The color cannot be customized.  
--- See also render.DrawScreenQuadEx.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param applyPoster? boolean @If set to true, when rendering a poster the quad will be properly drawn in parts in the poster
function render.DrawScreenQuad(applyPoster)
end

--- Draws the current material set by render.SetMaterial to the area specified. Color cannot be customized.  
--- See also render.DrawScreenQuad.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param startX number @X start position of the rect.
--- @param startY number @Y start position of the rect.
--- @param width number @Width of the rect.
--- @param height number @Height of the rect.
function render.DrawScreenQuadEx(startX, startY, width, height)
end

--- Draws a sphere in 3D space. The material previously set with render.SetMaterial will be applied the sphere's surface.  
--- See also render.DrawWireframeSphere for a wireframe equivalent.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Position of the sphere.
--- @param radius number @Radius of the sphere
--- @param longitudeSteps number @The number of longitude steps
--- @param latitudeSteps number @The number of latitude steps
--- @param color? table @The color of the sphere
function render.DrawSphere(position, radius, longitudeSteps, latitudeSteps, color)
end

--- Draws a sprite in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Position of the sprite.
--- @param width number @Width of the sprite.
--- @param height number @Height of the sprite.
--- @param color? table @Color of the sprite
function render.DrawSprite(position, width, height, color)
end

--- Draws a texture over the whole screen.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param tex GITexture @The texture to draw
function render.DrawTextureToScreen(tex)
end

--- Draws a textured rectangle.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param tex GITexture @The texture to draw
--- @param x number @The x coordinate of the rectangle to draw.
--- @param y number @The y coordinate of the rectangle to draw.
--- @param width number @The width of the rectangle to draw.
--- @param height number @The height of the rectangle to draw.
function render.DrawTextureToScreenRect(tex, x, y, width, height)
end

--- Draws a wireframe box in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Position of the box.
--- @param angle GAngle @Angles of the box.
--- @param mins GVector @The lowest corner of the box.
--- @param maxs GVector @The highest corner of the box.
--- @param color? table @The color of the box
--- @param writeZ? boolean @Sets whenever to write to the zBuffer.
function render.DrawWireframeBox(position, angle, mins, maxs, color, writeZ)
end

--- Draws a wireframe sphere in 3d space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Position of the sphere.
--- @param radius number @The size of the sphere.
--- @param longitudeSteps number @The amount of longitude steps
--- @param latitudeSteps number @The amount of latitude steps
--- @param color? table @The color of the wireframe
--- @param writeZ? boolean @Whether or not to consider the Z buffer
function render.DrawWireframeSphere(position, radius, longitudeSteps, latitudeSteps, color, writeZ)
end

--- Sets the status of the clip renderer, returning previous state.  
--- ⚠ **WARNING**: To prevent unintended rendering behavior of other mods/the game, you must reset the clipping state to its previous value.  
--- @param state boolean @New clipping state.
--- @return boolean @Previous clipping state.
function render.EnableClipping(state)
end

--- Ends the beam mesh of a beam started with render.StartBeam.  
--- For more detailed information on Beams, as well as usage examples, see the Beams Render Reference  
function render.EndBeam()
end

--- Sets the color of the fog.  
--- @param red number @Red channel of the fog color, 0 - 255.
--- @param green number @Green channel of the fog color, 0 - 255.
--- @param blue number @Blue channel of the fog color, 0 - 255.
function render.FogColor(red, green, blue)
end

--- Sets the at which the fog reaches its max density.  
--- @param distance number @The distance at which the fog reaches its max density
function render.FogEnd(distance)
end

--- Sets the maximum density of the fog.  
--- @param maxDensity number @The maximum density of the fog, 0-1.
function render.FogMaxDensity(maxDensity)
end

--- Sets the mode of fog.  
--- @param fogMode EMATERIAL_FOG @Fog mode, see Enums/MATERIAL_FOG.
function render.FogMode(fogMode)
end

--- Sets the distance at which the fog starts showing up.  
--- @param fogStart number @The distance at which the fog starts showing up
function render.FogStart(fogStart)
end

--- Returns the ambient color of the map.  
--- @return GVector @color
function render.GetAmbientLightColor()
end

--- Returns the current alpha blending.  
--- @return number @Current alpha blending in range 0 to 1.
function render.GetBlend()
end

--- Returns the current color modulation values as normals.  
--- @return number @r
--- @return number @g
--- @return number @b
function render.GetColorModulation()
end

--- Returns the maximum available directX version.  
--- @return number @dxLevel
function render.GetDXLevel()
end

--- Returns the current fog color.  
--- @return number @Red part of the color.
--- @return number @Green part of the color
--- @return number @Blue part of the color
function render.GetFogColor()
end

--- Returns the fog start and end distance.  
--- @return number @Fog start distance set by render.FogStart
--- @return number @For end distance set by render.FogEnd
--- @return number @Fog Z distance set by render.SetFogZ
function render.GetFogDistances()
end

--- Returns the fog mode.  
--- @return number @Fog mode, see Enums/MATERIAL_FOG
function render.GetFogMode()
end

--- Returns the full screen depth texture.  
--- @return GITexture @The `_rt_FullFrameDepth` texture.
function render.GetFullScreenDepthTexture()
end

--- Returns whether HDR is currently enabled or not. This takes into account hardware support, current map and current client settings.  
--- @return boolean @`true` if the player currently has HDR enabled.
function render.GetHDREnabled()
end

--- Gets the light exposure on the specified position.  
--- @param position GVector @The position of the surface to get the light from.
--- @return GVector @lightColor
function render.GetLightColor(position)
end

--- Returns the Power Of Two Frame Buffer texture.  
--- @return GITexture @The power of two texture, which is `_rt_PowerOfTwoFB` by default.
function render.GetPowerOfTwoTexture()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Alias of render.GetPowerOfTwoTexture.  
--- Alias of render.GetPowerOfTwoTexture.  
--- @return GITexture @The render.GetPowerOfTwoTexture.
function render.GetRefractTexture()
end

--- Returns the currently active render target.  
--- Instead of saving the current render target using this function and restoring to it later, it is generally better practice to use render.PushRenderTarget and render.PopRenderTarget.  
--- @return GITexture @The currently active Render Target
function render.GetRenderTarget()
end

--- Returns the `_rt_ResolvedFullFrameDepth` texture for SSAO depth. It will only be updated if GM:NeedsDepthPass returns true.  
--- @return GITexture @The depth texture.
function render.GetResolvedFullFrameDepth()
end

--- Obtain an ITexture of the screen. You must call render.UpdateScreenEffectTexture in order to update this texture with the currently rendered scene.  
--- This texture is mainly used within GM:RenderScreenspaceEffects  
--- @param textureIndex? number @Max index is 3, but engine only creates the first two for you.
--- @return GITexture @The requested texture.
function render.GetScreenEffectTexture(textureIndex)
end

--- Returns the first quarter sized frame buffer texture.  
--- @return GITexture @The render target texture named `_rt_SmallFB0`.
function render.GetSmallTex0()
end

--- Returns the second quarter sized frame buffer texture.  
--- @return GITexture @The render target texture named `_rt_SmallFB1`.
function render.GetSmallTex1()
end

--- Returns a floating point texture (RGBA16161616F format) the same resolution as the screen.  
--- ℹ **NOTE**: The gmodscreenspace doesn't behave as expected when drawing a floating-point texture to an integer texture (e.g. the default render target). Use an UnlitGeneric material instead  
--- @return GITexture @Render target named `__rt_SuperTexture1`
function render.GetSuperFPTex()
end

--- See render.GetSuperFPTex  
--- @return GITexture @Render target named `__rt_SuperTexture2`.
function render.GetSuperFPTex2()
end

--- Performs a render trace and returns the color of the surface hit, this uses a low res version of the texture.  
--- @param startPos GVector @The start position to trace from.
--- @param endPos GVector @The end position of the trace.
--- @return GVector @color
function render.GetSurfaceColor(startPos, endPos)
end

--- Returns a vector representing linear tone mapping scale.  
--- @return GVector @The vector representing linear tone mapping scale.
function render.GetToneMappingScaleLinear()
end

--- Returns the current view setup.  
--- @param noPlayer? boolean @If `true`, returns the `view-&gt;GetViewSetup`, if `false` - returns `view-&gt;GetPlayerViewSetup`
--- @return table @Current current view setup
function render.GetViewSetup(noPlayer)
end

--- Sets the render material override for all next calls of Entity:DrawModel. Also overrides render.MaterialOverrideByIndex.  
--- @param material? GIMaterial|nil @The material to use as override, use `nil` to disable.
function render.MaterialOverride(material)
end

--- Similar to render.MaterialOverride, but overrides the materials per index. Similar to Entity:SetSubMaterial  
--- render.MaterialOverride overrides effects of this function.  
--- @param index? number @The index of the material to override, in range of 0 to 31
--- @param material? GIMaterial @The material to override with, `nil` will reset the override for given index.
function render.MaterialOverrideByIndex(index, material)
end

--- Returns the maximum texture height the renderer can handle.  
--- @return number @maxTextureHeight
function render.MaxTextureHeight()
end

--- Returns the maximum texture width the renderer can handle.  
--- @return number @maxTextureWidth
function render.MaxTextureWidth()
end

--- Creates a new Global.ClientsideModel, renders it at the specified pos/ang, and removes it. Can also be given an existing CSEnt to reuse instead.  
--- ℹ **NOTE**: This function is only meant to be used in a single render pass kind of scenario, if you need to render a model continuously, use a cached Global.ClientsideModel and provide it as a second argument.  
--- 🦟 **BUG**: [Using this with a map model (game.GetWorld():GetModel()) crashes the game.](https://github.com/Facepunch/garrysmod-issues/issues/2688)  
--- @param settings table @Requires:
--- @param ent? GCSEnt @If provided, this entity will be reused instead of creating a new one with Global.ClientsideModel
function render.Model(settings, ent)
end

--- Forces all future draw operations to use a specific IMaterial.  
--- Because this is independent of a specific Entity, it can be used to change materials on static models that are part of maps.  
--- @param material GIMaterial @The IMaterial that will be used for all upcoming draw operations, or `nil` to stop overriding.
function render.ModelMaterialOverride(material)
end

--- Overrides the write behaviour of all next rendering operations towards the alpha channel of the current render target.  
--- See also render.OverrideBlend.  
--- ℹ **NOTE**: Doing surface draw calls with alpha set to 0 is a no-op and will never have any effect.  
--- @param enable boolean @Enable or disable the override.
--- @param shouldWrite boolean @If the previous argument is true, sets whether the next rendering operations should write to the alpha channel or not
function render.OverrideAlphaWriteEnable(enable, shouldWrite)
end

--- Overrides the way that the final color and alpha is calculated for each pixel affected by upcoming draw operations.  
--- When a draw operation is performed, the rendering system examines each pixel that is affected by the draw operation and determines its new color by combining (or "Blending") the pixel's current color (Called the "Destination" or "Dst" color) with the new color produced by the draw operation (Called the "Source" or "Src" color.)  
--- This function allows you to control the way that those two colors (The Source and Destination) are combined to produce the final pixel color.  
--- It's important to know that while Colors use values in the range `(0-255)`, the color and alpha values used here are normalized to the range `(0-1)` so that they can be multiplied together to produce a value that is still in the range `(0-1)`.  
--- @param enabled boolean @Set to `true` to enable Blend Overrides.
--- @param sourceMultiplier number @This determines which value each affected pixel's **Source color and alpha** will be multiplied by before they are sent to the Blending Func
--- @param destinationMultiplier number @This determines which value each affected pixel's **Destination color and alpha** will be multiplied by before they are sent to the Blending
--- @param blendingFunction number @After the Source and Destination color and alpha have been multiplied against their corresponding multipliers, they are passed to the Blendi
function render.OverrideBlend(enabled, sourceMultiplier, destinationMultiplier, blendingFunction)
end
--- Overrides the way that the final color and alpha is calculated for each pixel affected by upcoming draw operations.  
--- When a draw operation is performed, the rendering system examines each pixel that is affected by the draw operation and determines its new color by combining (or "Blending") the pixel's current color (Called the "Destination" or "Dst" color) with the new color produced by the draw operation (Called the "Source" or "Src" color.)  
--- This function allows you to control the way that those two colors (The Source and Destination) are combined to produce the final pixel color.  
--- It's important to know that while Colors use values in the range `(0-255)`, the color and alpha values used here are normalized to the range `(0-1)` so that they can be multiplied together to produce a value that is still in the range `(0-1)`.  
--- @param enabled boolean @Set to `true` to enable Blend Overrides.
--- @param sourceColorMultiplier number @This determines which value each affected pixel's **Source color** will be multiplied by before they are sent to the Color Blending Function
--- @param destinationColorMultiplier number @This determines which value each affected pixel's **Destination color** will be multiplied by before they are sent to the Color Blending Fun
--- @param colorBlendingFunction number @After the Source and Destination colors have been multiplied against their corresponding multipliers, they are passed to the Color Blending 
--- @param sourceAlphaMultiplier? number @This determines which value each affected pixel's **Source alpha** will be multiplied by before they are sent to the Alpha Blending Function
--- @param destinationAlphaMultiplier? number @This determines which value each affected pixel's **Destination alpha** will be multiplied by before they are sent to the Alpha Blending Fun
--- @param alphaBlendingFunction? number @After the Source and Destination alphas have been multiplied against their corresponding multipliers, they are passed to the Alpha Blending 
function render.OverrideBlend(enabled, sourceColorMultiplier, destinationColorMultiplier, colorBlendingFunction, sourceAlphaMultiplier, destinationAlphaMultiplier, alphaBlendingFunction)
end
--- Overrides the way that the final color and alpha is calculated for each pixel affected by upcoming draw operations.  
--- When a draw operation is performed, the rendering system examines each pixel that is affected by the draw operation and determines its new color by combining (or "Blending") the pixel's current color (Called the "Destination" or "Dst" color) with the new color produced by the draw operation (Called the "Source" or "Src" color.)  
--- This function allows you to control the way that those two colors (The Source and Destination) are combined to produce the final pixel color.  
--- It's important to know that while Colors use values in the range `(0-255)`, the color and alpha values used here are normalized to the range `(0-1)` so that they can be multiplied together to produce a value that is still in the range `(0-1)`.  
--- @param enabled boolean @Set to `false` to disable blend overrides.
function render.OverrideBlend(enabled)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use render.OverrideBlend instead.  
--- Overrides the internal graphical functions used to determine the final color and alpha of a rendered texture.  
--- See also render.OverrideAlphaWriteEnable.  
--- ℹ **NOTE**: Doing surface draw calls with alpha set to 0 is a no-op and will never have any effect.  
--- @param enabled boolean @true to enable, false to disable
--- @param srcBlend number @The source color blend function Enums/BLEND
--- @param destBlend number 
--- @param srcBlendAlpha? number @The source alpha blend function Enums/BLEND
--- @param destBlendAlpha? number 
function render.OverrideBlendFunc(enabled, srcBlend, destBlend, srcBlendAlpha, destBlendAlpha)
end

--- Overrides the write behaviour of all next rendering operations towards the color channel of the current render target.  
--- @param enable boolean @Enable or disable the override.
--- @param shouldWrite boolean @If the previous argument is true, sets whether the next rendering operations should write to the color channel or not
function render.OverrideColorWriteEnable(enable, shouldWrite)
end

--- Overrides the write behaviour of all next rendering operations towards the depth buffer.  
--- @param enable boolean @Enable or disable the override.
--- @param shouldWrite boolean @If the previous argument is true, sets whether the next rendering operations should write to the depth buffer or not
function render.OverrideDepthEnable(enable, shouldWrite)
end

--- Performs a Stencil operation on every pixel in the active Render Target without performing a draw operation.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
function render.PerformFullScreenStencilOperation()
end

--- Removes the current active clipping plane from the clip plane stack.  
function render.PopCustomClipPlane()
end

--- Pops (Removes) the texture filter most recently pushed (Added) onto the magnification texture filter stack.  
--- This function should only be called *after* a magnification filter has been pushed via render.PushFilterMag()  
--- For more detailed information and a usage example, see the texture minification and magnification render reference.  
function render.PopFilterMag()
end

--- Pops (Removes) the texture filter most recently pushed (Added) onto the minification texture filter stack.  
--- This function should only be called *after* a minification filter has been pushed via render.PushFilterMin()  
--- For more detailed information and a usage example, see the texture minification and magnification render reference.  
function render.PopFilterMin()
end

--- Pops the current flashlight mode from the flashlight mode stack.  
function render.PopFlashlightMode()
end

--- Pops the last render target and viewport from the RT stack and sets them as the current render target and viewport.  
--- This is should be called to restore the previous render target and viewport after a call to render.PushRenderTarget.  
function render.PopRenderTarget()
end

--- Pushes a new clipping plane of the clip plane stack and sets it as active.  
--- 🦟 **BUG**: [A max of 2 clip planes are supported on Linux/POSIX, and 6 on Windows.](https://github.com/Facepunch/garrysmod-issues/issues/2687)  
--- @param normal GVector @The normal of the clipping plane.
--- @param distance number @The distance of the plane from the world origin
function render.PushCustomClipPlane(normal, distance)
end

--- Pushes (Adds) a texture filter onto the magnification texture filter stack.  
--- This will modify how textures are stretched to sizes larger than their native resolution for upcoming rendering and drawing operations.  
--- For a version of this same function that modifies filtering for texture sizes smaller than their native resolution, see render.PushFilterMin()  
--- Always be sure to call render.PopFilterMag() afterwards to avoid texture filtering problems.  
--- For more detailed information and a usage example, see the texture minification and magnification render reference.  
--- @param texFilterType number @The texture filter to use
function render.PushFilterMag(texFilterType)
end

--- Pushes (Adds) a texture filter onto the minification texture filter stack.  
--- This will modify how textures are compressed to a lower resolution than their native resolution for upcoming rendering and drawing operations.  
--- For a version of this same function that modifies filtering for texture sizes larger than their native resolution, see render.PushFilterMag()  
--- Always be sure to call render.PopFilterMin() afterwards to avoid texture filtering problems.  
--- For more detailed information and a usage example, see the texture minification and magnification render reference.  
--- @param texFilterType number @The texture filter to use
function render.PushFilterMin(texFilterType)
end

--- Enables the flashlight projection for the upcoming rendering.  
--- @deprecated  
--- 🛑 **DEPRECATED**: This will leave models lit under specific conditions. You should use render.RenderFlashlights which is meant as a direct replacement for this function.  
--- @param enable? boolean @Whether the flashlight mode should be enabled or disabled.
function render.PushFlashlightMode(enable)
end

--- Pushes the current render target and viewport to the RT stack then sets a new current render target and viewport. If the viewport is not specified, the dimensions of the render target are used instead.  
--- This is similar to a call to render.SetRenderTarget and render.SetViewPort where the current render target and viewport have been saved beforehand, except the viewport isn't clipped to screen bounds.  
--- See also render.PopRenderTarget.  
--- ℹ **NOTE**: If you want to render to the render target in 2d mode and it is not the same size as the screen, use cam.Start2D and cam.End2D.  
--- ℹ **NOTE**: If the render target is bigger than the screen, rendering done with the surface library will be clipped to the screen bounds unless you call Global.DisableClipping  
--- @param texture? GITexture @The new render target to be used
--- @param x? number @X origin of the viewport.
--- @param y? number @Y origin of the viewport.
--- @param w? number @Width of the viewport.
--- @param h? number @Height of the viewport
function render.PushRenderTarget(texture, x, y, w, h)
end

--- Reads the color of the specified pixel from the RenderTarget sent by render.CapturePixels  
--- @param x number @The x coordinate.
--- @param y number @The y coordinate.
--- @return number @The red channel value.
--- @return number @The green channel value.
--- @return number @The blue channel value.
--- @return number @The alpha channel value or no value if the render target has no alpha channel.
function render.ReadPixel(x, y)
end

--- This applies the changes made to map lighting using engine.LightStyle.  
--- @param DoStaticProps? boolean @When true, this will also apply lighting changes to static props
--- @param UpdateStaticLighting? boolean @Forces all props to update their static lighting
function render.RedownloadAllLightmaps(DoStaticProps, UpdateStaticLighting)
end

--- Renders additive flashlights on an IMesh, a direct replacement for render.PushFlashlightMode.  
--- @param renderFunc function @The function that renders the IMesh, or a model.
function render.RenderFlashlights(renderFunc)
end

--- Renders the HUD on the screen.  
--- @param x number @X position for the HUD draw origin.
--- @param y number @Y position for the HUD draw origin.
--- @param w number @Width of the HUD draw.
--- @param h number @Height of the HUD draw.
function render.RenderHUD(x, y, w, h)
end

--- Renders the scene with the specified viewData to the current active render target.  
--- 🦟 **BUG**: [Static props and LODs are rendered improperly due to incorrectly perceived distance.](https://github.com/Facepunch/garrysmod-issues/issues/1330)  
--- @param view? table @The view data to be used in the rendering
function render.RenderView(view)
end

--- Resets the model lighting to the specified color.  
--- Calls render.SetModelLighting for every direction with given color.  
--- @param r number @The red part of the color, 0-1
--- @param g number @The green part of the color, 0-1
--- @param b number @The blue part of the color, 0-1
function render.ResetModelLighting(r, g, b)
end

--- Resets the HDR tone multiplier to the specified value.  
--- This will only work on HDR maps, and the value will automatically fade to what it was ( or whatever render.SetGoalToneMappingScale is ) if called only once.  
--- @param scale number @The value which should be used as multiplier.
function render.ResetToneMappingScale(scale)
end

--- Sets the ambient lighting for any upcoming render operation.  
--- @param r number @The red part of the color, 0-1.
--- @param g number @The green part of the color, 0-1.
--- @param b number @The blue part of the color, 0-1.
function render.SetAmbientLight(r, g, b)
end

--- Sets the alpha blending (or transparency) for upcoming render operations.  
--- See render.SetColorModulation for the function to affect RGB color channels.  
--- By itself, this will cause visible overlapping on parts of a model that are in front of other parts of the same model.  
--- For a solution to this, see the examples below.  
--- 🦟 **BUG**: [This does not affect non-model `render.Draw*` functions.](https://github.com/Facepunch/garrysmod-issues/issues/3166)  
--- ℹ **NOTE**: If a material has the [$alphatest](https://developer.valvesoftware.com/wiki/$alphatest) flag enabled then this function might not behave as expected because alpha will be binary, this has a default cutoff of `0.7`.  
--- @param blending number @The alpha (transparency) for upcoming draw operations
function render.SetBlend(blending)
end

--- Sets the current drawing material to "color".  
--- The material is defined as:  
--- ```  
--- "UnlitGeneric"  
--- {  
--- "$basetexture" "color/white"  
--- "$model" 		1  
--- "$translucent" 	1  
--- "$vertexalpha" 	1  
--- "$vertexcolor" 	1  
--- }  
--- ```  
function render.SetColorMaterial()
end

--- Sets the current drawing material to `color_ignorez`.  
--- The material is defined as:  
--- ```  
--- "UnlitGeneric"  
--- {  
--- "$basetexture" "color/white"  
--- "$model" 		1  
--- "$translucent" 	1  
--- "$vertexalpha" 	1  
--- "$vertexcolor" 	1  
--- "$ignorez"		1  
--- }  
--- ```  
function render.SetColorMaterialIgnoreZ()
end

--- Sets the color modulation for upcoming render operations, such as rendering models.  
--- The values can exceed 1 for stronger effect.  
--- See render.SetBlend for the function to affect alpha channel.  
--- @param r number @The red channel multiplier normal ranging from 0-1.
--- @param g number @The green channel multiplier normal ranging from 0-1.
--- @param b number @The blue channel multiplier normal ranging from 0-1.
function render.SetColorModulation(r, g, b)
end

--- If the fog mode is set to MATERIAL_FOG_LINEAR_BELOW_FOG_Z, the fog will only be rendered below the specified height.  
--- @param fogZ number @The fog Z.
function render.SetFogZ(fogZ)
end

--- Sets the goal HDR tone mapping scale.  
--- Use this in a rendering/think hook as it is reset every frame.  
--- @param scale number @The target scale.
function render.SetGoalToneMappingScale(scale)
end

--- Sets lighting mode when rendering something.  
--- ℹ **NOTE**: **Do not forget to restore the default value** to avoid unexpected behavior, like the world and the HUD/UI being affected  
--- @param Mode number @Lighting render mode
function render.SetLightingMode(Mode)
end

--- Sets lighting origin for the current model.  
--- 🦟 **BUG**: [This does not work for prop_physics.](https://github.com/Facepunch/garrysmod-issues/issues/2804)  
--- @param lightingOrigin GVector @The position which will be used to calculate lighting for the current model.
function render.SetLightingOrigin(lightingOrigin)
end

--- Sets the texture to be used as the lightmap in upcoming rendering operations. This is required when rendering meshes using a material with a lightmapped shader such as LightmappedGeneric.  
--- @param tex GITexture @The texture to be used as the lightmap.
function render.SetLightmapTexture(tex)
end

--- Sets up the local lighting for any upcoming render operation. Up to 4 local lights can be defined, with one of three different types (point, directional, spot).  
--- Disables all local lights if called with no arguments.  
--- @param lights? table @A table containing up to 4 tables for each light source that should be set up
function render.SetLocalModelLights(lights)
end

--- Sets the material to be used in any upcoming render operation using the render.  
--- Not to be confused with surface.SetMaterial.  
--- @param mat GIMaterial @The material to be used.
function render.SetMaterial(mat)
end

--- Sets up the ambient lighting for any upcoming render operation. Ambient lighting can be seen as a cube enclosing the object to be drawn, each of its faces representing a directional light source that shines towards the object. Thus, there is a total of six different light sources that can be configured separately.  
--- Light color components are not restricted to a specific range (i.e. 0-255), instead, higher values will result in a brighter light.  
--- @param lightDirection number @The light source to edit, see Enums/BOX.
--- @param red number @The red component of the light color.
--- @param green number @The green component of the light color.
--- @param blue number @The blue component of the light color.
function render.SetModelLighting(lightDirection, red, green, blue)
end

--- Sets the render target to the specified rt.  
--- @param texture GITexture @The new render target to be used.
function render.SetRenderTarget(texture)
end

--- Sets the render target with the specified index to the specified rt.  
--- @param rtIndex number @The index of the rt to set.
--- @param texture GITexture @The new render target to be used.
function render.SetRenderTargetEx(rtIndex, texture)
end

--- Sets a scissoring rectangle which limits the drawing area. (otherwise known as clipping)  
--- @param startX number @X start coordinate of the scissor rectangle in screen-space coordinates.
--- @param startY number @Y start coordinate of the scissor rectangle in screen-space coordinates.
--- @param endX number @X end coordinate of the scissor rectangle in screen-space coordinates.
--- @param endY number @Y end coordinate of the scissor rectangle in screen-space coordinates.
--- @param enable boolean @Enable or disable the scissor rect.
function render.SetScissorRect(startX, startY, endX, endY, enable)
end

--- Sets the shadow color.  
--- @param red number @The red channel of the shadow color.
--- @param green number @The green channel of the shadow color.
--- @param blue number @The blue channel of the shadow color.
function render.SetShadowColor(red, green, blue)
end

--- Sets the shadow projection direction.  
--- @param shadowDirections GVector @The new shadow direction.
function render.SetShadowDirection(shadowDirections)
end

--- Sets the maximum shadow projection range.  
--- @param shadowDistance number @The new maximum shadow distance.
function render.SetShadowDistance(shadowDistance)
end

--- Sets whether any future render operations will ignore shadow drawing.  
--- @param newState boolean 
function render.SetShadowsDisabled(newState)
end

--- Sets the Compare Function that all pixels affected by a draw operation will have their Stencil Buffer value tested against.  
--- When not set to a static value like NEVER or ALWAYS, the Stencil Buffer value corresponding to each affected pixel will be compared against the current Reference Value.  
--- Pixels that **Pass** the Compare Function check move on to the Depth Test, which determines if the draw operation will ultimately be allowed to overwrite the pixel's Color Channel, Stencil Buffer, and Depth Buffer values.  
--- Pixels that **Fail** the Compare Function check have the Fail Operation performed on their Stencil Buffer value and do **not** have any of their Render Target layers modified by the draw operation.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- @param compareFunction ESTENCILCOMPARISONFUNCTION @The Compare Function that each affected pixel's Stencil Buffer value will be evaluated against during a draw operation.
function render.SetStencilCompareFunction(compareFunction)
end

--- Enables or disables the Stencil system for future draw operations.  
--- While enabled, all pixels affected by draw operations will have their corresponding values in the active Render Target's Stencil Buffer compared against the current Reference Value and their current Depth Buffer value compared against the depth of the corresponding pixel from the draw operation.  
--- Depending on the outcomes of these comparisons, one of either the Pass, Fail, or Z-Fail operations is performed on the pixel's Stencil Buffer value.  
--- A pixel will only be updated in the active Render Target if the Pass Operation is performed.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- ℹ **NOTE**: The Stencil system's configuration does **not** reset automatically.  
--- To prevent unexpected behavior, always manually ensure that the Stencil system is configured appropriately for your use-case after enabling it.  
--- @param newState boolean @The new state.
function render.SetStencilEnable(newState)
end

--- Sets the Stencil Operation that will be performed on the Stencil Buffer values of pixels affected by draw operations if the Compare Function did **not** Pass the pixel.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- @param failOperation ESTENCILOPERATION @The Stencil Operation to be performed if the Compare Function does not Pass a pixel.
function render.SetStencilFailOperation(failOperation)
end

--- Sets the Stencil Operation that will be performed on the Stencil Buffer values of pixels affected by draw operations if the Compare Function Passes the pixel.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- @param passOperation ESTENCILOPERATION @The Stencil Operation to be performed if the Compare Function Passes a pixel.
function render.SetStencilPassOperation(passOperation)
end

--- Sets the Stencil system's Reference Value which is compared against each pixel's corresponding Stencil Buffer value in the Compare Function and can be used to modify the Stencil Buffer value of those same pixels in the Pass, Fail, and Z Fail operations.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- @param referenceValue number @The value that the Compare function and the pass, fail, and z-fail operations will use
function render.SetStencilReferenceValue(referenceValue)
end

--- Sets the unsigned 8-bit (`byte`) bitflag mask that will be bitwise ANDed with all values as they are read (tested) from the Stencil Buffer  
--- This can be considered a "niche" Stencil function as it is not required for many Stencil use-cases.  
--- This is a companion function to render.SetStencilWriteMask which modifies Stencil Buffer values as they are written.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- @param bitMask number @The 8-bit (`byte`) mask
function render.SetStencilTestMask(bitMask)
end

--- Sets the unsigned 8-bit (`byte`) bitflag mask that will be bitwise ANDed with all values as they are written to the Stencil Buffer  
--- This can be considered a "niche" Stencil function as it is not required for many Stencil use-cases.  
--- This is a companion function to render.SetStencilTestMask which modifies Stencil Buffer values as they are read.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- @param bitMask number @The 8-bit (`byte`) mask
function render.SetStencilWriteMask(bitMask)
end

--- Sets the Stencil Operation that will be performed on the Stencil Buffer values of pixels affected by draw operations if the Compare Function Passed a given pixel, but it did **not** Pass the Depth Test.  
--- For more detailed information on the Stencil system, including usage examples, see the Stencils Render Reference page  
--- @param zFailOperation ESTENCILOPERATION @The Stencil Operation to be performed if the Compare Function Passes a pixel, but the pixel fails the Depth Test.
function render.SetStencilZFailOperation(zFailOperation)
end

--- @param vec GVector 
function render.SetToneMappingScaleLinear(vec)
end

--- Changes the view port position and size. The values will be clamped to the game's screen resolution.  
--- If you are looking to render something to a texture (render target), you should use render.PushRenderTarget.  
--- ℹ **NOTE**: This function will override values of Global.ScrW and Global.ScrH with the ones you set.  
--- @param x number @X origin of the view port.
--- @param y number @Y origin of the view port.
--- @param w number @Width of the view port.
--- @param h number @Height of the view port.
function render.SetViewPort(x, y, w, h)
end

--- Sets the internal parameter **INT_RENDERPARM_WRITE_DEPTH_TO_DESTALPHA**  
--- @param enable boolean 
function render.SetWriteDepthToDestAlpha(enable)
end

--- Swaps the frame buffers/cycles the frame. In other words, this updates the screen.  
--- If you take a really long time during a single frame render, it is a good idea to use this and let the user know that the game isn't stuck.  
function render.Spin()
end

--- 🧱 **NOTE**: Requires a 3D rendering context  
--- Begin drawing a multi-segment Beam.  
--- For more detailed information on Beams, as well as usage examples, see the Beams Render Reference  
--- @param segmentCount number @The number of Beam Segments that this multi-segment Beam will contain
function render.StartBeam(segmentCount)
end

--- Returns whether the player's hardware supports HDR. (High Dynamic Range) HDR can still be disabled by the `mat_hdr_level` console variable or just not be supported by the map.  
--- @return boolean @`true` if the player's hardware supports HDR.
function render.SupportsHDR()
end

--- Returns if the current settings and the system allow the usage of pixel shaders 1.4.  
--- @return boolean @Whether Pixel Shaders 1.4 are supported or not.
function render.SupportsPixelShaders_1_4()
end

--- Returns if the current settings and the system allow the usage of pixel shaders 2.0.  
--- @return boolean @Whether Pixel Shaders 2.0 are supported or not.
function render.SupportsPixelShaders_2_0()
end

--- Returns if the current settings and the system allow the usage of vertex shaders 2.0.  
--- @return boolean @Whether Vertex Shaders 2.0 are supported or not.
function render.SupportsVertexShaders_2_0()
end

--- Suppresses or enables any engine lighting for any upcoming render operation.  
--- 🦟 **BUG**: [This does not affect IMeshes.](https://github.com/Facepunch/garrysmod-issues/issues/4070)  
--- @param suppressLighting boolean @True to suppress false to enable.
function render.SuppressEngineLighting(suppressLighting)
end

--- Enables HDR tone mapping which influences the brightness.  
function render.TurnOnToneMapping()
end

--- Updates the texture returned by render.GetFullScreenDepthTexture.  
--- Silently fails if render.SupportsPixelShaders_2_0 returns false.  
function render.UpdateFullScreenDepthTexture()
end

--- Updates the power of two texture.  
--- @return GITexture @The render.GetPowerOfTwoTexture.
function render.UpdatePowerOfTwoTexture()
end

--- Pretty much alias of render.UpdatePowerOfTwoTexture but does not return the texture.  
function render.UpdateRefractTexture()
end

--- Copies the entire screen to the screen effect texture, which can be acquired via render.GetScreenEffectTexture. This function is mainly intended to be used in GM:RenderScreenspaceEffects  
--- @param textureIndex? number @Texture index to update
function render.UpdateScreenEffectTexture(textureIndex)
end

--- This function overrides all map materials for one frame.  
--- @param mat? GIMaterial 
function render.WorldMaterialOverride(mat)
end
