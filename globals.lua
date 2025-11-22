--- @meta

--- Adds simple Get/Set accessor functions on the specified table.  
--- Can also force the value to be set to a number, bool or string.  
--- @param tab table @The table to add the accessor functions to.
--- @param key any @The key of the table to be get/set.
--- @param name string @The name of the functions (will be prefixed with Get and Set).
--- @param force? EFORCE @The type the setter should force to (uses Enums/FORCE).
function _G.AccessorFunc(tab, key, name, force)
end

--- Marks a Lua file to be sent to clients when they join the server. Doesn't do anything on the client - this means you can use it in a shared file without problems.  
--- ⚠ **WARNING**: If the file trying to be added is empty, an error will occur, and the file will not be sent to the client  
--- The string cannot have whitespace.  
--- ℹ **NOTE**: This function is not needed for scripts located in these paths because they are automatically sent to clients.  
--- **lua/matproxy/**  
--- **lua/postprocess/**  
--- **lua/vgui/**  
--- **lua/skins/**  
--- **lua/autorun/**  
--- **lua/autorun/client/**  
--- You can add up to **8192** files. Each file can be up to **64KB** compressed (LZMA)  
--- @param file? string @The name/path to the Lua file that should be sent, **relative to the garrysmod/lua folder**
function _G.AddCSLuaFile(file)
end

--- Adds the specified vector to the PVS which is currently building. This allows all objects in visleafs visible from that vector to be drawn.  
--- @param position GVector @The origin to add.
function _G.AddOriginToPVS(position)
end

--- This function creates a Custom Category in the Spawnlist. Use Global.GenerateSpawnlistFromPath if you want to create a category with the contents of a folder.  
--- ⚠ **WARNING**: Using this function before SANDBOX:PopulateContent has been called will result in an error  
--- @param pnlContent GPanel @The SMContentPanel of the Node
--- @param node GPanel @The Node
--- @param parentid number @The ParentID to use
--- @param customProps table @The Table with the Contents of the new Category
function _G.AddPropsOfParent(pnlContent, node, parentid, customProps)
end

--- This function creates a World Tip, similar to the one shown when aiming at a Thruster where it shows you its force.  
--- This function will make a World Tip that will only last 50 milliseconds (1/20th of a second), so you must call it continuously as long as you want the World Tip to be shown. It is common to call it inside a Think hook.  
--- Contrary to what the function's name implies, it is impossible to create more than one World Tip at the same time. A new World Tip will overwrite the old one, so only use this function when you know nothing else will also be using it.  
--- See SANDBOX:PaintWorldTips for more information.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives  
--- @param entindex? number @**This argument is no longer used**; it has no effect on anything
--- @param text? string @The text for the world tip to display.
--- @param dieTime? number @**This argument is no longer used**; when you add a World Tip it will always last only 0.05 seconds
--- @param pos? GVector @Where in the world you want the World Tip to be drawn
--- @param ent? GEntity @Which entity you want to associate with the World Tip
function _G.AddWorldTip(entindex, text, dieTime, pos, ent)
end

--- Defines a global entity class variable with an automatic value. In order to prevent collisions with other Enums/CLASS. You should prefix your variable with CLASS_ for consistency.  
--- @param name string @The name of the new enum/global variable.
function _G.Add_NPC_Class(name)
end

--- Loads the specified image from the `/cache` folder, used in combination with steamworks.Download. Most addons will provide a 512x512 png image.  
--- ℹ **NOTE**: This works with any image file with the `.cache` file extension, even outside of the `/cache` folder.  
--- @param name string @The name of the file.
--- @return GIMaterial @The material, returns `nil` if the cached file is not an image.
function _G.AddonMaterial(name)
end

--- Creates an Angle object, representing a [Euler Angle](https://en.wikipedia.org/wiki/Euler_angles) made up of pitch, yaw, and roll components.  
--- ⚠ **WARNING**: This function is relatively expensive, in terms of performance, in situations where it is being called multiple times every frame (Like a loop, for example.) This is due to the overhead associated with object creation and garbage collection.  
--- Where possible, it is generally better to store an Angle in a variable and re-use that variable rather than re-creating it repeatedly.  
--- In cases where an empty Angle is needed, the global variable `angle_zero` is the preferred solution instead of `Angle( 0, 0, 0 )`.  
--- @param pitch? number @The pitch value of the angle, in degrees.
--- @param yaw? number @The yaw value of the angle, in degrees.
--- @param roll? number @The roll value of the angle, in degrees.
--- @return GAngle @The newly created Angle
function _G.Angle(pitch, yaw, roll)
end
--- Creates an Angle object, representing a [Euler Angle](https://en.wikipedia.org/wiki/Euler_angles) made up of pitch, yaw, and roll components.  
--- ⚠ **WARNING**: This function is relatively expensive, in terms of performance, in situations where it is being called multiple times every frame (Like a loop, for example.) This is due to the overhead associated with object creation and garbage collection.  
--- Where possible, it is generally better to store an Angle in a variable and re-use that variable rather than re-creating it repeatedly.  
--- In cases where an empty Angle is needed, the global variable `angle_zero` is the preferred solution instead of `Angle( 0, 0, 0 )`.  
--- @param angle GAngle @Creates a new Angle that is a copy of the Angle passed in.
--- @return GAngle @The newly created Angle
function _G.Angle(angle)
end
--- Creates an Angle object, representing a [Euler Angle](https://en.wikipedia.org/wiki/Euler_angles) made up of pitch, yaw, and roll components.  
--- ⚠ **WARNING**: This function is relatively expensive, in terms of performance, in situations where it is being called multiple times every frame (Like a loop, for example.) This is due to the overhead associated with object creation and garbage collection.  
--- Where possible, it is generally better to store an Angle in a variable and re-use that variable rather than re-creating it repeatedly.  
--- In cases where an empty Angle is needed, the global variable `angle_zero` is the preferred solution instead of `Angle( 0, 0, 0 )`.  
--- @param angleString string @Attempts to parse the input string from the Global.print format of an Angle
--- @return GAngle @The newly created Angle
function _G.Angle(angleString)
end

--- Returns an angle with a randomized pitch, yaw, and roll between min(inclusive), max(exclusive).  
--- @param min? number @Min bound inclusive.
--- @param max? number @Max bound exclusive.
--- @return GAngle @The randomly generated angle.
function _G.AngleRand(min, max)
end

--- A variable containing a string indicating which (Beta) Branch of the game you are using.  
--- While this variable is always available in the Client & Menu  
--- realms, it is only defined in the Server  realm on local servers.  
--- For more information on beta branches, see this page  
--- Branch List :  
--- * unknown **(No beta program)**  
--- * dev  
--- * prerelease  
--- * x86-64  
--- @return string @The current branch.
function _G.BRANCH()
end

--- Sends the specified Lua code to all connected clients and executes it.  
--- ℹ **NOTE**: If you need to use this function more than once, consider using net library.  
--- Send net message and make the entire code you want to execute in net.Receive on client.  
--- If executed **clientside** it won't do anything.  
--- @param code string @The code to be executed
function _G.BroadcastLua(code)
end

--- Dumps the networked variables of all entities into one table and returns it.  
--- @return table @Format:
function _G.BuildNetworkedVarsTable()
end

--- Automatically called by the engine when a panel is hovered over with the mouse  
--- @param panel GPanel @Panel that has been hovered over
function _G.ChangeTooltip(panel)
end

--- Creates a non physical entity that only exists on the client. See also ents.CreateClientProp if physics is wanted.  
--- 🦟 **BUG**: [Parented clientside models will become detached if the parent entity leaves the PVS. A workaround is available on the issue tracker page linked below.](https://github.com/Facepunch/garrysmod-issues/issues/861)  
--- 🦟 **BUG**: [Clientside entities are not garbage-collected, thus you must store a reference to the object (in a variable) and call CSEnt:Remove manually when necessary.](https://github.com/Facepunch/garrysmod-issues/issues/1387)  
--- 🦟 **BUG**: [Clientside models will occasionally delete themselves during high server lag.](https://github.com/Facepunch/garrysmod-issues/issues/3184)  
--- @param model string @The file path to the model.
--- @param renderGroup? number @The render group of the entity for the clientside leaf system, see Enums/RENDERGROUP.
--- @return GCSEnt|nil @Created client-side model (`C_BaseFlex`) or `nil` if creation of the entity failed for any reason.
function _G.ClientsideModel(model, renderGroup)
end

--- Creates a fully clientside ragdoll.  
--- ℹ **NOTE**: The ragdoll initially starts as hidden and with shadows disabled, see the example for how to enable it.  
--- There's no need to call Entity:Spawn on this entity.  
--- 🦟 **BUG**: [Clientside entities are not garbage-collected, thus you must store a reference to the object and call CSEnt:Remove manually.](https://github.com/Facepunch/garrysmod-issues/issues/1387)  
--- @param model string @The file path to the model.
--- @param renderGroup? number @The Enums/RENDERGROUP to assign.
--- @return GCSEnt @The newly created client-side only ragdoll
function _G.ClientsideRagdoll(model, renderGroup)
end

--- Creates a scene entity based on the scene name and the entity.  
--- @param name string @The name of the scene.
--- @param targetEnt GEntity @The entity to play the scene on.
--- @return GCSEnt @C_SceneEntity
function _G.ClientsideScene(name, targetEnt)
end

--- Closes all Derma menus that have been passed to Global.RegisterDermaMenuForClose and calls GM:CloseDermaMenus  
function _G.CloseDermaMenus()
end

--- Creates a Color.  
--- ⚠ **WARNING**: This function is relatively expensive when used in rendering hooks or in operations requiring very frequent calls (like loops for example) due to object creation and garbage collection. It is better to store the color in a variable or to use the [default colors](https://wiki.facepunch.com/gmod/Global_Variables#misc) available.  
--- Here is a list of colors already cached by the game  
--- Variable | Color (RGBA) |  
--- -----|------------|  
--- | color_white | Color(255, 255, 255, 255) |  
--- | color_black | Color(0, 0, 255, 255) |  
--- | color_transparent | Color(255, 255, 255, 0) |  
--- ⚠ **WARNING**: Under no circumstances should these variables be modified (by a Lerp or value modification). Some addons that use these values (e.g. color_white) will be affected by this change.  
--- @param r number @An integer from `0-255` describing the red value of the color.
--- @param g number @An integer from `0-255` describing the green value of the color.
--- @param b number @An integer from `0-255` describing the blue value of the color.
--- @param a? number @An integer from `0-255` describing the alpha (transparency) of the color.(default 255)
--- @return GColor @The created Color.
function _G.Color(r, g, b, a)
end

--- Returns a new Color with the RGB components of the given Color and the alpha value specified.  
--- @param color table @The Color from which to take RGB values
--- @param alpha number @The new alpha value, a number between 0 and 255
--- @return table @The new Color with the modified alpha value
function _G.ColorAlpha(color, alpha)
end

--- Creates a Color with randomized red, green, and blue components. If the alpha argument is true, alpha will also be randomized.  
--- @param a? boolean @Should alpha be randomized.
--- @return table @The created Color.
function _G.ColorRand(a)
end

--- Converts a Color into HSL color space.  
--- @param color table @The Color.
--- @return number @The hue in degrees `[0, 360]`.
--- @return number @The saturation in the range `[0, 1]`.
--- @return number @The lightness in the range `[0, 1]`.
function _G.ColorToHSL(color)
end

--- Converts a Color into HSV color space.  
--- @param color table @The Color.
--- @return number @The hue in degrees `[0, 360]`.
--- @return number @The saturation in the range `[0, 1]`.
--- @return number @The value in the range `[0, 1]`.
function _G.ColorToHSV(color)
end

--- Attempts to compile the given file. If successful, returns a function that can be called to perform the actual execution of the script.  
--- @param path string @Path to the file, relative to the `garrysmod/lua/` directory.
--- @param showError? boolean @Decides whether or not a non-halting error should be thrown on compile failure.
--- @return function @The function which executes the script.
function _G.CompileFile(path, showError)
end

--- This function will compile the code argument as lua code and return a function that will execute that code.  
--- Please note that this function will not automatically execute the given code after compiling it.  
--- @param code string @The code to compile.
--- @param identifier string @An identifier in case an error is thrown
--- @param handleError? boolean @If false this function will return an error string instead of throwing an error.
--- @return function @A function that, when called, will execute the given code
function _G.CompileString(code, identifier, handleError)
end

--- Returns whether a ConVar with the given name exists or not  
--- @param name string @Name of the ConVar.
--- @return boolean @True if the ConVar exists, false otherwise.
function _G.ConVarExists(name)
end

--- Makes a clientside-only console variable  
--- ℹ **NOTE**: This function is a wrapper of Global.CreateConVar, with the difference being that FCVAR_ARCHIVE and FCVAR_USERINFO are added automatically when **shouldsave** and **userinfo** are true, respectively.  
--- Although this function is shared, it should only be used clientside.  
--- @param name string @Name of the ConVar to be created and able to be accessed
--- @param default string @Default value of the ConVar.
--- @param shouldsave? boolean @Should the ConVar be saved across sessions in the cfg/client.vdf file.
--- @param userinfo? boolean @Should the ConVar and its containing data be sent to the server when it has changed
--- @param helptext? string @Help text to display in the console.
--- @param min? number @If set, the convar cannot be changed to a number lower than this value.
--- @param max? number @If set, the convar cannot be changed to a number higher than this value.
--- @return GConVar @Created convar.
function _G.CreateClientConVar(name, default, shouldsave, userinfo, helptext, min, max)
end

--- Creates a console variable (ConVar).  
--- Generally these are used for settings, which can be stored automatically across sessions if desired. They are usually set via an accompanying user interface clientside, or listed somewhere for dedicated server usage, in which case they might be set via `server.cfg` on server start up.  
--- ⚠ **WARNING**: Do not use the FCVAR_NEVER_AS_STRING and FCVAR_REPLICATED flags together, as this can cause the console variable to have strange values on the client.  
--- @param name string @Name of the ConVar
--- @param value string @Default value of the convar
--- @param flags? EFCVAR @Flags of the convar, see Enums/FCVAR, either as bitflag or as table.
--- @param helptext? string @The help text to show in the console.
--- @param min? number @If set, the ConVar cannot be changed to a number lower than this value.
--- @param max? number @If set, the ConVar cannot be changed to a number higher than this value.
--- @return GConVar @The convar created, or `nil` if convar could not be created
function _G.CreateConVar(name, value, flags, helptext, min, max)
end

--- Creates a new material with the specified name and shader.  
--- Materials created with this function can be used in Entity:SetMaterial and Entity:SetSubMaterial by prepending a `!` to their material name argument.  
--- This will not create a new material if another material object with the same name already exists. All Materials created by this functions are cleaned up on map shutdown.  
--- ℹ **NOTE**: This does not work with [patch materials](https://developer.valvesoftware.com/wiki/Patch).  
--- 🦟 **BUG**: [.pngs must be loaded with Global.Material before being used with this function.](https://github.com/Facepunch/garrysmod-issues/issues/1531)  
--- @param name string @The material name
--- @param shaderName string @The shader name
--- @param materialData table @Key-value table that contains shader parameters and proxies
--- @return GIMaterial @Created material
function _G.CreateMaterial(name, shaderName, materialData)
end

--- Creates a new particle system. See also Entity:CreateParticleEffect, Global.ParticleEffectAttach and Global.CreateParticleSystemNoEntity.  
--- ℹ **NOTE**: The particle effect must be precached with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param ent GEntity @The entity to attach the control point to.
--- @param effect string @The name of the effect to create
--- @param partAtt number @See Enums/PATTACH.
--- @param entAtt? number @The attachment ID on the entity to attach the particle system to
--- @param offset? GVector @The offset from the Entity:GetPos of the entity we are attaching this CP to.
--- @return GCNewParticleEffect @The created particle system.
function _G.CreateParticleSystem(ent, effect, partAtt, entAtt, offset)
end

--- Creates a new particle system, and sets control points 0 and 1 to given position, as well as optionally orientation of CP0 to the given angles. See also Global.CreateParticleSystem  
--- ℹ **NOTE**: The particle effect must be precached with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param effect string @The name of the effect to create
--- @param pos GVector @The position for the particle system.
--- @param ang? GAngle @The orientation of the particle system.
--- @return GCNewParticleEffect @The created particle system.
function _G.CreateParticleSystemNoEntity(effect, pos, ang)
end

--- Creates a new PhysCollide from the given bounds.  
--- 🦟 **BUG**: [This fails to create planes or points - no components of the mins or maxs can be the same.](https://github.com/Facepunch/garrysmod-issues/issues/3568)  
--- @param mins GVector @Min corner of the box
--- @param maxs GVector @Max corner of the box
--- @return GPhysCollide @The new PhysCollide
function _G.CreatePhysCollideBox(mins, maxs)
end

--- Creates PhysCollide objects for every physics object the model has. The model must be precached with util.PrecacheModel before being used with this function.  
--- @param modelName string @Model path to get the collision objects of.
--- @return GPhysCollide[] @Table of PhysCollide objects
function _G.CreatePhysCollidesFromModel(modelName)
end

--- Returns a sound parented to the specified entity.  
--- ℹ **NOTE**: You can only create one CSoundPatch per audio file, per entity at the same time.  
--- ℹ **NOTE**: Valid sample rates: **11025 Hz, 22050 Hz and 44100 Hz**, otherwise you may see this kind of message:  
--- `Unsupported 32-bit wave file your_sound.wav` and  
--- `Invalid sample rate (48000) for sound 'your_sound.wav'`  
--- @param targetEnt GEntity @The target entity.
--- @param soundName string @The sound to play
--- @param filter? GCRecipientFilter @A CRecipientFilter of the players that will have this sound networked to them
--- @return GCSoundPatch @The sound object
function _G.CreateSound(targetEnt, soundName, filter)
end

--- Creates and returns a new DSprite element with the supplied material.  
--- @param material GIMaterial @Material the sprite should draw.
--- @return GPanel @The new DSprite element.
function _G.CreateSprite(material)
end

--- Returns the uptime of the server in seconds (to at least 4 decimal places)  
--- This is a synchronised value and affected by various factors such as host_timescale (or game.GetTimeScale) and the server being paused - either by `sv_pausable` or all players disconnecting.  
--- You should use this function for timing in-game events but not for real-world events.  
--- See also: Global.RealTime, Global.SysTime  
--- ℹ **NOTE**: This is internally defined as a float, and as such it will be affected by precision loss if your server uptime is more than 6 hours, which will cause jittery movement of players and props and inaccuracy of timers, it is highly encouraged to refresh or change the map when that happens (a server restart is not necessary).  
--- This is **NOT** easy as it sounds to fix in the engine, so please refrain from posting issues about this  
--- @return number @Time synced with the game server.
function _G.CurTime()
end

--- Generates and provides a local variable `BaseClass` that can be used to call the original version of a class functions after modifying it.  
--- This is a preprocessor keyword that is directly replaced with the following text:  
--- ```lua  
--- local BaseClass = baseclass.Get  
--- ```  
--- Because this is a simple preprocessor keyword and not a function, it will cause problems if not used properly  
--- See baseclass.Get for more information.  
--- ⚠ **WARNING**: The preprocessor is not smart enough to know when substitution doesn't make sense, such as: table keys and strings.  
--- Running `print("DEFINE_BASECLASS")` is the same as `print("local BaseClass = baseclass.Get")`  
--- For more information, including usage examples, see the BaseClasses reference page.  
--- @param value string @Baseclass name
function _G.DEFINE_BASECLASS(value)
end

--- Cancels current DOF post-process effect started with Global.DOF_Start  
function _G.DOF_Kill()
end

--- Cancels any existing DOF post-process effects.  
--- Begins the DOF post-process effect.  
function _G.DOF_Start()
end

--- Calls all NetworkVarNotify functions of the given entity with the given new value, but doesn't change the real value.  
--- internally uses Entity:CallDTVarProxies  
--- @param entity GEntity @The Entity to run the NetworkVarNotify functions from.
--- @param Type string @The NetworkVar Type
--- @param index number @The NetworkVar index.
--- @param new_value any @The new value.
function _G.DTVar_ReceiveProxyGL(entity, Type, index, new_value)
end

--- Returns an CTakeDamageInfo object.  
--- 🦟 **BUG**: [This does not create a unique object, but instead returns a shared reference. That means you cannot use two or more of these objects at once.](https://github.com/Facepunch/garrysmod-issues/issues/2771)  
--- @return GCTakeDamageInfo @The CTakeDamageInfo object.
function _G.DamageInfo()
end

--- Writes text to the right hand side of the screen, like the old error system. Messages disappear after a couple of seconds.  
--- @param slot number @The location on the right hand screen to write the debug info to
--- @param info string @The debugging information to be written to the screen
function _G.DebugInfo(slot, info)
end

--- Loads and registers the specified gamemode, setting the GM table's DerivedFrom field to the value provided, if the table exists. The DerivedFrom field is used post-gamemode-load as the "derived" parameter for gamemode.Register. See  Gamemode_Creation#derivinggamemodes for more information about deriving gamemodes.  
--- @param base string @Gamemode name to derive from.
function _G.DeriveGamemode(base)
end

--- Creates a DMenu and closes any current menus.  
--- @param keepOpen? boolean @If we should keep other DMenus open (`true`) or not (`false`).
--- @param parent? GPanel @The panel to parent the created menu to.
--- @return GPanel @The created DMenu.
function _G.DermaMenu(keepOpen, parent)
end

--- Creates a new derma animation.  
--- @param name string @Name of the animation to create
--- @param panel GPanel @Panel to run the animation on
--- @param func function @Function to call to process the animation
--- @return table @A lua metatable containing four methods:
function _G.Derma_Anim(name, panel, func)
end

--- Draws background blur around the given panel.  
--- ℹ **NOTE**: Calling this on the same Panel multiple times makes the blur darker.  
--- @param panel GPanel @Panel to draw the background blur around
--- @param startTime number @Time that the blur began being painted
function _G.Derma_DrawBackgroundBlur(panel, startTime)
end

--- Creates panel method that calls the supplied Derma skin hook via derma.SkinHook  
--- @param panel GPanel @Panel to add the hook to
--- @param functionName string @Name of panel function to create
--- @param hookName string @Name of Derma skin hook to call within the function
--- @param typeName string @Type of element to call Derma skin hook for
function _G.Derma_Hook(panel, functionName, hookName, typeName)
end

--- Makes the panel (usually an input of sorts) respond to changes in console variables by adding next functions to the panel:  
--- * Panel:SetConVar  
--- * Panel:ConVarChanged  
--- * Panel:ConVarStringThink  
--- * Panel:ConVarNumberThink  
--- The console variable value is saved in the `m_strConVar` property of the panel.  
--- The panel should call  
--- Panel:ConVarStringThink or  
--- Panel:ConVarNumberThink  
--- in its PANEL:Think hook and should call Panel:ConVarChanged when the panel's value has changed.  
--- @param target GPanel @The panel the functions should be added to.
function _G.Derma_Install_Convar_Functions(target)
end

--- Creates a derma window to display information  
--- @param Text string @The text within the created panel.
--- @param Title string @The title of the created panel.
--- @param Button string @The text of the button to close the panel.
--- @return GPanel @The created DFrame
function _G.Derma_Message(Text, Title, Button)
end

--- Shows a message box in the middle of the screen, with up to 4 buttons they can press.  
--- @param text? string @The message to display.
--- @param title? string @The title to give the message box.
--- @param btn1text? string @The text to display on the first button.
--- @param btn1func? function @The function to run if the user clicks the first button.
--- @param btn2text? string @The text to display on the second button.
--- @param btn2func? function @The function to run if the user clicks the second button.
--- @param btn3text? string @The text to display on the third button
--- @param btn3func? function @The function to run if the user clicks the third button.
--- @param btn4text? string @The text to display on the fourth button
--- @param btn4func? function @The function to run if the user clicks the fourth button.
--- @return GPanel @The Panel object of the created window.
function _G.Derma_Query(text, title, btn1text, btn1func, btn2text, btn2func, btn3text, btn3func, btn4text, btn4func)
end

--- Creates a derma window asking players to input a string.  
--- @param title string @The title of the created panel.
--- @param subtitle string @The text above the input box.
--- @param default string @The default text for the input box.
--- @param confirm function @The function to be called once the user has confirmed their input
--- @param cancel? function @The function to be called once the user has cancelled their input
--- @param confirmText? string @Allows you to override text of the "OK" button
--- @param cancelText? string @Allows you to override text of the "Cancel" button
--- @return GPanel @The created DFrame
function _G.Derma_StringRequest(title, subtitle, default, confirm, cancel, confirmText, cancelText)
end

--- Sets whether rendering should be limited to being inside a panel or not. Needs to be used inside one of the 2d rendering hooks  
--- See also Panel:NoClipping.  
--- @param disable boolean @Whether or not clipping should be disabled
--- @return boolean @Whether the clipping was enabled or not before this function call
function _G.DisableClipping(disable)
end

--- Draws the bloom shader, which creates a glowing effect from bright objects.  
--- @param Darken number @Determines how much to darken the effect
--- @param Multiply number @Will affect how bright the glowing spots are
--- @param SizeX number @The size of the bloom effect along the horizontal axis.
--- @param SizeY number @The size of the bloom effect along the vertical axis.
--- @param Passes number @Determines how much to exaggerate the effect.
--- @param ColorMultiply number @Will multiply the colors of the glowing spots, making them more vivid.
--- @param Red number @How much red to multiply with the glowing color
--- @param Green number @How much green to multiply with the glowing color
--- @param Blue number @How much blue to multiply with the glowing color
function _G.DrawBloom(Darken, Multiply, SizeX, SizeY, Passes, ColorMultiply, Red, Green, Blue)
end

--- Draws the Bokeh Depth Of Field effect .  
--- @param intensity number @Intensity of the effect.
--- @param distance number @**Not worldspace distance**
--- @param focus number @Focus
function _G.DrawBokehDOF(intensity, distance, focus)
end

--- Draws the Color Modify shader, which can be used to adjust colors on screen.  
--- @param modifyParameters table @Color modification parameters
function _G.DrawColorModify(modifyParameters)
end

--- Draws a material overlay on the screen.  
--- @param Material string @This will be the material that is drawn onto the screen.
--- @param RefractAmount number @This will adjust how much the material will refract your screen.
function _G.DrawMaterialOverlay(Material, RefractAmount)
end

--- Creates a motion blur effect by drawing your screen multiple times.  
--- @param AddAlpha number @How much alpha to change per frame.
--- @param DrawAlpha number @How much alpha the frames will have
--- @param Delay number @Determines the amount of time between frames to capture.
function _G.DrawMotionBlur(AddAlpha, DrawAlpha, Delay)
end

--- Draws the sharpen shader, which creates more contrast.  
--- @param Contrast number @How much contrast to create.
--- @param Distance number @How large the contrast effect will be.
function _G.DrawSharpen(Contrast, Distance)
end

--- Draws the sobel shader, which detects edges and draws a black border.  
--- @param Threshold number @Determines the threshold of edges
function _G.DrawSobel(Threshold)
end

--- Renders the post-processing effect of beams of light originating from the map's sun. Utilises the `pp/sunbeams` material.  
--- @param darken number @`$darken` property for sunbeams material.
--- @param multiplier number @`$multiply` property for sunbeams material.
--- @param sunSize number @`$sunsize` property for sunbeams material.
--- @param sunX number @`$sunx` property for sunbeams material.
--- @param sunY number @`$suny` property for sunbeams material.
function _G.DrawSunbeams(darken, multiplier, sunSize, sunX, sunY)
end

--- Draws the texturize shader, which replaces each pixel on your screen with a different part of the texture depending on its brightness. See g_texturize for information on making the texture.  
--- @param Scale number @Scale of the texture
--- @param BaseTexture number @This will be the texture to use in the effect
function _G.DrawTexturize(Scale, BaseTexture)
end

--- Draws the toy town shader, which blurs the top and bottom of your screen. This can make very large objects look like toys, hence the name.  
--- @param Passes number @An integer determining how many times to draw the effect
--- @param Height number @The amount of screen which should be blurred on the top and bottom.
function _G.DrawToyTown(Passes, Height)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You really should be using Entity:ForcePlayerDrop, which does the same thing.  
--- Drops the specified entity if it is being held by any player with Gravity Gun, Physics Gun or `+use` pickup.  
--- See also Player:DropObject and Entity:ForcePlayerDrop.  
--- @param ent GEntity @The entity to drop.
function _G.DropEntityIfHeld(ent)
end

--- Creates or replaces a dynamic light with the given id.  
--- ℹ **NOTE**: Only 32 dlights and 64 elights can be active at once.  
--- ⚠ **WARNING**: It is not safe to hold a reference to this object after creation since its data can be replaced by another dlight at any time.  
--- 🦟 **BUG**: [The minlight parameter affects the world and entities differently.](https://github.com/Facepunch/garrysmod-issues/issues/3798)  
--- @param index number @An unsigned Integer
--- @param elight? boolean @Allocates an elight instead of a dlight
--- @return table @A DynamicLight structured table
function _G.DynamicLight(index, elight)
end

--- Returns a CEffectData object to be used with util.Effect.  
--- 🦟 **BUG**: [This does not create a unique object, but instead returns a shared reference. That means you cannot use two or more of these objects at once.](https://github.com/Facepunch/garrysmod-issues/issues/2771)  
--- @return GCEffectData @The CEffectData object.
function _G.EffectData()
end

--- An [eagerly evaluated](https://en.wikipedia.org/wiki/Eager_evaluation) [ternary operator](https://en.wikipedia.org/wiki/%3F:), or, in layman's terms, a compact "if then else" statement.  
--- In most cases, you should just use Lua's ["pseudo" ternary operator](https://en.wikipedia.org/wiki/%3F:#Lua), like this:  
--- ```  
--- local myCondition = true  
--- local consequent = "myCondition is true"  
--- local alternative = "myCondition is false"  
--- print(myCondition and consequent or alternative)  
--- ```  
--- In the above example, due to [short-circuit evaluation](https://en.wikipedia.org/wiki/Short-circuit_evaluation), `consequent` would be "skipped" and ignored (not evaluated) by Lua due to `myCondition` being `true`, and only `alternative` would be evaluated. However, when using `Either`, both `consequent` and `alternative` would be evaluated. A practical example of this can be found at the bottom of the page.  
--- # Falsey values  
--- If `consequent` is "falsey" (Lua considers both `false` and `nil` as false), this will not work. For example:  
--- ```  
--- local X = true  
--- local Y = false  
--- local Z = "myCondition is false"  
--- print(X and Y or Z)  
--- ```  
--- This will actually print the value of `Z`.  
--- In the above case, and other very rare cases, you may find `Either` useful.  
--- @param condition any @The condition to check if true or false.
--- @param truevar any @If the condition isn't nil/false, returns this value.
--- @param falsevar any @If the condition is nil/false, returns this value.
--- @return any @The result.
function _G.Either(condition, truevar, falsevar)
end

--- Plays a sentence from `scripts/sentences.txt`  
--- @param soundName string @The sound to play
--- @param position GVector @The position to play at
--- @param entity number @The entity to emit the sound from
--- @param channel? number @The sound channel, see Enums/CHAN.
--- @param volume? number @The volume of the sound, from 0 to 1
--- @param soundLevel? number @The sound level of the sound, see Enums/SNDLVL
--- @param soundFlags? number @The flags of the sound, see Enums/SND
--- @param pitch? number @The pitch of the sound, 0-255
function _G.EmitSentence(soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch)
end

--- Emits the specified sound at the specified position. See also Entity:EmitSound if you wish to play sounds on a specific entity.  
--- ℹ **NOTE**: Valid 16 bit sample rates: **11025 Hz, 22050 Hz and 44100 Hz**, otherwise you may see this kind of message:  
--- `Unsupported 32-bit wave file your_sound.wav` and  
--- `Invalid sample rate (48000) for sound 'your_sound.wav'`  
--- @param soundName string @The sound to play
--- @param position GVector @The position where the sound is meant to play, which is also used for a network filter (`CPASAttenuationFilter`) to decide which players wil
--- @param entity? number @The entity to emit the sound from
--- @param channel? ECHAN @The sound channel, see Enums/CHAN.
--- @param volume? number @The volume of the sound, from 0 to 1
--- @param soundLevel? ESNDLVL @The sound level of the sound, see Enums/SNDLVL
--- @param soundFlags? ESND @The flags of the sound, see Enums/SND
--- @param pitch? number @The pitch of the sound, 0-255
--- @param dsp? number @The DSP preset for this sound
--- @param filter? GCRecipientFilter @If set serverside, the sound will only be networked to the clients in the filter.
function _G.EmitSound(soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch, dsp, filter)
end

--- Removes the currently active tool tip from the screen.  
--- @param panel GPanel @This is the panel that has a tool tip.
function _G.EndTooltip(panel)
end

--- Returns the entity with the matching Entity:EntIndex.  
--- Indices `1` through game.MaxPlayers() are always reserved for players.  
--- ℹ **NOTE**: In examples on this wiki, `Entity( 1 )` is used when a player entity is needed (see ). In singleplayer and listen servers, `Entity( 1 )` will always be the first player. In dedicated servers, however, `Entity( 1 )` won't always be a valid player if there is no one currently on the server.  
--- @param entityIndex number @The entity index.
--- @return GEntity @The entity if it exists, or `NULL` if it doesn't.
function _G.Entity(entityIndex)
end

--- Throws an error. This is currently an alias of Global.ErrorNoHalt despite it once throwing a halting error like error without the stack trace appended.  
--- 🦟 **BUG**: [This function throws a non-halting error instead of a halting error.](https://github.com/Facepunch/garrysmod-issues/issues/2113)  
--- @vararg any @Converts all arguments to strings and prints them with no spacing or line breaks.
function _G.Error(...)
end

--- Throws a Lua error but does not break out of the current call stack.  
--- This function will not print a stack trace like a normal error would.  
--- Essentially similar if not equivalent to Global.Msg.  
--- @vararg any @Converts all arguments to strings and prints them with no spacing.
function _G.ErrorNoHalt(...)
end

--- Throws a Lua error but does not break out of the current call stack.  
--- This function will print a stack trace like a normal error would.  
--- @vararg any @Converts all arguments to strings and prints them with no spacing.
function _G.ErrorNoHaltWithStack(...)
end

--- Returns the angles of the current render context as calculated by GM:CalcView.  
--- 🦟 **BUG**: [This function is only reliable inside rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/2516)  
--- @return GAngle @The angle of the currently rendered scene.
function _G.EyeAngles()
end

--- Returns the origin of the current render context as calculated by GM:CalcView.  
--- 🦟 **BUG**: [This function is only reliable inside rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/2516)  
--- @return GVector @Camera position.
function _G.EyePos()
end

--- Returns the normal vector of the current render context as calculated by GM:CalcView, similar to Global.EyeAngles.  
--- 🦟 **BUG**: [This function is only reliable inside rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/2516)  
--- @return GVector @View direction of the currently rendered scene.
function _G.EyeVector()
end

--- Returns the meta table for the class with the matching name.  
--- You can learn more about meta tables on the Meta Tables page.  
--- You can find a list of meta tables that can be retrieved with this function on Enums/TYPE. The name in the description is the string to use with this function.  
--- Custom meta tables should be registered via Global.RegisterMetaTable.  
--- @param metaName string @The object type to retrieve the meta table of.
--- @return table|nil @The corresponding meta table or `nil` if it doesn't exist.
function _G.FindMetaTable(metaName)
end

--- Returns the tool-tip text and tool-tip-panel (if any) of the given panel as well as itself  
--- @param panel GPanel @Panel to find tool-tip of
--- @return string @tool-tip text
--- @return GPanel @tool-tip panel
--- @return GPanel @panel that the function was called with
function _G.FindTooltip(panel)
end

--- Formats the specified values into the string given. Same as string.format.  
--- @param format string @The string to be formatted
--- @vararg any @Values to be formatted into the string.
--- @return string @The formatted string
function _G.Format(format, ...)
end

--- Returns the number of frames rendered since the game was launched.  
function _G.FrameNumber()
end

--- Returns the Global.CurTime-based time in seconds it took to render the last frame.  
--- This should be used for frame/tick based timing, such as movement prediction or animations.  
--- For real-time-based frame time that isn't affected by `host_timescale`, use Global.RealFrameTime. RealFrameTime is more suited for things like GUIs or HUDs.  
--- @return number @time (in seconds)
function _G.FrameTime()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: This function is only available locally and cannot be used outside the gameprops.lua file.  
--- This function adds all models from a specified folder to a custom Spawnlist category. Internally uses Global.AddPropsOfParent  
--- ⚠ **WARNING**: Using this function before SANDBOX:PopulateContent has been called will result in an error  
--- @param folder string @the folder to search for models
--- @param path string @The path to look for the files and directories in
--- @param name string @The Spawnmenu Category name
--- @param icon? string @The Spawnmenu Category Icon to use
--- @param appid? number @The AppID which is needed for the Content
function _G.GenerateSpawnlistFromPath(folder, path, name, icon, appid)
end

--- Gets the ConVar with the specified name.  
--- ℹ **NOTE**: This function uses Global.GetConVar_Internal internally, but caches the result in Lua for quicker lookups.  
--- @param name string @Name of the ConVar to get
--- @return GConVar @The ConVar object, or nil if no such ConVar was found.
function _G.GetConVar(name)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Store the ConVar object retrieved with Global.GetConVar and call ConVar:GetInt or ConVar:GetFloat on it.  
--- Gets the numeric value ConVar with the specified name.  
--- @param name string @Name of the ConVar to get.
--- @return number @The ConVar's value.
function _G.GetConVarNumber(name)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Store the ConVar object retrieved with Global.GetConVar and call ConVar:GetString on it.  
--- Gets the string value ConVar with the specified name.  
--- @param name string @Name of the ConVar to get.
--- @return string @The ConVar's value.
function _G.GetConVarString(name)
end

--- Returns an angle that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? GAngle @The value to return if the global value is not set.
--- @return GAngle @The global value, or default if the global is not set.
function _G.GetGlobal2Angle(index, default)
end

--- Returns a boolean that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? boolean @The value to return if the global value is not set.
--- @return boolean @The global value, or the default if the global value is not set.
function _G.GetGlobal2Bool(index, default)
end

--- Returns an entity that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? GEntity @The value to return if the global value is not set.
--- @return GEntity @The global value, or the default if the global value is not set.
function _G.GetGlobal2Entity(index, default)
end

--- Returns a float that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? number @The value to return if the global value is not set.
--- @return number @The global value, or the default if the global value is not set.
function _G.GetGlobal2Float(index, default)
end

--- Returns an integer that is shared between the server and all clients.  
--- ⚠ **WARNING**: The integer has a 32 bit limit. Use Global.GetGlobalInt for a higher limit  
--- @param index string @The unique index to identify the global value with.
--- @param default? number @The value to return if the global value is not set.
--- @return number @The global value, or the default if the global value is not set.
function _G.GetGlobal2Int(index, default)
end

--- Returns a string that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? string @The value to return if the global value is not set.
--- @return string @The global value, or the default if the global value is not set.
function _G.GetGlobal2String(index, default)
end

--- Returns a value that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? any @The value to return if the global value is not set.
--- @return any @The global value, or the default if the global value is not set.
function _G.GetGlobal2Var(index, default)
end

--- Returns a vector that is shared between the server and all clients.  
--- @param Index string @The unique index to identify the global value with.
--- @param Default GVector @The value to return if the global value is not set.
--- @return GVector @The global value, or the default if the global value is not set.
function _G.GetGlobal2Vector(Index, Default)
end

--- Returns an angle that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default GAngle @The value to return if the global value is not set.
--- @return GAngle @The global value, or default if the global is not set.
function _G.GetGlobalAngle(index, default)
end

--- Returns a boolean that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? boolean @The value to return if the global value is not set.
--- @return boolean @The global value, or the default if the global value is not set.
function _G.GetGlobalBool(index, default)
end

--- Returns an entity that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? GEntity @The value to return if the global value is not set.
--- @return GEntity @The global value, or the default if the global value is not set.
function _G.GetGlobalEntity(index, default)
end

--- Returns a float that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? number @The value to return if the global value is not set.
--- @return number @The global value, or the default if the global value is not set.
function _G.GetGlobalFloat(index, default)
end

--- Returns an integer that is shared between the server and all clients.  
--- 🦟 **BUG**: [This function will not round decimal values as it actually networks a float internally.](https://github.com/Facepunch/garrysmod-issues/issues/3374)  
--- @param index string @The unique index to identify the global value with.
--- @param default? number @The value to return if the global value is not set.
--- @return number @The global value, or the default if the global value is not set.
function _G.GetGlobalInt(index, default)
end

--- Returns a string that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? string @The value to return if the global value is not set.
--- @return string @The global value, or the default if the global value is not set.
function _G.GetGlobalString(index, default)
end

--- Returns a value that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? any @The value to return if the global value is not set.
--- @return any @The global value, or the default if the global value is not set.
function _G.GetGlobalVar(index, default)
end

--- Returns a vector that is shared between the server and all clients.  
--- @param Index string @The unique index to identify the global value with.
--- @param Default GVector @The value to return if the global value is not set.
--- @return GVector @The global value, or the default if the global value is not set.
function _G.GetGlobalVector(Index, Default)
end

--- Returns the panel that is used as a wrapper for the HUD. If you want your panel to be hidden when the main menu is opened, parent it to this. Child panels will also have their controls disabled.  
--- See also vgui.GetWorldPanel  
--- @return GPanel @The HUD panel
function _G.GetHUDPanel()
end

--- Returns the name of the current server.  
--- ℹ **NOTE**: GetHostName returns information from ConVar hostname  
--- @return string @The name of the server.
function _G.GetHostName()
end

--- Returns the player whose movement commands are currently being processed. The player this returns can safely have Player:GetCurrentCommand() called on them. See Prediction.  
--- @return GPlayer @The player currently being predicted, or NULL if no command processing is currently being done.
function _G.GetPredictionPlayer()
end

--- Creates or gets the rendertarget with the given name.  
--- See Global.GetRenderTargetEx for an advanced version of this function with more options.  
--- 🦟 **BUG**: [This crashes when used on a cubemap texture.](https://github.com/Facepunch/garrysmod-issues/issues/2885)  
--- ⚠ **WARNING**: Rendertargets are not garbage-collected, which means they will remain in memory until you disconnect. So make sure to avoid creating new ones unecessarily and re-use as many of your existing rendertargets as possible to avoid filling up all your memory.  
--- ⚠ **WARNING**: Drawing rendertargets on themself can produce odd and unexpected results.  
--- ℹ **NOTE**: Calling this function is equivalent to  
--- ```lua  
--- GetRenderTargetEx(name,  
--- width, height,  
--- RT_SIZE_NO_CHANGE,  
--- MATERIAL_RT_DEPTH_SEPARATE,  
--- bit.bor(2, 256),  
--- 0,  
--- IMAGE_FORMAT_BGRA8888  
--- )  
--- ```  
--- @param name string @The internal name of the render target.
--- @param width number @The width of the render target, must be power of 2
--- @param height number @The height of the render target, must be power of 2
--- @return GITexture @The render target
function _G.GetRenderTarget(name, width, height)
end

--- Gets (or creates if it does not exist) the rendertarget with the given name, this function allows to adjust the creation of a rendertarget more than Global.GetRenderTarget.  
--- See also render.PushRenderTarget and render.SetRenderTarget.  
--- @param name string @The internal name of the render target
--- @param width number @The width of the render target, must be power of 2.
--- @param height number @The height of the render target, must be power of 2.
--- @param sizeMode ERT_SIZE @Bitflag that influences the sizing of the render target, see Enums/RT_SIZE.
--- @param depthMode EMATERIAL_RT_DEPTH @Bitflag that determines the depth buffer usage of the render target Enums/MATERIAL_RT_DEPTH
--- @param textureFlags ETEXTUREFLAGS @Bitflag that configures the texture, see Enums/TEXTUREFLAGS
--- @param rtFlags ECREATERENDERTARGETFLAGS @Flags that control the HDR behaviour of the render target, see Enums/CREATERENDERTARGETFLAGS.
--- @param imageFormat number @Image format, see Enums/IMAGE_FORMAT
--- @return GITexture @The new render target.
function _G.GetRenderTargetEx(name, width, height, sizeMode, depthMode, textureFlags, rtFlags, imageFormat)
end

--- Returns if the client is timing out, and time since last ping from the server. Similar to the server side Player:IsTimingOut.  
--- @return boolean @Is timing out?
--- @return number @Get time since last pinged received.
function _G.GetTimeoutInfo()
end

--- Returns the entity the client is using to see from (such as the player itself, the camera, or another entity).  
--- @return GEntity @The view entity.
function _G.GetViewEntity()
end

--- Converts a color from [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a Color.  
--- @param hue number @The hue in degrees from 0-360.
--- @param saturation number @The saturation from 0-1.
--- @param lightness number @The lightness from 0-1.
--- @return table @The Color created from the HSL color space.
function _G.HSLToColor(hue, saturation, lightness)
end

--- Converts a color from [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a Color.  
--- @param hue number @The hue in degrees from 0-360.
--- @param saturation number @The saturation from 0-1.
--- @param value number @The value from 0-1.
--- @return table @The Color created from the HSV color space.
function _G.HSVToColor(hue, saturation, value)
end

--- Launches an asynchronous http request with the given parameters.  
--- 🦟 **BUG**: [This cannot send or receive multiple headers with the same name.](https://github.com/Facepunch/garrysmod-issues/issues/2232)  
--- ℹ **NOTE**: HTTP-requests that respond with a large body may return an `unsuccessful` error. Try using the [Range](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Range) header to download the file in chunks.  
--- ℹ **NOTE**: HTTP-requests to destinations on private networks (such as `192.168.0.1`, or `127.0.0.1`) won't work.  
--- To enable HTTP-requests to destinations on private networks use Command Line Parameters `-allowlocalhttp`. (Dedicated servers only)  
--- @param parameters SHTTPRequest @The request parameters
--- @return boolean @`true` if a request is queued, `false` if a request could not be queued
function _G.HTTP(parameters)
end

--- Converts a color from [HWB color space](https://en.wikipedia.org/wiki/HWB_color_model) (Hue-Whiteness-Blackness) into RGB color space and returns a Color.  
--- @param hue number @The hue of the color in degrees from 0-360.
--- @param whiteness number @The whiteness of the color from 0-1.
--- @param blackness number @The blackness of the color from 0-1.
--- @return GColor @The Color created from the HWB color space.
function _G.HWBToColor(hue, whiteness, blackness)
end

--- Converts a hexadecimal representation of a color to Color object.  
--- @param hue string @A hex formatted color
--- @return GColor @The Color created from the hexadecimal color code.
function _G.HexToColor(hue)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: To send the target file to the client simply call AddCSLuaFile() in the target file itself.  
--- This function works exactly the same as Global.include both clientside and serverside.  
--- The only difference is that on the serverside it also calls Global.AddCSLuaFile on the filename, so that it gets sent to the client.  
--- @param filename string @The filename of the Lua file you want to include.
--- @return any @Anything that the executed Lua script returns.
function _G.IncludeCS(filename)
end

--- Returns whether the given object does or doesn't have a `metatable` of a color.  
--- @param Object any @The object to be tested
--- @return boolean @Whether the given object is a color or not
function _G.IsColor(Object)
end

--- Returns if the given NPC class name is an enemy. Returns `true` if the entity name is one of the following:  
--- * `monster_alien_grunt`  
--- * `monster_nihilanth`  
--- * `monster_tentacle`  
--- * `monster_alien_slave`  
--- * `monster_bigmomma`  
--- * `monster_bullchicken`  
--- * `monster_gargantua`  
--- * `monster_human_assassin`  
--- * `monster_babycrab`  
--- * `monster_human_grunt`  
--- * `monster_cockroach`  
--- * `monster_houndeye`  
--- * `monster_zombie`  
--- * `monster_headcrab`  
--- * `monster_alien_controller`  
--- * `monster_turret`  
--- * `monster_miniturret`  
--- * `monster_sentry`  
--- * `npc_antlion`  
--- * `npc_antlionguard`  
--- * `npc_antlionguardian`  
--- * `npc_barnacle`  
--- * `npc_breen`  
--- * `npc_clawscanner`  
--- * `npc_combine_s`  
--- * `npc_cscanner`  
--- * `npc_fastzombie`  
--- * `npc_fastzombie_torso`  
--- * `npc_headcrab`  
--- * `npc_headcrab_fast`  
--- * `npc_headcrab_poison`  
--- * `npc_hunter`  
--- * `npc_metropolice`  
--- * `npc_manhack`  
--- * `npc_poisonzombie`  
--- * `npc_strider`  
--- * `npc_stalker`  
--- * `npc_zombie`  
--- * `npc_zombie_torso`  
--- * `npc_zombine`  
--- * `npc_combine_camera`  
--- * `npc_turret_ceiling`  
--- * `npc_combinedropship`  
--- * `npc_combinegunship`  
--- * `npc_helicopter`  
--- * `npc_turret_floor`  
--- * `npc_antlion_worker`  
--- * `npc_headcrab_black`  
--- @param className string @Class name of the entity to check.
--- @return boolean @Is an enemy?
function _G.IsEnemyEntityName(className)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use the function Global.isentity instead.  
--- Identical to Global.isentity.  
function _G.IsEntity()
end

--- Returns if this is the first time this hook was predicted.  
--- This is useful for one-time logic in your SWEPs PrimaryAttack, SecondaryAttack and Reload and other  (to prevent those hooks from being called rapidly in succession). It's also useful in a Move hook for when the client predicts movement.  
--- Visit Prediction for more information about this behavior.  
--- ℹ **NOTE**: This is already used internally for Entity:EmitSound, Weapon:SendWeaponAnim and Entity:FireBullets, but NOT in  util.Effect.  
--- @return boolean @Whether or not this is the first time being predicted.
function _G.IsFirstTimePredicted()
end

--- Returns if the given NPC class name is a friend. Returns `true` if the entity name is one of the following:  
--- * `monster_scientist`  
--- * `monster_barney`  
--- * `npc_alyx`  
--- * `npc_barney`  
--- * `npc_citizen`  
--- * `npc_dog`  
--- * `npc_eli`  
--- * `npc_fisherman`  
--- * `npc_gman`  
--- * `npc_kleiner`  
--- * `npc_magnusson`  
--- * `npc_monk`  
--- * `npc_mossman`  
--- * `npc_odessa`  
--- * `npc_vortigaunt`  
--- @param className string @Class name of the entity to check
--- @return boolean @Is a friend
function _G.IsFriendEntityName(className)
end

--- Checks whether or not a game is currently mounted. Uses data given by engine.GetGames.  
--- @param game string @The game string/app ID to check.
--- @return boolean @True if the game is mounted.
function _G.IsMounted(game)
end

--- Returns whether or not every element within a table is a valid entity  
--- @param table table @Table containing entities to check
--- @return boolean @All entities valid
function _G.IsTableOfEntitiesValid(table)
end

--- Returns whether or not a model is useless by checking that the file path is that of a proper model.  
--- If the string ".mdl" is not found in the model name, the function will return true.  
--- The function will also return true if any of the following strings are found in the given model name:  
--- * "_gesture"  
--- * "_anim"  
--- * "_gst"  
--- * "_pst"  
--- * "_shd"  
--- * "_ss"  
--- * "_posture"  
--- * "_anm"  
--- * "ghostanim"  
--- * "_paths"  
--- * "_shared"  
--- * "anim_"  
--- * "gestures_"  
--- * "shared_ragdoll_"  
--- @param modelName string @The model name to be checked
--- @return boolean @Whether or not the model is useless
function _G.IsUselessModel(modelName)
end

--- Returns whether an object is valid or not. (Such as entities, Panels, custom table objects and more).  
--- Checks that an object is not nil, has an `IsValid` method and if this method returns `true`. If the object has no `IsValid` method, it will return `false`.  
--- ℹ **NOTE**: If you are sure that the object you are about to check is not `nil` and has the `IsValid` method, it would be more faster to call it directly rather than using `IsValid`.  
--- ℹ **NOTE**: Due to vehicles being technically valid the moment they're spawned, also use Vehicle:IsValidVehicle to make sure they're fully initialized.  
--- @param toBeValidated any @The table or object to be validated.
--- @return boolean @True if the object is valid.
function _G.IsValid(toBeValidated)
end

--- Adds javascript function 'language.Update' to an HTML panel as a method to call Lua's language.GetPhrase function.  
--- @param htmlPanel GPanel @Panel to add javascript function 'language.Update' to.
function _G.JS_Language(htmlPanel)
end

--- Adds javascript function 'util.MotionSensorAvailable' to an HTML panel as a method to call Lua's motionsensor.IsAvailable function.  
--- @param htmlPanel GPanel @Panel to add javascript function 'util.MotionSensorAvailable' to.
function _G.JS_Utility(htmlPanel)
end

--- Adds workshop related javascript functions to an HTML panel, used by the "Dupes" and "Saves" tabs in the spawnmenu.  
--- @param htmlPanel GPanel @Panel to add javascript functions to.
function _G.JS_Workshop(htmlPanel)
end

--- Convenience function that creates a DLabel, sets the text, and returns it  
--- @param text string @The string to set the label's text to
--- @param parent? GPanel @Optional
--- @return GPanel @The created DLabel
function _G.Label(text, parent)
end

--- Performs a linear interpolation from the start number to the end number.  
--- This function provides a very efficient and easy way to smooth out movements.  
--- See also math.ease for functions that allow to have non linear animations using linear interpolation.  
--- ℹ **NOTE**: This function is not meant to be used with constant value in the first argument if you're dealing with animation! Use a value that changes over time. See example for **proper** usage of Lerp for animations.  
--- @param t number @The fraction for finding the result
--- @param from number @The starting number
--- @param to number @The ending number
--- @return number @The result of the linear interpolation, `from + (to - from) * t`.
function _G.Lerp(t, from, to)
end

--- Returns point between first and second angle using given fraction and linear interpolation  
--- ℹ **NOTE**: This function is not meant to be used with constant value in the first argument, if you're dealing with animation! Use a value that changes over time  
--- @param ratio number @Ratio of progress through values
--- @param angleStart GAngle @Angle to begin from
--- @param angleEnd GAngle @Angle to end at
--- @return GAngle @angle
function _G.LerpAngle(ratio, angleStart, angleEnd)
end

--- Linear interpolation between two vectors. It is commonly used to smooth movement between two vectors  
--- ℹ **NOTE**: This function is not meant to be used with constant value in the first argument, if you're dealing with animation! Use a value that changes over time  
--- @param fraction number @Fraction ranging from 0 to 1
--- @param from GVector @The initial Vector
--- @param to GVector @The desired Vector
--- @return GVector @The lerped vector.
function _G.LerpVector(fraction, from, to)
end

--- Loads all preset settings for the presets and returns them in a table  
--- @return table @Preset data
function _G.LoadPresets()
end

--- Returns the player object of the current client.  
--- ℹ **NOTE**: LocalPlayer() will return NULL until all entities have been initialized. See GM:InitPostEntity.  
--- @return GPlayer @The player object representing the client.
function _G.LocalPlayer()
end

--- Translates a vector and angle from a local coordinate system into a global coordinate system.  
--- For the reverse of this function see Global.WorldToLocal.  
--- For working with an entity's local space vectors/angles you might consider using Entity:LocalToWorld/Entity:LocalToWorldAngles instead.  
--- @param localPos GVector @A vector from a local coordinate system.
--- @param localAng GAngle @An angle from a local coordinate system
--- @param originPos GVector @The origin of a global coordinate system, in worldspace coordinates.
--- @param originAngle GAngle @The angles of a global coordinate system, as a worldspace angle.
--- @return GVector @The corresponding worldspace vector to `localPos`.
--- @return GAngle @The corresponding worldspace angle to `localAng`.
function _G.LocalToWorld(localPos, localAng, originPos, originAngle)
end

--- Returns a localisation for the given token, if none is found it will return the default (second) parameter.  
--- @deprecated  
--- 🛑 **DEPRECATED**: Use language.GetPhrase instead.  
--- @param localisationToken string @The token to find a translation for.
--- @param default string @The default value to be returned if no translation was found.
--- @return string @The localized string, 128 char limit.
function _G.Localize(localisationToken, default)
end

--- Returns the main view angles, as they were at the start of the latest main view render.  
--- This is a good alternative to Global.EyeAngles which is affected by other rendering operations, including render.RenderView.  
--- @return GAngle @The angles of the main view.
function _G.MainEyeAngles()
end

--- Returns the origin of the main view, as it was at the start of the latest main view render.  
--- This is a good alternative to Global.EyePos which is affected by other rendering operations, including render.RenderView.  
--- @return GVector @Main camera position.
function _G.MainEyePos()
end

--- Either returns the material with the given name, or loads the material interpreting the first argument as the path.  
--- ## .png, .jpg and other image formats  
--- This function is capable to loading `.png` or `.jpg` images, generating a texture and material for them on the fly.  
--- PNG, JPEG, GIF, and TGA files will work, but only if they have the `.png` or `.jpg` file extensions (even if the actual image format doesn't match the file extension)  
--- Use Global.AddonMaterial for image files with the `.cache` file extension. (from steamworks.Download)  
--- While images are no longer scaled to Power of 2 (sizes of 8, 16, 32, 64, 128, etc.) sizes since February 2019, it is still a good practice for things like icons, etc.  
--- ⚠ **WARNING**: Server-side, this function can consistently return an invalid material (with '__error') depending on the file type loaded.  
--- ⚠ **WARNING**: This function is very expensive when used in rendering hooks or in operations requiring very frequent calls. It is a good idea to cache the material in a variable (like in the examples).  
--- @param materialName string @The material name or path relative to the `materials/` folder
--- @param pngParameters? string @A string containing space separated keywords which will be used to add material parameters
--- @return GIMaterial @Generated material.
--- @return number @How long it took for the function to run.
function _G.Material(materialName, pngParameters)
end

--- Returns a VMatrix object, a 4x4 matrix.  
--- @param data? table @Initial data to initialize the matrix with
--- @return GVMatrix @New matrix.
function _G.Matrix(data)
end

--- Returns a new static mesh object.  
--- @param mat? GIMaterial @The material the mesh is intended to be rendered with
--- @return GIMesh @The created object.
function _G.Mesh(mat)
end

--- Runs util.PrecacheModel and returns the string.  
--- @param model string @The model to precache.
--- @return string @The same string entered as an argument.
function _G.Model(model)
end

--- Writes every given argument to the console. Limitations of Global.print apply.  
--- Automatically attempts to convert each argument to a string. (See Global.tostring)  
--- Unlike Global.print, arguments are not separated by anything. They are simply concatenated.  
--- Additionally, a newline isn't added automatically to the end, so subsequent Msg or print operations will continue the same line of text in the console. See Global.MsgN for a version that does add a newline.  
--- The text is blue on the server, orange on the client, and green on the menu:   
--- @vararg any @List of values to print.
function _G.Msg(...)
end

--- Works exactly like Global.Msg except that, if called on the server, will print to all players consoles plus the server console. Limitations of Global.print apply.  
--- @vararg any @List of values to print.
function _G.MsgAll(...)
end

--- Just like Global.Msg, except it can also print colored text, just like chat.AddText.  
--- @vararg any @Values to print
function _G.MsgC(...)
end

--- Same as Global.print, except it concatinates the arguments without inserting any whitespace in between them.  
--- See also Global.Msg, which doesn't add a newline (`"\n"`) at the end.  
--- @vararg any @List of values to print
function _G.MsgN(...)
end

--- Returns named color defined in `resource/ClientScheme.res`.  
--- @param name string @Name of color
--- @return table @A Color or nil
function _G.NamedColor(name)
end

--- Returns the amount of skins the specified model has.  
--- See also Entity:SkinCount if you have an entity.  
--- @param modelName string @Model to return amount of skins of
--- @return number @Amount of skins
function _G.NumModelSkins(modelName)
end

--- Modifies the given vectors so that all of vector2's axis are larger than vector1's by switching them around. Also known as ordering vectors.  
--- ℹ **NOTE**: This function will irreversibly modify the given vectors  
--- @param vector1 GVector @Bounding box min resultant
--- @param vector2 GVector @Bounding box max resultant
function _G.OrderVectors(vector1, vector2)
end

--- Calls game.AddParticles and returns given string.  
--- @param file string @The particle file.
--- @return string @The particle file.
function _G.Particle(file)
end

--- Creates a particle effect. See also Global.CreateParticleSystem.  
--- ℹ **NOTE**: The particle effect must be precached **serverside** with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param particleName string @The name of the particle effect.
--- @param position GVector @The start position of Control Point 0 for the particle system.
--- @param angles GAngle @The orientation of Control Point 0 for the particle system
--- @param parent? GEntity @If set, the particle will be parented to the entity.
function _G.ParticleEffect(particleName, position, angles, parent)
end

--- Creates a particle effect with specialized parameters. See also Entity:CreateParticleEffect and Global.CreateParticleSystem.  
--- ℹ **NOTE**: The particle effect must be precached **serverside** with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param particleName string @The name of the particle effect.
--- @param attachType number @Attachment type using Enums/PATTACH.
--- @param entity GEntity @The entity to be used in the way specified by the attachType.
--- @param attachmentID number @The id of the attachment to be used in the way specified by the attachType.
function _G.ParticleEffectAttach(particleName, attachType, entity, attachmentID)
end

--- Creates a new CLuaEmitter.  
--- ℹ **NOTE**: Do not forget to delete the emitter with CLuaEmitter:Finish once you are done with it  
--- ⚠ **WARNING**: There is a limit of 4097 emitters that can be active at once, exceeding this limit will throw a non-halting error in console!  
--- @param position GVector @The start position of the emitter
--- @param use3D? boolean @Whenever to render the particles in 2D or 3D mode
--- @return GCLuaEmitter @The new particle emitter.
function _G.ParticleEmitter(position, use3D)
end

--- Creates a path for the bot to follow using one of two types (`Follow` or `Chase`)  
--- `Follow` is a general purpose path. Best used for static or infrequently updated locations. The path will only be updated once PathFollower:Update is called. This needs to be done manually (typically inside the bots `BehaveThread` coroutine.  
--- `Chase` is a specifically optimized for chasing a moving entity. Paths of this type will use PathFollower:Chase  
--- @param type string @The type of the path to create, must be `"Follow"` or `"Chase"`
--- @return GPathFollower @The path
function _G.Path(type)
end

--- Returns the player with the matching Player:UserID.  
--- For a function that returns a player based on their Entity:EntIndex, see Global.Entity.  
--- For a function that returns a player based on their connection ID, see player.GetByID.  
--- @param playerIndex number @The player index.
--- @return GPlayer @The retrieved player.
function _G.Player(playerIndex)
end

--- Moves the given model to the given position and calculates appropriate camera parameters for rendering the model to an icon.  
--- The output table interacts nicely with Panel:RebuildSpawnIconEx with a few key renames.  
--- @param model GEntity @Model that is being rendered to the spawn icon
--- @param position GVector @Position that the model is being rendered at
--- @param noAngles boolean @If true the function won't reset the angles to 0 for the model.
--- @return table @Table of information of the view which can be used for rendering
function _G.PositionSpawnIcon(model, position, noAngles)
end

--- Precaches a particle system with the specified name. The particle system must come from a file that is loaded with game.AddParticles beforehand.  
--- When used on the server, it automatically precaches the particle on client.  
--- ⚠ **WARNING**: There is a limit of 4096 precached particles on the server. So only precache particles that are actually going to be used.  
--- @param particleSystemName string @The name of the particle system.
function _G.PrecacheParticleSystem(particleSystemName)
end

--- Precaches a scene file.  
--- @param scene string @Path to the scene file to precache.
function _G.PrecacheScene(scene)
end

--- Load and precache a custom sentence file.  
--- @param filename string @The path to the custom sentences.txt.
function _G.PrecacheSentenceFile(filename)
end

--- Precache a sentence group in a sentences.txt definition file.  
--- @param group string @The group to precache.
function _G.PrecacheSentenceGroup(group)
end

--- Displays a message in the chat, console, or center of screen of every player.  
--- This uses the archaic user message system (umsg) and hence is limited to 255 characters.  
--- @param type number @Which type of message should be sent to the players (see Enums/HUD)
--- @param message string @Message to be sent to the players
function _G.PrintMessage(type, message)
end

--- Recursively prints the contents of a table to the console.  
--- The table keys will be sorted alphabetically or numerically when printed to the console.  
--- @param tableToPrint table @The table to be printed
--- @param indent? number @Number of tabs to start indenting at
--- @param done? table @Internal argument, you shouldn't normally change this
function _G.PrintTable(tableToPrint, indent, done)
end

--- Creates a new ProjectedTexture.  
--- @return GProjectedTexture @Newly created projected texture.
function _G.ProjectedTexture()
end

--- Runs a function without stopping the whole script on error.  
--- This function is similar to Global.pcall and Global.xpcall except the errors are still printed and sent to the error handler (i.e. sent to server console if clientside and GM:OnLuaError called).  
--- @param func function @Function to run
--- @vararg any @Arguments to call the function with.
--- @return boolean @Whether the function executed successfully or not
function _G.ProtectedCall(func, ...)
end

--- Returns an iterator function that can be used to loop through a table in random order  
--- @param table table @Table to create iterator for
--- @param descending? boolean @Whether the iterator should iterate descending or not
--- @return function @Iterator function
function _G.RandomPairs(table, descending)
end

--- Returns the real frame-time which is unaffected by host_timescale. To be used for GUI effects (for example)  
--- ℹ **NOTE**: The returned number is clamped between `0` and `0.1`.  
--- @return number @Real frame time
function _G.RealFrameTime()
end

--- Returns the uptime of the game/server in seconds (to at least **4** decimal places). This value updates itself once every time the realm thinks. For servers, this is the server tickrate. For clients, its their current FPS.  
--- ℹ **NOTE**: This is **not** synchronised or affected by the game.  
--- This will be affected by precision loss if the uptime is more than 30+(?) days, and effectively cease to be functional after 50+(?) days.  
--- Changing the map will **not** fix it like it does with Global.CurTime. A server restart is necessary.  
--- You should use this function (or Global.SysTime) for timing real-world events such as user interaction, but not for timing game events such as animations.  
--- See also: Global.CurTime, Global.SysTime  
--- @return number @Uptime of the game/server.
function _G.RealTime()
end

--- Creates a new CRecipientFilter.  
--- @param unreliable? boolean @If set to true, makes the filter unreliable
--- @return GCRecipientFilter @The new created recipient filter.
function _G.RecipientFilter(unreliable)
end

--- Registers a Derma element to be closed the next time Global.CloseDermaMenus is called  
--- @param menu GPanel @Menu to be registered for closure
function _G.RegisterDermaMenuForClose(menu)
end

--- Registers a given table as a metatable. It can then be accessed by other code/addons via Global.FindMetaTable.  
--- @param metaName string @The new metatable name
--- @param metaTable table @The new metatable table
function _G.RegisterMetaTable(metaName, metaTable)
end

--- Saves position of your cursor on screen. You can restore it by using Global.RestoreCursorPosition. This is used internally by the spawn menu/context menu  
function _G.RememberCursorPosition()
end

--- Does the removing of the tooltip panel. Called by Global.EndTooltip.  
function _G.RemoveTooltip()
end

--- Returns the angle that the clients view is being rendered at. Returns `angles` from the return value of render.GetViewSetup.  
--- See also Global.EyeAngles.  
--- @return GAngle @Render Angles
function _G.RenderAngles()
end

--- Renders a Depth of Field effect  
--- @param origin GVector @Origin to render the effect at
--- @param angle GAngle @Angle to render the effect at
--- @param usableFocusPoint GVector @Point to focus the effect at
--- @param angleSize number @Angle size of the effect
--- @param radialSteps number @Amount of radial steps to render the effect with
--- @param passes number @Amount of render passes
--- @param spin boolean @Whether to cycle the frame or not
--- @param inView table @Table of view data
--- @param fov number @FOV to render the effect with
function _G.RenderDoF(origin, angle, usableFocusPoint, angleSize, radialSteps, passes, spin, inView, fov)
end

--- Renders the stereoscopic post-process effect  
--- @param viewOrigin GVector @Origin to render the effect at
--- @param viewAngles GAngle @Angles to render the effect at
function _G.RenderStereoscopy(viewOrigin, viewAngles)
end

--- Renders the Super Depth of Field post-process effect  
--- @param viewOrigin GVector @Origin to render the effect at
--- @param viewAngles GAngle @Angles to render the effect at
--- @param viewFOV number @Field of View to render the effect at
function _G.RenderSuperDoF(viewOrigin, viewAngles, viewFOV)
end

--- Restores position of your cursor on screen. You can save it by using Global.RememberCursorPosition.  
function _G.RestoreCursorPosition()
end

--- Executes the given console command with the parameters.  
--- ℹ **NOTE**: Some commands/convars are blocked from being ran/changed using this function, usually to prevent harm/annoyance to clients. For a list of blocked commands, see Blocked ConCommands.  
--- @param command string @The command to be executed.
--- @vararg any @The arguments
function _G.RunConsoleCommand(command, ...)
end

--- Evaluates and executes the given code, will throw an error on failure.  
--- ℹ **NOTE**: Local variables are not passed to the given code.  
--- @param code string @The code to execute.
--- @param identifier? string @The name that should appear in any error messages caused by this code.
--- @param handleError? boolean @If false, this function will return a string containing any error messages instead of throwing an error.
--- @return string @If handleError is false, the error message (if any).
function _G.RunString(code, identifier, handleError)
end

--- Alias of Global.RunString.  
--- @deprecated  
--- 🛑 **DEPRECATED**: Use Global.RunString instead.  
function _G.RunStringEx()
end

--- Returns the input value in an escaped form so that it can safely be used inside of queries. The returned value is surrounded by quotes unless `noQuotes` is true. Alias of sql.SQLStr.  
--- ⚠ **WARNING**: Do not use this function with external database engines such as `MySQL`. `MySQL` and `SQLite` use different escape sequences that are incompatible with each other! Escaping strings with inadequate functions is dangerous and will lead to SQL injection vulnerabilities.  
--- @param input string @String to be escaped
--- @param noQuotes? boolean @Set this as `true`, and the function will not wrap the input string in apostrophes.
--- @return string @Escaped input
function _G.SQLStr(input, noQuotes)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Global.ScreenScale instead.  
--- Returns a number based on the Size argument and your screen's width. Alias of Global.ScreenScale.  
--- @param Size number @The number you want to scale.
function _G.SScale(Size)
end

--- Returns the ordinal suffix of a given number.  
--- @param number number @The number to find the ordinal suffix of.
--- @return string @suffix
function _G.STNDRD(number)
end

--- Removes the given entity unless it is a player or the world entity  
--- @param ent GEntity @Entity to safely remove.
function _G.SafeRemoveEntity(ent)
end

--- Removes entity after delay using Global.SafeRemoveEntity  
--- @param entity GEntity @Entity to be removed
--- @param delay number @Delay for entity removal in seconds
function _G.SafeRemoveEntityDelayed(entity, delay)
end

--- Overwrites all presets with the supplied table. Used by the presets for preset saving  
--- @param presets table @Presets to be saved
function _G.SavePresets(presets)
end

--- Gets the height of the game's window (in pixels).  
--- ℹ **NOTE**: ScrH() returns the height from the current viewport, this can be changed via render.SetViewPort, inside Render Targets and cam.Start contexts.  
--- @return number @The height of the game's window in pixels
function _G.ScrH()
end

--- Gets the width of the game's window (in pixels).  
--- ℹ **NOTE**: ScrW() returns the width from the current viewport, this can be changed via render.SetViewPort, inside Render Targets and cam.Start contexts.  
--- @return number @The width of the game's window in pixels
function _G.ScrW()
end

--- Returns a number based on the `size` argument and the players' screen width. This is used to scale user interface (UI) elements to be consistently sized and positioned across all screen resolutions.  
--- The width is scaled in relation to `640x480` resolution, and does **not** take into account non the aspect ratio. See example below for how to adjust or that.  
--- This function can also be used for scaling font sizes.  
--- See Global.ScreenScaleH for a function that scales from height.  
--- @param size number @The position or size you want to scale within 640 pixel wide screen.
--- @return number @The scaled number based on the player's screen width.
function _G.ScreenScale(size)
end

--- Returns a number based on the `size` argument and players' screen height. The height is scaled in relation to `640x480` resolution.  This function is primarily used for scaling font sizes.  
--- See Global.ScreenScale for a function that scales from width.  
--- @param size number @The number you want to scale.
--- @return number @The scaled number based on your screen's height.
function _G.ScreenScaleH(size)
end

--- Send a usermessage  
--- @deprecated  
--- 🛑 **DEPRECATED**: This uses the umsg internally, which has been deprecated. Use the net instead.  
--- ℹ **NOTE**: This does nothing clientside.  
--- @param name string @The name of the usermessage
--- @param recipients any @Can be a CRecipientFilter, table or Player object.
--- @vararg any @Data to send in the usermessage
function _G.SendUserMessage(name, recipients, ...)
end

--- Returns approximate duration of a sentence by name. See Global.EmitSentence.  
--- @param name string @The sentence name.
--- @return number @The approximate duration.
function _G.SentenceDuration(name)
end

--- Prints `ServerLog: PARAM` without a newline, to the server log and console.  
--- As of June 2022, if `sv_logecho` is set to `0` (defaults to `1`) the message will not print to console and will only be written to the server's log file.  
--- @param parameter string @The value to be printed to console.
function _G.ServerLog(parameter)
end

--- Adds the given string to the computers clipboard, which can then be pasted in or outside of GMod with Ctrl + V.  
--- @param text string @The text to add to the clipboard.
function _G.SetClipboardText(text)
end

--- Defines an angle to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global angle with
--- @param angle GAngle @Angle to be networked
function _G.SetGlobal2Angle(index, angle)
end

--- Defined a boolean to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global boolean with
--- @param bool boolean @Boolean to be networked
function _G.SetGlobal2Bool(index, bool)
end

--- Defines an entity to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global entity with
--- @param ent GEntity @Entity to be networked
function _G.SetGlobal2Entity(index, ent)
end

--- Defines a floating point number to be automatically networked to clients  
--- ⚠ **WARNING**: This function has a floating point precision error. Use Global.SetGlobalFloat instead  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global float with
--- @param float number @Float to be networked
function _G.SetGlobal2Float(index, float)
end

--- Sets an integer that is shared between the server and all clients.  
--- ⚠ **WARNING**: The integer has a 32 bit limit. Use Global.SetGlobalInt instead  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index string @The unique index to identify the global value with.
--- @param value number @The value to set the global value to
function _G.SetGlobal2Int(index, value)
end

--- Defines a string with a maximum of 511 characters to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global string with
--- @param string string @String to be networked
function _G.SetGlobal2String(index, string)
end

--- Defines a variable to be automatically networked to clients  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- ⚠ **WARNING**: Trying to network a type that is not listed above will result in a nil value!  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global vector with
--- @param value any @Value to be networked
function _G.SetGlobal2Var(index, value)
end

--- Defines a vector to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global vector with
--- @param vec GVector @Vector to be networked
function _G.SetGlobal2Vector(index, vec)
end

--- Defines an angle to be automatically networked to clients  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Angle. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global angle with
--- @param angle GAngle @Angle to be networked
function _G.SetGlobalAngle(index, angle)
end

--- Defined a boolean to be automatically networked to clients  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Bool. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global boolean with
--- @param bool boolean @Boolean to be networked
function _G.SetGlobalBool(index, bool)
end

--- Defines an entity to be automatically networked to clients  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Entity. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global entity with
--- @param ent GEntity @Entity to be networked
function _G.SetGlobalEntity(index, ent)
end

--- Defines a floating point number to be automatically networked to clients  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Float. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global float with
--- @param float number @Float to be networked
function _G.SetGlobalFloat(index, float)
end

--- Sets an integer that is shared between the server and all clients.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Int. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- 🦟 **BUG**: [This function will not round decimal values as it actually networks a 64 bit float internally.](https://github.com/Facepunch/garrysmod-issues/issues/3374)  
--- @param index string @The unique index to identify the global value with.
--- @param value number @The value to set the global value to
function _G.SetGlobalInt(index, value)
end

--- Defines a string with a maximum of 199 characters to be automatically networked to clients  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2String. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: If you want to have a higher characters limit use Global.SetGlobal2String  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global string with
--- @param string string @String to be networked
function _G.SetGlobalString(index, string)
end

--- Defines a variable to be automatically networked to clients  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- ⚠ **WARNING**: Trying to network a type that is not listed above will result in an error!  
--- There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Var. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global vector with
--- @param value any @Value to be networked
function _G.SetGlobalVar(index, value)
end

--- Defines a vector to be automatically networked to clients  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Vector. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global vector with
--- @param vec GVector @Vector to be networked
function _G.SetGlobalVector(index, vec)
end

--- Called by the engine to set which [constraint system](https://developer.valvesoftware.com/wiki/Phys_constraintsystem) the next created constraints should use.  
--- @param constraintSystem GEntity @Constraint system to use
function _G.SetPhysConstraintSystem(constraintSystem)
end

--- This function can be used in a for loop instead of Global.pairs. It sorts all **keys** alphabetically.  
--- For sorting by specific **value member**, use Global.SortedPairsByMemberValue.  
--- For sorting by **value**, use Global.SortedPairsByValue.  
--- @param table table @The table to sort
--- @param desc? boolean @Reverse the sorting order
--- @return function @Iterator function
--- @return table @The table being iterated over
function _G.SortedPairs(table, desc)
end

--- Returns an iterator function that can be used to loop through a table in order of member values, when the values of the table are also tables and contain that member.  
--- To sort by **value**, use Global.SortedPairsByValue.  
--- To sort by **keys**, use Global.SortedPairs.  
--- @param table table @Table to create iterator for.
--- @param memberKey any @Key of the value member to sort by.
--- @param descending? boolean @Whether the iterator should iterate in descending order or not.
--- @return function @Iterator function
--- @return table @The table the iterator was created for.
function _G.SortedPairsByMemberValue(table, memberKey, descending)
end

--- Returns an iterator function that can be used to loop through a table in order of its **values**.  
--- To sort by specific **value member**, use Global.SortedPairsByMemberValue.  
--- To sort by **keys**, use Global.SortedPairs.  
--- @param table table @Table to create iterator for
--- @param descending? boolean @Whether the iterator should iterate in descending order or not
--- @return function @Iterator function
--- @return table @The table which will be iterated over
function _G.SortedPairsByValue(table, descending)
end

--- Runs util.PrecacheSound and returns the string.  
--- 🦟 **BUG**: util.PrecacheSound does nothing and therefore so does this function.  
--- @param soundPath string @The soundpath to precache.
--- @return string @The string passed as the first argument.
function _G.Sound(soundPath)
end

--- Returns the approximate duration of the specified sound in seconds, for `.wav` and `.mp3` sounds.  
--- 🦟 **BUG**: This function only works on mp3 files if the file is encoded with constant bitrate.  
--- @param soundName string @The sound file path.
--- @return number @Sound duration in seconds.
function _G.SoundDuration(soundName)
end

--- Suppress any networking from the server to the specified player. This is automatically called by the engine before/after a player fires their weapon, reloads, or causes any other similar shared-predicted event to occur.  
--- @param suppressPlayer GPlayer @The player to suppress any networking to.
function _G.SuppressHostEvents(suppressPlayer)
end

--- Returns a highly accurate time in seconds since the start up, ideal for benchmarking. Unlike Global.RealTime, this value will be updated any time the function is called, allowing for sub-think precision.  
--- @return number @Uptime of the server.
function _G.SysTime()
end

--- Returns a TauntCamera object  
--- @return table @TauntCamera
function _G.TauntCamera()
end

--- Clears focus from any text entries player may have focused.  
function _G.TextEntryLoseFocus()
end

--- Returns a cosine value that fluctuates based on the current time  
--- @param frequency number @The frequency of fluctuation
--- @param min number @Minimum value
--- @param max number @Maximum value
--- @param offset number @Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time
--- @return number @Cosine value
function _G.TimedCos(frequency, min, max, offset)
end

--- Returns a sine value that fluctuates based on Global.CurTime. The value returned will be between the start value plus/minus the range value.  
--- 🦟 **BUG**: The range arguments don't work as intended. The existing (bugged) behavior is documented below.  
--- @param frequency number @The frequency of fluctuation, in
--- @param origin number @The center value of the sine wave.
--- @param max number @This argument's distance from origin defines the size of the full range of the sine wave
--- @param offset number @Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time
--- @return number @Sine value
function _G.TimedSin(frequency, origin, max, offset)
end

--- Gets the associated type ID of the variable. Unlike Global.type, this does not work with no value - an argument must be provided.  
--- ⚠ **WARNING**: This will return `TYPE_TABLE` for Color objects.  
--- All subclasses of Entity will return `TYPE_ENTITY`.  
--- 🦟 **BUG**: [This returns garbage for _LOADLIB objects.](https://github.com/Facepunch/garrysmod-requests/issues/1120)  
--- 🦟 **BUG**: [This returns `TYPE_NIL` for protos.](https://github.com/Facepunch/garrysmod-requests/issues/1459)  
--- @param variable any @The variable to get the type ID of.
--- @return number @The type ID of the variable
function _G.TypeID(variable)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Global.IsUselessModel instead.  
--- This function is an alias of Global.IsUselessModel.  
--- Returns whether or not a model is useless by checking that the file path is that of a proper model.  
--- If the string ".mdl" is not found in the model name, the function will return true.  
--- The function will also return true if any of the following strings are found in the given model name:  
--- * "_gesture"  
--- * "_anim"  
--- * "_gst"  
--- * "_pst"  
--- * "_shd"  
--- * "_ss"  
--- * "_posture"  
--- * "_anm"  
--- * "ghostanim"  
--- * "_paths"  
--- * "_shared"  
--- * "anim_"  
--- * "gestures_"  
--- * "shared_ragdoll_"  
--- @param modelName string @The model name to be checked
--- @return boolean @Whether or not the model is useless
function _G.UTIL_IsUselessModel(modelName)
end

--- Returns the current asynchronous in-game time. This will not be synced with the players current clock allowing you to get Global.CurTime without interference from Prediction.  
--- @return number @The asynchronous in-game time.
function _G.UnPredictedCurTime()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use the function Global.SysTime instead.  
--- Identical to Global.SysTime.  
function _G.VGUIFrameTime()
end

--- Creates and returns a DShape rectangle GUI element with the given dimensions.  
--- @param x number @X position of the created element
--- @param y number @Y position of the created element
--- @param w number @Width of the created element
--- @param h number @Height of the created element
--- @return GPanel @DShape element
function _G.VGUIRect(x, y, w, h)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Global.IsValid instead  
--- Returns if a panel is safe to use.  
--- @param panel GPanel @The panel to validate.
function _G.ValidPanel(panel)
end

--- Creates a Vector object.  
--- ⚠ **WARNING**: Creating Vectors is relatively expensive when used in often running hooks or in operations requiring very frequent calls (like loops for example) due to object creation and garbage collection. It is better to store the vector in a variable or to use the [default vectors](https://wiki.facepunch.com/gmod/Global_Variables#misc) available. See Vector:Add.  
--- @param x? number @The x component of the vector.
--- @param y? number @The y component of the vector.
--- @param z? number @The z component of the vector.
--- @return GVector @The created vector object.
function _G.Vector(x, y, z)
end
--- Creates a Vector object.  
--- ⚠ **WARNING**: Creating Vectors is relatively expensive when used in often running hooks or in operations requiring very frequent calls (like loops for example) due to object creation and garbage collection. It is better to store the vector in a variable or to use the [default vectors](https://wiki.facepunch.com/gmod/Global_Variables#misc) available. See Vector:Add.  
--- @param vector GVector @Creates a new Vector that is a copy of the given Vector.
--- @return GVector @The created vector object.
function _G.Vector(vector)
end
--- Creates a Vector object.  
--- ⚠ **WARNING**: Creating Vectors is relatively expensive when used in often running hooks or in operations requiring very frequent calls (like loops for example) due to object creation and garbage collection. It is better to store the vector in a variable or to use the [default vectors](https://wiki.facepunch.com/gmod/Global_Variables#misc) available. See Vector:Add.  
--- @param vectorString string @Attempts to parse the input string from the Global.print format of an Vector
--- @return GVector @The created vector object.
function _G.Vector(vectorString)
end

--- Returns a random vector whose components are each between min(inclusive), max(exclusive).  
--- @param min? number @Min bound inclusive.
--- @param max? number @Max bound exclusive.
--- @return GVector @The random direction vector.
function _G.VectorRand(min, max)
end

--- Translates a worldspace vector and angle into a specific coordinate system.  
--- @param position GVector @A worldspace vector.
--- @param angle GAngle @A worldspace angle.
--- @param newSystemOrigin GVector @The origin of the new coordinate system.
--- @param newSystemAngles GAngle @The angles of the new coordinate system.
--- @return GVector @The corresponding local space `position`
--- @return GAngle @The corresponding local space `angle`
function _G.WorldToLocal(position, angle, newSystemOrigin, newSystemAngles)
end

--- If the result of the first argument is false or nil, an error is thrown with the second argument as the message.  
--- @param expression any @The expression to assert.
--- @param errorMessage? string @The error message to throw when assertion fails
--- @vararg any @Any arguments past the error message will be returned by a successful assert.
--- @return any @If successful, returns the first argument.
--- @return any @If successful, returns the error message
--- @return any @Returns any arguments past the error message.
function _G.assert(expression, errorMessage, ...)
end

--- Executes the specified action on the garbage collector.  
--- @param action? string @The action to run
--- @param arg? number @The argument of the specified action, only applicable for `step`, `setpause` and `setstepmul`.
--- @return any @If the action is count this is the number of kilobytes of memory used by Lua
function _G.collectgarbage(action, arg)
end

--- Throws a Lua error and breaks out of the current call stack.  
--- @param message string @The error message to throw.
--- @param errorLevel? number @The level to throw the error at.
function _G.error(message, errorLevel)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: This function was deprecated in Lua 5.1 and is removed in Lua 5.2. Use Global.collectgarbage( "count" ) instead.  
---  Returns the current floored dynamic memory usage of Lua in kilobytes.  
--- @return number @The current floored dynamic memory usage of Lua, in kilobytes.
function _G.gcinfo()
end

--- Returns the environment table of either the stack level or the function specified.  
--- @param location? function @The object to get the enviroment from
--- @return table @The environment.
function _G.getfenv(location)
end

--- Returns the metatable of an object. This function obeys the metatable's __metatable field, and will return that field if the metatable has it set.  
--- Use debug.getmetatable if you want the true metatable of the object.  
--- If you want to modify the metatable, check out Global.FindMetaTable  
--- @param object any @The value to return the metatable of.
--- @return any @The metatable of the value
function _G.getmetatable(object)
end

--- Executes a Lua script.  
--- This function will try to load local client file if `sv_allowcslua` is **1**.  
--- ⚠ **WARNING**: The file you are attempting to include **MUST NOT** be empty or the include will fail. Files over a certain size (64KB compressed) may fail clientside as well.  
--- If the file you are including is clientside or shared, it **must** be Global.AddCSLuaFile'd or this function will error saying the file doesn't exist.  
--- @param fileName string @The name of the script to be executed
--- @return any @Anything that the executed Lua script returns.
function _G.include(fileName)
end

--- Returns a [Stateless Iterator](https://www.lua.org/pil/7.3.html) for a [Generic For Loops](https://www.lua.org/pil/4.3.5.html), to return ordered key-value pairs from a table.  
--- This will only iterate through **numerical** keys, and these must also be **sequential**; starting at 1 with no gaps.  
--- For unordered pairs, see Global.pairs.  
--- For pairs sorted by key in alphabetical order, see Global.SortedPairs.  
--- @param tab table @The table to iterate over.
--- @return function @The iterator function.
--- @return table @The table being iterated over.
--- @return number @The origin index **=0**.
function _G.ipairs(tab)
end

--- Returns if the passed object is an Angle.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is an Angle.
function _G.isangle(variable)
end

--- Returns if the passed object is a boolean.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a boolean.
function _G.isbool(variable)
end

--- Returns if the passed object is an Entity.  
--- @param variable any @The variable to check.
--- @return boolean @True if the variable is an Entity.
function _G.isentity(variable)
end

--- Returns if the passed object is a function.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a function.
function _G.isfunction(variable)
end

--- Returns whether the passed object is a VMatrix.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a VMatrix.
function _G.ismatrix(variable)
end

--- Returns if the passed object is a number.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a number.
function _G.isnumber(variable)
end

--- Returns if the passed object is a Panel.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a Panel.
function _G.ispanel(variable)
end

--- Returns if the passed object is a string.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a string.
function _G.isstring(variable)
end

--- Returns if the passed object is a table.  
--- ℹ **NOTE**: Will return TRUE for variables of type Color  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a table.
function _G.istable(variable)
end

--- Returns if the passed object is a Vector.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a Vector.
function _G.isvector(variable)
end

--- Creates a table with the specified module name and sets the function environment for said table.  
--- Any passed loaders are called with the table as an argument. An example of this is package.seeall.  
--- @param name string @The name of the module
--- @vararg any @Calls each function passed with the new table as an argument.
function _G.module(name, ...)
end

--- 🦟 **BUG**: [Fails under certain conditions when called in coroutines](https://github.com/Facepunch/garrysmod-issues/issues/5299)  
--- Creates a new userdata object.  
--- @param addMetatable? boolean @If true, the created userdata will be given its own metatable.
--- @return userdata @The newly created userdata.
function _G.newproxy(addMetatable)
end
--- 🦟 **BUG**: [Fails under certain conditions when called in coroutines](https://github.com/Facepunch/garrysmod-issues/issues/5299)  
--- Creates a new userdata object.  
--- @param userData userdata @Creates a new userdata with the same metatable the userdata passed in had
--- @return userdata @The newly created userdata.
function _G.newproxy(userData)
end

--- Returns the next key and value pair in a table.  
--- ℹ **NOTE**: Table keys in Lua have no specific order, and will be returned in whatever order they exist in memory. This may not always be in ascending order or alphabetical order. If you need to iterate over an array in order, use Global.ipairs.  
--- @param tab table @The table
--- @param prevKey? any @The previous key in the table.
--- @return any @The next key for the table
--- @return any @The value associated with that key
function _G.next(tab, prevKey)
end

--- Returns an iterator function(Global.next) for a for loop that will return the values of the specified table in an arbitrary order.  
--- * For alphabetical **key** order use Global.SortedPairs.  
--- * For alphabetical **value** order use Global.SortedPairsByValue.  
--- @param tab table @The table to iterate over.
--- @return function @The iterator (Global.next).
--- @return table @The table being iterated over.
--- @return any @**nil** (for the constructor).
function _G.pairs(tab)
end

--- Calls a function and catches an error that can be thrown while the execution of the call.  
--- 🦟 **BUG**: [This cannot stop errors from hooks called from the engine.](https://github.com/Facepunch/garrysmod-issues/issues/2036)  
--- 🦟 **BUG**: [This does not stop Global.Error and Global.ErrorNoHalt from sending error messages to the server (if called clientside) or calling the GM:OnLuaError hook. The success boolean returned will always return true and thus you will not get the error message returned. Global.error does not exhibit these behaviours.](https://github.com/Facepunch/garrysmod-issues/issues/2498)  
--- @param func function @Function to be executed and of which the errors should be caught of
--- @vararg any @Arguments to call the function with.
--- @return boolean @If the function had no errors occur within it.
--- @return any @If an error occurred, this will be a string containing the error message
function _G.pcall(func, ...)
end

--- Writes every given argument to the console.  
--- Automatically attempts to convert each argument to a string. (See Global.tostring)  
--- Separates lines with a line break (`"\n"`)  
--- Separates arguments with a tab character (`"\t"`).  
--- Can only print up to `4096` characters at a time, and will stop at NULL character. (`"\0"`)  
--- @vararg any @List of values to print.
function _G.print(...)
end

--- Compares the two values without calling their __eq operator.  
--- @param value1 any @The first value to compare.
--- @param value2 any @The second value to compare.
--- @return boolean @Whether or not the two values are equal.
function _G.rawequal(value1, value2)
end

--- Gets the value with the specified key from the table without calling the __index method.  
--- @param table table @Table to get the value from.
--- @param index any @The index to get the value from.
--- @return any @The value.
function _G.rawget(table, index)
end

--- Sets the value with the specified key from the table without calling the __newindex method.  
--- @param table table @Table to get the value from.
--- @param index any @The index to get the value from.
--- @param value any @The value to set for the specified key.
function _G.rawset(table, index, value)
end

--- First tries to load a binary module with the given name, if unsuccessful, it tries to load a Lua module with the given name.  
--- 🦟 **BUG**: [Running this function with Global.pcall or Global.xpcall will still print an error that counts towards sv_kickerrornum.](https://github.com/Facepunch/garrysmod-issues/issues/2498" request="813)  
--- ℹ **NOTE**: This function will try to load local client file if `sv_allowcslua` is set to `1`  
--- ℹ **NOTE**: Binary modules can't be installed as part of an addon and have to be put directly into ``garrysmod/lua/bin/`` to be detected.  
--- This is a safety measure, because modules can be malicious and harm the system.  
--- @param name string @The name of the module to be loaded.
function _G.require(name)
end

--- Used to select single values from a vararg or get the count of values in it.  
--- @param parameter any @Can be a number or string
--- @vararg any @The vararg
--- @return any @Returns a number or vararg, depending on the select method.
function _G.select(parameter, ...)
end

--- Sets the environment for a function or a stack level. Can be used to sandbox code.  
--- @param location function @The function to set the environment for, or a number representing stack level.
--- @param environment table @Table to be used as the the environment.
--- @return function @The function passed, otherwise nil.
function _G.setfenv(location, environment)
end

--- Sets, changes or removes a table's metatable. Returns Tab (the first argument).  
--- @param Tab table @The table who's metatable to change.
--- @param Metatable table @The metatable to assign
--- @return table @The first argument.
function _G.setmetatable(Tab, Metatable)
end

--- Attempts to return an appropriate boolean for the given value  
--- @param input any @The object to be converted to a boolean
--- @return boolean @* `false` for the boolean `false`
function _G.tobool(input)
end

--- Converts strings containing numbers into actual numbers.  
--- Can also convert numbers from other [numerical bases](https://www.mathsisfun.com/numbers/bases.html) to base 10.  
--- @param value string @The value to be converted
--- @param base? number @The numerical base of the digits in the input value
--- @return number|nil @The base `10` number representation of the input value, or `nil` if the conversion failed.
function _G.tonumber(value, base)
end

--- Attempts to convert the value to a string. If the value is an object and its metatable has defined the __tostring metamethod, this will call that function.  
--- Global.print also uses this functionality.  
--- @param value any @The object to be converted to a string.
--- @return string @The string representation of the value.
function _G.tostring(value)
end

--- Returns a string representing the name of the type of the passed object.  
--- ⚠ **WARNING**: This will return `table` if the input is Global.Color, consider using Global.IsColor in that case.  
--- @param var any @The object to get the type of.
--- @return string @The name of the object's type.
function _G.type(var)
end

--- This function takes a numeric indexed table and return all the members as a vararg. If specified, it will start at the given index and end at end index.  
--- @param tbl table @The table to generate the vararg from.
--- @param startIndex? number @Which index to start from
--- @param endIndex? number @Which index to end at
--- @return any @Output values
function _G.unpack(tbl, startIndex, endIndex)
end

--- Attempts to call the first function. If the execution succeeds, this returns `true` followed by the returns of the function. If execution fails, this returns `false` and the second function is called with the error message.  
--- Unlike in Global.pcall, the stack is not unwound and can therefore be used for stack analyses with the debug.  
--- 🦟 **BUG**: [This cannot stop errors from hooks called from the engine.](https://github.com/Facepunch/garrysmod-issues/issues/2036)  
--- 🦟 **BUG**: [This does not stop Global.Error and Global.ErrorNoHalt (As well as Global.include) from sending error messages to the server (if called clientside) or calling the GM:OnLuaError hook. The success boolean returned will always return true and thus you will not get the error message returned. Global.error does not exhibit these behaviours.](https://github.com/Facepunch/garrysmod-issues/issues/2498)  
--- @param func function @The function to call initially.
--- @param errorCallback function @The function to be called if execution of the first fails; the error message is passed as a string
--- @vararg any @Arguments to pass to the initial function.
--- @return boolean @Status of the execution; `true` for success, `false` for failure.
--- @return any @The returns of the first function if execution succeeded, otherwise the **first** return value of the error callback.
function _G.xpcall(func, errorCallback, ...)
end
