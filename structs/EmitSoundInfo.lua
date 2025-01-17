--- @meta

--- Passed as argument of GM:EntityEmitSound.  
--- @class SEmitSoundInfo
--- @field SoundName string @The file path of the played sound
--- @field OriginalSoundName string @The original file path or soundscript name
--- @field SoundTime? number @The time at which the sound should be played
--- @field DSP? number @The DSP (digital signal processing) preset applied to the sound
--- @field SoundLevel? number @The sound's attenuation, a number between 0 (low) and 511 (high)
--- @field Pitch? number @The pitch of the played sound, a number between 0 (low) and 255 (high), where 100 is the sound's original pitch.
--- @field Flags? number @The bit flags of the played sound
--- @field Channel number @The sound's channel
--- @field Volume number @The volume of the played sound, return as a decimal number between 0 (low) and 1 (high).
--- @field Entity GEntity @The entity that played the sound.
--- @field Pos GVector @The origin of the played sound.
