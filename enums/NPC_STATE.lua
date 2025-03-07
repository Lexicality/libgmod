--- @meta

--- Invalid state  
_G.NPC_STATE_INVALID = -1
--- NPC default state  
_G.NPC_STATE_NONE = 0
--- NPC is idle  
_G.NPC_STATE_IDLE = 1
--- NPC is alert and searching for enemies  
_G.NPC_STATE_ALERT = 2
--- NPC is in combat  
_G.NPC_STATE_COMBAT = 3
--- NPC is executing scripted sequence  
_G.NPC_STATE_SCRIPT = 4
--- NPC is playing dead (used for expressions)  
_G.NPC_STATE_PLAYDEAD = 5
--- NPC is prone to death  
_G.NPC_STATE_PRONE = 6
--- NPC is dead  
_G.NPC_STATE_DEAD = 7

--- Enumerations used by NPC:SetNPCState. Serverside only.  
--- @alias ENPC_STATE `NPC_STATE_INVALID`|`NPC_STATE_NONE`|`NPC_STATE_IDLE`|`NPC_STATE_ALERT`|`NPC_STATE_COMBAT`|`NPC_STATE_SCRIPT`|`NPC_STATE_PLAYDEAD`|`NPC_STATE_PRONE`|`NPC_STATE_DEAD`
