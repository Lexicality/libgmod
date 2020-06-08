---
BUTTON_CODE_INVALID = -1
---
BUTTON_CODE_NONE = 0
---
BUTTON_CODE_LAST = 171
---
BUTTON_CODE_COUNT = 172

---
KEY_FIRST = 0
---
KEY_NONE = 0
--- Normal number 0 key
KEY_0 = 1
--- Normal number 1 key
KEY_1 = 2
--- Normal number 2 key
KEY_2 = 3
--- Normal number 3 key
KEY_3 = 4
--- Normal number 4 key
KEY_4 = 5
--- Normal number 5 key
KEY_5 = 6
--- Normal number 6 key
KEY_6 = 7
--- Normal number 7 key
KEY_7 = 8
--- Normal number 8 key
KEY_8 = 9
--- Normal number 9 key
KEY_9 = 10
---
KEY_A = 11
---
KEY_B = 12
---
KEY_C = 13
---
KEY_D = 14
---
KEY_E = 15
---
KEY_F = 16
---
KEY_G = 17
---
KEY_H = 18
---
KEY_I = 19
---
KEY_J = 20
---
KEY_K = 21
---
KEY_L = 22
---
KEY_M = 23
---
KEY_N = 24
---
KEY_O = 25
---
KEY_P = 26
---
KEY_Q = 27
---
KEY_R = 28
---
KEY_S = 29
---
KEY_T = 30
---
KEY_U = 31
---
KEY_V = 32
---
KEY_W = 33
---
KEY_X = 34
---
KEY_Y = 35
---
KEY_Z = 36
--- Keypad number 0 key
KEY_PAD_0 = 37
--- Keypad number 1 key
KEY_PAD_1 = 38
--- Keypad number 2 key
KEY_PAD_2 = 39
--- Keypad number 3 key
KEY_PAD_3 = 40
--- Keypad number 4 key
KEY_PAD_4 = 41
--- Keypad number 5 key
KEY_PAD_5 = 42
--- Keypad number 6 key
KEY_PAD_6 = 43
--- Keypad number 7 key
KEY_PAD_7 = 44
--- Keypad number 8 key
KEY_PAD_8 = 45
--- Keypad number 9 key
KEY_PAD_9 = 46
--- Keypad division/slash key (/)
KEY_PAD_DIVIDE = 47
--- Keypad asterisk key (*)
KEY_PAD_MULTIPLY = 48
--- Keypad minus key
KEY_PAD_MINUS = 49
--- Keypad plus key
KEY_PAD_PLUS = 50
--- Keypad enter key
KEY_PAD_ENTER = 51
--- Keypad dot key (.)
KEY_PAD_DECIMAL = 52
---
KEY_LBRACKET = 53
---
KEY_RBRACKET = 54
---
KEY_SEMICOLON = 55
---
KEY_APOSTROPHE = 56
---
KEY_BACKQUOTE = 57
---
KEY_COMMA = 58
---
KEY_PERIOD = 59
---
KEY_SLASH = 60
---
KEY_BACKSLASH = 61
---
KEY_MINUS = 62
---
KEY_EQUAL = 63
---
KEY_ENTER = 64
---
KEY_SPACE = 65
---
KEY_BACKSPACE = 66
---
KEY_TAB = 67
---
KEY_CAPSLOCK = 68
---
KEY_NUMLOCK = 69
---
KEY_ESCAPE = 70
---
KEY_SCROLLLOCK = 71
---
KEY_INSERT = 72
---
KEY_DELETE = 73
---
KEY_HOME = 74
---
KEY_END = 75
---
KEY_PAGEUP = 76
---
KEY_PAGEDOWN = 77
---
KEY_BREAK = 78
--- The left Shift key, has been seen to be triggered by Right Shift in PANEL:OnKeyCodePressed
KEY_LSHIFT = 79
---
KEY_RSHIFT = 80
---
KEY_LALT = 81
---
KEY_RALT = 82
---
KEY_LCONTROL = 83
---
KEY_RCONTROL = 84
--- The left Windows key or the Command key on Mac OSX
KEY_LWIN = 85
--- The right Windows key or the Command key on Mac OSX
KEY_RWIN = 86
---
KEY_APP = 87
---
KEY_UP = 88
---
KEY_LEFT = 89
---
KEY_DOWN = 90
---
KEY_RIGHT = 91
---
KEY_F1 = 92
---
KEY_F2 = 93
---
KEY_F3 = 94
---
KEY_F4 = 95
---
KEY_F5 = 96
---
KEY_F6 = 97
---
KEY_F7 = 98
---
KEY_F8 = 99
---
KEY_F9 = 100
---
KEY_F10 = 101
---
KEY_F11 = 102
---
KEY_F12 = 103
---
KEY_CAPSLOCKTOGGLE = 104
---
KEY_NUMLOCKTOGGLE = 105
---
KEY_LAST = 106
---
KEY_SCROLLLOCKTOGGLE = 106
---
KEY_COUNT = 107
---
KEY_XBUTTON_A = 114
---
KEY_XBUTTON_B = 115
---
KEY_XBUTTON_X = 116
---
KEY_XBUTTON_Y = 117
---
KEY_XBUTTON_LEFT_SHOULDER = 118
---
KEY_XBUTTON_RIGHT_SHOULDER = 119
---
KEY_XBUTTON_BACK = 120
---
KEY_XBUTTON_START = 121
---
KEY_XBUTTON_STICK1 = 122
---
KEY_XBUTTON_STICK2 = 123
---
KEY_XBUTTON_UP = 146
---
KEY_XBUTTON_RIGHT = 147
---
KEY_XBUTTON_DOWN = 148
---
KEY_XBUTTON_LEFT = 149
---
KEY_XSTICK1_RIGHT = 150
---
KEY_XSTICK1_LEFT = 151
---
KEY_XSTICK1_DOWN = 152
---
KEY_XSTICK1_UP = 153
---
KEY_XBUTTON_LTRIGGER = 154
---
KEY_XBUTTON_RTRIGGER = 155
---
KEY_XSTICK2_RIGHT = 156
---
KEY_XSTICK2_LEFT = 157
---
KEY_XSTICK2_DOWN = 158
---
KEY_XSTICK2_UP = 159

