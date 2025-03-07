--- @meta

--- Only allowed for render targets that don't want a depth buffer (because if they have a depth buffer, the render target must be less than or equal to the size of the framebuffer).  
_G.RT_SIZE_NO_CHANGE = 0
--- Don't play with the specified width and height other than making sure it fits in the framebuffer.  
_G.RT_SIZE_DEFAULT = 1
--- Apply picmip to the render target's width and height.  
_G.RT_SIZE_PICMIP = 2
--- frame_buffer_width / 4  
_G.RT_SIZE_HDR = 3
--- Same size as frame buffer, or next lower power of 2 if we can't do that.  
_G.RT_SIZE_FULL_FRAME_BUFFER = 4
--- Target of specified size, don't mess with dimensions  
_G.RT_SIZE_OFFSCREEN = 5
--- Same size as the frame buffer, rounded up if necessary for systems that can't do non-power of two textures.  
_G.RT_SIZE_FULL_FRAME_BUFFER_ROUNDED_UP = 6
--- Rounded down to power of 2, essentially  
_G.RT_SIZE_REPLAY_SCREENSHOT = 7
--- Use the size passed in. Don't clamp it to the frame buffer size. Really.  
_G.RT_SIZE_LITERAL = 8
--- Use the size passed in, don't clamp to the frame buffer size, but do apply picmip restrictions.  
_G.RT_SIZE_LITERAL_PICMIP = 9

--- Enumerations used by Global.GetRenderTargetEx. Clientside only.  
--- @alias ERT_SIZE `RT_SIZE_NO_CHANGE`|`RT_SIZE_DEFAULT`|`RT_SIZE_PICMIP`|`RT_SIZE_HDR`|`RT_SIZE_FULL_FRAME_BUFFER`|`RT_SIZE_OFFSCREEN`|`RT_SIZE_FULL_FRAME_BUFFER_ROUNDED_UP`|`RT_SIZE_REPLAY_SCREENSHOT`|`RT_SIZE_LITERAL`|`RT_SIZE_LITERAL_PICMIP`
