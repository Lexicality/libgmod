--- @meta

--- Sound plays everywhere  
_G.SNDLVL_NONE = 0
--- Rustling leaves  
_G.SNDLVL_20dB = 20
--- Whispering  
_G.SNDLVL_25dB = 25
--- Library  
_G.SNDLVL_30dB = 30
_G.SNDLVL_35dB = 35
_G.SNDLVL_40dB = 40
--- Refrigerator  
_G.SNDLVL_45dB = 45
--- Average home  
_G.SNDLVL_50dB = 50
_G.SNDLVL_55dB = 55
--- Normal conversation, clothes dryer  
_G.SNDLVL_60dB = 60
--- *The same as SNDLVL_60dB*  
_G.SNDLVL_IDLE = 60
--- Washing machine, dishwasher  
_G.SNDLVL_65dB = 65
_G.SNDLVL_STATIC = 66
--- Car, vacuum cleaner, mixer, electric sewing machine  
_G.SNDLVL_70dB = 70
--- Busy traffic  
_G.SNDLVL_75dB = 75
--- *The same as SNDLVL_75dB*  
_G.SNDLVL_NORM = 75
--- Mini-bike, alarm clock, noisy restaurant, office tabulator, outboard motor, passing snowmobile  
_G.SNDLVL_80dB = 80
--- *The same as SNDLVL_80dB*  
_G.SNDLVL_TALKING = 80
--- Average factory, electric shaver  
_G.SNDLVL_85dB = 85
--- Screaming child, passing motorcycle, convertible ride on freeway  
_G.SNDLVL_90dB = 90
_G.SNDLVL_95dB = 95
--- Subway train, diesel truck, woodworking shop, pneumatic drill, boiler shop, jackhammer  
_G.SNDLVL_100dB = 100
--- Helicopter, power mower  
_G.SNDLVL_105dB = 105
--- Snowmobile (drivers seat), inboard motorboat, sandblasting  
_G.SNDLVL_110dB = 110
--- Car horn, propeller aircraft  
_G.SNDLVL_120dB = 120
--- Air raid siren  
_G.SNDLVL_130dB = 130
--- Threshold of pain, gunshot, jet engine  
_G.SNDLVL_140dB = 140
--- *The same as SNDLVL_140dB*  
_G.SNDLVL_GUNFIRE = 140
_G.SNDLVL_150dB = 150
--- Rocket launching  
_G.SNDLVL_180dB = 180

--- The sound's attenuation; how fast it drops away, enumerations used by Global.EmitSound and Entity:EmitSound.  
--- The engine starts running into trouble below 60dB.  
--- ⚠ **WARNING**: These enumerations do not exist in Lua and are listed here only for reference. These values and descriptions are taken from [soundflags.h in Source SDK 2013](https://github.com/ValveSoftware/source-sdk-2013/blob/0d8dceea4310fde5706b3ce1c70609d72a38efdf/sp/src/public/soundflags.h#L53)  
--- @alias ESNDLVL `SNDLVL_NONE`|`SNDLVL_20dB`|`SNDLVL_25dB`|`SNDLVL_30dB`|`SNDLVL_35dB`|`SNDLVL_40dB`|`SNDLVL_45dB`|`SNDLVL_50dB`|`SNDLVL_55dB`|`SNDLVL_60dB`|`SNDLVL_IDLE`|`SNDLVL_65dB`|`SNDLVL_STATIC`|`SNDLVL_70dB`|`SNDLVL_75dB`|`SNDLVL_NORM`|`SNDLVL_80dB`|`SNDLVL_TALKING`|`SNDLVL_85dB`|`SNDLVL_90dB`|`SNDLVL_95dB`|`SNDLVL_100dB`|`SNDLVL_105dB`|`SNDLVL_110dB`|`SNDLVL_120dB`|`SNDLVL_130dB`|`SNDLVL_140dB`|`SNDLVL_GUNFIRE`|`SNDLVL_150dB`|`SNDLVL_180dB`
