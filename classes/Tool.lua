--- @class GTool
--- A list of functions available inside a Sandbox Toolgun tool.  
--- You can find the hooks here, and members here.  
local GTool = {}
--- Returns whether the tool is allowed to be used or not. This function ignores the SANDBOX:CanTool hook.  
--- By default this will always return true clientside and uses `TOOL.AllowedCVar`which is a ConVar object pointing to  `toolmode_allow_*toolname*` convar on the server.  
--- @return boolean @Returns true if the tool is allowed.
function GTool:Allowed()
end

--- Builds a list of all ConVars set via the ClientConVar variable on the Structures/TOOL and their default values. This is used for the preset system.  
--- @return table @A list of all convars and their default values.
function GTool:BuildConVarList()
end

--- Clears all objects previously set with Tool:SetObject.  
function GTool:ClearObjects()
end

--- Retrieves a physics bone number previously stored using Tool:SetObject.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return number @Associated physics bone with given id.
function GTool:GetBone(id)
end

--- Attempts to grab a clientside tool ConVar value as a boolean.  
--- @param name? string @Name of the ConVar to retrieve
--- @param default? boolean @The default value to return in case the lookup fails.
--- @return number @The value of the requested ConVar
function GTool:GetClientBool(name, default)
end

--- Attempts to grab a clientside tool ConVar as a string.  
--- @param name string @Name of the convar to retrieve
--- @return string @The value of the requested ConVar.
function GTool:GetClientInfo(name)
end

--- Attempts to grab a clientside tool ConVar's value as a number.  
--- @param name? string @Name of the convar to retrieve
--- @param default? number @The default value to return in case the lookup fails.
--- @return number @The value of the requested ConVar.
function GTool:GetClientNumber(name, default)
end

--- Retrieves an Entity previously stored using Tool:SetObject.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return GEntity @Associated Entity with given id.
function GTool:GetEnt(id)
end

--- Returns a language key based on this tool's name and the current stage it is on.  
--- @return string @The returned language key, for example `"#tool.weld.1"`
function GTool:GetHelpText()
end

--- Retrieves an local vector previously stored using Tool:SetObject.  
--- See also Tool:GetPos.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return GVector @Associated local vector with given id.
function GTool:GetLocalPos(id)
end

--- Returns the name of the current tool mode.  
--- @return string @The current tool mode.
function GTool:GetMode()
end

--- Retrieves an normal vector previously stored using Tool:SetObject.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return GVector @Associated normal vector with given id.
function GTool:GetNormal(id)
end

--- Returns the current operation of the tool set by Tool:SetOperation.  
--- @return number @The current operation the tool is at.
function GTool:GetOperation()
end

--- Returns the owner of this tool.  
--- @return GPlayer @Player using the tool
function GTool:GetOwner()
end

--- Retrieves an PhysObj previously stored using Tool:SetObject.  
--- See also Tool:GetEnt.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return GPhysObj @Associated PhysObj with given id
function GTool:GetPhys(id)
end

--- Retrieves an vector previously stored using Tool:SetObject. See also Tool:GetLocalPos.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return GVector @Associated vector with given id
function GTool:GetPos(id)
end

--- 🛑 **DEPRECATED**: Use Tool:GetWeapon instead.  
--- Returns the Tool Gun (`gmod_tool`) Scripted Weapon.  
--- @return GWeapon @The tool gun weapon
function GTool:GetSWEP()
end

--- Attempts to grab a serverside tool ConVar.  
--- This will not do anything on client, despite the function being defined shared.  
--- @param name string @Name of the convar to retrieve
--- @return string @The value of the requested ConVar.
function GTool:GetServerInfo(name)
end

--- Returns the current stage of the tool set by Tool:SetStage.  
--- @return number @The current stage of the current operation the tool is at.
function GTool:GetStage()
end

--- Returns the Tool Gun (`gmod_tool`) Scripted Weapon.  
--- @return GWeapon @The tool gun weapon
function GTool:GetWeapon()
end

--- Initializes the ghost entity with the given model. Removes any old ghost entity if called multiple times.  
--- The ghost is a regular prop_physics entity in singleplayer games, and a clientside prop in multiplayer games.  
--- @param model string @The model of the new ghost entity
--- @param pos GVector @Position to initialize the ghost entity at, usually not needed since this is updated in Tool:UpdateGhostEntity.
--- @param angle GAngle @Angle to initialize the ghost entity at, usually not needed since this is updated in Tool:UpdateGhostEntity.
function GTool:MakeGhostEntity(model, pos, angle)
end

--- Returns the amount of stored objects ( Entitys ) the tool has.  
--- ⁉ **VALIDATE**: Are TOOLs limited to 4 entities?  
--- @return number @The amount of stored objects, or Tool:GetStage clientide.
function GTool:NumObjects()
end

--- Automatically forces the tool's control panel to be rebuilt.  
--- @vararg any @Any arguments given to this function will be added to TOOL.BuildCPanel's arguments.
function GTool:RebuildControlPanel(...)
end

--- Removes any ghost entity created for this tool.  
--- This is called automatically at various points, including when changing tools, holstering the toolgun, therefore it is a very good idea to implement this callback in your custom tool to cleanup any custom ghost entities.  
function GTool:ReleaseGhostEntity()
end

--- Stores an Entity for later use in the tool.  
--- The stored values can be retrieved by Tool:GetEnt, Tool:GetPos, Tool:GetLocalPos, Tool:GetPhys, Tool:GetBone and Tool:GetNormal  
--- @param id number @The id of the object to store.
--- @param ent GEntity @The entity to store.
--- @param pos GVector @The position to store
--- @param phys GPhysObj @The physics object to store.
--- @param bone number @The hit bone to store.
--- @param normal GVector @The hit normal to store.
function GTool:SetObject(id, ent, pos, phys, bone, normal)
end

--- Sets the current operation of the tool. Does nothing clientside. See also Tool:SetStage.  
--- Operations and stages work as follows:  
--- * Operation 1  
--- * * Stage 1  
--- * * Stage 2  
--- * * Stage 3  
--- * Operation 2  
--- * * Stage 1  
--- * * Stage 2  
--- * * Stage ...  
--- @param operation number @The new operation ID to set.
function GTool:SetOperation(operation)
end

--- Sets the current stage of the tool. Does nothing clientside.  
--- See also Tool:SetOperation.  
--- @param stage number @The new stage to set.
function GTool:SetStage(stage)
end

--- Initializes the ghost entity based on the supplied entity.  
--- @param ent GEntity @The entity to copy ghost parameters off
function GTool:StartGhostEntity(ent)
end

--- Updates the position and orientation of the ghost entity based on where the toolgun owner is looking along with data from object with id 1 set by Tool:SetObject.  
--- This should be called in the tool's TOOL:Think hook.  
--- This command is only used for tools that move props, such as easy weld, axis and motor. If you want to update a ghost like the thruster tool does it for example, check its [source code](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stools/thruster.lua#L179).  
function GTool:UpdateGhostEntity()
end

