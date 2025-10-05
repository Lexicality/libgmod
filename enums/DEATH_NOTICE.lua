--- @meta

--- Was the victim friendly?  
_G.DEATH_NOTICE_FRIENDLY_VICTIM = 1
--- Was the attacker friendly?  
_G.DEATH_NOTICE_FRIENDLY_ATTACKER = 2

--- Enumerations used internally by death notice system.  
--- This enumeration is a bit field/bitflag, which means that you can combine multiple death flags using the bit library. You can use bit.band to test if a specific death flag is set.  
--- @alias EDEATH_NOTICE `DEATH_NOTICE_FRIENDLY_VICTIM`|`DEATH_NOTICE_FRIENDLY_ATTACKER`
