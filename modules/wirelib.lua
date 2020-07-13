WireLib = {}


--- Checks if the entity has wire ports.
--- Works for every entity that has wire in-/output.
--- Very important and useful for checks!
--- @param ent GEntity
--- @return boolean
function WireLib.HasPorts(ent)
end


--- @param ent GEntity
--- @return table,table
function WireLib.GetPorts(ent)
end

--- @param ent GEntity
--- @param name string
--- @param value any
function WireLib.TriggerInput(ent, name, value, ...)
end

--- @param ent GEntity
--- @param names table
--- @param types table
--- @param descs table
--- @return table
function WireLib.CreateSpecialInputs(ent, names, types, descs)
end

--- @param ent GEntity
--- @param names table
--- @param types table
--- @param descs table
--- @return table
function WireLib.CreateSpecialOutputs(ent, names, types, descs)
end

--- @param ent GEntity
--- @param names table
--- @param types table
--- @param descs table
--- @return table
function WireLib.AdjustSpecialInputs(ent, names, types, descs)
end


--- @param ent GEntity
--- @param names table
--- @param types table
--- @param descs table
--- @return table
function WireLib.AdjustSpecialOutputs(ent, names, types, descs)
end

--- Disconnects all wires from the given output.
--- @param entity GEntity
--- @param output_name string
function WireLib.DisconnectOutput(entity, output_name)
end

--- @param ent GEntity
--- @param iname string
--- @param itype any
--- @param descs string
function WireLib.RetypeInputs(ent, iname, itype, descs)
end


--- @param ent GEntity
--- @param oname string
--- @param otype any
--- @param descs string
function WireLib.RetypeOutputs(ent, oname, otype, descs)
end


--- force_outputs is only needed for existing components to allow them to be updated
--- @param ent GEntity
--- @param force_outputs boolean
function WireLib.Restored(ent, force_outputs)
end


--- Set DontUnList to true, if you want to call WireLib._RemoveWire(eid) manually.
--- @param ent GEntity
--- @param DontUnList boolean
function WireLib.Remove(ent, DontUnList)
end


--- @param ent GEntity
--- @param oname string
--- @param value any
--- @param iter any
function WireLib.TriggerOutput(ent, oname, value, iter)
end

--- @param ent GEntity
function WireLib.RefreshSpecialOutputs(ent)
end

--- @param ent GEntity
--- @param names table
--- @param descs table
--- @return table
function WireLib.CreateInputs(ent, names, descs)
end


--- @param ent GEntity
--- @param names table
--- @param descs table
--- @return table
function WireLib.CreateOutputs(ent, names, descs)
end


--- @param ent GEntity
--- @param names table
--- @param descs table
--- @return table
function WireLib.AdjustInputs(ent, names, descs)
end


--- @param ent GEntity
--- @param names table
--- @param descs table
--- @return table
function WireLib.AdjustOutputs(ent, names, descs)
end


--- @param ent GEntity
--- @param iname string
--- @param DontSendToCL boolean
function WireLib.Link_Clear(ent, iname, DontSendToCL)
end

-- Backwards compatibility
Wire_CreateInputs				= WireLib.CreateInputs
Wire_CreateOutputs				= WireLib.CreateOutputs
Wire_AdjustInputs				= WireLib.AdjustInputs
Wire_AdjustOutputs				= WireLib.AdjustOutputs
Wire_Restored					= WireLib.Restored
Wire_Remove						= WireLib.Remove
Wire_TriggerOutput				= WireLib.TriggerOutput
Wire_Link_Clear					= WireLib.Link_Clear
