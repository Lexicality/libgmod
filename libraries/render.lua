--- The render library is a powerful set of functions that let you control how the world and its contents are rendered. It can also be used to draw some 3D clientside effects such as beams, boxes and spheres.  
_G.render = {}
--- Adds a beam segment to the beam started by render.StartBeam.  
--- @param startPos GVector @Beam start position.
--- @param width number @The width of the beam.
--- @param textureEnd number @The end coordinate of the texture used.
--- @param color table @The color to be used
function render.AddBeam(startPos, width, textureEnd, color)
end

--- Blurs the render target ( or a given texture )  
--- @param rendertarget GITexture @The texture to blur
--- @param blurx number @Horizontal amount of blur
--- @param blury number @Vertical amount of blur
--- @param passes number @Amount of passes to go through
function render.BlurRenderTarget(rendertarget, blurx, blury, passes)
end

--- This function overrides the brush material for next render operations. It can be used with Entity:DrawModel.  
--- @param mat GIMaterial 
function render.BrushMaterialOverride(mat)
end

--- Captures a part of the current render target and returns the data as a binary string in the given format.  
--- Since the pixel buffer clears itself every frame, this will return a black screen outside of . To capture the user's final view, use GM:PostRender. This will not capture the Steam overlay or third-party injections (such as the Discord overlay, Overwolf, and advanced cheats) on the user's screen.  
--- 🦟 **BUG**: [This sets the alpha channel incorrectly in PNG mode, causing the foreground to be rendered almost completely transparent.](https://github.com/Facepunch/garrysmod-issues/issues/2571)  
--- @param captureData table @Parameters of the capture
--- @return string @binaryData
function render.Capture(captureData)
end

--- Dumps the current render target and allows the pixels to be accessed by render.ReadPixel.  
function render.CapturePixels()
end

--- Clears the current render target and the specified buffers.  
--- 🦟 **BUG**: [This sets the alpha incorrectly for surface draw calls for render targets.](https://github.com/Facepunch/garrysmod-issues/issues/2085)  
--- @param r number @Red component to clear to.
--- @param g number @Green component to clear to.
--- @param b number @Blue component to clear to.
--- @param a number @Alpha component to clear to.
--- @param clearDepth boolean @Clear the depth.
--- @param clearStencil boolean @Clear the stencil.
function render.Clear(r, g, b, a, clearDepth, clearStencil)
end

--- Clears the current rendertarget for obeying the current stencil buffer conditions.  
--- @param r number @Value of the red channel to clear the current rt with.
--- @param g number @Value of the green channel to clear the current rt with.
--- @param b number @Value of the blue channel to clear the current rt with.
--- @param a number @Value of the alpha channel to clear the current rt with.
--- @param depth boolean @Clear the depth buffer.
function render.ClearBuffersObeyStencil(r, g, b, a, depth)
end

--- Resets the depth buffer.  
--- 🦟 **BUG**: [This function also clears the stencil buffer. Use render.Clear in the meantime.](https://github.com/Facepunch/garrysmod-issues/issues/3317)  
function render.ClearDepth()
end

--- Clears a render target  
--- It uses render.Clear then render.SetRenderTarget on the modified render target.  
--- @param texture GITexture 
--- @param color table @The color, see Color
function render.ClearRenderTarget(texture, color)
end

--- Resets all values in the stencil buffer to zero.  
function render.ClearStencil()
end

--- Sets the stencil value in a specified rect.  
--- This is **not** affected by render.SetStencilWriteMask  
--- @param originX number @X origin of the rectangle.
--- @param originY number @Y origin of the rectangle.
--- @param endX number @The end X coordinate of the rectangle.
--- @param endY number @The end Y coordinate of the rectangle.
--- @param stencilValue number @Value to set cleared stencil buffer to.
function render.ClearStencilBufferRectangle(originX, originY, endX, endY, stencilValue)
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

--- Copies the currently active Render Target to the specified texture.  
--- @param Target GITexture @The texture to copy to
function render.CopyRenderTargetToTexture(Target)
end

--- Copies the contents of one texture to another. Only works with rendertargets.  
--- @param texture_from GITexture 
--- @param texture_to GITexture 
function render.CopyTexture(texture_from, texture_to)
end

--- Changes the cull mode.  
--- @param cullMode number @Cullmode, see Enums/MATERIAL_CULLMODE
function render.CullMode(cullMode)
end

--- Set's the depth range of the upcoming render.  
--- @param depthmin number @The minimum depth of the upcoming render
--- @param depthmax number @The maximum depth of the upcoming render
function render.DepthRange(depthmin, depthmax)
end

--- Draws textured beam.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param startPos GVector @Beam start position.
--- @param endPos GVector @Beam end position.
--- @param width number @The width of the beam.
--- @param textureStart number @The start coordinate of the texture used.
--- @param textureEnd number @The end coordinate of the texture used.
--- @param color table @The color to be used
function render.DrawBeam(startPos, endPos, width, textureStart, textureEnd, color)
end

--- Draws a box in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Origin of the box.
--- @param angles GAngle @Orientation of the box.
--- @param mins GVector @Start position of the box, relative to origin.
--- @param maxs GVector @End position of the box, relative to origin.
--- @param color table @The color of the box
function render.DrawBox(position, angles, mins, maxs, color)
end

--- Draws a line in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param startPos GVector @Line start position in world coordinates.
--- @param endPos GVector @Line end position in world coordinates.
--- @param color table @The color to be used
--- @param writeZ boolean @Whether or not to consider the Z buffer
function render.DrawLine(startPos, endPos, color, writeZ)
end

--- Draws 2 connected triangles. Expects material to be set by render.SetMaterial.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param vert1 GVector @First vertex.
--- @param vert2 GVector @The second vertex.
--- @param vert3 GVector @The third vertex.
--- @param vert4 GVector @The fourth vertex.
--- @param color table @The color of the quad
function render.DrawQuad(vert1, vert2, vert3, vert4, color)
end

--- Draws a quad.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Origin of the sprite.
--- @param normal GVector @The face direction of the quad.
--- @param width number @The width of the quad.
--- @param height number @The height of the quad.
--- @param color table @The color of the quad
--- @param rotation number @The rotation of the quad counter-clockwise in degrees around the normal axis
function render.DrawQuadEasy(position, normal, width, height, color, rotation)
end

--- Draws the current material set by render.SetMaterial to the whole screen. The color cannot be customized.  
--- See also render.DrawScreenQuadEx.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
function render.DrawScreenQuad()
end

--- Draws the the current material set by render.SetMaterial to the area specified. Color cannot be customized.  
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
--- @param color table @The color of the sphere
function render.DrawSphere(position, radius, longitudeSteps, latitudeSteps, color)
end

--- Draws a sprite in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Position of the sprite.
--- @param width number @Width of the sprite.
--- @param height number @Height of the sprite.
--- @param color table @Color of the sprite
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
--- @param color table @The color of the box
--- @param writeZ boolean @Sets whenever to write to the zBuffer.
function render.DrawWireframeBox(position, angle, mins, maxs, color, writeZ)
end

--- Draws a wireframe sphere in 3d space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position GVector @Position of the sphere.
--- @param radius number @The size of the sphere.
--- @param longitudeSteps number @The amount of longitude steps
--- @param latitudeSteps number @The amount of latitude steps
--- @param color table @The color of the wireframe
--- @param writeZ boolean @Whether or not to consider the Z buffer
function render.DrawWireframeSphere(position, radius, longitudeSteps, latitudeSteps, color, writeZ)
end

--- Sets the status of the clip renderer, returning previous state.  
--- ⚠ **WARNING**: To prevent unintended rendering behavior of other mods/the game, you must reset the clipping state to its previous value.  
--- 🦟 **BUG**: [Reloading the map does not reset the previous value of this function.](https://github.com/Facepunch/garrysmod-issues/issues/3105)  
--- @param state boolean @New clipping state.
--- @return boolean @Previous clipping state.
function render.EnableClipping(state)
end

--- Ends the beam mesh of a beam started with render.StartBeam.  
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
--- @param fogMode number @Fog mode, see Enums/MATERIAL_FOG.
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
--- @return number @blend
function render.GetBlend()
end

--- @return GITexture @The bloom texture
function render.GetBloomTex0()
end

--- @return GITexture 
function render.GetBloomTex1()
end

--- Returns the current color modulation values as normals.  
--- @return number @r
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

--- Returns the _rt_FullFrameDepth texture. Alias of _rt_PowerOfTwoFB  
--- @return GITexture 
function render.GetFullScreenDepthTexture()
end

--- Gets the light exposure on the specified position.  
--- @param position GVector @The position of the surface to get the light from.
--- @return GVector @lightColor
function render.GetLightColor(position)
end

--- @return GITexture 
function render.GetMoBlurTex0()
end

--- @return GITexture 
function render.GetMoBlurTex1()
end

--- @return GITexture 
function render.GetMorphTex0()
end

--- @return GITexture 
function render.GetMorphTex1()
end

--- Returns the render target's power of two texture.  
--- @return GITexture @The power of two texture, which is **_rt_poweroftwofb** by default.
function render.GetPowerOfTwoTexture()
end

--- Alias of render.GetPowerOfTwoTexture.  
--- @return GITexture 
function render.GetRefractTexture()
end

--- Returns the currently active render target.  
--- Instead of saving the current render target using this function and restoring to it later, it is generally better practice to use render.PushRenderTarget and render.PopRenderTarget.  
--- @return GITexture @The currently active Render Target
function render.GetRenderTarget()
end

--- Returns the _rt_ResolvedFullFrameDepth texture for SSAO depth.  
--- @return GITexture 
function render.GetResolvedFullFrameDepth()
end

--- Obtain an ITexture of the screen. You must call render.UpdateScreenEffectTexture in order to update this texture with the currently rendered scene.  
--- This texture is mainly used within GM:RenderScreenspaceEffects  
--- @param textureIndex number @Max index is 3, but engine only creates the first two for you.
--- @return GITexture 
function render.GetScreenEffectTexture(textureIndex)
end

--- @return GITexture 
function render.GetSmallTex0()
end

--- @return GITexture 
function render.GetSmallTex1()
end

--- Returns a floating point texture the same resolution as the screen.  
--- ℹ **NOTE**: The gmodscreenspace doesn't behave as expected when drawing a floating-point texture to an integer texture (e.g. the default render target). Use an UnlitGeneric material instead  
--- @return GITexture @Render target named "__rt_supertexture1"
function render.GetSuperFPTex()
end

--- See render.GetSuperFPTex  
--- @return GITexture @Render target named "__rt_supertexture2"
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

--- Sets the render material override for all next calls of Entity:DrawModel. Also overrides render.MaterialOverrideByIndex.  
--- @param material GIMaterial @The material to use as override, use nil to disable.
function render.MaterialOverride(material)
end

--- Similar to render.MaterialOverride, but overrides the materials per index.  
--- render.MaterialOverride overrides effects of this function.  
--- @param index number @Starts with 0, the index of the material to override
--- @param material GIMaterial @The material to override with
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
--- 🦟 **BUG**: [Using this with a map model (game.GetWorld():GetModel()) crashes the game.](https://github.com/Facepunch/garrysmod-issues/issues/3307)  
--- @param settings table @Requires:
--- @param ent GCSEnt @If provided, this entity will be reused instead of creating a new one with Global.ClientsideModel
function render.Model(settings, ent)
end

--- Sets a material to override a model's default material. Similar to Entity:SetMaterial except it uses an IMaterial argument and it can be used to change materials on models which are part of the world geometry.  
--- @param material GIMaterial @The material override.
function render.ModelMaterialOverride(material)
end

--- Overrides the write behaviour of all next rendering operations towards the alpha channel of the current render target.  
--- See also render.OverrideBlend.  
--- ℹ **NOTE**: Doing surface draw calls with alpha set to 0 is a no-op and will never have any effect.  
--- @param enable boolean @Enable or disable the override.
--- @param shouldWrite boolean @If the previous argument is true, sets whether the next rendering operations should write to the alpha channel or not
function render.OverrideAlphaWriteEnable(enable, shouldWrite)
end

--- Overrides the internal graphical functions used to determine the final color and alpha of a rendered texture.  
--- See also render.OverrideAlphaWriteEnable.  
--- ℹ **NOTE**: Doing surface draw calls with alpha set to 0 is a no-op and won't have an effect.  
--- @param enabled boolean @true to enable, false to disable
--- @param srcBlend number @The source color blend function Enums/BLEND
--- @param destBlend number @The destination color blend function Enums/BLEND.
--- @param blendFunc number @The blend mode used for drawing the color layer Enums/BLENDFUNC.
--- @param srcBlendAlpha number @The source alpha blend function Enums/BLEND
--- @param destBlendAlpha number @The destination alpha blend function Enums/BLEND.
--- @param blendFuncAlpha number @The blend mode used for drawing the alpha layer Enums/BLENDFUNC.
function render.OverrideBlend(enabled, srcBlend, destBlend, blendFunc, srcBlendAlpha, destBlendAlpha, blendFuncAlpha)
end

--- 🛑 **DEPRECATED**: Use render.OverrideBlend instead.  
--- Overrides the internal graphical functions used to determine the final color and alpha of a rendered texture.  
--- See also render.OverrideAlphaWriteEnable.  
--- ℹ **NOTE**: Doing surface draw calls with alpha set to 0 is a no-op and will never have any effect.  
--- @param enabled boolean @true to enable, false to disable
--- @param srcBlend number @The source color blend function Enums/BLEND
--- @param destBlend number 
--- @param srcBlendAlpha number @The source alpha blend function Enums/BLEND
--- @param destBlendAlpha number 
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

function render.PerformFullScreenStencilOperation()
end

--- Removes the current active clipping plane from the clip plane stack.  
function render.PopCustomClipPlane()
end

--- Pops the current texture magnification filter from the filter stack.  
--- See render.PushFilterMag  
function render.PopFilterMag()
end

--- Pops the current texture minification filter from the filter stack.  
--- See render.PushFilterMin  
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
--- ℹ **NOTE**: A max of 2 clip planes are supported on Linux/POSIX, and 6 on Windows.  
--- @param normal GVector @The normal of the clipping plane.
--- @param distance number @The distance of the plane from the world origin
function render.PushCustomClipPlane(normal, distance)
end

--- Pushes a texture filter onto the magnification texture filter stack.  
--- @param texFilterType number @The texture filter type, see Enums/TEXFILTER
function render.PushFilterMag(texFilterType)
end

--- Pushes a texture filter onto the minification texture filter stack.  
--- @param texFilterType number @The texture filter type, see Enums/TEXFILTER
function render.PushFilterMin(texFilterType)
end

--- Enables the flashlight projection for the upcoming rendering.  
--- 🦟 **BUG**: [This will leave models lit under specific conditions.](https://github.com/Facepunch/garrysmod-issues/issues/3029)  
--- @param enable boolean @Whether the flashlight mode should be enabled or disabled.
function render.PushFlashlightMode(enable)
end

--- Pushes the current render target and viewport to the RT stack then sets a new current render target and viewport. If the viewport is not specified, the dimensions of the render target are used instead.  
--- This is similar to a call to render.SetRenderTarget and render.SetViewPort where the current render target and viewport have been saved beforehand, except the viewport isn't clipped to screen bounds.  
--- See also render.PopRenderTarget.  
--- ℹ **NOTE**: If you want to render to the render target in 2d mode and it is not the same size as the screen, use cam.Start2D and cam.End2D.  
--- ℹ **NOTE**: If the render target is bigger than the screen, rendering done with the surface library will be clipped to the screen bounds unless you call Global.DisableClipping  
--- @param texture GITexture @The new render target to be used.
--- @param x number @X origin of the viewport.
--- @param y number @Y origin of the viewport.
--- @param w number @Width of the viewport.
--- @param h number @Height of the viewport
function render.PushRenderTarget(texture, x, y, w, h)
end

--- Reads the color of the specified pixel from the RenderTarget sent by render.CapturePixels  
--- @param x number @The x coordinate.
--- @param y number @The y coordinate.
--- @return number @r
--- @return number @g
--- @return number @b
function render.ReadPixel(x, y)
end

--- This applies the changes made to map lighting using engine.LightStyle.  
--- @param DoStaticProps boolean @When true, this will also apply lighting changes to static props
function render.RedownloadAllLightmaps(DoStaticProps)
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
--- @param view table @The view data to be used in the rendering
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

--- Sets the alpha blending for every upcoming render operation.  
--- 🦟 **BUG**: [This does not affect non-model render.Draw* functions.](https://github.com/Facepunch/garrysmod-issues/issues/3166)  
--- @param blending number @Blending value from 0-1.
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

--- Sets the current drawing material to "color_ignorez".  
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

--- Sets the color modulation.  
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

--- Sets the lighting origin.  
--- 🦟 **BUG**: [This does not work for prop_physics.](https://github.com/Facepunch/garrysmod-issues/issues/2804)  
--- @param lightingOrigin GVector @The position from which the light should be "emitted".
function render.SetLightingOrigin(lightingOrigin)
end

--- Sets the texture to be used as the lightmap in upcoming rendering operations. This is required when rendering meshes using a material with a lightmapped shader such as LightmappedGeneric.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- <rendercontext hook="false" type="2D"></rendercontext>  
--- @param tex GITexture @The texture to be used as the lightmap.
function render.SetLightmapTexture(tex)
end

--- Sets up the local lighting for any upcoming render operation. Up to 4 local lights can be defined, with one of three different types (point, directional, spot).  
--- Disables all local lights if called with no arguments.  
--- @param lights table @A table containing up to 4 tables for each light source that should be set up
function render.SetLocalModelLights(lights)
end

--- Sets the material to be used in any upcoming render operation using the render.  
--- Not to be confused with surface.SetMaterial.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- <rendercontext hook="false" type="2D"></rendercontext>  
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

--- Sets a scissoring rect which limits the drawing area.  
--- @param startX number @X start coordinate of the scissor rect.
--- @param startY number @Y start coordinate of the scissor rect.
--- @param endX number @X end coordinate of the scissor rect.
--- @param endY number @Y end coordinate of the scissor rect.
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

--- Sets the compare function of the stencil.  
--- Pixels which fail the stencil comparison function are not written to the render target. The operation to be performed on the stencil buffer values for these pixels can be set using render.SetStencilFailOperation.  
--- Pixels which pass the stencil comparison function are written to the render target unless they fail the depth buffer test (where applicable). The operation to perform on the stencil buffer values for these pixels can be set using render.SetStencilPassOperation and render.SetStencilZFailOperation.  
--- @param compareFunction number @Compare function, see Enums/STENCILCOMPARISONFUNCTION, and Enums/STENCIL for short.
function render.SetStencilCompareFunction(compareFunction)
end

--- Sets whether stencil tests are carried out for each rendered pixel.  
--- Only pixels passing the stencil test are written to the render target.  
--- @param newState boolean @The new state.
function render.SetStencilEnable(newState)
end

--- Sets the operation to be performed on the stencil buffer values if the compare function was not successful.  
--- Note that this takes place **before** depth testing.  
--- @param failOperation number @Fail operation function, see Enums/STENCILOPERATION
function render.SetStencilFailOperation(failOperation)
end

--- Sets the operation to be performed on the stencil buffer values if the compare function was successful.  
--- @param passOperation number @Pass operation function, see Enums/STENCILOPERATION
function render.SetStencilPassOperation(passOperation)
end

--- Sets the reference value which will be used for all stencil operations. This is an unsigned integer.  
--- @param referenceValue number @Reference value.
function render.SetStencilReferenceValue(referenceValue)
end

--- Sets the unsigned 8-bit test bitflag mask to be used for any stencil testing.  
--- @param mask number @The mask bitflag.
function render.SetStencilTestMask(mask)
end

--- Sets the unsigned 8-bit write bitflag mask to be used for any writes to the stencil buffer.  
--- @param mask number @The mask bitflag.
function render.SetStencilWriteMask(mask)
end

--- Sets the operation to be performed on the stencil buffer values if the stencil test is passed but the depth buffer test fails.  
--- @param zFailOperation number @Z fail operation function, see Enums/STENCILOPERATION
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

--- Start a new beam draw operation.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param segmentCount number @Amount of beam segments that are about to be drawn.
function render.StartBeam(segmentCount)
end

--- Returns whether the game supports HDR, i.e. if the DirectX level is higher than or equal to 8.  
--- @return boolean @supportsHDR
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
--- @return GITexture @Returns render.GetPowerOfTwoTexture.
function render.UpdatePowerOfTwoTexture()
end

--- Pretty much alias of render.UpdatePowerOfTwoTexture but does not return the texture.  
function render.UpdateRefractTexture()
end

--- Copies the entire screen to the screen effect texture, which can be acquired via render.GetScreenEffectTexture. This function is mainly intended to be used in GM:RenderScreenspaceEffects  
function render.UpdateScreenEffectTexture()
end

