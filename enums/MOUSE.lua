--- @meta

--- First mouse button  
_G.MOUSE_FIRST = 107
--- Left mouse button  
_G.MOUSE_LEFT = 107
--- Right mouse button  
_G.MOUSE_RIGHT = 108
--- Middle mouse button, aka the wheel press  
_G.MOUSE_MIDDLE = 109
--- Mouse 4 button ( Sometimes, mouse wheel tilt left )  
_G.MOUSE_4 = 110
--- Mouse 5 button ( Sometimes, mouse wheel tilt right )  
_G.MOUSE_5 = 111
--- Mouse wheel scroll up  
_G.MOUSE_WHEEL_UP = 112
--- Mouse wheel scroll down  
_G.MOUSE_WHEEL_DOWN = 113
--- Last mouse button  
_G.MOUSE_LAST = 113
--- Mouse button count  
_G.MOUSE_COUNT = 7

--- Enumerations used by:  
--- * input.IsMouseDown  
--- * input.WasMousePressed  
--- * input.WasMouseDoublePressed  
--- It's also part of the Enums/BUTTON_CODE.  
--- # Catch mouse wheel  
--- You can catch the mouse wheel's value by:  
--- ```  
--- local testVal = 0  
--- hook.Add("InputMouseApply", "testMouseWheel", function(cmd, x, y, ang)  
--- testVal = testVal + cmd:GetMouseWheel() * 2 --any scale number you want to use  
--- print(testVal)  
--- end)  
--- ```  
--- @alias EMOUSE `MOUSE_FIRST`|`MOUSE_LEFT`|`MOUSE_RIGHT`|`MOUSE_MIDDLE`|`MOUSE_4`|`MOUSE_5`|`MOUSE_WHEEL_UP`|`MOUSE_WHEEL_DOWN`|`MOUSE_LAST`|`MOUSE_COUNT`
