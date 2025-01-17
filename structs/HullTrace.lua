--- @meta

--- Table used by util.TraceHull.  
--- @class SHullTrace
--- @field start GVector @The start position of the trace
--- @field endpos GVector @The end position of the trace
--- @field maxs GVector @The 3D vector local to the start/endpos with the highest values
--- @field mins GVector @The 3D vector local to the start/endpos with the lowest (often negative) values
--- @field filter? GEntity @Things the trace should not hit
--- @field mask? number @The trace mask Enums/MASK
--- @field collisiongroup? number @The collision group Enums/COLLISION_GROUP
--- @field ignoreworld? boolean @Should the trace ignore world or not.
--- @field output? table @If set, the trace result will be written to the supplied table instead of returning a new table
--- @field whitelist? boolean @Turns the `filter` field into a whitelist, if it is a table.
--- @field hitclientonly? boolean @Enables traces to hit clientside only entities
