--- Used primarily for adding new soundscript entries.  
_G.sound = {}
--- Creates a sound script. It can also override sounds, which seems to only work when set on the server.  
--- @param soundData table @The sounds properties
function sound.Add(soundData)
end

--- Overrides sounds defined inside of a txt file; typically used for adding map-specific sounds.  
--- @param filepath string @Path to the script file to load.
function sound.AddSoundOverrides(filepath)
end

--- Creates a sound from a function.  
--- 🦟 **BUG**: [This function cannot generate sounds that have a duration of less than 1 second.](https://github.com/Facepunch/garrysmod-issues/issues/3360)  
--- 🦟 **BUG**: [Sounds persist between disconnects.](https://github.com/Facepunch/garrysmod-issues/issues/4082)  
--- @param indentifier string @An unique identified for the sound
--- @param samplerate number @The sample rate of the sound
--- @param length number @The length in seconds of the sound to generate.
--- @param callback function @A function which will be called to generate every sample on the sound
function sound.Generate(indentifier, samplerate, length, callback)
end

--- Returns properties of the soundscript.  
--- @param name string @The name of the sound script
--- @return table @The properties of the soundscript
function sound.GetProperties(name)
end

--- Returns a list of all registered sound scripts.  
--- @return table @The list/array of all registered sound scripts ( No other information is provided )
function sound.GetTable()
end

--- Plays a sound from the specified position in the world.  
--- If you want to play a sound without a position, such as a UI sound, use surface.PlaySound instead.  
--- @param Name string @A string path to the sound.
--- @param Pos GVector @A vector describing where the sound should play.
--- @param Level number @Sound level in decibels
--- @param Pitch number @An integer describing the sound pitch
--- @param Volume number @A float ranging from 0-1 describing the output volume of the sound.
function sound.Play(Name, Pos, Level, Pitch, Volume)
end

--- Plays a file from GMod directory. You can find a list of all error codes [here](http://www.un4seen.com/doc/#bass/BASS_ErrorGetCode.html)  
--- For external file/stream playback, see sound.PlayURL.  
--- 🦟 **BUG**: [This fails for looping .wav files in 3D mode.](https://github.com/Facepunch/garrysmod-issues/issues/1752)  
--- 🦟 **BUG**: [This fails with unicode file names.](https://github.com/Facepunch/garrysmod-issues/issues/2304)  
--- @param path string @The path to the file to play
--- @param flags string @Flags for the sound
--- @param callback function @Callback function that is called as soon as the the stream is loaded
function sound.PlayFile(path, flags, callback)
end

--- Allows you to play external sound files, as well as online radio streams.  
--- You can find a list of all error codes [here](http://www.un4seen.com/doc/#bass/BASS_ErrorGetCode.html)  
--- For offline file playback, see sound.PlayFile.  
--- 🦟 **BUG**: [Due to a bug with [BASS](http://www.un4seen.com/), AAC codec streams cannot be played in 3D mode.](https://github.com/Facepunch/garrysmod-issues/issues/2296)  
--- @param url string @The URL of the sound to play
--- @param flags string @Flags for the sound
--- @param callback function @Callback function that is called as soon as the the stream is loaded
function sound.PlayURL(url, flags, callback)
end

