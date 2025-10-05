--- @meta

--- @class VCtrlNumPad
--- CtrlNumPad is a VGUI element designed primarily for SpawnMenu and ControlPanel. It is used to create a DBinder with at least one DLabel. Each change made by the player in the `CtrlNumPad` acts on a previously defined ConVar.  
--- To retrieve the panels associated with this panel:  
--- * To retrieve the DBinder created, you can use this variable associated with the panel: `PANEL.NumPad1`  
--- * To retrieve the first DLabel created, you can use this variable associated with the panel: `PANEL.Label1`  
--- * To retrieve the second DLabel created, you can use this variable associated with the panel: `PANEL.Label2`  
--- By default, the DLabel:SetDark function is activated on both DLabels.  
--- To retrieve the value of the `CtrlNumPad` you can use these functions : Player:GetInfoNum, CtrlNumPad:GetValue1 or CtrlNumPad:GetValue2  
local PANEL = {}
--- The value (key bind) of the first DBinder.  
--- @return EKEY @The key bind or `KEY_NONE`.
function PANEL:GetValue1()
end

--- The value (key bind) of the second DBinder, if it's enabled.  
--- @return EKEY @The key bind or `KEY_NONE`.
function PANEL:GetValue2()
end

--- The name of the convar that will store the key code for player selected key of the left key binder.  
--- @param cvar string @The convar that will be used in the event of a key change by a player.
function PANEL:SetConVar1(cvar)
end

--- If set and label2 is set, the name of the convar that will store the key code for player selected key of the right key binder.  
--- @param cvar string @The convar that will be used in the event of a key change by a player.
function PANEL:SetConVar2(cvar)
end

--- The label for the left key binder.  
--- @param txt string @The label for the left key binder.
function PANEL:SetLabel1(txt)
end

--- If set and convar2 is set, the label for the right key binder.  
--- @param txt string @The label for the right key binder.
function PANEL:SetLabel2(txt)
end
