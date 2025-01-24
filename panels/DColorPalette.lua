--- @meta

--- @class DColorPalette : DIconLayout
--- The **DColorPalette** allows the player to select a color from a list of given colors.  
--- This panel supports saving across sessions via the panel cookie system.  
--- Use Panel:SetCookieName to change "save files".  
local PANEL = {}
_G.DColorPalette = PANEL;
--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Basically the same functionality as DColorPalette:OnValueChanged, you should use that instead!  
--- For Override  
--- @param clr table @The new color via the Color
--- @param btn GPanel @The DColorButton that was pressed.
function PANEL:DoClick(clr, btn)
end

--- An Global.AccessorFunc that returns the size of each palette button. Set by DColorPalette:SetButtonSize.  
--- @return number @The size of each palette button
function PANEL:GetButtonSize()
end

--- An Global.AccessorFunc that returns the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarR - For the red channel  
--- * DColorPalette:GetConVarG - For the green channel  
--- * DColorPalette:GetConVarB - For the blue channel  
--- @return string @The ConVar name for the alpha channel of the color
function PANEL:GetConVarA()
end

--- An Global.AccessorFunc that returns the ConVar name for the blue channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarR - For the red channel  
--- * DColorPalette:GetConVarG - For the green channel  
--- * DColorPalette:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the blue channel of the color
function PANEL:GetConVarB()
end

--- An Global.AccessorFunc that returns the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarR - For the red channel  
--- * DColorPalette:GetConVarB - For the blue channel  
--- * DColorPalette:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the green channel of the color
function PANEL:GetConVarG()
end

--- An Global.AccessorFunc that returns the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarG - For the green channel  
--- * DColorPalette:GetConVarB - For the blue channel  
--- * DColorPalette:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the red channel of the color
function PANEL:GetConVarR()
end

--- An Global.AccessorFunc that returns the number of rows of the palette, provided 6 colors fill each row. This value is equal to the number of colors in the DColorPalette divided by 6.  
--- @return number @Number of rows of the DColorPalette.
function PANEL:GetNumRows()
end

--- Called when a palette button has been pressed. For Override  
--- @param pnl GPanel @The DColorButton that was pressed.
function PANEL:OnRightClickButton(pnl)
end

--- Called when the color is changed after clicking a new value. For Override  
--- @param newcol table @The new color of the DColorPalette
function PANEL:OnValueChanged(newcol)
end

--- Resets this entire color palette to a default preset one, without saving.  
--- See DColorPalette:ResetSavedColors for version that also saves the changes.  
function PANEL:Reset()
end

--- Resets this entire color palette to a default preset one and saves the changes.  
--- See DColorPalette:Reset for version that does not save the changes.  
function PANEL:ResetSavedColors()
end

--- Saves the color of given button across sessions.  
--- The color is saved as a panel cookie, see Panel:SetCookie and Panel:SetCookieName.  
--- It is expected that the amount of colors per palette (Panel:SetCookieName) is the same every time.  
--- @param btn GPanel @The button to save the color of
--- @param clr table @The color to save to this button's index
function PANEL:SaveColor(btn, clr)
end

--- Sets the size of each palette button.  
--- This is best kept to such a number, where this equation would return a whole number:  
--- `WidthOfColorPalette / ButtonSize= WholeNumber`  
--- If not, there will be ugly whitespace on the right side of the panel.  
--- @param size number @Sets the new size
function PANEL:SetButtonSize(size)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Currently does nothing. Intended to "select" the color.  
--- @param clr table 
function PANEL:SetColor(clr)
end

--- Clears the palette and adds new buttons with given colors.  
--- @param tab table @A number indexed table where each value is a Color
function PANEL:SetColorButtons(tab)
end

--- An Global.AccessorFunc that sets the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarR - For the red channel  
--- * DColorPalette:SetConVarG - For the green channel  
--- * DColorPalette:SetConVarB - For the blue channel  
--- @param convar string @The ConVar name for the alpha channel of the color
function PANEL:SetConVarA(convar)
end

--- An Global.AccessorFunc that sets the ConVar name for the blue channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarR - For the red channel  
--- * DColorPalette:SetConVarG - For the green channel  
--- * DColorPalette:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the blue channel of the color
function PANEL:SetConVarB(convar)
end

--- An Global.AccessorFunc that sets the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarR - For the red channel  
--- * DColorPalette:SetConVarB - For the blue channel  
--- * DColorPalette:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the green channel of the color
function PANEL:SetConVarG(convar)
end

--- An Global.AccessorFunc that sets the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarG - For the green channel  
--- * DColorPalette:SetConVarB - For the blue channel  
--- * DColorPalette:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the red channel of the color
function PANEL:SetConVarR(convar)
end

--- Roughly sets the number of colors that can be picked by the user. If the DColorPalette is exactly 6 rows tall, this function will set the number of colors shown per row in the palette. This is an Global.AccessorFunc  
--- ℹ **NOTE**: DColorPalette:Reset or DColorPalette:ResetSavedColors must be called after this function to apply changes.  
--- @param rows number @Scale for the range of colors that the user can pick
function PANEL:SetNumRows(rows)
end
