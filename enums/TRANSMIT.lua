--- @meta

--- Always transmit the entity  
_G.TRANSMIT_ALWAYS = 0
--- Never transmit the entity, default for point entities  
_G.TRANSMIT_NEVER = 1
--- Transmit when entity is in players [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community")  
_G.TRANSMIT_PVS = 2

--- Enumerations used in ENTITY:UpdateTransmitState hook.  
--- @alias ETRANSMIT `TRANSMIT_ALWAYS`|`TRANSMIT_NEVER`|`TRANSMIT_PVS`
