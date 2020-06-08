--- Invalid type
TYPE_NONE = -1
--- We advise against using this. It may be changed or removed in a future update. Use TYPE_NONE
TYPE_INVALID = -1
--- nil
TYPE_NIL = 0
--- boolean
TYPE_BOOL = 1
--- light userdata
TYPE_LIGHTUSERDATA = 2
--- number
TYPE_NUMBER = 3
--- string
TYPE_STRING = 4
--- table
TYPE_TABLE = 5
--- function
TYPE_FUNCTION = 6
--- userdata
TYPE_USERDATA = 7
--- thread
TYPE_THREAD = 8
--- Entity and entity sub-classes including Player, Weapon, NPC, Vehicle, CSEnt, and NextBot
TYPE_ENTITY = 9
--- Vector
TYPE_VECTOR = 10
--- Angle
TYPE_ANGLE = 11
--- PhysObj
TYPE_PHYSOBJ = 12
--- ISave
TYPE_SAVE = 13
--- IRestore
TYPE_RESTORE = 14
--- CTakeDamageInfo
TYPE_DAMAGEINFO = 15
--- CEffectData
TYPE_EFFECTDATA = 16
--- CMoveData
TYPE_MOVEDATA = 17
--- CRecipientFilter
TYPE_RECIPIENTFILTER = 18
--- CUserCmd
TYPE_USERCMD = 19
--- IMaterial
TYPE_MATERIAL = 21
--- Panel
TYPE_PANEL = 22
--- CLuaParticle
TYPE_PARTICLE = 23
--- CLuaEmitter
TYPE_PARTICLEEMITTER = 24
--- ITexture
TYPE_TEXTURE = 25
--- bf_read
TYPE_USERMSG = 26
--- ConVar
TYPE_CONVAR = 27
--- IMesh
TYPE_IMESH = 28
--- VMatrix
TYPE_MATRIX = 29
--- CSoundPatch
TYPE_SOUND = 30
--- pixelvis_handle_t
TYPE_PIXELVISHANDLE = 31
--- dlight_t. Metatable of a Structures/DynamicLight
TYPE_DLIGHT = 32
--- IVideoWriter
TYPE_VIDEO = 33
--- File
TYPE_FILE = 34
--- CLuaLocomotion
TYPE_LOCOMOTION = 35
--- PathFollower
TYPE_PATH = 36
--- CNavArea
TYPE_NAVAREA = 37
--- IGModAudioChannel
TYPE_SOUNDHANDLE = 38
--- CNavLadder
TYPE_NAVLADDER = 39
--- CNewParticleEffect
TYPE_PARTICLESYSTEM = 40
--- ProjectedTexture
TYPE_PROJECTEDTEXTURE = 41
--- PhysCollide
TYPE_PHYSCOLLIDE = 42
--- SurfaceInfo
TYPE_SURFACEINFO = 43
--- Amount of TYPE_* enums
TYPE_COUNT = 44
--- Metatable of a Color. (This doesn't actually represent a unique type returned by TypeID, but instead is a hack for networking colors with net.WriteType.)
TYPE_COLOR = 255

--- Forces the function to take strings only
FORCE_STRING = 1
--- Forces the function to take numbers only
FORCE_NUMBER = 2
--- Forces the function to take booleans only
FORCE_BOOL = 3

--- Initial state, the global state is off.
GLOBAL_OFF = 0
--- The global state is enabled.
GLOBAL_ON = 1
--- The global state is dead and is no longer active. It will be cleared.
GLOBAL_DEAD = 2

--- No longer works; now same as HUD_PRINTCONSOLE
HUD_PRINTNOTIFY = 1
--- Console
HUD_PRINTCONSOLE = 2
--- Chat, also prints to console
HUD_PRINTTALK = 3
--- Center of the screen
HUD_PRINTCENTER = 4

--- Generic notification
NOTIFY_GENERIC = 0
--- Error notification
NOTIFY_ERROR = 1
--- Undo notification
NOTIFY_UNDO = 2
--- Hint notification
NOTIFY_HINT = 3
--- Cleanup notification
NOTIFY_CLEANUP = 4

--- Connecting team ID, set when player connects to the server
TEAM_CONNECTING = 0
--- Unassigned team ID, set right after player connected
TEAM_UNASSIGNED = 1001
--- Spectator team ID
TEAM_SPECTATOR = 1002

--- Always transmit the entity
TRANSMIT_ALWAYS = 0
--- Never transmit the entity, default for point entities
TRANSMIT_NEVER = 1
--- Transmit when entity is in players view
TRANSMIT_PVS = 2
