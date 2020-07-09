--- Adds simple Get/Set accessor functions on the specified table.  
--- Can also force the value to be set to a number, bool or string.  
--- @param tab table @The table to add the accessor functions too.
--- @param key any @The key of the table to be get/set.
--- @param name string @The name of the functions (will be prefixed with Get and Set).
--- @param force number @The type the setter should force to (uses Enums/FORCE).
function AccessorFunc(tab, key, name, force)
end

--- Marks a Lua file to be sent to clients when they join the server. Doesn't do anything on the client - this means you can use it in a shared file without problems.  
--- ⚠ **WARNING**: If the file trying to be added is empty, an error will occur, and the file will not be sent to the client.  
--- ℹ **NOTE**: This function is not needed for scripts located in **lua/autorun/** and **lua/autorun/client/**: they are automatically sent to clients.  
--- ℹ **NOTE**: You can add up to 8192 files.  
--- @param file string @The name/path to the Lua file that should be sent, relative to the garrysmod/lua folder
function AddCSLuaFile(file)
end

--- Adds the specified vector to the PVS which is currently building. This allows all objects in visleafs visible from that vector to be drawn.  
--- @param position GVector @The origin to add.
function AddOriginToPVS(position)
end

--- This function creates a World Tip, similar to the one shown when aiming at a Thruster where it shows you its force.  
--- This function will make a World Tip that will only last 50 milliseconds (1/20th of a second), so you must call it continuously as long as you want the World Tip to be shown. It is common to call it inside a Think hook.  
--- Contrary to what the function's name implies, it is impossible to create more than one World Tip at the same time. A new World Tip will overwrite the old one, so only use this function when you know nothing else will also be using it.  
--- See SANDBOX:PaintWorldTips for more information.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives  
--- @param entindex number @**This argument is no longer used**; it has no effect on anything
--- @param text string @The text for the world tip to display.
--- @param dieTime number @**This argument is no longer used**; when you add a World Tip it will always last only 0.05 seconds
--- @param pos GVector @Where in the world you want the World Tip to be drawn
--- @param ent GEntity @Which entity you want to associate with the World Tip
function AddWorldTip(entindex, text, dieTime, pos, ent)
end

--- Defines a global entity class variable with an automatic value in order to prevent collisions with other Enums/CLASS. You should prefix your variable with CLASS_ for consistency.  
--- @param name string @The name of the new enum/global variable.
function Add_NPC_Class(name)
end

--- Loads the specified image from the /cache folder, used in combination steamworks.Download.  
--- Most addons will provide a 512x512 png image.  
--- @param name string @The name of the file.
--- @return GIMaterial @The material, returns nil if the cached file is not an image.
function AddonMaterial(name)
end

--- Creates an Angle object.  
--- @param pitch number @The pitch value of the angle
--- @param yaw number @The yaw value of the angle.
--- @param roll number @The roll value of the angle.
--- @return GAngle @Created angle
function Angle(pitch, yaw, roll)
end

--- Returns an angle with a randomized pitch, yaw, and roll between min(inclusive), max(exclusive).  
--- @param min number @Min bound inclusive.
--- @param max number @Max bound exclusive.
--- @return GAngle @The randomly generated angle.
function AngleRand(min, max)
end

--- Sends the specified Lua code to all connected clients and executes it.  
--- ℹ **NOTE**: If you need to use this function more than once consider using net library. Send net message and make the entire code you want to execute in net.Receive on client.  
--- @param code string @The code to be executed
function BroadcastLua(code)
end

--- Dumps the networked variables of all entities into one table and returns it.  
--- @return table @Format:
function BuildNetworkedVarsTable()
end

--- Automatically called by the engine when a panel is hovered over with the mouse  
--- @param panel GPanel @Panel that has been hovered over
function ChangeTooltip(panel)
end

--- Creates a non physical entity that only exists on the client. See also ents.CreateClientProp.  
--- 🦟 **BUG**: [Parented clientside models will become detached if the parent entity leaves the PVS.](https://github.com/Facepunch/garrysmod-issues/issues/861)  
--- 🦟 **BUG**: [Clientside entities are not garbage-collected, thus you must store a reference to the object and call CSEnt:Remove manually.](https://github.com/Facepunch/garrysmod-issues/issues/1387)  
--- 🦟 **BUG**: [Clientside models will occasionally delete themselves during high server lag.](https://github.com/Facepunch/garrysmod-issues/issues/3184)  
--- @param model string @The file path to the model
--- @param renderGroup number @The render group of the entity for the clientside leaf system, see Enums/RENDERGROUP.
--- @return GCSEnt @Created client-side model
function ClientsideModel(model, renderGroup)
end

--- Creates a fully clientside ragdoll.  
--- ℹ **NOTE**: The ragdoll initially starts as hidden and with shadows disabled, see the example for how to enable it.  
--- There's no need to call Entity:Spawn on this entity.  
--- The physics won't initialize at all if the model hasn't been precached serverside first.  
--- 🦟 **BUG**: [Clientside entities are not garbage-collected, thus you must store a reference to the object and call CSEnt:Remove manually.](https://github.com/Facepunch/garrysmod-issues/issues/1387)  
--- @param model string @The file path to the model
--- @param renderGroup number @The Enums/RENDERGROUP to assign.
--- @return GCSEnt @The newly created client-side ragdoll
function ClientsideRagdoll(model, renderGroup)
end

--- Creates a scene entity based on the scene name and the entity.  
--- @param name string @The name of the scene.
--- @param targetEnt GEntity @The entity to play the scene on.
--- @return GCSEnt @C_SceneEntity
function ClientsideScene(name, targetEnt)
end

--- Closes all Derma menus that have been passed to Global.RegisterDermaMenuForClose and calls GM:CloseDermaMenus  
function CloseDermaMenus()
end

--- Creates a Color.  
--- @param r number @An integer from 0-255 describing the red value of the color.
--- @param g number @An integer from 0-255 describing the green value of the color.
--- @param b number @An integer from 0-255 describing the blue value of the color.
--- @param a number @An integer from 0-255 describing the alpha (transparency) of the color.
--- @return table @The created Color.
function Color(r, g, b, a)
end

--- Returns a new Color with the RGB components of the given Color and the alpha value specified.  
--- @param color table @The Color from which to take RGB values
--- @param alpha number @The new alpha value, a number between 0 and 255
--- @return table @The new Color with the modified alpha value
function ColorAlpha(color, alpha)
end

--- Creates a Color with randomized red, green, and blue components. If the alpha argument is true, alpha will also be randomized.  
--- @param a boolean @Should alpha be randomized.
--- @return table @The created Color.
function ColorRand(a)
end

--- Converts a Color into HSL color space.  
--- @param color table @The Color.
--- @return number, number, number
function ColorToHSL(color)
end

--- Converts a Color into HSV color space.  
--- @param color table @The Color.
--- @return number, number, number
function ColorToHSV(color)
end

--- Attempts to compile the given file. If successful, returns a function that can be called to perform the actual execution of the script.  
--- @param path string @Path to the file, relative to the garrysmod/lua/ directory.
--- @return function @The function which executes the script.
function CompileFile(path)
end

--- This function will compile the code argument as lua code and return a function that will execute that code.  
--- Please note that this function will not automatically execute the given code after compiling it.  
--- @param code string @The code to compile.
--- @param identifier string @An identifier in case an error is thrown
--- @param HandleError boolean @If false this function will return an error string instead of throwing an error.
--- @return function @A function that, when called, will execute the given code
function CompileString(code, identifier, HandleError)
end

--- Returns whether a ConVar with the given name exists or not  
--- @param name string @Name of the ConVar.
--- @return boolean @True if the ConVar exists, false otherwise.
function ConVarExists(name)
end

--- Makes a clientside-only console variable  
--- ℹ **NOTE**: This function is a wrapper of Global.CreateConVar, with the difference being that FCVAR_ARCHIVE and FCVAR_USERINFO are added automatically when **shouldsave** and **userinfo** are true, respectively.  
--- Although this function is shared, it should only be used clientside.  
--- @param name string @Name of the ConVar to be created and able to be accessed
--- @param default string @Default value of the ConVar.
--- @param shouldsave boolean @Should the ConVar be saved across sessions
--- @param userinfo boolean @Should the ConVar and its containing data be sent to the server when it has changed
--- @param helptext string @Help text to display in the console.
--- @param min number @If set, the convar cannot be changed to a number lower than this value.
--- @param max number @If set, the convar cannot be changed to a number higher than this value.
--- @return GConVar @Created convar.
function CreateClientConVar(name, default, shouldsave, userinfo, helptext, min, max)
end

--- Creates a console variable (ConVar), in general these are for things like gamemode/server settings.  
--- 🦟 **BUG**: [FCVAR_ARCHIVE causes default value replication issues on clientside FCVAR_REPLICATED convars and should be omitted clientside as a workaround](https://github.com/Facepunch/garrysmod-issues/issues/3323)  
--- @param name string @Name of the ConVar
--- @param value string @Default value of the convar
--- @param flags number @Flags of the convar, see Enums/FCVAR, either as bitflag or as table.
--- @param helptext string @The help text to show in the console.
--- @param min number @If set, the ConVar cannot be changed to a number lower than this value.
--- @param max number @If set, the ConVar cannot be changed to a number higher than this value.
--- @return GConVar @The convar created.
function CreateConVar(name, value, flags, helptext, min, max)
end

--- Creates a new material with the specified name and shader.  
--- ℹ **NOTE**: Materials created with this function can be used in Entity:SetMaterial and Entity:SetSubMaterial by prepending a "!" to their material name argument.  
--- 🦟 **BUG**: [.pngs must be loaded with Global.Material before being used with this function.](https://github.com/Facepunch/garrysmod-issues/issues/1531)  
--- 🦟 **BUG**: [This does not work with [patch materials](https://developer.valvesoftware.com/wiki/Patch).](https://github.com/Facepunch/garrysmod-issues/issues/2511)  
--- 🦟 **BUG**: [This will not create a new material if another material object with the same name already exists.](https://github.com/Facepunch/garrysmod-issues/issues/3103)  
--- @param name string @The material name
--- @param shaderName string @The shader name
--- @param materialData table @Key-value table that contains shader parameters and proxies
--- @return GIMaterial @Created material
function CreateMaterial(name, shaderName, materialData)
end

--- Creates a new particle system.  
--- ℹ **NOTE**: The particle effect must be precached with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param ent GEntity @The entity to attach the control point to.
--- @param effect string @The name of the effect to create
--- @param partAttachment number @See Enums/PATTACH.
--- @param entAttachment number @The attachment ID on the entity to attach the particle system to
--- @param offset GVector @The offset from the Entity:GetPos of the entity we are attaching this CP to.
--- @return GCNewParticleEffect @The created particle system.
function CreateParticleSystem(ent, effect, partAttachment, entAttachment, offset)
end

--- Creates a new PhysCollide from the given bounds.  
--- 🦟 **BUG**: [This fails to create planes or points - no components of the mins or maxs can be the same.](https://github.com/Facepunch/garrysmod-issues/issues/3568)  
--- @param mins GVector @Min corner of the box
--- @param maxs GVector @Max corner of the box
--- @return GPhysCollide @The new PhysCollide
function CreatePhysCollideBox(mins, maxs)
end

--- Creates PhysCollide objects for every physics object the model has. The model must be precached with util.PrecacheModel before being used with this function.  
--- @param modelName string @Model path to get the collision objects of.
--- @return table @Table of PhysCollide objects
function CreatePhysCollidesFromModel(modelName)
end

--- Returns a sound parented to the specified entity.  
--- ℹ **NOTE**: You can only create one CSoundPatch per audio file, per entity at the same time.  
--- @param targetEnt GEntity @The target entity.
--- @param soundName string @The sound to play.
--- @param filter GCRecipientFilter @A CRecipientFilter of the players that will have this sound networked to them
--- @return GCSoundPatch @The sound object
function CreateSound(targetEnt, soundName, filter)
end

--- Creates and returns a new DSprite element with the supplied material.  
--- @param material GIMaterial @Material the sprite should draw.
--- @return GPanel @The new DSprite element.
function CreateSprite(material)
end

--- Returns the uptime of the server in seconds (to at least 4 decimal places)  
--- This is a synchronised value and affected by various factors such as host_timescale (or game.GetTimeScale) and the server being paused - either by sv_pausable or all players disconnecting.  
--- You should use this function for timing in-game events but not for real-world events.  
--- See also: Global.RealTime, Global.SysTime  
--- ℹ **NOTE**: This is internally defined as a float, and as such it will be affected by precision loss if your server uptime is more than 6 hours, which will cause jittery movement of players and props and inaccuracy of timers, it is highly encouraged to refresh or change the map when that happens (a server restart is not necessary).  
--- This is **NOT** easy as it sounds to fix in the engine, so please refrain from posting issues about this  
--- 🦟 **BUG**: [This returns 0 in GM:PlayerAuthed.](https://github.com/Facepunch/garrysmod-issues/issues/3026)  
--- @return number @Time synced with the game server.
function CurTime()
end

--- This is not a function. This is a preprocessor keyword that translates to:  
--- ```  
--- local BaseClass = baseclass.Get("my_weapon")  
--- ```  
--- If you type `DEFINE_BASECLASS("my_weapon")` in your script.  
--- See baseclass.Get for more information.  
--- @param value string @Baseclass name
function DEFINE_BASECLASS(value)
end

--- Cancels current DOF post-process effect started with Global.DOF_Start  
function DOF_Kill()
end

--- Cancels any existing DOF post-process effects.  
--- Begins the DOF post-process effect.  
function DOF_Start()
end

--- Returns an CTakeDamageInfo object.  
--- 🦟 **BUG**: [This does not create a unique object, but instead returns a shared reference. That means you cannot use two or more of these objects at once.](https://github.com/Facepunch/garrysmod-issues/issues/2771)  
--- @return GCTakeDamageInfo @The CTakeDamageInfo object.
function DamageInfo()
end

--- Writes text to the right hand side of the screen, like the old error system. Messages disappear after a couple of seconds.  
--- @param slot number @The location on the right hand screen to write the debug info to
--- @param info string @The debugging information to be written to the screen
function DebugInfo(slot, info)
end

--- Loads and registers the specified gamemode, setting the GM table's DerivedFrom field to the value provided, if the table exists. The DerivedFrom field is used post-gamemode-load as the "derived" parameter for gamemode.Register.  
--- @param base string @Gamemode name to derive from.
function DeriveGamemode(base)
end

--- Creates a DMenu and closes any current menus.  
--- @param parent GPanel @The panel to parent the created menu to.
--- @return GPanel @The created DMenu
function DermaMenu(parent)
end

--- Creates a new derma animation.  
--- @param name string @Name of the animation to create
--- @param panel GPanel @Panel to run the animation on
--- @param func function @Function to call to process the animation
--- @return table @A lua metatable containing four methods:
function Derma_Anim(name, panel, func)
end

--- Draws background blur around the given panel.  
--- @param panel GPanel @Panel to draw the background blur around
--- @param startTime number @Time that the blur began being painted
function Derma_DrawBackgroundBlur(panel, startTime)
end

--- Creates panel method that calls the supplied Derma skin hook via derma.SkinHook  
--- @param panel GPanel @Panel to add the hook to
--- @param functionName string @Name of panel function to create
--- @param hookName string @Name of Derma skin hook to call within the function
--- @param typeName string @Type of element to call Derma skin hook for
function Derma_Hook(panel, functionName, hookName, typeName)
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
function Derma_Install_Convar_Functions(target)
end

--- Creates a derma window to display information  
--- @param Text string @The text within the created panel.
--- @param Title string @The title of the created panel.
--- @param Button string @The text of the button to close the panel.
--- @return GPanel @The created DFrame
function Derma_Message(Text, Title, Button)
end

--- Shows a message box in the middle of the screen, with up to 4 buttons they can press.  
--- @param text string @The message to display.
--- @param title string @The title to give the message box.
--- @param btn1text string @The text to display on the first button.
--- @param btn1func function @The function to run if the user clicks the first button.
--- @param btn2text string @The text to display on the second button.
--- @param btn2func function @The function to run if the user clicks the second button.
--- @param btn3text string @The text to display on the third button
--- @param btn3func function @The function to run if the user clicks the third button.
--- @param btn4text string @The text to display on the third button
--- @param btn4func function @The function to run if the user clicks the fourth button.
--- @return GPanel @The Panel object of the created window.
function Derma_Query(text, title, btn1text, btn1func, btn2text, btn2func, btn3text, btn3func, btn4text, btn4func)
end

--- Creates a derma window asking players to input a string.  
--- @param title string @The title of the created panel.
--- @param subtitle string @The text above the input box
--- @param default string @The default text for the input box.
--- @param confirm function @The function to be called once the user has confirmed their input.
--- @param cancel function @The function to be called once the user has cancelled their input
--- @param confirmText string @Allows you to override text of the "OK" button
--- @param cancelText string @Allows you to override text of the "Cancel" button
--- @return GPanel @The created DFrame
function Derma_StringRequest(title, subtitle, default, confirm, cancel, confirmText, cancelText)
end

--- Sets whether rendering should be limited to being inside a panel or not.  
--- See also Panel:NoClipping.  
--- @param disable boolean @Whether or not clipping should be disabled
--- @return boolean @Whether the clipping was enabled or not before this function call
function DisableClipping(disable)
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
function DrawBloom(Darken, Multiply, SizeX, SizeY, Passes, ColorMultiply, Red, Green, Blue)
end

--- Draws the Color Modify shader, which can be used to adjust colors on screen.  
--- @param modifyParameters table @Color modification parameters
function DrawColorModify(modifyParameters)
end

--- Draws a material overlay on the screen.  
--- @param Material string @This will be the material that is drawn onto the screen.
--- @param RefractAmount number @This will adjust how much the material will refract your screen.
function DrawMaterialOverlay(Material, RefractAmount)
end

--- Creates a motion blur effect by drawing your screen multiple times.  
--- @param AddAlpha number @How much alpha to change per frame.
--- @param DrawAlpha number @How much alpha the frames will have
--- @param Delay number @Determines the amount of time between frames to capture.
function DrawMotionBlur(AddAlpha, DrawAlpha, Delay)
end

--- Draws the sharpen shader, which creates more contrast.  
--- @param Contrast number @How much contrast to create.
--- @param Distance number @How large the contrast effect will be.
function DrawSharpen(Contrast, Distance)
end

--- Draws the sobel shader, which detects edges and draws a black border.  
--- @param Threshold number @Determines the threshold of edges
function DrawSobel(Threshold)
end

--- Renders the post-processing effect of beams of light originating from the map's sun. Utilises the "pp/sunbeams" material  
--- @param darken number @$darken property for sunbeams material
--- @param multiplier number @$multiply property for sunbeams material
--- @param sunSize number @$sunsize property for sunbeams material
--- @param sunX number @$sunx property for sunbeams material
--- @param sunY number @$suny property for sunbeams material
function DrawSunbeams(darken, multiplier, sunSize, sunX, sunY)
end

--- Draws the texturize shader, which replaces each pixel on your screen with a different part of the texture depending on its brightness. See g_texturize for information on making the texture.  
--- @param Scale number @Scale of the texture
--- @param BaseTexture number @This will be the texture to use in the effect
function DrawTexturize(Scale, BaseTexture)
end

--- Draws the toy town shader, which blurs the top and bottom of your screen. This can make very large objects look like toys, hence the name.  
--- @param Passes number @An integer determining how many times to draw the effect
--- @param Height number @The amount of screen which should be blurred on the top and bottom.
function DrawToyTown(Passes, Height)
end

--- Drops the specified entity if it is being held by any player with Gravity Gun or +use pickup.  
--- @param ent GEntity @The entity to drop.
function DropEntityIfHeld(ent)
end

--- Creates or replaces a dynamic light with the given id.  
--- ℹ **NOTE**: Only 32 dlights and 64 elights can be active at once.  
--- ⚠ **WARNING**: It is not safe to hold a reference to this object after creation since its data can be replaced by another dlight at any time.  
--- 🦟 **BUG**: [The minlight parameter affects the world and entities differently.](https://github.com/Facepunch/garrysmod-issues/issues/3798)  
--- @param index number @An unsigned Integer
--- @param elight boolean @Allocates an elight instead of a dlight
--- @return table @A DynamicLight structured table
function DynamicLight(index, elight)
end

--- Returns a CEffectData object to be used with util.Effect.  
--- 🦟 **BUG**: [This does not create a unique object, but instead returns a shared reference. That means you cannot use two or more of these objects at once.](https://github.com/Facepunch/garrysmod-issues/issues/2771)  
--- @return GCEffectData @The CEffectData object.
function EffectData()
end

--- A compact 'if then else'. This is *almost* equivalent to (`condition` and `truevar` or `falsevar`) in Lua.  
--- The difference is that if `truevar` evaluates to false, the plain Lua method stated would return `falsevar` regardless of `condition` whilst this function would take `condition` into account.  
--- @param condition any @The condition to check if true or false.
--- @param truevar any @If the condition isn't nil/false, returns this value.
--- @param falsevar any @If the condition is nil/false, returns this value.
--- @return any @The result.
function Either(condition, truevar, falsevar)
end

--- Plays a sentence from `scripts/sentences.txt`  
--- @param soundName string @The sound to play
--- @param position GVector @The position to play at
--- @param entity number @The entity to emit the sound from
--- @param channel number @The sound channel, see Enums/CHAN.
--- @param volume number @The volume of the sound, from 0 to 1
--- @param soundLevel number @The sound level of the sound, see Enums/SNDLVL
--- @param soundFlags number @The flags of the sound, see Enums/SND
--- @param pitch number @The pitch of the sound, 0-255
function EmitSentence(soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch)
end

--- Emits the specified sound at the specified position.  
--- 🦟 **BUG**: Sounds must be precached serverside manually before they can be played. util.PrecacheSound does not work for this purpose, Entity.EmitSound does the trick  
--- 🦟 **BUG**: This does not work with soundscripts. TODO: Is this a bug or intended?  
--- @param soundName string @The sound to play
--- @param position GVector @The position to play at
--- @param entity number @The entity to emit the sound from
--- @param channel number @The sound channel, see Enums/CHAN.
--- @param volume number @The volume of the sound, from 0 to 1
--- @param soundLevel number @The sound level of the sound, see Enums/SNDLVL
--- @param soundFlags number @The flags of the sound, see Enums/SND
--- @param pitch number @The pitch of the sound, 0-255
function EmitSound(soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch)
end

--- Removes the currently active tool tip from the screen.  
--- @param panel GPanel @This is the panel that has a tool tip.
function EndTooltip(panel)
end

--- Returns the entity with the matching Entity:EntIndex.  
--- Indices 1 through game.MaxPlayers() are always reserved for players.  
--- ℹ **NOTE**: In examples on this wiki, **Entity( 1 )** is used when a player entity is needed (see ). In singleplayer and listen servers, **Entity( 1 )** will always be the first player. In dedicated servers, however, **Entity( 1 )** won't always be a valid player.  
--- @param entityIndex number @The entity index.
--- @return GEntity @The entity if it exists, or NULL if it doesn't.
function Entity(entityIndex)
end

--- Throws an error. This is currently an alias of Global.ErrorNoHalt despite it once throwing a halting error like error without the stack trace appended.  
--- 🦟 **BUG**: [Using this function in the menu state exits the menu.](https://github.com/Facepunch/garrysmod-issues/issues/1810)  
--- 🦟 **BUG**: [This function throws a non-halting error instead of a halting error.](https://github.com/Facepunch/garrysmod-issues/issues/2113)  

function Error(...)
end

--- Throws a Lua error but does not break out of the current call stack.  
--- This function will not print a stack trace like a normal error would.  
--- Essentially similar if not equivalent to Global.Msg.  
--- 🦟 **BUG**: [Using this function in the menu state exits the menu.](https://github.com/Facepunch/garrysmod-issues/issues/1810)  

function ErrorNoHalt(...)
end

--- Returns the angles of the current render context as calculated by GM:CalcView.  
--- 🦟 **BUG**: [This function is only reliable inside rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/2516)  
--- @return GAngle @The angle of the currently rendered scene.
function EyeAngles()
end

--- Returns the origin of the current render context as calculated by GM:CalcView.  
--- 🦟 **BUG**: [This function is only reliable inside rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/2516)  
--- @return GVector @Camera position.
function EyePos()
end

--- Returns the normal vector of the current render context as calculated by GM:CalcView, similar to Global.EyeAngles.  
--- 🦟 **BUG**: [This function is only reliable inside rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/2516)  
--- @return GVector @View direction of the currently rendered scene.
function EyeVector()
end

--- Returns the meta table for the class with the matching name.  
--- Internally returns debug.getregistry()[metaName]  
--- You can learn more about meta tables on the Meta Tables page.  
--- You can find a list of meta tables that can be retrieved with this function on Enums/TYPE. The name in the description is the string to use with this function.  
--- @param metaName string @The object type to retrieve the meta table of.
--- @return table @The corresponding meta table.
function FindMetaTable(metaName)
end

--- Returns the tool-tip text and tool-tip-panel (if any) of the given panel as well as itself  
--- @param panel GPanel @Panel to find tool-tip of
--- @return string, GPanel, GPanel
function FindTooltip(panel)
end

--- Formats the specified values into the string given. Same as string.format.  
--- @param format string @The string to be formatted
--- @return string @The formatted string
function Format(format, ...)
end

--- Returns the number of frames rendered since the game was launched.  
function FrameNumber()
end

--- Returns the Global.CurTime-based time in seconds it took to render the last frame.  
--- This should be used for frame/tick based timing, such as movement prediction or animations.  
--- For real-time-based frame time that isn't affected by host_timescale, use Global.RealFrameTime. RealFrameTime is more suited for things like GUIs or HUDs.  
--- @return number @time (in seconds)
function FrameTime()
end

--- Gets the ConVar with the specified name.  
--- ℹ **NOTE**: This function uses Global.GetConVar_Internal internally, but caches the result in Lua for quicker lookups.  
--- @param name string @Name of the ConVar to get
--- @return GConVar @The ConVar object, or nil if no such ConVar was found.
function GetConVar(name)
end

--- 🛑 **DEPRECATED**: Store the ConVar object retrieved with Global.GetConVar and call ConVar:GetInt or ConVar:GetFloat on it.  
--- Gets the numeric value ConVar with the specified name.  
--- @param name string @Name of the ConVar to get.
--- @return number @The ConVar's value.
function GetConVarNumber(name)
end

--- 🛑 **DEPRECATED**: Store the ConVar object retrieved with Global.GetConVar and call ConVar:GetString on it.  
--- Gets the string value ConVar with the specified name.  
--- @param name string @Name of the ConVar to get.
--- @return string @The ConVar's value.
function GetConVarString(name)
end

--- Returns an angle that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default GAngle @The value to return if the global value is not set.
--- @return GAngle @The global value, or default if the global is not set.
function GetGlobalAngle(index, default)
end

--- Returns a boolean that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default boolean @The value to return if the global value is not set.
--- @return boolean @The global value, or the default if the global value is not set.
function GetGlobalBool(index, default)
end

--- Returns an entity that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default GEntity @The value to return if the global value is not set.
--- @return GEntity @The global value, or the default if the global value is not set.
function GetGlobalEntity(index, default)
end

--- Returns a float that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default number @The value to return if the global value is not set.
--- @return number @The global value, or the default if the global value is not set.
function GetGlobalFloat(index, default)
end

--- Returns an integer that is shared between the server and all clients.  
--- 🦟 **BUG**: [This function will not round decimal values as it actually networks a float internally.](https://github.com/Facepunch/garrysmod-issues/issues/3374)  
--- @param index string @The unique index to identify the global value with.
--- @param default number @The value to return if the global value is not set.
--- @return number @The global value, or the default if the global value is not set.
function GetGlobalInt(index, default)
end

--- Returns a string that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default string @The value to return if the global value is not set.
--- @return string @The global value, or the default if the global value is not set.
function GetGlobalString(index, default)
end

--- Returns a vector that is shared between the server and all clients.  
--- @param Index string @The unique index to identify the global value with.
--- @param Default GVector @The value to return if the global value is not set.
--- @return GVector @The global value, or the default if the global value is not set.
function GetGlobalVector(Index, Default)
end

--- Returns the panel that is used as a wrapper for the HUD.  
--- See also vgui.GetWorldPanel  
--- @return GPanel @The HUD panel
function GetHUDPanel()
end

--- Returns the name of the current server.  
--- @return string @The name of the server.
function GetHostName()
end

--- Returns the player whose movement commands are currently being processed. The player this returns can safely have Player:GetCurrentCommand() called on them. See Prediction.  
--- @return GPlayer @The player currently being predicted, or NULL if no command processing is currently being done.
function GetPredictionPlayer()
end

--- Creates or gets the rendertarget with the given name.  
--- See Global.GetRenderTargetEx for an advanced version of this function with more options.  
--- 🦟 **BUG**: [This crashes when used on a cubemap texture.](https://github.com/Facepunch/garrysmod-issues/issues/2885)  
--- @param name string @The internal name of the render target.
--- @param width number @The width of the render target, must be power of 2
--- @param height number @The height of the render target, must be power of 2
--- @param additive boolean @Sets whenever the rt should be additive.
--- @return GITexture @The render target
function GetRenderTarget(name, width, height, additive)
end

--- Gets (or creates if it does not exist) the rendertarget with the given name, this function allows to adjust the creation of a rendertarget more than Global.GetRenderTarget.  
--- See also render.PushRenderTarget and render.SetRenderTarget.  
--- @param name string @The internal name of the render target
--- @param width number @The width of the render target, must be power of 2.
--- @param height number @The height of the render target, must be power of 2.
--- @param sizeMode number @Bitflag that influences the sizing of the render target, see Enums/RT_SIZE.
--- @param depthMode number @Bitflag that determines the depth buffer usage of the render target Enums/MATERIAL_RT_DEPTH.
--- @param textureFlags number @Bitflag that configurates the texture, see Enums/TEXTUREFLAGS
--- @param rtFlags number @Flags that controll the HDR behaviour of the render target, see Enums/CREATERENDERTARGETFLAGS.
--- @param imageFormat number @Image format, see Enums/IMAGE_FORMAT.
--- @return GITexture @The new render target.
function GetRenderTargetEx(name, width, height, sizeMode, depthMode, textureFlags, rtFlags, imageFormat)
end

--- Returns the entity the client is using to see from (such as the player itself, the camera, or another entity).  
--- @return GEntity @The view entity.
function GetViewEntity()
end

--- Converts a color from [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a Color.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param hue number @The hue in degrees from 0-360.
--- @param saturation number @The saturation from 0-1.
--- @param value number @The lightness from 0-1.
--- @return table @The Color created from the HSL color space.
function HSLToColor(hue, saturation, value)
end

--- Converts a color from [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a Color.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param hue number @The hue in degrees from 0-360.
--- @param saturation number @The saturation from 0-1.
--- @param value number @The value from 0-1.
--- @return table @The Color created from the HSV color space.
function HSVToColor(hue, saturation, value)
end

--- Launches an asynchronous http request with the given parameters.  
--- 🦟 **BUG**: [This cannot send or receive multiple headers with the same name.](https://github.com/Facepunch/garrysmod-issues/issues/2232)  
--- ℹ **NOTE**: HTTP-requests on private networks don't work. To enable HTTP-requests on private networks use Command Line Parameters `-allowlocalhttp`  
--- @param parameters table @The request parameters
--- @return boolean @true if we made a request, nil if we failed.
function HTTP(parameters)
end

--- 🛑 **DEPRECATED**: To send the target file to the client simply call AddCSLuaFile() in the target file itself.  
--- This function works exactly the same as Global.include both clientside and serverside.  
--- The only difference is that on the serverside it also calls Global.AddCSLuaFile on the filename, so that it gets sent to the client.  
--- @param filename string @The filename of the Lua file you want to include.
function IncludeCS(filename)
end

--- Returns whether the given object does or doesn't have a `metatable` of a color.  
--- 🦟 **BUG**: [Engine functions (i.e. those not written in plain Lua) that return color objects do not currently set the color metatable and this function will return false if you use it on them.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param Object any @The object to be tested
--- @return boolean @Whether the given object is a color or not
function IsColor(Object)
end

--- Returns if the given NPC class name is an enemy.  
--- Returns true if the entity name is one of the following:  
--- * "npc_antlion"  
--- * "npc_antlionguard"  
--- * "npc_antlionguardian"  
--- * "npc_barnacle"  
--- * "npc_breen"  
--- * "npc_clawscanner"  
--- * "npc_combine_s"  
--- * "npc_cscanner"  
--- * "npc_fastzombie"  
--- * "npc_fastzombie_torso"  
--- * "npc_headcrab"  
--- * "npc_headcrab_fast"  
--- * "npc_headcrab_poison"  
--- * "npc_hunter"  
--- * "npc_metropolice"  
--- * "npc_manhack"  
--- * "npc_poisonzombie"  
--- * "npc_strider"  
--- * "npc_stalker"  
--- * "npc_zombie"  
--- * "npc_zombie_torso"  
--- * "npc_zombine"  
--- @param className string @Class name of the entity to check
--- @return boolean @Is an enemy
function IsEnemyEntityName(className)
end

--- Returns if the passed object is an Entity. Alias of Global.isentity.  
--- @param variable any @The variable to check.
--- @return boolean @True if the variable is an Entity.
function IsEntity(variable)
end

--- Returns if this is the first time this hook was predicted.  
--- This is useful for one-time logic in your SWEPs PrimaryAttack, SecondaryAttack and Reload and other  (to prevent those hooks from being called rapidly in succession). It's also useful in a Move hook for when the client predicts movement.  
--- Visit Prediction for more information about this behavior.  
--- ℹ **NOTE**: This is already used internally for Entity:EmitSound, Weapon:SendWeaponAnim and Entity:FireBullets, but NOT in  util.Effect.  
--- @return boolean @Whether or not this is the first time being predicted.
function IsFirstTimePredicted()
end

--- Returns if the given NPC class name is a friend.  
--- Returns true if the entity name is one of the following:  
--- * "npc_alyx"  
--- * "npc_barney"  
--- * "npc_citizen"  
--- * "npc_dog"  
--- * "npc_eli"  
--- * "npc_fisherman"  
--- * "npc_gman"  
--- * "npc_kleiner"  
--- * "npc_magnusson"  
--- * "npc_monk"  
--- * "npc_mossman"  
--- * "npc_odessa"  
--- * "npc_vortigaunt"  
--- @param className string @Class name of the entity to check
--- @return boolean @Is a friend
function IsFriendEntityName(className)
end

--- Checks whether or not a game is currently mounted. Uses data given by engine.GetGames.  
--- @param game string @The game string/app ID to check.
--- @return boolean @True if the game is mounted.
function IsMounted(game)
end

--- Returns whether or not every element within a table is a valid entity  
--- @param table table @Table containing entities to check
--- @return boolean @All entities valid
function IsTableOfEntitiesValid(table)
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
function IsUselessModel(modelName)
end

--- Returns whether an object is valid or not. (Such as Entitys, Panels, custom table objects and more).  
--- Checks that an object is not nil, has an IsValid method and if this method returns true.  
--- ℹ **NOTE**: Due to vehicles being technically valid the moment they're spawned, also use Vehicle:IsValidVehicle to make sure they're fully initialized  
--- @param toBeValidated any @The table or object to be validated.
--- @return boolean @True if the object is valid.
function IsValid(toBeValidated)
end

--- Adds javascript function 'language.Update' to an HTML panel as a method to call Lua's language.GetPhrase function.  
--- @param htmlPanel GPanel @Panel to add javascript function 'language.Update' to.
function JS_Language(htmlPanel)
end

--- Adds javascript function 'util.MotionSensorAvailable' to an HTML panel as a method to call Lua's motionsensor.IsAvailable function.  
--- @param htmlPanel GPanel @Panel to add javascript function 'util.MotionSensorAvailable' to.
function JS_Utility(htmlPanel)
end

--- Adds workshop related javascript functions to an HTML panel, used by the "Dupes" and "Saves" tabs in the spawnmenu.  
--- @param htmlPanel GPanel @Panel to add javascript functions to.
function JS_Workshop(htmlPanel)
end

--- Convenience function that creates a DLabel, sets the text, and returns it  
--- @param text string @The string to set the label's text to
--- @param parent GPanel @Optional
--- @return GPanel @The created DLabel
function Label(text, parent)
end

--- Performs a linear interpolation from the start number to the end number.  
--- This function provides a very efficient and easy way to smooth out movements.  
--- ℹ **NOTE**: This function is not meant to be used with constant value in the first argument, if you're dealing with animation! Use a value that changes over time. See example for **proper** usage of Lerp for animations  
--- @param t number @The fraction for finding the result
--- @param from number @The starting number
--- @param to number @The ending number
--- @return number @The result of the linear interpolation, `(1 - t) * from + t * to`.
function Lerp(t, from, to)
end

--- Returns point between first and second angle using given fraction and linear interpolation  
--- ℹ **NOTE**: This function is not meant to be used with constant value in the first argument, if you're dealing with animation! Use a value that changes over time  
--- @param ratio number @Ratio of progress through values
--- @param angleStart GAngle @Angle to begin from
--- @param angleEnd GAngle @Angle to end at
--- @return GAngle @angle
function LerpAngle(ratio, angleStart, angleEnd)
end

--- Linear interpolation between two vectors. It is commonly used to smooth movement between two vectors  
--- ℹ **NOTE**: This function is not meant to be used with constant value in the first argument, if you're dealing with animation! Use a value that changes over time  
--- @param fraction number @Fraction ranging from 0 to 1
--- @param from GVector @The initial Vector
--- @param to GVector @The desired Vector
--- @return GVector @The lerped vector.
function LerpVector(fraction, from, to)
end

--- Loads all preset settings for the presets and returns them in a table  
--- @return table @Preset data
function LoadPresets()
end

--- Returns the player object of the current client.  
--- ℹ **NOTE**: LocalPlayer() will return NULL until all entities have been initialized. See GM:InitPostEntity.  
--- @return GPlayer @The player object representing the client.
function LocalPlayer()
end

--- Translates the specified position and angle from the specified local coordinate system into worldspace coordinates.  
--- If you're working with an entity's local vectors, use Entity:LocalToWorld and/or Entity:LocalToWorldAngles instead.  
--- See also: Global.WorldToLocal, the reverse of this function.  
--- @param localPos GVector @The position vector in the source coordinate system, that should be translated to world coordinates
--- @param localAng GAngle @The angle in the source coordinate system, that should be converted to a world angle
--- @param originPos GVector @The origin point of the source coordinate system, in world coordinates
--- @param originAngle GAngle @The angles of the source coordinate system, as a world angle
--- @return GVector, GAngle
function LocalToWorld(localPos, localAng, originPos, originAngle)
end

--- Returns a localisation for the given token, if none is found it will return the default (second) parameter.  
--- @param localisationToken string @The token to find a translation for.
--- @param default string @The default value to be returned if no translation was found.
function Localize(localisationToken, default)
end

--- Either returns the material with the given name, or loads the material interpreting the first argument as the path.  
--- ℹ **NOTE**: When using .png or .jpg textures, try to make their sizes Power Of 2 (1, 2, 4, 8, 16, 32, 64, etc). While images are no longer scaled to Power of 2 sizes since February 2019, it is a good practice for things like icons, etc.  
--- @param materialName string @The material name or path
--- @param pngParameters string @A string containing space separated keywords which will be used to add material parameters
--- @return GIMaterial, number
function Material(materialName, pngParameters)
end

--- Returns a VMatrix object.  
--- @param data table @Initial data to initialize the matrix with
--- @return GVMatrix @New matrix.
function Matrix(data)
end

--- Returns a new mesh object.  
--- @param mat GIMaterial @The material the mesh is intended to be rendered with
--- @return GIMesh @The created object.
function Mesh(mat)
end

--- Runs util.PrecacheModel and returns the string  
--- @param model string @The model to precache
--- @return string @The same string entered as an argument
function Model(model)
end

--- Writes every given argument to the console.  
--- Automatically attempts to convert each argument to a string. (See Global.tostring)  
--- Unlike Global.print, arguments are not separated by anything. They are simply concatenated.  
--- Additionally, a newline isn't added automatically to the end, so subsequent Msg or print operations will continue the same line of text in the console. See Global.MsgN for a version that does add a newline.  
--- The text is blue on the server, orange on the client, and green on the menu:   

function Msg(...)
end

--- Works exactly like Global.Msg except that, if called on the server, will print to all players consoles plus the server console.  

function MsgAll(...)
end

--- Just like Global.Msg, except it can also print colored text, just like chat.AddText.  

function MsgC(...)
end

--- Same as Global.print, except it concatinates the arguments without inserting any whitespace in between them.  
--- See also Global.Msg, which doesn't add a newline (`"\n"`) at the end.  

function MsgN(...)
end

--- Returns named color defined in resource/ClientScheme.res.  
--- @param name string @Name of color
--- @return table @A Color or nil
function NamedColor(name)
end

--- Returns the amount of skins the specified model has.  
--- See also Entity:SkinCount if you have an entity.  
--- @param modelName string @Model to return amount of skins of
--- @return number @Amount of skins
function NumModelSkins(modelName)
end

--- Modifies the given vectors so that all of vector2's axis are larger than vector1's by switching them around. Also known as ordering vectors.  
--- ℹ **NOTE**: This function will irreversibly modify the given vectors  
--- @param vector1 GVector @Bounding box min resultant
--- @param vector2 GVector @Bounding box max resultant
function OrderVectors(vector1, vector2)
end

--- Calls game.AddParticles and returns given string.  
--- @param file string @The particle file.
--- @return string @The particle file.
function Particle(file)
end

--- Creates a particle effect.  
--- ℹ **NOTE**: The particle effect must be precached with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param particleName string @The name of the particle effect.
--- @param position GVector @The start position of the effect.
--- @param angles GAngle @The orientation of the effect.
--- @param parent GEntity @If set, the particle will be parented to the entity.
function ParticleEffect(particleName, position, angles, parent)
end

--- Creates a particle effect with specialized parameters.  
--- ℹ **NOTE**: The particle effect must be precached with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param particleName string @The name of the particle effect.
--- @param attachType number @Attachment type using Enums/PATTACH.
--- @param entity GEntity @The entity to be used in the way specified by the attachType.
--- @param attachmentID number @The id of the attachment to be used in the way specified by the attachType.
function ParticleEffectAttach(particleName, attachType, entity, attachmentID)
end

--- Creates a new CLuaEmitter.  
--- ℹ **NOTE**: Do not forget to delete the emitter with CLuaEmitter:Finish once you are done with it  
--- @param position GVector @The start position of the emitter
--- @param use3D boolean @Whenever to render the particles in 2D or 3D mode.
--- @return GCLuaEmitter @The new particle emitter.
function ParticleEmitter(position, use3D)
end

--- Creates a path for the bot to follow  
--- @param type string @The name of the path to create
--- @return GPathFollower @The path
function Path(type)
end

--- Returns the player with the matching Player:UserID.  
--- For a function that returns a player based on their Entity:EntIndex, see Global.Entity.  
--- For a function that returns a player based on their connection ID, see player.GetByID.  
--- @param playerIndex number @The player index.
--- @return GPlayer @The retrieved player.
function Player(playerIndex)
end

--- Moves the given model to the given position and calculates appropriate camera parameters for rendering the model to an icon.  
--- The output table interacts nicely with Panel:RebuildSpawnIconEx with a few key renames.  
--- @param model GEntity @Model that is being rendered to the spawn icon
--- @param position GVector @Position that the model is being rendered at
--- @param noAngles boolean @If true the function won't reset the angles to 0 for the model.
--- @return table @Table of information of the view which can be used for rendering
function PositionSpawnIcon(model, position, noAngles)
end

--- Precaches the particle with the specified name.  
--- @param particleSystemName string @The name of the particle system.
function PrecacheParticleSystem(particleSystemName)
end

--- Precaches a scene file.  
--- @param scene string @Path to the scene file to precache.
function PrecacheScene(scene)
end

--- Load and precache a custom sentence file.  
--- @param filename string @The path to the custom sentences.txt.
function PrecacheSentenceFile(filename)
end

--- Precache a sentence group in a sentences.txt definition file.  
--- @param group string @The group to precache.
function PrecacheSentenceGroup(group)
end

--- Displays a message in the chat, console, or center of screen of every player.  
--- This uses the archaic user message system (umsg) and hence is limited to ≈250 characters.  
--- @param type number @Which type of message should be sent to the players (see Enums/HUD)
--- @param message string @Message to be sent to the players
function PrintMessage(type, message)
end

--- Recursively prints the contents of a table to the console.  
--- @param tableToPrint table @The table to be printed
--- @param indent number @Number of tabs to start indenting at
--- @param done table @Internal argument, you shouldn't normally change this
function PrintTable(tableToPrint, indent, done)
end

--- Creates a new ProjectedTexture.  
--- @return GProjectedTexture @Newly created projected texture.
function ProjectedTexture()
end

--- Runs a function without stopping the whole script on error.  
--- This function is similar to Global.pcall and Global.xpcall except the errors are still printed and sent to the error handler (i.e. sent to server console if clientside and GM:OnLuaError called).  
--- @param func function @Function to run
--- @return boolean @Whether the function executed successfully or not
function ProtectedCall(func)
end

--- Returns an iterator function that can be used to loop through a table in random order  
--- @param table table @Table to create iterator for
--- @param descending boolean @Whether the iterator should iterate descending or not
--- @return function @Iterator function
function RandomPairs(table, descending)
end

--- Returns the real frame-time which is unaffected by host_timescale. To be used for GUI effects (for example)  
--- @return number @Real frame time
function RealFrameTime()
end

--- Returns the uptime of the game/server in seconds (to at least 4 decimal places)  
--- ℹ **NOTE**: This is **not** synchronised or affected by the game.  
--- ℹ **NOTE**: This will be affected by precision loss if the uptime is more than 30+(?) days, and effectively cease to be functional after 50+(?) days.  
--- Changing the map will **not** fix it like it does with CurTime. A server restart is necessary.  
--- You should use this function (or SysTime) for timing real-world events such as user interaction, but not for timing game events such as animations.  
--- See also: Global.CurTime, Global.SysTime  
--- @return number @Uptime of the game/server.
function RealTime()
end

--- Creates a new CRecipientFilter.  
--- @return GCRecipientFilter @The new created recipient filter.
function RecipientFilter()
end

--- Registers a Derma element to be closed the next time Global.CloseDermaMenus is called  
--- @param menu GPanel @Menu to be registered for closure
function RegisterDermaMenuForClose(menu)
end

--- Saves position of your cursor on screen. You can restore it by using  
--- Global.RestoreCursorPosition.  
function RememberCursorPosition()
end

--- Does the removing of the tooltip panel. Called by Global.EndTooltip.  
function RemoveTooltip()
end

--- Returns the angle that the clients view is being rendered at  
--- @return GAngle @Render Angles
function RenderAngles()
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
function RenderDoF(origin, angle, usableFocusPoint, angleSize, radialSteps, passes, spin, inView, fov)
end

--- Renders the stereoscopic post-process effect  
--- @param viewOrigin GVector @Origin to render the effect at
--- @param viewAngles GAngle @Angles to render the effect at
function RenderStereoscopy(viewOrigin, viewAngles)
end

--- Renders the Super Depth of Field post-process effect  
--- @param viewOrigin GVector @Origin to render the effect at
--- @param viewAngles GAngle @Angles to render the effect at
--- @param viewFOV number @Field of View to render the effect at
function RenderSuperDoF(viewOrigin, viewAngles, viewFOV)
end

--- Restores position of your cursor on screen. You can save it by using Global.RememberCursorPosition.  
function RestoreCursorPosition()
end

--- Executes the given console command with the parameters.  
--- ℹ **NOTE**: Some commands/convars are blocked from being ran/changed using this function, usually to prevent harm/annoyance to clients. For a list of blocked commands, see Blocked ConCommands.  
--- @param command string @The command to be executed.
function RunConsoleCommand(command, ...)
end

--- Evaluates and executes the given code, will throw an error on failure.  
--- ℹ **NOTE**: Local variables are not passed to the given code.  
--- @param code string @The code to execute.
--- @param identifier string @The name that should appear in any error messages caused by this code.
--- @param handleError boolean @If false, this function will return a string containing any error messages instead of throwing an error.
--- @return string @If handleError is false, the error message (if any).
function RunString(code, identifier, handleError)
end

--- Alias of Global.RunString.  
--- 🛑 **DEPRECATED**: Use Global.RunString instead.  
function RunStringEx()
end

--- Returns the input value in an escaped form so that it can safely be used inside of queries. The returned value is surrounded by quotes unless noQuotes is true. Alias of sql.SQLStr  
--- @param input string @String to be escaped
--- @param noQuotes boolean @Whether the returned value should be surrounded in quotes or not
--- @return string @Escaped input
function SQLStr(input, noQuotes)
end

--- 🛑 **DEPRECATED**: You should be using Global.ScreenScale instead.  
--- Returns a number based on the Size argument and your screen's width. Alias of Global.ScreenScale.  
--- @param Size number @The number you want to scale.
function SScale(Size)
end

--- Returns the ordinal suffix of a given number.  
--- @param number number @The number to find the ordinal suffix of.
--- @return string @suffix
function STNDRD(number)
end

--- Removes the given entity unless it is a player or the world entity  
--- @param ent GEntity @Entity to safely remove.
function SafeRemoveEntity(ent)
end

--- Removes entity after delay using Global.SafeRemoveEntity  
--- @param entity GEntity @Entity to be removed
--- @param delay number @Delay for entity removal in seconds
function SafeRemoveEntityDelayed(entity, delay)
end

--- Overwrites all presets with the supplied table. Used by the presets for preset saving  
--- @param presets table @Presets to be saved
function SavePresets(presets)
end

--- Gets the height of the game's window (in pixels).  
--- @return number @The height of the game's window in pixels
function ScrH()
end

--- Gets the width of the game's window (in pixels).  
--- @return number @The width of the game's window in pixels
function ScrW()
end

--- Returns a number based on the Size argument and your screen's width. The screen's width is always equal to size 640. This function is primarily used for scaling font sizes.  
--- @param Size number @The number you want to scale.
function ScreenScale(Size)
end

--- 🛑 **DEPRECATED**: This uses the umsg internally, which has been deprecated. Use the net instead.  
--- Send a usermessage  
--- ℹ **NOTE**: Useless on client, only server can send info to client.  
--- @param name string @The name of the usermessage
--- @param recipients any @Can be a CRecipientFilter, table or Player object.
function SendUserMessage(name, recipients, ...)
end

--- Returns approximate duration of a sentence by name. See Global.EmitSentence  
--- @param name string @The sentence name
--- @return number @The approximate duration
function SentenceDuration(name)
end

--- Prints "ServerLog: PARAM" without a newline, to the server log and console.  
--- @param parameter string @The value to be printed to console.
function ServerLog(parameter)
end

--- Adds the given string to the computers clipboard, which can then be pasted in or outside of GMod with Ctrl + V.  
--- @param text string @The text to add to the clipboard.
function SetClipboardText(text)
end

--- Defines an angle to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global angle with
--- @param angle GAngle @Angle to be networked
function SetGlobalAngle(index, angle)
end

--- Defined a boolean to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global boolean with
--- @param bool boolean @Boolean to be networked
function SetGlobalBool(index, bool)
end

--- Defines an entity to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global entity with
--- @param ent GEntity @Entity to be networked
function SetGlobalEntity(index, ent)
end

--- Defines a floating point number to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global float with
--- @param float number @Float to be networked
function SetGlobalFloat(index, float)
end

--- Sets an integer that is shared between the server and all clients.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- 🦟 **BUG**: [This function will not round decimal values as it actually networks a float internally.](https://github.com/Facepunch/garrysmod-issues/issues/3374)  
--- @param index string @The unique index to identify the global value with.
--- @param value number @The value to set the global value to
function SetGlobalInt(index, value)
end

--- Defines a string with a maximum of 199 characters to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global string with
--- @param string string @String to be networked
function SetGlobalString(index, string)
end

--- Defines a vector to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global vector with
--- @param vec GVector @Vector to be networked
function SetGlobalVector(index, vec)
end

--- Called by the engine to set which constraint system [https://developer.valvesoftware.com/wiki/Phys_constraintsystem] the next created constraints should use  
--- @param constraintSystem GEntity @Constraint system to use
function SetPhysConstraintSystem(constraintSystem)
end

--- This function can be used in a for loop instead of Global.pairs. It sorts all **keys** alphabetically.  
--- For sorting by specific **value member**, use Global.SortedPairsByMemberValue.  
--- For sorting by **value**, use Global.SortedPairsByValue.  
--- @param table table @The table to sort
--- @param desc boolean @Reverse the sorting order
--- @return function, table
function SortedPairs(table, desc)
end

--- Returns an iterator function that can be used to loop through a table in order of member values, when the values of the table are also tables and contain that member.  
--- To sort by **value**, use Global.SortedPairsByValue.  
--- To sort by **keys**, use Global.SortedPairs.  
--- @param table table @Table to create iterator for.
--- @param memberKey any @Key of the value member to sort by.
--- @param descending boolean @Whether the iterator should iterate in descending order or not.
--- @return function, table
function SortedPairsByMemberValue(table, memberKey, descending)
end

--- Returns an iterator function that can be used to loop through a table in order of its **values**.  
--- To sort by specific **value member**, use Global.SortedPairsByMemberValue.  
--- To sort by **keys**, use Global.SortedPairs.  
--- @param table table @Table to create iterator for
--- @param descending boolean @Whether the iterator should iterate in descending order or not
--- @return function, table
function SortedPairsByValue(table, descending)
end

--- Runs util.PrecacheSound and returns the string.  
--- 🦟 **BUG**: util.PrecacheSound does nothing and therefore so does this function  
--- @param soundPath string @The soundpath to precache
--- @return string @The string passed as the first argument
function Sound(soundPath)
end

--- Returns the duration of the sound specified in seconds.  
--- 🦟 **BUG**: [This only works properly for .wav files.](https://github.com/Facepunch/garrysmod-issues/issues/936)  
--- @param soundName string @The sound file path.
--- @return number @Sound duration in seconds.
function SoundDuration(soundName)
end

--- Suppress any networking from the server to the specified player. This is automatically called by the engine before/after a player fires their weapon, reloads, or causes any other similar shared-predicted event to occur.  
--- @param suppressPlayer GPlayer @The player to suppress any networking to.
function SuppressHostEvents(suppressPlayer)
end

--- Returns a highly accurate time in seconds since the start up, ideal for benchmarking.  
--- @return number @Uptime of the server.
function SysTime()
end

--- Returns a TauntCamera object  
--- @return table @TauntCamera
function TauntCamera()
end

--- Clears focus from any text entries player may have focused.  
function TextEntryLoseFocus()
end

--- Returns a cosine value that fluctuates based on the current time  
--- @param frequency number @The frequency of fluctuation
--- @param min number @Minimum value
--- @param max number @Maxmimum value
--- @param offset number @Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time
--- @return number @Cosine value
function TimedCos(frequency, min, max, offset)
end

--- Returns a sine value that fluctuates based on Global.CurTime. The value returned will be between the start value plus/minus the range value.  
--- 🦟 **BUG**: The range arguments don't work as intended. The existing (bugged) behavior is documented below.  
--- @param frequency number @The frequency of fluctuation, in
--- @param origin number @The center value of the sine wave.
--- @param max number @This argument's distance from origin defines the size of the full range of the sine wave
--- @param offset number @Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time
--- @return number @Sine value
function TimedSin(frequency, origin, max, offset)
end

--- Gets the associated type ID of the variable. Unlike Global.type, this does not work with no value - an argument must be provided.  
--- 🦟 **BUG**: [This returns garbage for _LOADLIB objects.](https://github.com/Facepunch/garrysmod-requests/issues/1120)  
--- 🦟 **BUG**: [This returns TYPE_NIL for protos.](https://github.com/Facepunch/garrysmod-requests/issues/1459)  
--- @param variable any @The variable to get the type ID of.
--- @return number @The type ID of the variable
function TypeID(variable)
end

--- 🛑 **DEPRECATED**: You should use Global.IsUselessModel instead.  
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
function UTIL_IsUselessModel(modelName)
end

--- Returns the current asynchronous in-game time.  
--- @return number @The asynchronous in-game time.
function UnPredictedCurTime()
end

--- Returns the time in seconds it took to render the VGUI.  
function VGUIFrameTime()
end

--- Creates and returns a DShape rectangle GUI element with the given dimensions.  
--- @param x number @X position of the created element
--- @param y number @Y position of the created element
--- @param w number @Width of the created element
--- @param h number @Height of the created element
--- @return GPanel @DShape element
function VGUIRect(x, y, w, h)
end

--- 🛑 **DEPRECATED**: You should use Global.IsValid instead  
--- Returns if a panel is safe to use.  
--- @param panel GPanel @The panel to validate.
function ValidPanel(panel)
end

--- Creates a Vector object.  
--- @param x number @The x component of the vector
--- @param y number @The y component of the vector.
--- @param z number @The z component of the vector.
--- @return GVector @The created vector object.
function Vector(x, y, z)
end

--- Returns a random vector whose components are each between min(inclusive), max(exclusive).  
--- @param min number @Min bound inclusive.
--- @param max number @Max bound exclusive.
--- @return GVector @The random direction vector.
function VectorRand(min, max)
end

--- Translates the specified position and angle into the specified coordinate system.  
--- @param position GVector @The position that should be translated from the current to the new system.
--- @param angle GAngle @The angles that should be translated from the current to the new system.
--- @param newSystemOrigin GVector @The origin of the system to translate to.
--- @param newSystemAngles GAngle @The angles of the system to translate to.
--- @return GVector, GAngle
function WorldToLocal(position, angle, newSystemOrigin, newSystemAngles)
end

--- If the result of the first argument is false or nil, an error is thrown with the second argument as the message.  
--- @param expression any @The expression to assert.
--- @param errorMessage string @The error message to throw when assertion fails
--- @return any, any, any
function assert(expression, errorMessage, ...)
end

--- Executes the specified action on the garbage collector.  
--- @param action string @The action to run
--- @param arg number @The argument of the specified action, only applicable for "step", "setpause" and "setstepmul".
--- @return any @If the action is count this is the number of kilobytes of memory used by Lua
function collectgarbage(action, arg)
end

--- Throws a Lua error and breaks out of the current call stack.  
--- @param message string @The error message to throw
--- @param errorLevel number @The level to throw the error at.
function error(message, errorLevel)
end

--- 🛑 **DEPRECATED**: This function was deprecated in Lua 5.1 and is removed in Lua 5.2. Use Global.collectgarbage( "count" ) instead.  
---  Returns the current floored dynamic memory usage of Lua in kilobytes.  
--- @return number @The current floored dynamic memory usage of Lua, in kilobytes.
function gcinfo()
end

--- Returns the environment table of either the stack level or the function specified.  
--- @param location function @The object to get the enviroment from
--- @return table @The environment.
function getfenv(location)
end

--- Returns the metatable of an object. This function obeys the metatable's __metatable field, and will return that field if the metatable has it set.  
--- Use debug.getmetatable if you want the true metatable of the object.  
--- @param object any @The value to return the metatable of.
--- @return any @The metatable of the value
function getmetatable(object)
end

--- Executes a Lua script.  
--- ℹ **NOTE**: Addon files (.gma files) do not support relative parent folders (`..` notation).  
--- ⚠ **WARNING**: The file you are attempting to include MUST NOT be empty or the include will fail. Files over a certain size may fail as well.  
--- ⚠ **WARNING**: If the file you are including is clientside or shared, it **must** be Global.AddCSLuaFile'd or this function will error saying the file doesn't exist.  
--- ℹ **NOTE**: This function will try to load local client file if `sv_allowcslua` is **1**  
--- 🦟 **BUG**: [Global.pcalling this function will break autorefresh.](https://github.com/Facepunch/garrysmod-issues/issues/1976)  
--- @param fileName string @The name of the script to be executed
--- @return any @Anything that the executed Lua script returns.
function include(fileName)
end

--- Returns an iterator function for a for loop, to return ordered key-value pairs from a table.  
--- This will only iterate though **numerical** keys, and these must also be **sequential**; starting at 1 with no gaps.  
--- For unordered pairs, see Global.pairs.  
--- For pairs sorted by key in alphabetical order, see Global.SortedPairs.  
--- @param tab table @The table to iterate over.
--- @return function, table, number
function ipairs(tab)
end

--- Returns if the passed object is an Angle.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is an Angle.
function isangle(variable)
end

--- Returns if the passed object is a boolean.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a boolean.
function isbool(variable)
end

--- Returns if the passed object is a function.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a function.
function isfunction(variable)
end

--- Returns whether the passed object is a VMatrix.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a VMatrix.
function ismatrix(variable)
end

--- Returns if the passed object is a number.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a number.
function isnumber(variable)
end

--- Returns if the passed object is a Panel.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a Panel.
function ispanel(variable)
end

--- Returns if the passed object is a string.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a string.
function isstring(variable)
end

--- Returns if the passed object is a table.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a table.
function istable(variable)
end

--- Returns if the passed object is a Vector.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a Vector.
function isvector(variable)
end

--- Creates a table with the specified module name and sets the function environment for said table.  
--- Any passed loaders are called with the table as an argument. An example of this is package.seeall.  
--- @param name string @The name of the module
function module(name, ...)
end

--- Returns a new userdata object.  
--- @param addMetatable boolean @If true, the userdata will get its own metatable automatically.
--- @return userdata @The newly created userdata.
function newproxy(addMetatable)
end

--- Returns the next key and value pair in a table.  
--- ℹ **NOTE**: Table keys in Lua have no specific order, and will be returned in whatever order they exist in memory. This may not always be in ascending order or alphabetical order. If you need to iterate over an array in order, use Global.ipairs.  
--- @param tab table @The table
--- @param prevKey any @The previous key in the table.
--- @return any, any
function next(tab, prevKey)
end

--- Returns an iterator function(Global.next) for a for loop that will return the values of the specified table in an arbitrary order.  
--- For alphabetical **key** order use Global.SortedPairs.  
--- For alphabetical **value** order use Global.SortedPairsByValue.  
--- @param tab table @The table to iterate over
--- @return function, table, any
function pairs(tab)
end

--- Calls a function and catches an error that can be thrown while the execution of the call.  
--- 🦟 **BUG**: [Using this function with Global.include will break autorefresh.](https://github.com/Facepunch/garrysmod-issues/issues/1976)  
--- 🦟 **BUG**: [This cannot stop errors from hooks called from the engine.](https://github.com/Facepunch/garrysmod-issues/issues/2036)  
--- 🦟 **BUG**: [This does not stop Global.Error and Global.ErrorNoHalt from sending error messages to the server (if called clientside) or calling the GM:OnLuaError hook. The success boolean returned will always return true and thus you will not get the error message returned. Global.error does not exhibit these behaviours.](https://github.com/Facepunch/garrysmod-issues/issues/2498)  
--- 🦟 **BUG**: [This does not stop errors incurred by Global.include.](https://github.com/Facepunch/garrysmod-issues/issues/3112)  
--- @param func function @Function to be executed and of which the errors should be caught of
--- @return boolean, any
function pcall(func, ...)
end

--- Writes every given argument to the console.  
--- Automatically attempts to convert each argument to a string. (See Global.tostring)  
--- Seperates lines with a line break (`"\n"`)  
--- Separates arguments with a tab character (`"\t"`).  

function print(...)
end

--- Compares the two values without calling their __eq operator.  
--- @param value1 any @The first value to compare.
--- @param value2 any @The second value to compare.
--- @return boolean @Whether or not the two values are equal.
function rawequal(value1, value2)
end

--- Gets the value with the specified key from the table without calling the __index method.  
--- @param table table @Table to get the value from.
--- @param index any @The index to get the value from.
--- @return any @The value.
function rawget(table, index)
end

--- Sets the value with the specified key from the table without calling the __newindex method.  
--- @param table table @Table to get the value from.
--- @param index any @The index to get the value from.
--- @param value any @The value to set for the specified key.
function rawset(table, index, value)
end

--- First tries to load a binary module with the given name, if unsuccessful, it tries to load a Lua module with the given name.  
--- 🦟 **BUG**: [Running this function with Global.pcall or Global.xpcall will still print an error that counts towards sv_kickerrornum.](https://github.com/Facepunch/garrysmod-issues/issues/1041" request="813)  
--- ℹ **NOTE**: This function will try to load local client file if `sv_allowcslua` is **1**  
--- @param name string @The name of the module to be loaded.
function require(name)
end

--- Used to select single values from a vararg or get the count of values in it.  
--- @param parameter any @Can be a number or string
--- @return any @Returns a number or vararg, depending on the select method.
function select(parameter, ...)
end

--- Sets the enviroment for a function or a stack level, if a function is passed, the return value will be the function, otherwise nil.  
--- @param location function @The function to set the enviroment for or a number representing stack level.
--- @param enviroment table @Table to be used as enviroment.
function setfenv(location, enviroment)
end

--- Sets, changes or removes a table's metatable. Returns Tab (the first argument).  
--- @param Tab table @The table who's metatable to change.
--- @param Metatable table @The metatable to assign
--- @return table @The first argument.
function setmetatable(Tab, Metatable)
end

--- Attempts to return an appropriate boolean for the given value  
--- @param val any @The object to be converted to a boolean
--- @return boolean @**false** for the boolean false
function tobool(val)
end

--- Attempts to convert the value to a number.  
--- Returns nil on failure.  
--- @param value any @The value to convert
--- @param base number @The  used in the string
--- @return number @The numeric representation of the value with the given base, or nil if the conversion failed.
function tonumber(value, base)
end

--- Attempts to convert the value to a string. If the value is an object and its metatable has defined the __tostring metamethod, this will call that function.  
--- Global.print also uses this functionality.  
--- @param value any @The object to be converted to a string.
--- @return string @The string representation of the value.
function tostring(value)
end

--- Returns a string representing the name of the type of the passed object.  
--- @param var any @The object to get the type of.
--- @return string @The name of the object's type.
function type(var)
end

--- This function takes a numeric indexed table and return all the members as a vararg. If specified, it will start at the given index and end at end index.  
--- @param tbl table @The table to generate the vararg from.
--- @param startIndex number @Which index to start from
--- @param endIndex number @Which index to end at
--- @return any @Output values
function unpack(tbl, startIndex, endIndex)
end

--- Attempts to call the first function. If the execution succeeds, this returns `true` followed by the returns of the function. If execution fails, this returns `false` and the second function is called with the error message.  
--- Unlike in Global.pcall, the stack is not unwound and can therefore be used for stack analyses with the debug.  
--- 🦟 **BUG**: [Using this function with Global.include will break autorefresh.](https://github.com/Facepunch/garrysmod-issues/issues/1976)  
--- 🦟 **BUG**: [This cannot stop errors from hooks called from the engine.](https://github.com/Facepunch/garrysmod-issues/issues/2036)  
--- 🦟 **BUG**: [This does not stop Global.Error and Global.ErrorNoHalt from sending error messages to the server (if called clientside) or calling the GM:OnLuaError hook. The success boolean returned will always return true and thus you will not get the error message returned. Global.error does not exhibit these behaviours.](https://github.com/Facepunch/garrysmod-issues/issues/2498)  
--- 🦟 **BUG**: [This does not stop errors incurred by Global.include.](https://github.com/Facepunch/garrysmod-issues/issues/3112)  
--- @param func function @The function to call initially.
--- @param errorCallback function @The function to be called if execution of the first fails; the error message is passed as a string
--- @return boolean, any
function xpcall(func, errorCallback, ...)
end

