--- @meta

--- +attack bound key ( Default: Left Mouse Button )  
_G.IN_ATTACK = 1
--- +jump bound key ( Default: Space )  
_G.IN_JUMP = 2
--- +duck bound key ( Default: CTRL )  
_G.IN_DUCK = 4
--- +forward bound key ( Default: W )  
_G.IN_FORWARD = 8
--- +back bound key ( Default: S )  
_G.IN_BACK = 16
--- +use bound key ( Default: E )  
_G.IN_USE = 32
_G.IN_CANCEL = 64
--- +left bound key ( Look left )  
_G.IN_LEFT = 128
--- +right bound key ( Look right )  
_G.IN_RIGHT = 256
--- +moveleft bound key ( Default: A )  
_G.IN_MOVELEFT = 512
--- +moveright bound key ( Default: D )  
_G.IN_MOVERIGHT = 1024
--- +attack2 bound key ( Default: Right Mouse Button )  
_G.IN_ATTACK2 = 2048
_G.IN_RUN = 4096
--- +reload bound key ( Default: R )  
_G.IN_RELOAD = 8192
--- +alt1 bound key  
_G.IN_ALT1 = 16384
--- +alt2 bound key  
_G.IN_ALT2 = 32768
--- +showscores bound key ( Default: Tab )  
_G.IN_SCORE = 65536
--- +speed bound key ( Default: Shift )  
_G.IN_SPEED = 131072
--- +walk bound key ( Slow walk )  
_G.IN_WALK = 262144
--- +zoom bound key ( Suit Zoom )  
_G.IN_ZOOM = 524288
--- For use in weapons. Set in the physgun when scrolling an object away from you.  
_G.IN_WEAPON1 = 1048576
--- For use in weapons. Set in the physgun when scrolling an object towards you.  
_G.IN_WEAPON2 = 2097152
_G.IN_BULLRUSH = 4194304
--- +grenade1 bound key  
_G.IN_GRENADE1 = 8388608
--- +grenade2 bound key  
_G.IN_GRENADE2 = 16777216

--- Unlike Enums/BUTTON_CODE, these enums are abstracted to allow the user to bind actions to any key they might prefer.  
--- Keybinds using these actions work with two console commands, one starting with a plus and one with a minus symbol. A key press or release will call either the plus or minus command, adding or removing the corresponding enum in the current CUserCmd.  
--- Enumerations used by:  
--- * Player:KeyDown  
--- * Player:KeyDownLast  
--- * Player:KeyPressed  
--- * Player:KeyReleased  
--- * CMoveData:AddKey  
--- * CMoveData:GetButtons  
--- * CMoveData:GetOldButtons  
--- * CMoveData:KeyDown  
--- * CMoveData:KeyPressed  
--- * CMoveData:KeyReleased  
--- * CMoveData:KeyWasDown  
--- * CMoveData:SetButtons  
--- * CMoveData:SetOldButtons  
--- * CUserCmd:GetButtons  
--- * CUserCmd:KeyDown  
--- * CUserCmd:RemoveKey  
--- * CUserCmd:SetButtons  
--- * GM:KeyPress  
--- * GM:KeyRelease  
--- @alias EIN `IN_ATTACK`|`IN_JUMP`|`IN_DUCK`|`IN_FORWARD`|`IN_BACK`|`IN_USE`|`IN_CANCEL`|`IN_LEFT`|`IN_RIGHT`|`IN_MOVELEFT`|`IN_MOVERIGHT`|`IN_ATTACK2`|`IN_RUN`|`IN_RELOAD`|`IN_ALT1`|`IN_ALT2`|`IN_SCORE`|`IN_SPEED`|`IN_WALK`|`IN_ZOOM`|`IN_WEAPON1`|`IN_WEAPON2`|`IN_BULLRUSH`|`IN_GRENADE1`|`IN_GRENADE2`
