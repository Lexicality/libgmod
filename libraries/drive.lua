--- The drive library is for adding custom control modes to the new "remote control" entity piloting system in Garry's Mod 13. See Entity Driving.  
_G.drive = {}
--- Player has stopped driving the entity.  
--- @param ply GPlayer @The player
--- @param ent GEntity @The entity
function drive.End(ply, ent)
end

--- Starts driving for the player.  
--- @param ply GPlayer @The player to affect
--- @param ent GEntity @The entity to drive
--- @param mode string @The driving mode
function drive.PlayerStartDriving(ply, ent, mode)
end

--- Stops the player from driving anything. ( For example a prop in sandbox )  
--- @param ply GPlayer @The player to affect
function drive.PlayerStopDriving(ply)
end

--- Registers a new entity drive.  
--- @param name string @The name of the drive.
--- @param data table @The data required to create the drive
--- @param base? string @The base of the drive.
function drive.Register(name, data, base)
end

--- Called when the player first starts driving this entity  
--- @param ply GPlayer @The player
--- @param ent GEntity @The entity
function drive.Start(ply, ent)
end

