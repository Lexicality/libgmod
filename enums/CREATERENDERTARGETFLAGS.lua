--- @meta

--- Makes this render target an HDR render target if the current system supports HDR.  
_G.CREATERENDERTARGETFLAGS_HDR = 1
--- Does nothing.  
_G.CREATERENDERTARGETFLAGS_AUTOMIPMAP = 2
--- Does nothing  
_G.CREATERENDERTARGETFLAGS_UNFILTERABLE_OK = 4

--- Enumerations used by Global.GetRenderTargetEx. Clientside only.  
--- @alias ECREATERENDERTARGETFLAGS `CREATERENDERTARGETFLAGS_HDR`|`CREATERENDERTARGETFLAGS_AUTOMIPMAP`|`CREATERENDERTARGETFLAGS_UNFILTERABLE_OK`
