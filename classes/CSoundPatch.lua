--- @meta

--- @class GCSoundPatch
--- CSoundPatch class.  
--- Created with Global.CreateSound  
local GCSoundPatch = {}
--- Adjust the pitch, also known as the speed at which the sound is being played.  
--- Appears to only work while the sound is being played. See also CSoundPatch:PlayEx.  
--- This invokes GM:EntityEmitSound.  
--- @param pitch number @The pitch can range from 0-255
--- @param deltaTime? number @The time to fade from previous to the new pitch.
function GCSoundPatch:ChangePitch(pitch, deltaTime)
end

--- Adjusts the volume of the sound played.  
--- Appears to only work while the sound is being played. See also CSoundPatch:PlayEx.  
--- @param volume number @The volume ranges from 0 to 1.
--- @param deltaTime? number @Time to fade the volume from previous to new value from.
function GCSoundPatch:ChangeVolume(volume, deltaTime)
end

--- Fades out the volume of the sound from the current volume to 0 in the given amount of seconds.  
--- @param seconds number @Fade time.
function GCSoundPatch:FadeOut(seconds)
end

--- Returns the DSP (Digital Signal Processor) effect ID for the sound.  
--- @return number @The numerical ID for the DSP effect currently enabled on the sound
function GCSoundPatch:GetDSP()
end

--- Returns the current pitch.  
--- @return number @The current pitch, can range from 0-255.
function GCSoundPatch:GetPitch()
end

--- Returns the current sound level.  
--- @return number @The current sound level, see Enums/SNDLVL.
function GCSoundPatch:GetSoundLevel()
end

--- Returns the current volume.  
--- @return number @The current volume, ranging from 0 to 1.
function GCSoundPatch:GetVolume()
end

--- Returns whenever the sound is being played.  
--- @return boolean @Is playing or not
function GCSoundPatch:IsPlaying()
end

--- Starts to play the sound. This will reset the sound's volume and pitch to their default values. See CSoundPatch:PlayEx  
function GCSoundPatch:Play()
end

--- Same as CSoundPatch:Play but with 2 extra arguments allowing to set volume and pitch directly.  
--- @param volume number @The volume ranges from 0 to 1.
--- @param pitch number @The pitch can range from 0-255.
function GCSoundPatch:PlayEx(volume, pitch)
end

--- Sets the DSP (Digital Signal Processor) effect for the sound.  
--- Similar to Player:SetDSP but for individual sounds.  
--- @param dspEffectId number @The numerical ID for the DSP effect to be enabled on the sound
function GCSoundPatch:SetDSP(dspEffectId)
end

--- Sets the sound level in decibel.  
--- @param level number @The sound level in decibel
function GCSoundPatch:SetSoundLevel(level)
end

--- Stops the sound from being played.  
--- 🦟 **BUG**: [This will not work if the entity attached to this sound patch (specified by Global.CreateSound) is invalid.](https://github.com/Facepunch/garrysmod-issues/issues/3260)  
function GCSoundPatch:Stop()
end
