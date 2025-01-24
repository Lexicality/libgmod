--- @meta

--- @class DImageButton : DButton
--- An image button.  
--- This panel inherits all methods of DButton, such as DLabel:DoClick.  
local PANEL = {}
_G.DImageButton = PANEL;
--- Returns whether DImageButton:DepressImage is functional or not.  
--- @return boolean @`true` to enable image depressing when clicked.
function PANEL:GetDepressImage()
end

--- Returns the "image" of the DImageButton. Equivalent of DImage:GetImage.  
--- @return string @The path to the image that is loaded.
function PANEL:GetImage()
end

--- Returns whether the image inside the button should be stretched to fit it or not  
--- See DImageButton:SetStretchToFit  
--- @return boolean 
function PANEL:GetStretchToFit()
end

--- Sets the color of the image. Equivalent of DImage:SetImageColor  
--- @param color table @The Global.Color to set
function PANEL:SetColor(color)
end

--- Controls whether DImageButton:DepressImage is functional or not.  
--- @param enable boolean @`true` to enable image depressing when clicked.
function PANEL:SetDepressImage(enable)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Alias of DImageButton:SetImage.  
function PANEL:SetIcon()
end

--- Sets the "image" of the DImageButton. Equivalent of DImage:SetImage.  
--- @param strImage string @The path of the image to load
--- @param strBackup? string @The path of the backup image.
function PANEL:SetImage(strImage, strBackup)
end

--- Hides or shows the image of the image button. Internally this calls Panel:SetVisible on the internal DImage.  
--- @param visible boolean @Set true to make it visible ( default ), or false to hide the image
function PANEL:SetImageVisible(visible)
end

--- Sets whether the DImageButton should keep the aspect ratio of its image. Equivalent of DImage:SetKeepAspect.  
--- Note that this will not try to fit the image inside the button, but instead it will fill the button with the image.  
--- @param keep boolean @true to keep the aspect ratio, false not to
function PANEL:SetKeepAspect(keep)
end

--- Sets a Global.Material directly as an image. Equivalent of DImage:SetMaterial.  
--- @param mat GIMaterial @The material to set
function PANEL:SetMaterial(mat)
end

--- See DImage:SetOnViewMaterial  
--- @param mat string 
--- @param backup string 
function PANEL:SetOnViewMaterial(mat, backup)
end

--- Sets whether the image inside the DImageButton should be stretched to fill the entire size of the button, without preserving aspect ratio.  
--- If set to false, the image will not be resized at all.  
--- @param stretch boolean @True to stretch, false to not to stretch
function PANEL:SetStretchToFit(stretch)
end