--- First mouse button
MOUSE_FIRST = 107
--- Left mouse button
MOUSE_LEFT = 107
--- Right mouse button
MOUSE_RIGHT = 108
--- Middle mouse button, aka the wheel press
MOUSE_MIDDLE = 109
--- Mouse 4 button ( Sometimes, mouse wheel tilt left )
MOUSE_4 = 110
--- Mouse 5 button ( Sometimes, mouse wheel tilt right )
MOUSE_5 = 111
--- Mouse wheel scroll up
MOUSE_WHEEL_UP = 112
--- Mouse wheel scroll down
MOUSE_WHEEL_DOWN = 113
--- Last mouse button
MOUSE_LAST = 113
--- Mouse button count
MOUSE_COUNT = 7

---
JOYSTICK_FIRST = 114
--- Joystick buttons are in this range, but don't have individual enum names.
JOYSTICK_FIRST_BUTTON = 114
---
JOYSTICK_LAST_BUTTON = 145
--- Joystick POV buttons are in this range, but don't have individual enum names.
JOYSTICK_FIRST_POV_BUTTON = 146
---
JOYSTICK_LAST_POV_BUTTON = 149
--- Joystick axis buttons are in this range, but don't have individual enum names.
JOYSTICK_FIRST_AXIS_BUTTON = 150
---
JOYSTICK_LAST_AXIS_BUTTON = 161
---
JOYSTICK_LAST = 161

--- +attack bound key ( Default: Left Mouse Button )
IN_ATTACK = 1
--- +jump bound key ( Default: Space )
IN_JUMP = 2
--- +duck bound key ( Default: CTRL )
IN_DUCK = 4
--- +forward bound key ( Default: W )
IN_FORWARD = 8
--- +back bound key ( Default: S )
IN_BACK = 16
--- +use bound key ( Default: E )
IN_USE = 32
---
IN_CANCEL = 64
--- +left bound key ( Look left )
IN_LEFT = 128
--- +right bound key ( Look right )
IN_RIGHT = 256
--- +moveleft bound key ( Default: A )
IN_MOVELEFT = 512
--- +moveright bound key ( Default: D )
IN_MOVERIGHT = 1024
--- +attack2 bound key ( Default: Right Mouse Button )
IN_ATTACK2 = 2048
---
IN_RUN = 4096
--- +reload bound key ( Default: R )
IN_RELOAD = 8192
--- +alt1 bound key
IN_ALT1 = 16384
--- +alt2 bound key
IN_ALT2 = 32768
--- +showscores bound key ( Default: Tab )
IN_SCORE = 65536
--- +speed bound key ( Default: Shift )
IN_SPEED = 131072
--- +walk bound key ( Slow walk )
IN_WALK = 262144
--- +zoom bound key ( Suit Zoom )
IN_ZOOM = 524288
--- For use in weapons. Set in the physgun when scrolling an object away from you.
IN_WEAPON1 = 1048576
--- For use in weapons. Set in the physgun when scrolling an object towards you.
IN_WEAPON2 = 2097152
---
IN_BULLRUSH = 4194304
--- +grenade1 bound key
IN_GRENADE1 = 8388608
--- +grenade2 bound key
IN_GRENADE2 = 16777216
