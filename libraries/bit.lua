--- The bitwise library contains useful functions for bitwise operations.  
--- Make sure you're familiar with [Bitwise Operators](https://code.tutsplus.com/articles/understanding-bitwise-operators--active-11301)  
_G.bit = {}
--- Returns the arithmetically shifted value.  
--- @param value number @The value to be manipulated.
--- @param shiftCount number @Amounts of bits to shift.
--- @return number @shiftedValue
function bit.arshift(value, shiftCount)
end

--- Performs the bitwise `and` for all values specified.  
--- @param value number @The value to be manipulated.
--- @vararg any @Values bit to perform bitwise "and" with
--- @return number @Result of bitwise "and" operation.
function bit.band(value, ...)
end

--- Returns the bitwise not of the value.  
--- @param value number @The value to be inverted.
--- @return number @bitwiseNot
function bit.bnot(value)
end

--- Returns the bitwise OR of all values specified.  
--- @param value1 number @The first value.
--- @vararg any @Extra values to be evaluated
--- @return number @The bitwise OR result between all numbers.
function bit.bor(value1, ...)
end

--- Swaps the byte order.  
--- @param value number @The value to be byte swapped.
--- @return number @swapped
function bit.bswap(value)
end

--- Returns the bitwise xor of all values specified.  
--- @param value number @The value to be manipulated.
--- @param otherValues? number @Values bit xor with
--- @return number @bitwiseXOr
function bit.bxor(value, otherValues)
end

--- Returns the left shifted value.  
--- ℹ **NOTE**: The returned value will be clamped to a signed 32-bit integer, even on 64-bit builds.  
--- @param value number @The value to be manipulated.
--- @param shiftCount number @Amounts of bits to shift left by.
--- @return number @shiftedValue
function bit.lshift(value, shiftCount)
end

--- Returns the left rotated value.  
--- @param value number @The value to be manipulated.
--- @param shiftCount number @Amounts of bits to rotate left by.
--- @return number @shiftedValue
function bit.rol(value, shiftCount)
end

--- Returns the right rotated value.  
--- @param value number @The value to be manipulated.
--- @param shiftCount number @Amounts of bits to rotate right by.
--- @return number @shiftedValue
function bit.ror(value, shiftCount)
end

--- Returns the right shifted value.  
--- ℹ **NOTE**: The returned value will be clamped to a signed 32-bit integer, even on 64-bit builds.  
--- @param value number @The value to be manipulated.
--- @param shiftCount number @Amounts of bits to shift right by.
--- @return number @shiftedValue
function bit.rshift(value, shiftCount)
end

--- Normalizes the specified value and clamps it in the range of a signed 32bit integer.  
--- @param value number @The value to be normalized.
--- @return number @swapped
function bit.tobit(value)
end

--- Returns the hexadecimal representation of the number with the specified digits.  
--- @param value number @The value to be normalized.
--- @param digits? number @The number of digits
--- @return string @hexString
function bit.tohex(value, digits)
end
