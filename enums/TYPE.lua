--- @meta

--- Invalid type  
_G.TYPE_NONE = -1
--- @deprecated  
--- 🛑 **DEPRECATED**: Use TYPE_NONE  
_G.TYPE_INVALID = -1
--- nil  
_G.TYPE_NIL = 0
--- boolean  
_G.TYPE_BOOL = 1
--- light userdata  
_G.TYPE_LIGHTUSERDATA = 2
--- number  
_G.TYPE_NUMBER = 3
--- string  
_G.TYPE_STRING = 4
--- table  
_G.TYPE_TABLE = 5
--- function  
_G.TYPE_FUNCTION = 6
--- userdata  
_G.TYPE_USERDATA = 7
--- thread  
_G.TYPE_THREAD = 8
--- Entity and entity sub-classes including Player, Weapon, NPC, Vehicle, CSEnt, and NextBot  
_G.TYPE_ENTITY = 9
--- Vector  
_G.TYPE_VECTOR = 10
--- Angle  
_G.TYPE_ANGLE = 11
--- PhysObj  
_G.TYPE_PHYSOBJ = 12
--- ISave  
_G.TYPE_SAVE = 13
--- IRestore  
_G.TYPE_RESTORE = 14
--- CTakeDamageInfo  
_G.TYPE_DAMAGEINFO = 15
--- CEffectData  
_G.TYPE_EFFECTDATA = 16
--- CMoveData  
_G.TYPE_MOVEDATA = 17
--- CRecipientFilter  
_G.TYPE_RECIPIENTFILTER = 18
--- CUserCmd  
_G.TYPE_USERCMD = 19
--- @deprecated  
--- 🛑 **DEPRECATED**: Leftover from GMod 13 Beta  
_G.TYPE_SCRIPTEDVEHICLE = 20
--- IMaterial  
_G.TYPE_MATERIAL = 21
--- Panel  
_G.TYPE_PANEL = 22
--- CLuaParticle  
_G.TYPE_PARTICLE = 23
--- CLuaEmitter  
_G.TYPE_PARTICLEEMITTER = 24
--- ITexture  
_G.TYPE_TEXTURE = 25
--- bf_read  
_G.TYPE_USERMSG = 26
--- ConVar  
_G.TYPE_CONVAR = 27
--- IMesh  
_G.TYPE_IMESH = 28
--- VMatrix  
_G.TYPE_MATRIX = 29
--- CSoundPatch  
_G.TYPE_SOUND = 30
--- pixelvis_handle_t  
_G.TYPE_PIXELVISHANDLE = 31
--- dlight_t. Metatable of a Structures/DynamicLight  
_G.TYPE_DLIGHT = 32
--- IVideoWriter  
_G.TYPE_VIDEO = 33
--- File  
_G.TYPE_FILE = 34
--- CLuaLocomotion  
_G.TYPE_LOCOMOTION = 35
--- PathFollower  
_G.TYPE_PATH = 36
--- CNavArea  
_G.TYPE_NAVAREA = 37
--- IGModAudioChannel  
_G.TYPE_SOUNDHANDLE = 38
--- CNavLadder  
_G.TYPE_NAVLADDER = 39
--- CNewParticleEffect  
_G.TYPE_PARTICLESYSTEM = 40
--- ProjectedTexture  
_G.TYPE_PROJECTEDTEXTURE = 41
--- PhysCollide  
_G.TYPE_PHYSCOLLIDE = 42
--- SurfaceInfo  
_G.TYPE_SURFACEINFO = 43
--- Amount of TYPE_* enums  
_G.TYPE_COUNT = 44
--- Metatable of a Color.  
--- ℹ **NOTE**: This doesn't actually represent a unique type returned by Global.TypeID, but instead is a hack for networking colors with net.WriteType.  
_G.TYPE_COLOR = 255

--- Enumerations used by net.ReadType and returned by Global.TypeID  
--- @alias ETYPE `TYPE_NONE`|`TYPE_INVALID`|`TYPE_NIL`|`TYPE_BOOL`|`TYPE_LIGHTUSERDATA`|`TYPE_NUMBER`|`TYPE_STRING`|`TYPE_TABLE`|`TYPE_FUNCTION`|`TYPE_USERDATA`|`TYPE_THREAD`|`TYPE_ENTITY`|`TYPE_VECTOR`|`TYPE_ANGLE`|`TYPE_PHYSOBJ`|`TYPE_SAVE`|`TYPE_RESTORE`|`TYPE_DAMAGEINFO`|`TYPE_EFFECTDATA`|`TYPE_MOVEDATA`|`TYPE_RECIPIENTFILTER`|`TYPE_USERCMD`|`TYPE_SCRIPTEDVEHICLE`|`TYPE_MATERIAL`|`TYPE_PANEL`|`TYPE_PARTICLE`|`TYPE_PARTICLEEMITTER`|`TYPE_TEXTURE`|`TYPE_USERMSG`|`TYPE_CONVAR`|`TYPE_IMESH`|`TYPE_MATRIX`|`TYPE_SOUND`|`TYPE_PIXELVISHANDLE`|`TYPE_DLIGHT`|`TYPE_VIDEO`|`TYPE_FILE`|`TYPE_LOCOMOTION`|`TYPE_PATH`|`TYPE_NAVAREA`|`TYPE_SOUNDHANDLE`|`TYPE_NAVLADDER`|`TYPE_PARTICLESYSTEM`|`TYPE_PROJECTEDTEXTURE`|`TYPE_PHYSCOLLIDE`|`TYPE_SURFACEINFO`|`TYPE_COUNT`|`TYPE_COLOR`
