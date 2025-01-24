--- @meta

--- @class DTextEntry : VTextEntry
--- A form which may be used to display text the player is meant to select and copy or alternately allow them to enter some text of their own.  
--- ℹ **NOTE**: At least one of your `DTextEntry`'s parents must either be an EditablePanel or derived from it (like a DFrame, for example), else it won't be able to focus and thus be unselectable.  
--- You must also call Panel:MakePopup on said panel or the `DTextEntry` will not work.  
local PANEL = {}
_G.DTextEntry = PANEL;
--- Adds an entry to DTextEntry's history.  
--- See DTextEntry:SetHistoryEnabled.  
--- @param text string @Text to add to the text entry's history.
function PANEL:AddHistory(text)
end

--- Called whenever the value of the panel has been updated (whether by user input or otherwise).  
--- It allows you to determine whether a user can modify the TextEntry's text.  
--- By default, this only checks whether the panel disallows numeric characters, preventing it from being edited if the value contains any.  
--- This is actually an engine hook that only works on TextEntry derived elements.  
--- If you are looking for a way to modify character limits, see Panel:SetMaximumCharCount  
--- @param char string @The last character entered into the panel.
--- @return boolean @Return `true` to prevent the value from changing, `false` to allow it.
function PANEL:AllowInput(char)
end

--- Returns whether a string is numeric or not.  
--- Always returns false if the DTextEntry:SetNumeric is set to false.  
--- @param strValue string @The string to check.
--- @return boolean @Whether the string is numeric or not.
function PANEL:CheckNumeric(strValue)
end

--- Called by the DTextEntry when a list of autocompletion options is requested. Meant to be overridden.  
--- @param inputText string @Player's current input.
--- @return table @If a table is returned, the values of the table will show up as autocomplete suggestions for the user.
function PANEL:GetAutoComplete(inputText)
end

--- Returns the cursor color of a DTextEntry.  
--- @return table @The color of the cursor as a Color.
function PANEL:GetCursorColor()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use Panel:IsEnabled instead.  
--- Returns whether the textbox is disabled. Use Panel:IsEnabled instead.  
--- @return boolean @Whether the textbox is disabled.
function PANEL:GetDisabled()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
---  Alias of DTextEntry:GetPaintBackground. Use that instead.  
--- Whether the background is displayed or not.  
--- @return boolean 
function PANEL:GetDrawBackground()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Returns the value set by DTextEntry:SetDrawBorder.  
--- @return boolean 
function PANEL:GetDrawBorder()
end

--- Returns whether pressing Enter can cause the panel to lose focus. Note that a multiline DTextEntry cannot be escaped using the Enter key even when this function returns true.  
--- @return boolean @Whether pressing the Enter key can cause the panel to lose focus.
function PANEL:GetEnterAllowed()
end

--- Returns the contents of the DTextEntry as a number.  
--- @return number @Text of the DTextEntry as a float, or nil if it cannot be converted to a number using Global.tonumber.
function PANEL:GetFloat()
end

--- Returns the highlight/text selection color of the text entry. If it was not overwritten, it will return the derma skin value. (`colTextEntryTextHighlight`)  
--- @return table @The highlight Global.Color.
function PANEL:GetHighlightColor()
end

--- Returns whether the history functionality of  DTextEntry is enabled. See DTextEntry:AddHistory.  
--- @return boolean @Whether the history is enabled or not.
function PANEL:GetHistoryEnabled()
end

--- Similar to DTextEntry:GetFloat, but rounds the value to the nearest integer.  
--- @return number @Text of the DTextEntry as a round number, or nil if it cannot be converted to a number.
function PANEL:GetInt()
end

--- Returns whether only numeric characters (`123456789.-`) can be entered into the DTextEntry.  
--- @return boolean @Whether the DTextEntry is numeric or not.
function PANEL:GetNumeric()
end

--- Whether the background is displayed or not  
--- @return boolean @`false` hides the background; this is `true` by default.
function PANEL:GetPaintBackground()
end

--- Return current color of panel placeholder  
--- @return table @Current placeholder color
function PANEL:GetPlaceholderColor()
end

--- Returns the placeholder text set with DTextEntry:SetPlaceholderText.  
--- @return string 
function PANEL:GetPlaceholderText()
end

--- Returns whether or not the panel accepts `tab` key.  
--- @return boolean @Whether the DTextEntry should ignore <key>tab</key>.
function PANEL:GetTabbingDisabled()
end

--- Returns the text color of a DTextEntry.  
--- @return table @The color of the text as a Color.
function PANEL:GetTextColor()
end

--- Returns whether the DTextEntry is set to run DTextEntry:OnValueChange every time a character is typed or deleted or only when Enter is pressed.  
--- @return boolean 
function PANEL:GetUpdateOnType()
end

--- Returns whether this DTextEntry is being edited or not. (i.e. has focus)  
--- @return boolean @Whether this DTextEntry is being edited or not
function PANEL:IsEditing()
end

