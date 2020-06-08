--- Used when playing sounds through console commands.
CHAN_REPLACE = -1
--- Automatic channel
CHAN_AUTO = 0
--- Channel for weapon sounds
CHAN_WEAPON = 1
--- Channel for NPC voices
CHAN_VOICE = 2
--- Channel for items ( Health kits, etc )
CHAN_ITEM = 3
--- Clothing, ragdoll impacts, footsteps, knocking/pounding/punching etc.
CHAN_BODY = 4
--- Stream channel from the static or dynamic area
CHAN_STREAM = 5
--- A constant/background sound that doesn't require any reaction.
CHAN_STATIC = 6
--- TF2s Announcer dialogue channel
CHAN_VOICE2 = 7
--- Channel for network voice data
CHAN_VOICE_BASE = 8
---
CHAN_USER_BASE = 136

--- 128 levels
FFT_256 = 0
--- 256 levels
FFT_512 = 1
--- 512 levels
FFT_1024 = 2
--- 1024 levels
FFT_2048 = 3
--- 2048 levels
FFT_4096 = 4
--- 4096 levels
FFT_8192 = 5
--- 8192 levels
FFT_16384 = 6
--- 16384 levels
FFT_32768 = 7

--- The channel is stopped
GMOD_CHANNEL_STOPPED = 0
--- The channel is playing
GMOD_CHANNEL_PLAYING = 1
--- The channel is paused
GMOD_CHANNEL_PAUSED = 2
--- The channel is buffering
GMOD_CHANNEL_STALLED = 3

--- To keep the compiler happy
SND_NOFLAGS = 0
--- Change sound vol
SND_CHANGE_VOL = 1
--- Change sound pitch
SND_CHANGE_PITCH = 2
--- Stop the sound
SND_STOP = 4
--- We're spawning, used in some cases for ambients. Not sent over net, only a param between dll and server.
SND_SPAWNING = 8
--- Sound has an initial delay
SND_DELAY = 16
--- Stop all looping sounds on the entity.
SND_STOP_LOOPING = 32
--- This sound should be paused if the game is paused
SND_SHOULDPAUSE = 128
---
SND_IGNORE_PHONEMES = 256
--- Used to change all sounds emitted by an entity, regardless of scriptname
SND_IGNORE_NAME = 512
---
SND_DO_NOT_OVERWRITE_EXISTING_ON_CHANNEL = 1024

--- Normal step
STEPSOUNDTIME_NORMAL = 0
--- Step on ladder
STEPSOUNDTIME_ON_LADDER = 1
--- Step in water, with water reaching knee
STEPSOUNDTIME_WATER_KNEE = 2
--- Step in water, with water reaching foot
STEPSOUNDTIME_WATER_FOOT = 3
