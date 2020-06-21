--- This directs all drawing to be done to a certain 2D or 3D plane or position, until the corresponding "End" function is called.  
--- The matrix functions exist, but are mostly unusable unless you're familiar with the source engine's layout for each aspect.  
_G.cam = {}
--- Shakes the screen at a certain position.  
--- @param pos GVector @Origin of the shake.
--- @param angles GAngle @Angles of the shake.
--- @param factor number @The shake factor.
function cam.ApplyShake(pos, angles, factor)
end

--- Switches the renderer back to the previous drawing mode from a 3D context.  
--- This function is an alias of cam.End3D.  
--- 🦟 **BUG**: [This will crash the game if there is no context to end.](https://github.com/Facepunch/garrysmod-issues/issues/1091)  
function cam.End()
end

--- Switches the renderer back to the previous drawing mode from a 2D context.  
--- 🦟 **BUG**: [This will crash the game if there is no context to end.](https://github.com/Facepunch/garrysmod-issues/issues/1091)  
function cam.End2D()
end

--- Switches the renderer back to the previous drawing mode from a 3D context.  
--- 🦟 **BUG**: [This will crash the game if there is no context to end.](https://github.com/Facepunch/garrysmod-issues/issues/1091)  
function cam.End3D()
end

--- Switches the renderer back to the previous drawing mode from a 3D2D context.  
--- 🦟 **BUG**: [This will crash the game if there is no context to end.](https://github.com/Facepunch/garrysmod-issues/issues/1091)  
function cam.End3D2D()
end

--- Switches the renderer back to the previous drawing mode from a 3D orthographic rendering context.  
function cam.EndOrthoView()
end

--- Returns the currently active model matrix.  
--- ⁉ **VALIDATE**: Does this actually mean the matrix on top of the stack? Probably  
--- @return GVMatrix @The currently active matrix.
function cam.GetModelMatrix()
end

--- Tells the renderer to ignore the depth buffer and draw any upcoming operation "ontop" of everything that was drawn yet.  
--- @param ignoreZ boolean @Determines whenever to ignore the depth buffer or not.
function cam.IgnoreZ(ignoreZ)
end

--- Pops the current active rendering matrix from the stack and reinstates the previous one.  
function cam.PopModelMatrix()
end

--- Pushes the specified matrix onto the render matrix stack. Unlike opengl, this will replace the current model matrix.  
--- ℹ **NOTE**: This does not work with cam.Start3D2D if `multiply` is false.  
--- @param matrix GVMatrix @The matrix to push.
--- @param multiply boolean @If set, multiplies given matrix with currently active matrix (cam.GetModelMatrix) before pushing.
function cam.PushModelMatrix(matrix, multiply)
end

--- Sets up a new rendering context. This is an extended version of cam.Start3D and cam.Start2D. Must be finished by cam.End3D or cam.End2D.  
--- 🦟 **BUG**: [This will not update current view properties for 3D contexts.](https://github.com/Facepunch/garrysmod-issues/issues/2682)  
--- @param dataTbl table @Render context config
function cam.Start(dataTbl)
end

--- Sets up a new 2D rendering context. Must be finished by cam.End2D.  
--- This is almost always used with a render target from the render. To set its position use render.SetViewPort with a target already stored.  
--- ℹ **NOTE**: This will put an identity matrix at the top of the model matrix stack. If you are trying to use cam.PushModelMatrix, call it after this function and not before.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function cam.Start2D()
end

--- Sets up a new 3D rendering context. Must be finished by cam.End3D.  
--- For more advanced settings such as an orthographic view, use cam.Start instead.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- ℹ **NOTE**: Both zNear and zFar need a value before any of them work.  
--- zNear also requires a value higher than 0.  
--- 🦟 **BUG**: [Negative x/y values won't work.](https://github.com/Facepunch/garrysmod-issues/issues/1995)  
--- 🦟 **BUG**: [This will not update current view properties.](https://github.com/Facepunch/garrysmod-issues/issues/2682)  
--- @param pos GVector @Render cam position.
--- @param angles GAngle @Render cam angles.
--- @param fov number @Field of view.
--- @param x number @X coordinate of where to start the new view port.
--- @param y number @Y coordinate of where to start the new view port.
--- @param w number @Width of the new viewport.
--- @param h number @Height of the new viewport.
--- @param zNear number @Distance to near clipping plane.
--- @param zFar number @Distance to far clipping plane.
function cam.Start3D(pos, angles, fov, x, y, w, h, zNear, zFar)
end

--- Sets up a new 2D rendering context. Must be finished by cam.End3D2D. This function pushes a new matrix onto the stack. (cam.PushModelMatrix)  
--- Matrix formula:  
--- ```  
--- local m = Matrix()  
--- m:SetAngles(angles)  
--- m:SetTranslation(pos)  
--- m:SetScale(Vector(scale, -scale, 1))  
--- ```  
--- 🟥 **NOTE**: Provides a 2D rendering context  
--- <rendercontext hook="false" type="3D"></rendercontext>  
--- ⚠ **WARNING**: This should be closed by cam.End3D2D otherwise the game crashes  
--- @param pos GVector @Origin of the 3D2D context, ie
--- @param angles GAngle @Angles of the 3D2D context
--- @param scale number @The scale of the render context
function cam.Start3D2D(pos, angles, scale)
end

--- Sets up a new 3d context using orthographic projection.  
--- @param leftOffset number @The left plane offset.
--- @param topOffset number @The top plane offset.
--- @param rightOffset number @The right plane offset.
--- @param bottomOffset number @The bottom plane offset.
function cam.StartOrthoView(leftOffset, topOffset, rightOffset, bottomOffset)
end

