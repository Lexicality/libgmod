--- @meta

--- @class DVScrollBar : GPanel
--- A generic vertical scrollbar, used in DScrollPanel. See the horizontal alternative [here](DHScrollBar).  
--- The scrollbar notably contains `DVScrollBar.btnUp`, `DVScrollBar.btnDown`, and `DVScrollBar.btnGrip` which are the up button, down button, and grip respectively. Editing the paint functions of these allows custom scrollbar styling (See DScrollPanel:GetVBar for an example), although it is a better idea to use [Derma Skins](Derma_Skin_Creation).  
local PANEL = {}
_G.DVScrollBar = PANEL;
--- Adds specified amount of scroll in pixels.  
--- @param add number @How much to scroll downwards
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

--- Returns the scale of the scroll bar based on the difference in size between the visible "window" into the canvas that is being scrolled. Should be used after DVScrollBar:SetUp.  
--- @return number @The scale of the scrollbar.
function PANEL:BarScale()
end

--- Returns whether or not the manual up/down scroll buttons are visible or not. Set by DVScrollBar:SetHideButtons.  
--- @return boolean @Whether or not the manual up/down scroll buttons are visible or not.
function PANEL:GetHideButtons()
end

--- Returns the negative of DVScrollBar:GetScroll.  
--- @return number @The scroll offset.
function PANEL:GetOffset()
end

--- Returns the amount of scroll level from the top in pixels  
--- @return number @The amount of scroll level from the top
function PANEL:GetScroll()
end

--- Allows hiding the up and down buttons for better visual stylisation.  
--- @param hide boolean @True to hide
function PANEL:SetHideButtons(hide)
end

--- Sets the scroll level in pixels.  
--- @param scroll number @The new scroll value.
function PANEL:SetScroll(scroll)
end

--- Sets up the scrollbar for use.  
--- The scrollbar will automatically disable itself if the total height of the canvas is lower than the height of the panel that holds the canvas during this function call.  
--- @param barSize number @The size of the panel that holds the canvas, basically size of "1 page".
--- @param canvasSize number @The total size of the canvas, this typically is the bigger number.
function PANEL:SetUp(barSize, canvasSize)
end
