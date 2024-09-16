--- The input library allows you to gather information about the clients input devices (mouse & keyboard), such as the cursor position and whether a key is pressed or not.  
_G.input = {}
--- Returns the last key captured by key trapping.  
--- @return number @The key, see Enums/KEY
function input.CheckKeyTrapping()
end

--- Returns the digital value of an analog stick on the current (set up via convars) controller.  
--- @param axis number @The analog axis to poll
--- @return number @The digital value
function input.GetAnalogValue(axis)
end

--- Returns the cursor's position on the screen.  
--- 🦟 **BUG**: [On macOS, the cursor isn't locked on the middle of the screen which causes a significant offset of the positions returned by this function.](https://github.com/Facepunch/garrysmod-issues/issues/4964)  
--- @return number @The cursors position on the X axis.
--- @return number @The cursors position on the Y axis.
function input.GetCursorPos()
end

--- Gets the button code from a button name. This is opposite of input.GetKeyName.  
--- @param button string @The internal button name, such as <key>E</key> or <key>SHIFT</key>.
--- @return number @The button code, see Enums/BUTTON_CODE.
function input.GetKeyCode(button)
end

--- Gets the button name from a numeric button code. The name needs to be translated with language.GetPhrase before being displayed.  
--- ℹ **NOTE**: Despite the name of the function, this also works for the full range of keys in Enums/BUTTON_CODE.  
--- @param button number @The button, see Enums/BUTTON_CODE.
--- @return string @Button name.
function input.GetKeyName(button)
end

--- Gets whether the specified button code is down.  
--- Unlike input.IsKeyDown this can also detect joystick presses from Enums/JOYSTICK  
--- @param button number @The button, valid values are in the range of Enums/BUTTON_CODE.
--- @return boolean @Is the button down
function input.IsButtonDown(button)
end

--- Returns whether a control key is being pressed  
--- @return boolean @Is Ctrl key down or not
function input.IsControlDown()
end

--- Gets whether a key is down.  
--- @param key number @The key, see Enums/KEY.
--- @return boolean @Is the key down
function input.IsKeyDown(key)
end

--- Returns whether key trapping is activate and the next key press will be captured.  
--- @return boolean @Whether key trapping active or not
function input.IsKeyTrapping()
end

--- Gets whether a mouse button is down  
--- @param mouseKey number @The key, see Enums/MOUSE
--- @return boolean @Is the key down
function input.IsMouseDown(mouseKey)
end

--- Gets whether a shift key is being pressed  
--- @return boolean @isDown
function input.IsShiftDown()
end

--- Returns the client's bound key for the specified console command. If the player has multiple keys bound to a single command, then the key with the lowest Enums/BUTTON_CODE will be returned.  
--- @param binding? string @The binding name
--- @param exact? boolean @True to disable automatic stripping of a single leading `+` character
--- @return string @The first key found with that binding or no value if no key with given binding was found
function input.LookupBinding(binding, exact)
end

--- Returns the bind string that the given key is bound to.  
--- @param key number @Key from Enums/BUTTON_CODE
--- @return string @The bind string of the given key.
function input.LookupKeyBinding(key)
end

--- Switches to the provided weapon on the next CUserCmd generation/CreateMove call. Direct binding to [CInput::MakeWeaponSelection](https://github.com/LestaD/SourceEngine2007/blob/43a5c90a5ada1e69ca044595383be67f40b33c61/se2007/game/client/in_main.cpp#L929-L932).  
--- @param weapon GWeapon @The weapon entity to switch to.
function input.SelectWeapon(weapon)
end

--- Sets the cursor's position on the screen, relative to the topleft corner of the window  
--- @param mouseX number @X coordinate for mouse position
--- @param mouseY number @Y coordinate for mouse position
function input.SetCursorPos(mouseX, mouseY)
end

--- Begins waiting for a key to be pressed so we can save it for input.CheckKeyTrapping. Used by the DBinder.  
function input.StartKeyTrapping()
end

--- Translates a console command alias, basically reverse of the `alias` console command.  
--- @param command string @The alias to lookup.
--- @return string @The command(s) this alias will execute if ran, or nil if the alias doesn't exist.
function input.TranslateAlias(command)
end

--- Returns whether a key was initially pressed in the same frame this function was called.  
--- This function only works in Move hooks, and will detect key presses even in main menu or when a typing in a text field.  
--- @param key number @The key, see Enums/KEY.
--- @return boolean @True if the key was initially pressed the same frame that this function was called, false otherwise.
function input.WasKeyPressed(key)
end

--- Returns whether a key was released in the same frame this function was called.  
--- This function only works in Move hooks, and will detect key releases even in main menu or when a typing in a text field.  
--- @param key number @The key, see Enums/KEY.
--- @return boolean @True if the key was released the same frame that this function was called, false otherwise.
function input.WasKeyReleased(key)
end

--- Returns whether the key is being held down or not.  
--- This function only works in Move hooks, and will detect key events even in main menu or when a typing in a text field.  
--- @param key number @The key to test, see Enums/KEY
--- @return boolean @Whether the key is being held down or not.
function input.WasKeyTyped(key)
end

--- Returns whether a mouse key was double pressed in the same frame this function was called.  
--- If this function returns true, input.WasMousePressed will return false.  
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field.  
--- @param button number @The mouse button to test, see Enums/MOUSE
--- @return boolean @Whether the mouse key was double pressed or not.
function input.WasMouseDoublePressed(button)
end

--- Returns whether a mouse key was initially pressed in the same frame this function was called.  
--- If input.WasMouseDoublePressed returns true, this function will return false.  
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field.  
--- @param key number @The key, see Enums/MOUSE
--- @return boolean @True if the mouse key was initially pressed the same frame that this function was called, false otherwise.
function input.WasMousePressed(key)
end

--- Returns whether a mouse key was released in the same frame this function was called.  
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field.  
--- @param key number @The key to test, see Enums/MOUSE
--- @return boolean @True if the mouse key was released the same frame that this function was called, false otherwise.
function input.WasMouseReleased(key)
end

