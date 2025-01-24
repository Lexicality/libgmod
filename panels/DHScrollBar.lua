--- @meta

--- @class DHScrollBar : GPanel
--- A generic horizontal scrollbar. See the vertical alternative [here](DVScrollBar).  
--- The scrollbar notably contains `DHScrollBar.btnLeft`, `DHScrollBar.btnRight`, and `DHScrollBar.btnGrip` which are the left button, right button, and grip respectively. Editing the paint functions of these allows custom scrollbar styling, although it is a better idea to use [Derma Skins](Derma_Skin_Creation).  
local PANEL = {}
_G.DHScrollBar = PANEL;
--- Adds specified amount of scroll in pixels.  
--- @param add number @How much to scroll rightwards
--- @return boolean @True if the scroll level was changed (i.e
function PANEL:AddScroll(add)
end

--- Smoothly scrolls to given level.  
--- @param scroll number @The scroll level to animate to
--- @param length number @Length of the animation in seconds
--- @param delay? number @Delay of the animation in seconds
--- @param ease? number @See Panel:NewAnimation for explanation.
function PANEL:AnimateTo(scroll, length, delay, ease)
end

--- Returns the scale of the scroll bar based on the difference in size between the visible "window" into the canvas that is being scrolled. Should be used after DHScrollBar:SetUp.  
--- @return number @The scale of the scrollbar.
function PANEL:BarScale()
end

--- Returns whether or not the manual left/right scroll buttons are visible or not. Set by DHScrollBar:SetHideButtons.  
--- @return boolean @Whether or not the manual left/right scroll buttons are visible or not.
function PANEL:GetHideButtons()
end

--- Returns the negative of DHScrollBar:GetScroll.  
--- @return number @The scroll offset.
function PANEL:GetOffset()
end

--- Returns the amount of scroll level from the left in pixels.  
--- @return number @The amount of scroll level from the left edge.
function PANEL:GetScroll()
end

--- Allows hiding the left and right buttons for better visual stylisation.  
--- @param hide boolean @True to hide
function PANEL:SetHideButtons(hide)
end

--- Sets the scroll level in pixels.  
--- @param scroll number @The new scroll value.
function PANEL:SetScroll(scroll)
end

--- Sets up the scrollbar for use.  
--- The scrollbar will automatically disable itself if the total width of the canvas is lower than the width of the panel that holds the canvas during this function call.  
--- @param barSize number @The size of the panel that holds the canvas, basically size of "1 page".
--- @param canvasSize number @The total size of the canvas, this typically is the bigger number.
function PANEL:SetUp(barSize, canvasSize)
end
