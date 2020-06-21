--- The halo library is used to draw glowing outlines around entities, an example of this can be seen by picking up props with the physgun in Garry's Mod 13.  
_G.halo = {}
--- Applies a halo glow effect to one or multiple entities.  
--- ⚠ **WARNING**: Using this function outside of the GM:PreDrawHalos hook can cause instability or crashes.  
--- @param entities table @A table of entities to add the halo effect to
--- @param color table @The desired color of the halo
--- @param blurX number @The strength of the halo's blur on the x axis.
--- @param blurY number @The strength of the halo's blur on the y axis.
--- @param passes number @The number of times the halo should be drawn per frame
--- @param additive boolean @Sets the render mode of the halo to additive.
--- @param ignoreZ boolean @Renders the halo through anything when set to true.
function halo.Add(entities, color, blurX, blurY, passes, additive, ignoreZ)
end

--- Returns the entity the halo library is currently rendering the halo for.  
--- The main purpose of this function is to be used in ENTITY:Draw in order not to draw certain parts of the entity when the halo is being rendered, so there's no halo around unwanted entity parts, such as lasers, 3D2D displays, etc.  
--- @return GEntity @If set, the currently rendered entity by the halo library.
function halo.RenderedEntity()
end

