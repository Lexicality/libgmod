--- @meta

--- This is the gamemode after the gamemode has been created
--- @type SGM
_G.GAMEMODE = {}

--- True when the code is running on the client
--- @type boolean
_G.CLIENT = true

--- True when the code is running on the server
--- @type boolean
_G.SERVER = true

--- True when the code is running on the menu
--- @type boolean
_G.MENU = true

--- @type GEntity
_G.NULL = nil


--- @type unknown
_G.BaseClass = {}

_G.vector_origin = Vector(0, 0, 0)
_G.vector_up = Vector(0, 0, 1)
_G.angle_zero = Angle(0, 0, 0)
_G.color_white = Color(255, 255, 255, 255)
_G.color_black = Color(0, 0, 0, 255)
_G.color_transparent = Color(255, 255, 255, 0)
