--- @meta

--- @class GSurfaceInfo
--- A brush surface object returned by Entity:GetBrushSurfaces.  
--- Brush surfaces are a part of what makes up the map geometry aside from displacements. Any primitive brush model, including most breakable windows, can be represented by this object.  
--- ℹ **NOTE**: This object internally uses the `SurfaceHandle_t` class, which is an alias for `msurface2_t*`.  
local GSurfaceInfo = {}
--- Returns the brush surface's material.  
--- @return GIMaterial @Material of one portion of a brush model.
function GSurfaceInfo:GetMaterial()
end

--- Returns a list of vertices the brush surface is built from.  
--- @return GVector[] @A list of Vector points
function GSurfaceInfo:GetVertices()
end

--- Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine.  
--- ℹ **NOTE**: This internally checks the SURFDRAW_NODRAW flag.  
--- @return boolean @Returns true if this surface won't be drawn.
function GSurfaceInfo:IsNoDraw()
end

--- Checks if the brush surface is displaying the skybox.  
--- ℹ **NOTE**: This internally checks the SURFDRAW_SKY flag.  
--- @return boolean @Returns true if the surface is the sky.
function GSurfaceInfo:IsSky()
end

--- Checks if the brush surface is water.  
--- ℹ **NOTE**: This internally checks the SURFDRAW_WATER flag.  
--- @return boolean @Returns true if the surface is water.
function GSurfaceInfo:IsWater()
end
