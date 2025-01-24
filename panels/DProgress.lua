--- @meta

--- @class DProgress : GPanel
--- A progressbar, works with a fraction between 0 and 1 where 0 is 0% and 1 is 100%.  
local PANEL = {}
_G.DProgress = PANEL;
--- Returns the progress bar's fraction. 0 is 0% and 1 is 100%.  
--- @return number @Current fraction of the progress bar.
function PANEL:GetFraction()
end

--- Sets the fraction of the progress bar. 0 is 0% and 1 is 100%.  
--- @param fraction number @Fraction of the progress bar
function PANEL:SetFraction(fraction)
end
