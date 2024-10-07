--- The construct library is used to control the physical properties of entities.  
_G.construct = {}
--- Creates a magnet.  
--- @param ply GPlayer @Player that will have the numpad control over the magnet
--- @param pos GVector @The position of the magnet
--- @param ang GAngle @The angles of the magnet
--- @param model string @The model of the maget
--- @param material string @Material of the magnet ( texture )
--- @param key number @The key to toggle the magnet, see Enums/KEY
--- @param maxObjects number @Maximum amount of objects the magnet can hold
--- @param strength number @Strength of the magnet
--- @param nopull? number @If &gt; 0, disallows the magnet to pull objects towards it
--- @param allowrot? number @If &gt; 0, allows rotation of the objects attached
--- @param startOn? number @If &gt; 0, enabled from spawn
--- @param toggle? number @If != 0, pressing the key toggles the magnet, otherwise you'll have to hold the key to keep it enabled
--- @param vel? GVector @Velocity to set on spawn
--- @param aVel? GAngle @Angular velocity to set on spawn
--- @param frozen? boolean @Freeze the magnet on start
--- @return GEntity @The magnet
function construct.Magnet(ply, pos, ang, model, material, key, maxObjects, strength, nopull, allowrot, startOn, toggle, vel, aVel, frozen)
end

--- Sets props physical properties.  
--- @param ply GPlayer @The player
--- @param ent GEntity @The entity to apply properties to
--- @param physObjID number @You can use this or the argument below
--- @param physObj GPhysObj @The physics object to apply the properties to
--- @param data table @The table containing properties to apply
function construct.SetPhysProp(ply, ent, physObjID, physObj, data)
end

