--- The debugoverlay library is mainly useful for 3D debugging, it can be used to draw shapes on the screen for debug purposes.  
--- ℹ **NOTE**: These functions will not do anything unless the **developer** console variable is set to non 0.  
--- ℹ **NOTE**: These function appear to not work in singleplayer  
_G.debugoverlay = {}
--- Displays an axis indicator at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0  
--- @param origin GVector @Position origin
--- @param ang GAngle @Angle of the axis
--- @param size number @Size of the axis
--- @param lifetime number @Number of seconds to appear
--- @param ignoreZ boolean @If true, will draw on top of everything; ignoring the Z buffer
function debugoverlay.Axis(origin, ang, size, lifetime, ignoreZ)
end

--- Displays a solid coloured box at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param origin GVector @Position origin
--- @param mins GVector @Minimum bounds of the box
--- @param maxs GVector @Maximum bounds of the box
--- @param lifetime number @Number of seconds to appear
--- @param color table @The color of the box
function debugoverlay.Box(origin, mins, maxs, lifetime, color)
end

--- Displays a solid colored rotated box at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param pos GVector @World position
--- @param mins GVector @The mins of the box (lowest corner)
--- @param maxs GVector @The maxs of the box (highest corner)
--- @param ang GAngle @The angle to draw the box at
--- @param lifetime number @Amount of seconds to show the box
--- @param color table @The color of the box
function debugoverlay.BoxAngles(pos, mins, maxs, ang, lifetime, color)
end

--- Creates a coloured cross at the specified position for the specified time.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param position GVector @Position origin
--- @param size number @Size of the cross
--- @param lifetime number @Number of seconds the cross to appear
--- @param color table @The color of the cross
--- @param ignoreZ boolean @If true, will draw on top of everything; ignoring the Z buffer
function debugoverlay.Cross(position, size, lifetime, color, ignoreZ)
end

--- Displays 2D text at the specified coordinates.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param pos GVector @The position in 3D to display the text.
--- @param line number @Line of text, will offset text on the to display the new line unobstructed
--- @param text string @The text to display
--- @param lifetime number @Number of seconds to appear
--- @param color table @The color of the box
function debugoverlay.EntityTextAtPosition(pos, line, text, lifetime, color)
end

--- Draws a 3D grid of limited size in given position.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param position GVector 
function debugoverlay.Grid(position)
end

--- Displays a coloured line at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param pos1 GVector @First position of the line
--- @param pos2 GVector @Second position of the line
--- @param lifetime number @Number of seconds to appear
--- @param color table @The color of the line
--- @param ignoreZ boolean @If true, will draw on top of everything; ignoring the Z buffer
function debugoverlay.Line(pos1, pos2, lifetime, color, ignoreZ)
end

--- Displays text triangle at the specified coordinates.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param x number @The position of the text, from 0 ( left ) to 1 ( right ).
--- @param y number @The position of the text, from 0 ( top ) to 1 ( bottom ).
--- @param text string @The text to display
--- @param lifetime number @Number of seconds to appear
--- @param color table @The color of the box
function debugoverlay.ScreenText(x, y, text, lifetime, color)
end

--- Displays a coloured sphere at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param origin GVector @Position origin
--- @param size number @Size of the sphere
--- @param lifetime number @Number of seconds to appear
--- @param color table @The color of the sphere
--- @param ignoreZ boolean @If true, will draw on top of everything; ignoring the Z buffer
function debugoverlay.Sphere(origin, size, lifetime, color, ignoreZ)
end

--- Displays "swept" box, two boxes connected with lines by their verices.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param vStart GVector @The start position of the box.
--- @param vEnd GVector @The end position of the box.
--- @param vMins GVector @The "minimum" edge of the box.
--- @param vMaxs GVector @The "maximum" edge of the box.
--- @param ang GAngle 
--- @param lifetime number @Number of seconds to appear
--- @param color table @The color of the box
function debugoverlay.SweptBox(vStart, vEnd, vMins, vMaxs, ang, lifetime, color)
end

--- Displays text at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param origin GVector @Position origin
--- @param text string @String message to display
--- @param lifetime number @Number of seconds to appear
--- @param viewCheck boolean @Clip text that is obscured
function debugoverlay.Text(origin, text, lifetime, viewCheck)
end

--- Displays a colored triangle at the specified coordinates.  
--- ℹ **NOTE**: This function will silently fail if the **developer** ConVar is set to 0.  
--- @param pos1 GVector @First point of the triangle
--- @param pos2 GVector @Second point of the triangle
--- @param pos3 GVector @Third point of the triangle
--- @param lifetime number @Number of seconds to appear
--- @param color table @The color of the box
--- @param ignoreZ boolean @If true, will draw on top of everything; ignoring the Z buffer
function debugoverlay.Triangle(pos1, pos2, pos3, lifetime, color, ignoreZ)
end

