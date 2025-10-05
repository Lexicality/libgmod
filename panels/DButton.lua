--- @meta

--- @class DButton : DLabel
--- A standard Derma button.  
--- By default, a DButton is 22px tall.  
local PANEL = {}
_G.DButton = PANEL;
--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that returns value set by DButton:SetDrawBorder. See that page for more info.  
--- @return boolean @value set by DButton:SetDrawBorder.
function PANEL:GetDrawBorder()
end

--- Returns true if the DButton is currently depressed (a user is clicking on it).  
--- @return boolean @Whether or not the button is depressed.
function PANEL:IsDown()
end

--- Sets a console command to be called when the button is clicked.  
--- This overrides the button's `DoClick` method.  
--- @param command string @The console command to be called.
--- @param args? string @The arguments for the command.
function PANEL:SetConsoleCommand(command, args)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does absolutely nothing at all. Default value is automatically set to true.  
--- @param draw boolean @Does nothing.
function PANEL:SetDrawBorder(draw)
end

--- Sets an image to be displayed as the button's background. Alias of DButton:SetImage  
--- @param img? string @The image file to use, relative to `/materials`
function PANEL:SetIcon(img)
end

--- Sets an image to be displayed as the button's background.  
--- See DButton:SetMaterial for equivalent function that uses IMaterial instead.  
--- Also see: DImageButton  
--- @param img? string @The image file to use, relative to the `materials/` folder
function PANEL:SetImage(img)
end

--- Sets an image to be displayed as the button's background.  
--- See DButton:SetImage for equivalent function that uses file paths instead. Also see DImageButton.  
--- @param img? GIMaterial @The material to use
function PANEL:SetMaterial(img)
end

--- A hook called from within DLabel's PANEL:ApplySchemeSettings to determine the color of the text on display.  
--- @param skin table @A table supposed to contain the color values listed above.
function PANEL:UpdateColours(skin)
end
