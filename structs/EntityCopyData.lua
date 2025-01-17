--- @meta

--- Data structure used by the duplicator to store and load entity data.  
--- It is created by duplicator.CopyEntTable and can be loaded by duplicator.CreateEntityFromTable.  
--- It also shows up in several other contexts:  
--- * duplicator.RegisterEntityClass  
--- * ENTITY:OnEntityCopyTableFinish  
--- * ENTITY:OnDuplicated  
--- ℹ **NOTE**: In addition to all fields listed here, any field saved on the entity will be saved as-is to this table. For example, if you set `ent.FavoriteFood = "Steak"` before duplicating it, this structure will also contain the field `FavoriteFood` with the value `"Steak"`.  
--- @class SEntityCopyData
--- @field Name string @The entity's name, see Entity:GetName.
--- @field Class string @The entity's class name, see Entity:GetClass.
--- @field Pos GVector @The entity's position, relative to the duplication origin point.
--- @field Angle GAngle @The entity's angle, relative to the duplication angle.
--- @field DT table @The entity's Network Vars, see ENTITY:SetupDataTables and Networking Entities.
--- @field Model string @The entity's model, see Entity:GetModel.
--- @field ModelScale number @The entity's model scale, see Entity:GetModelScale
--- @field Skin number @The entity's active skin, see Entity:GetSkin.
--- @field ColGroup number @The entity's collision group, see Entity:GetCollisionGroup
--- @field Mins GVector @The entity's collision bound minimums, see Entity:GetCollisionBounds.
--- @field Maxs GVector @The entity's collision bound maximums, see Entity:GetCollisionBounds.
--- @field PhysicsObjects table @Data about the entity's PhysObjs, see Entity:GetPhysicsObjectNum
--- @field FlexScale number @The entity's Flex Scale, see Entity:GetFlexScale.
--- @field Flex table @Each flex bone's flex weight, see Entity:GetFlexWeight
--- @field BodyG table @The entity's body groups, see Entity:GetBodygroup
--- @field BoneManip table @Bone manipulation data, see Entity:HasBoneManipulations
--- @field MapCreationID number @The entity's MapCreationID, only exists for entities that were created by the map
--- @field WorkshopID number @Deprecated, always 0
