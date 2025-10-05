--- @meta

--- @param ent GEntity
function DoPropSpawnedEffect(ent)
end

--- @type {[string]: {[string]: GEntity[]}}
_G.g_SBoxObjects = {}

-- These are only defined in https://wiki.facepunch.com/gmod/Custom_Entity_Fields, so can't be created automatically

--- @class GEntity
--- @field GetEntityDriveMode? fun(): string @Called by the Drive property to override the default drive type, which is `drive_sandbox`.
--- @field PhysgunDisabled? boolean @If set to true, physgun will not be able to pick this entity up.
--- @field PhysgunPickup? fun(ply: GPlayer): boolean @Called from GM:PhysgunPickup, overrides PhysgunDisabled
--- @field m_tblToolsAllowed? string[] @Controls which tools and properties can be used on this entity. Format is a list of strings where each string is the tool or property classname.
--- @field DoNotDuplicate? boolean @If set, the entity will not be duplicated via the built-in duplicator system.
