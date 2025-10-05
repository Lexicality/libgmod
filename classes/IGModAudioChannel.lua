--- @meta

--- @class GIGModAudioChannel
--- A sound channel returned by a callback of sound.PlayURL and sound.PlayFile.  
local GIGModAudioChannel = {}
--- Enables or disables looping of audio channel, requires noblock flag.  
--- @param enable boolean @Enable or disable looping of this audio channel.
function GIGModAudioChannel:EnableLooping(enable)
end

--- Computes the [DFT (discrete Fourier transform)](https://en.wikipedia.org/wiki/Discrete_Fourier_transform) of the sound channel.  
--- The size parameter specifies the number of consecutive audio samples to use as the input to the DFT and is restricted to a power of two. A [Hann window](https://en.wikipedia.org/wiki/Hann_function) is applied to the input data.  
--- The computed DFT has the same number of frequency bins as the number of samples. Only half of this DFT is returned, since [the DFT magnitudes are symmetric for real input data](https://en.wikipedia.org/wiki/Discrete_Fourier_transform#The_real-input_DFT). The magnitudes of the DFT (values from 0 to 1) are used to fill the output table, starting at index 1.  
--- **Visualization protip:** For a size N DFT, bin k (1-indexed) corresponds to a frequency of (k - 1) / N * sampleRate.  
--- **Visualization protip:** Sound energy is proportional to the square of the magnitudes. Adding magnitudes together makes no sense physically, but adding energies does.  
--- **Visualization protip:** The human ear works on a logarithmic amplitude scale. You can convert to [decibels](https://en.wikipedia.org/wiki/Decibel) by taking 20 * math.log10 of frequency magnitudes, or 10 * math.log10 of energy. The decibel values will range from -infinity to 0.  
--- @param tbl number[] @The table to output the DFT magnitudes (numbers between 0 and 1) into
--- @param size EFFT @The number of samples to use
--- @return number @The number of frequency bins that have been filled in the output table.
function GIGModAudioChannel:FFT(tbl, size)
end

--- Returns 3D cone of the sound channel. See IGModAudioChannel:Set3DCone.  
--- @return number @The angle of the inside projection cone in degrees.
--- @return number @The angle of the outside projection cone in degrees.
--- @return number @The delta-volume outside the outer projection cone.
function GIGModAudioChannel:Get3DCone()
end

--- Returns if the sound channel is currently in 3D mode or not. This value will be affected by IGModAudioChannel:Set3DEnabled.  
--- @return boolean @Is currently 3D or not.
function GIGModAudioChannel:Get3DEnabled()
end

--- Returns 3D fade distances of a sound channel.  
--- @return number @The minimum distance
--- @return number @The maximum distance
function GIGModAudioChannel:Get3DFadeDistance()
end

--- Returns the average bit rate of the sound channel.  
--- @return number @The average bit rate of the sound channel.
function GIGModAudioChannel:GetAverageBitRate()
end

--- Retrieves the number of bits per sample of the sound channel.  
--- Doesn't work for mp3 and ogg files.  
--- @return number @Number of bits per sample, or 0 if unknown.
function GIGModAudioChannel:GetBitsPerSample()
end

--- Returns the buffered time of the sound channel in seconds, for online streaming sound channels. (sound.PlayURL)  
--- For offline channels this will be equivalent to IGModAudioChannel:GetLength.  
--- @return number @The current buffered time of the stream, in seconds.
function GIGModAudioChannel:GetBufferedTime()
end

--- Returns the filename for the sound channel.  
--- @return string @The file name
function GIGModAudioChannel:GetFileName()
end

--- Returns the length of sound played by the sound channel in seconds.  
--- @return number @The length of the sound
function GIGModAudioChannel:GetLength()
end

--- Returns the right and left levels of sound played by the sound channel.  
--- @return number @The left sound level
--- @return number @The right sound level
function GIGModAudioChannel:GetLevel()
end

--- Gets the relative volume of the left and right channels.  
--- @return number @Relative volume between the left and right channels
function GIGModAudioChannel:GetPan()
end

--- Returns the playback rate of the sound channel.  
--- @return number @The current playback rate of the sound channel
function GIGModAudioChannel:GetPlaybackRate()
end

--- Returns position of the sound channel  
--- @return GVector @The position of the sound channel, previously set by IGModAudioChannel:SetPos
function GIGModAudioChannel:GetPos()
end

--- Returns the sample rate for currently playing sound.  
--- @return number @The sample rate in Hz
function GIGModAudioChannel:GetSamplingRate()
end

--- Returns the state of a sound channel  
--- @return number @The state of the sound channel, see Enums/GMOD_CHANNEL
function GIGModAudioChannel:GetState()
end

--- Retrieves HTTP headers from a bass stream channel created by sound.PlayURL, if available.  
--- Of special interest here are headers such as `icy-name`, `icy-br`, `ice-audio-info`, `icy-genre`.  
--- @return string[] @A list of HTTP headers or `nil` if no information is available
function GIGModAudioChannel:GetTagsHTTP()
end

--- Retrieves the ID3 version 1 info from a bass channel created by sound.PlayFile or sound.PlayURL, if available.  
--- ID3v2 is not supported.  
--- @return table @A table containing the information, or `nil` if no information is available
function GIGModAudioChannel:GetTagsID3()
end

--- Retrieves ICY metadata from a bass stream channel created by sound.PlayURL, if available.  
--- @return string @The meta information, or `nil` if no information is available
function GIGModAudioChannel:GetTagsMeta()
end

--- Retrieves OGG media info tag, from a bass channel created by sound.PlayURL or sound.PlayFile, if available.  
--- @return string[] @A list of available information in no particular order, or `nil` if no information is available
function GIGModAudioChannel:GetTagsOGG()
end

--- Retrieves OGG Vendor tag, usually containing the application that created the file, from a bass channel created by sound.PlayURL or sound.PlayFile, if available.  
--- @return string @The OGG vendor tag, or `nil` if no information is available.
function GIGModAudioChannel:GetTagsVendor()
end

--- Returns the current time of the sound channel in seconds  
--- @return number @The current time of the stream
function GIGModAudioChannel:GetTime()
end

--- Returns volume of a sound channel  
--- @return number @The volume of the sound channel
function GIGModAudioChannel:GetVolume()
end

--- Returns if the sound channel is in 3D mode or not.  
--- @return boolean @Is 3D or not.
function GIGModAudioChannel:Is3D()
end

--- Returns whether the audio stream is block streamed or not.  
--- @return boolean @Is the audio stream block streamed or not.
function GIGModAudioChannel:IsBlockStreamed()
end

--- Returns if the sound channel is looping or not.  
--- @return boolean @Is looping or not.
function GIGModAudioChannel:IsLooping()
end

--- Returns if the sound channel is streamed from the Internet or not.  
--- @return boolean @Is online or not.
function GIGModAudioChannel:IsOnline()
end

--- Returns if the sound channel is valid or not.  
--- @return boolean @Is the sound channel valid or not
function GIGModAudioChannel:IsValid()
end

--- Pauses the stream. It can be started again using IGModAudioChannel:Play  
function GIGModAudioChannel:Pause()
end

--- Starts playing the stream.  
function GIGModAudioChannel:Play()
end

--- Sets 3D cone of the sound channel.  
--- @param innerAngle number @The angle of the inside projection cone in degrees
--- @param outerAngle number @The angle of the outside projection cone in degrees
--- @param outerVolume number @The delta-volume outside the outer projection cone
function GIGModAudioChannel:Set3DCone(innerAngle, outerAngle, outerVolume)
end

--- Sets the 3D mode of the channel. This will affect IGModAudioChannel:Get3DEnabled but not IGModAudioChannel:Is3D.  
--- This feature **requires** the channel to be initially created in 3D mode, i.e. IGModAudioChannel:Is3D should return true or this function will do nothing.  
--- @param enable boolean @true to enable, false to disable 3D.
function GIGModAudioChannel:Set3DEnabled(enable)
end

--- Sets 3D fade distances of a sound channel.  
--- @param min number @The minimum distance
--- @param max number @The maximum distance
function GIGModAudioChannel:Set3DFadeDistance(min, max)
end

--- Sets the relative volume of the left and right channels.  
--- @param pan number @Relative volume between the left and right channels
function GIGModAudioChannel:SetPan(pan)
end

--- Sets the playback rate of the sound channel. May not work with high values for radio streams.  
--- @param rate number @Playback rate to set to
function GIGModAudioChannel:SetPlaybackRate(rate)
end

--- Sets position of sound channel in case the sound channel has a 3d option set.  
--- @param pos GVector @The position to put the sound into
--- @param dir? GVector @The direction of the sound
function GIGModAudioChannel:SetPos(pos, dir)
end

--- Sets the sound channel to specified time ( Rewind to that position of the song ). Does not work on online radio streams.  
--- Streamed sounds must have "noblock" parameter for this to work and IGModAudioChannel:IsBlockStreamed must return false.  
--- ℹ **NOTE**: Streamed sounds can only have their time set to up to the current IGModAudioChannel:GetBufferedTime.  
--- @param secs number @The time to set the stream to, in seconds.
--- @param dont_decode? boolean @Set to true to skip decoding to set time, and instead just seek to it which is faster
function GIGModAudioChannel:SetTime(secs, dont_decode)
end

--- Sets the volume of a sound channel  
--- @param volume number @Volume to set
function GIGModAudioChannel:SetVolume(volume)
end

--- Stop the stream. It can be started again using IGModAudioChannel:Play.  
--- 🦟 **BUG**: [Calling this invalidates the IGModAudioChannel object rendering it unusable for further functions.](https://github.com/Facepunch/garrysmod-issues/issues/1497)  
function GIGModAudioChannel:Stop()
end
