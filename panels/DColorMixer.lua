--- @meta

--- @class DColorMixer : DPanel
--- A standard Derma color mixer  
local PANEL = {}
_G.DColorMixer = PANEL;
--- An Global.AccessorFunc that returns true if alpha bar is shown, false if not.  
--- @return boolean @Return true if shown, false if not.
function PANEL:GetAlphaBar()
end

--- An Global.AccessorFunc that returns the current selected color.  
--- @return table @The current selected color as a Color.
function PANEL:GetColor()
end

--- An Global.AccessorFunc that returns the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarR - For the red channel  
--- * DColorMixer:GetConVarG - For the green channel  
--- * DColorMixer:GetConVarB - For the blue channel  
--- @return string @The ConVar name for the alpha channel of the color
function PANEL:GetConVarA()
end

--- An Global.AccessorFunc that returns the ConVar name for the blue channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarR - For the red channel  
--- * DColorMixer:GetConVarG - For the green channel  
--- * DColorMixer:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the blue channel of the color
function PANEL:GetConVarB()
end

--- An Global.AccessorFunc that returns the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarR - For the red channel  
--- * DColorMixer:GetConVarB - For the blue channel  
--- * DColorMixer:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the green channel of the color
function PANEL:GetConVarG()
end

--- An Global.AccessorFunc that returns the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarG - For the green channel  
--- * DColorMixer:GetConVarB - For the blue channel  
--- * DColorMixer:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the red channel of the color
function PANEL:GetConVarR()
end

--- An Global.AccessorFunc that returns true if palette is shown, false if not.  
--- @return boolean @Return true if shown, false if not.
function PANEL:GetPalette()
end

--- Returns the color as a normalized Vector.  
--- @return GVector @A vector representing the color of the DColorMixer, each value being in range of 0 to 1
function PANEL:GetVector()
end

--- An Global.AccessorFunc that returns true if the wangs are shown, false if not.  
--- @return boolean @Return true if shown, false if not.
function PANEL:GetWangs()
end

--- An Global.AccessorFunc that show/hide the alpha bar in DColorMixer  
--- @param show boolean @Show / Hide the alpha bar
function PANEL:SetAlphaBar(show)
end

--- Sets the base color of the DColorCube part of the DColorMixer.  
--- See also DColorCube:SetBaseRGB  
--- @param clr table @Color
function PANEL:SetBaseColor(clr)
end

--- An Global.AccessorFunc that sets the color of the DColorMixer. See also DColorMixer:GetColor  
--- @param color table @The color to set
function PANEL:SetColor(color)
end

--- An Global.AccessorFunc that sets the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarR - For the red channel  
--- * DColorMixer:SetConVarG - For the green channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- @param convar string @The ConVar name for the alpha channel of the color
function PANEL:SetConVarA(convar)
end

--- An Global.AccessorFunc that sets the ConVar name for the blue channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarR - For the red channel  
--- * DColorMixer:SetConVarG - For the green channel  
--- * DColorMixer:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the blue channel of the color
function PANEL:SetConVarB(convar)
end

--- An Global.AccessorFunc that sets the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarR - For the red channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- * DColorMixer:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the green channel of the color
function PANEL:SetConVarG(convar)
end

--- An Global.AccessorFunc that sets the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarG - For the green channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- * DColorMixer:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the red channel of the color
function PANEL:SetConVarR(convar)
end

--- Sets the label's text to show.  
--- @param text? string @Set to non empty string to show the label and its text
function PANEL:SetLabel(text)
end

--- Show or hide the palette panel  
--- @param enabled boolean @Show or hide the palette panel?
function PANEL:SetPalette(enabled)
end

--- Sets the color of DColorMixer from a Vector. Alpha is not included.  
--- @param vec GVector @The color to set
function PANEL:SetVector(vec)
end

--- Show / Hide the colors indicators in DColorMixer  
--- @param show boolean @Show / Hide the colors indicators
function PANEL:SetWangs(show)
end

--- sets the default color of the element to the currently selected color  
function PANEL:UpdateDefaultColor()
end

--- Called when the player changes the color of the DColorMixer. Meant to be overridden.  
--- 🦟 **BUG**: The returned color will not have the color metatable.  
--- @param col table @The new color
function PANEL:ValueChanged(col)
end