--- Called by DTextEntry:OnTextChanged when the user modifies the text in the DTextEntry.  
--- You should override this function to define custom behavior when the DTextEntry text changes.  
function PANEL:OnChange()
end

--- Called whenever enter is pressed on a DTextEntry.  
--- ℹ **NOTE**: DTextEntry:IsEditing will still return true in this callback!  
--- @param value string @The current text of the DTextEntry
function PANEL:OnEnter(value)
end

--- Called whenever the DTextEntry gains focus.  
function PANEL:OnGetFocus()
end

--- Called from DTextEntry's TextEntry:OnKeyCodeTyped override whenever a valid character is typed while the text entry is focused.  
--- @param keyCode number @They key code of the key pressed, see Enums/KEY.
function PANEL:OnKeyCode(keyCode)
end

--- Called whenever the DTextEntry lose focus.  
function PANEL:OnLoseFocus()
end

--- Called when the text changes of the DTextEntry are applied. (And set to the attached console variable, if one is given)  
--- See also DTextEntry:OnChange for a function that is called on every text change, even if the console variable is not updated.  
--- You should override this function to define custom behavior when the text changes.  
--- This method is called:  
--- * When Enter is pressed after typing  
--- * When DTextEntry:SetValue is used  
--- * For every key typed - only if DTextEntry:SetUpdateOnType was set to true (default is false)  
--- @param value string @The DTextEntry text.
function PANEL:OnValueChange(value)
end

--- Sets the cursor's color in  DTextEntry (the blinking line).  
--- @param color table @The color to set the cursor to.
function PANEL:SetCursorColor(color)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use Panel:SetEnabled instead.  
--- Disables input on a DTextEntry and greys it out visually. This differs from DTextEntry:SetEditable which doesn't visually change the textbox.  
--- @param disabled boolean @Whether the textbox should be disabled
function PANEL:SetDisabled(disabled)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
---  Alias of DTextEntry:SetPaintBackground. Use that instead.  
--- @param show boolean 
function PANEL:SetDrawBackground(show)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param bool boolean 
function PANEL:SetDrawBorder(bool)
end

--- Disables Input on a DTextEntry. This differs from DTextEntry:SetDisabled - SetEditable will not affect the appearance of the textbox.  
--- @param enabled boolean @Whether the DTextEntry should be editable
function PANEL:SetEditable(enabled)
end

--- Sets whether pressing the Enter key will cause the DTextEntry to lose focus or not, provided it is not multiline. This is true by default.  
--- @param allowEnter boolean @If set to false, pressing Enter will not cause the panel to lose focus and will never call DTextEntry:OnEnter.
function PANEL:SetEnterAllowed(allowEnter)
end

--- Changes the font of the DTextEntry.  
--- @param font string @The name of the font to be changed to.
function PANEL:SetFont(font)
end

--- Sets/overrides the default highlight/text selection color of the text entry.  
--- @param color table @The new highlight Global.Color.
function PANEL:SetHighlightColor(color)
end

--- Enables or disables the history functionality of  DTextEntry. This allows the player to scroll through history elements using up and down arrow keys.  
--- See DTextEntry:AddHistory.  
--- @param enable boolean @Whether to enable history or not.
function PANEL:SetHistoryEnabled(enable)
end

--- Sets whether or not to decline non-numeric characters as input.  
--- Numeric characters are `1234567890.-`  
--- @param numericOnly boolean @Whether to accept only numeric characters.
function PANEL:SetNumeric(numericOnly)
end

--- Sets whether to show the default background of the DTextEntry.  
--- @param show boolean @`false` hides the background; this is `true` by default.
function PANEL:SetPaintBackground(show)
end

--- Allow you to set placeholder color.  
--- @param color? table @The color of the placeholder.
function PANEL:SetPlaceholderColor(color)
end

--- Sets the placeholder text that will be shown while the text entry has no user text. The player will not need to delete the placeholder text if they decide to start typing.  
--- @param text? string 
function PANEL:SetPlaceholderText(text)
end

--- Sets whether or not the panel accepts `tab` key.  
--- ℹ **NOTE**: Disabling tab key prevents the panel from unfocusing by mouse, however, still works for focusing to other keyboard focus.  
--- @param enabled boolean @Whether the DTextEntry should ignore <key>tab</key>.
function PANEL:SetTabbingDisabled(enabled)
end

--- Sets the text color of the DTextEntry.  
--- @param color table @The text color
function PANEL:SetTextColor(color)
end

--- Sets whether we should fire DTextEntry:OnValueChange every time we type or delete a character or only when Enter is pressed.  
--- @param updateOnType boolean 
function PANEL:SetUpdateOnType(updateOnType)
end

--- Sets the text of the DTextEntry and calls DTextEntry:OnValueChange.  
--- ℹ **NOTE**: The text of the DTextEntry only changes if it's not currently being typed in. If you would rather set the text regardless, use Panel:SetText.  
--- @param text string @The value to set.
function PANEL:SetValue(text)
end
