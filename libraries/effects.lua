--- The effects library allows you to manually add scripted effects.  
_G.effects = {}
--- Creates a "beam ring point" effect.  
--- @param pos GVector @The origin position of the effect.
--- @param lifetime number @How long the effect will be drawing for, in seconds.
--- @param startRad number @Initial radius of the effect.
--- @param endRad number @Final radius of the effect, at the end of the effect's lifetime.
--- @param width number @How thick the beam should be.
--- @param amplitude number @How noisy the beam should be.
--- @param color table @Beam's Global.Color.
--- @param extra table @Extra info, all optional
function effects.BeamRingPoint(pos, lifetime, startRad, endRad, width, amplitude, color, extra)
end

--- Creates a bubble trail effect, the very same you get when shooting underwater.  
--- @param startPos GVector @The start position of the effect.
--- @param endPos GVector @The end position of the effects.
--- @param count number @How many bubbles to spawn
--- @param height number @How high the bubbles can fly up before disappearing.
--- @param speed? number @How quickly the bubbles move.
--- @param delay? number @Delay in seconds after the function call and before the effect actually spawns.
function effects.BubbleTrail(startPos, endPos, count, height, speed, delay)
end

--- Creates a bunch of bubbles inside a defined box.  
--- @param mins GVector @The lowest extents of the box.
--- @param maxs GVector @The highest extents of the box.
--- @param count number @How many bubbles to spawn
--- @param height number @How high the bubbles can fly up before disappearing.
--- @param speed? number @How quickly the bubbles move.
--- @param delay? number @Delay in seconds after the function call and before the effect actually spawns.
function effects.Bubbles(mins, maxs, count, height, speed, delay)
end
