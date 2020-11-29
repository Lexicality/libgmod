--- The math library is a standard Lua library that provides functions for manipulating numbers. In Garry's Mod several additional math functions have been added.  
_G.math = {}
--- Calculates the difference between two angles.  
--- @param a number @The first angle.
--- @param b number @The second angle.
--- @return number @The difference between the angles between -180 and 180
function math.AngleDifference(a, b)
end

--- Gradually approaches the target value by the specified amount.  
--- @param current number @The value we're currently at.
--- @param target number @The target value
--- @param change number @The amount that the current value is allowed to change by to approach the target
--- @return number @New current value, closer to the target than it was previously.
function math.Approach(current, target, change)
end

--- Increments an angle towards another by specified rate.  
--- ℹ **NOTE**: This function is for numbers representing angles (0-360), NOT Angle objects!  
--- @param currentAngle number @The current angle to increase
--- @param targetAngle number @The angle to increase towards
--- @param rate number @The amount to approach the target angle by
--- @return number @Modified angle
function math.ApproachAngle(currentAngle, targetAngle, rate)
end

--- Basic code for  algorithm.  
--- @param tDiff number @From 0 to 1, where alongside the spline the point will be.
--- @param tPoints table @A table of Vectors
--- @param tMax number @Just leave this at 1.
--- @return GVector @Point on Bezier curve, related to tDiff.
function math.BSplinePoint(tDiff, tPoints, tMax)
end

--- Converts a binary string into a number.  
--- @param string string @Binary string to convert
--- @return number @Base 10 number.
function math.BinToInt(string)
end

--- Clamps a number between a minimum and maximum value  
--- @param input number @The number to clamp.
--- @param min number @The minimum value, this function will never return a number less than this.
--- @param max number @The maximum value, this function will never return a number greater than this.
--- @return number @The clamped value.
function math.Clamp(input, min, max)
end

--- 🛑 **DEPRECATED**: You should use math.Distance instead  
--- Returns the difference between two points in 2D space. Alias of math.Distance.  
--- @param x1 number @X position of first point
--- @param y1 number @Y position of first point
--- @param x2 number @X position of second point
--- @param y2 number @Y position of second point
--- @return number @Distance between the two points.
function math.Dist(x1, y1, x2, y2)
end

--- Returns the difference between two points in 2D space.  
--- @param x1 number @X position of first point
--- @param y1 number @Y position of first point
--- @param x2 number @X position of second point
--- @param y2 number @Y position of second point
--- @return number @Distance between the two points
function math.Distance(x1, y1, x2, y2)
end

--- Calculates the progress of a value fraction, taking in to account given easing fractions  
--- @param progress number @Fraction of the progress to ease
--- @param easeIn number @Fraction of how much easing to begin with
--- @param easeOut number @Fraction of how much easing to end with
--- @return number @Eased Value
function math.EaseInOut(progress, easeIn, easeOut)
end

--- Converts an integer to a binary (base-2) string.  
--- @param int number @Number to be converted.
--- @return string @Binary number string
function math.IntToBin(int)
end

--- Normalizes angle, so it returns value between -180 and 180.  
--- @param angle number @The angle to normalize, in degrees.
--- @return number @The normalized angle, in the range of -180 to 180 degrees.
function math.NormalizeAngle(angle)
end

--- Returns a random float between min and max.  
--- See also math.random  
--- @param min number @The minimum value.
--- @param max number @The maximum value.
--- @return number @Random float between min and max.
function math.Rand(min, max)
end

--- Remaps the value from one range to another  
--- @param value number @The value
--- @param inMin number @The minimum of the initial range
--- @param inMax number @The maximum of the initial range
--- @param outMin number @The minimum of new range
--- @param outMax number @The maximum of new range
--- @return number @The number in the new range
function math.Remap(value, inMin, inMax, outMin, outMax)
end

--- Rounds the given value to the nearest whole number or to the given decimal places.  
--- @param value number @The value to round.
--- @param decimals number @The decimal places to round to.
--- @return number @The rounded value.
function math.Round(value, decimals)
end

--- Returns the fraction of where the current time is relative to the start and end times  
--- @param start number @Start time in seconds
--- @param end_ number @End time in seconds
--- @param current number @Current time in seconds
--- @return number @Fraction
function math.TimeFraction(start, end_, current)
end

--- Rounds towards zero.  
--- @param num number @The number to truncate
--- @param digits number @The amount of digits to keep after the point.
function math.Truncate(num, digits)
end

--- Calculates the absolute value of a number (effectively removes any negative sign).  
--- @param x number @The number to get the absolute value of.
--- @return number @absolute_value
function math.abs(x)
end

--- Returns the  of the given number.  
--- @param cos number @Cosine value in range of -1 to 1.
--- @return number @An angle in radians, between 0 and pi, which has the given cos value
function math.acos(cos)
end

--- Returns the [arcsine](https://en.wikipedia.org/wiki/Inverse_trigonometric_functions) of the given number.  
--- @param normal number @Sine value in the range of -1 to 1.
--- @return number @An angle in radians, in the range -pi/2 to pi/2, which has the given sine value
function math.asin(normal)
end

--- Returns the [arctangent](https://en.wikipedia.org/wiki/Inverse_trigonometric_functions) of the given number.  
--- @param normal number @Tangent value.
--- @return number @An angle in radians, in the range -pi/2 to pi/2, which has the given tangent.
function math.atan(normal)
end

--- functions like math.atan(y / x), except it also takes into account the quadrant of the angle and so doesn't have a limited range of output.  
--- ℹ **NOTE**: The Y argument comes first!  
--- @param y number @Y coordinate.
--- @param x number @X coordinate.
--- @return number @The angle of the line from (0, 0) to (x, y) in radians, in the range -pi to pi.
function math.atan2(y, x)
end

--- Ceils or rounds a number up.  
--- @param number number @The number to be rounded up.
--- @return number @ceiled numbers
function math.ceil(number)
end

--- Returns the [cosine](https://en.wikipedia.org/wiki/Trigonometric_functions#cos) of given angle.  
--- @param number number @Angle in radians
--- @return number @Cosine of given angle
function math.cos(number)
end

--- Returns the [hyperbolic cosine](https://en.wikipedia.org/wiki/Cosh_(mathematical_function)) of the given angle.  
--- @param number number @Angle in radians.
--- @return number @The hyperbolic cosine of the given angle.
function math.cosh(number)
end

--- Converts radians to degrees.  
--- @param radians number @Value to be converted to degrees.
--- @return number @degrees
function math.deg(radians)
end

--- Returns the x power of the Euler constant ''''.  
--- @param exponent number @The exponent for the function.
--- @return number @e to the specified power
function math.exp(exponent)
end

--- Floors or rounds a number down.  
--- @param number number @The number to be rounded down.
--- @return number @floored numbers
function math.floor(number)
end

--- Returns the modulus of the specified values.  
--- While this is similar to the % operator, **it will return a negative value if the first argument is negative**, whereas the % operator will return a `positive` value **even if the first operand is negative**.  
--- @param base number @The base value.
--- @param modulator number @The modulator.
--- @return number @The calculated modulus.
function math.fmod(base, modulator)
end

--- <-- Lua reference description: Returns m and e such that x = m2e, e is an integer and the absolute value of m is in the range ((0.5, 1) (or zero when x is zero).  -->  
--- Used to split the number value into a normalized fraction and an exponent. Two values are returned: the first is a multiplier in the range 1/2 (inclusive) to 1 (exclusive) and the second is an integer exponent.  
--- The result is such that x = m*2^e.  
--- @param x number @The value to get the normalized fraction and the exponent from.
--- @return number @m, multiplier - between 0.5 and 1
--- @return number @e, exponent - always an integer
function math.frexp(x)
end

--- Takes a normalised number and returns the floating point representation.  
--- @param normalizedFraction number @The value to get the normalized fraction and the exponent from.
--- @param exponent number @The value to get the normalized fraction and the exponent from.
--- @return number @result
function math.ldexp(normalizedFraction, exponent)
end

--- With one argument, return the natural logarithm of x (to base e).  
--- With two arguments, return the logarithm of x to the given base, calculated as log(x)/log(base).  
--- @param x number @The value to get the base from exponent from.
--- @param base number @The logarithmic base.
--- @return number @Logarithm of x to the given base
function math.log(x, base)
end

--- Returns the base-10 logarithm of x. This is usually more accurate than math.log(x, 10).  
--- @param x number @The value to get the base from exponent from.
function math.log10(x)
end

--- Returns the largest value of all arguments.  
--- @vararg any @Numbers to get the largest from
--- @return number @The largest number
function math.max(...)
end

--- Returns the smallest value of all arguments.  
--- @vararg any @Numbers to get the smallest from.
--- @return number @The smallest number
function math.min(...)
end

--- 🛑 **DEPRECATED**: This is removed in Lua versions later than what GMod is currently using. You should use the % operator or math.fmod instead.  
--- Returns the modulus of the specified values. Same as math.fmod.  
--- @param base number @The base value
--- @param modulator number @Modulator
--- @return number @The calculated modulus
function math.mod(base, modulator)
end

--- Returns the integral and fractional component of the modulo operation.  
--- @param base number @The base value.
--- @return number @The integral component.
--- @return number @The fractional component.
function math.modf(base)
end

--- Returns x raised to the power y.  
--- In particular, math.pow(1.0, x) and math.pow(x, 0.0) always return 1.0, even when x is a zero or a nan. If both x and y are finite, x is negative, and y is not an integer then math.pow(x, y) is undefined.  
--- @param x number @Base.
--- @param y number @Exponent.
--- @return number @y power of x
function math.pow(x, y)
end

--- Converts an angle in degrees to it's equivalent in radians.  
--- @param degrees number @The angle measured in degrees.
--- @return number @radians
function math.rad(degrees)
end

--- When called without arguments, returns a uniform pseudo-random real number in the range 0 to 1 which includes 0 but excludes 1.  
--- When called with an integer number m, returns a uniform pseudo-random integer in the range 1 to m inclusive.  
--- When called with two integer numbers m and n, returns a uniform pseudo-random integer in the range m to n inclusive.  
--- See also math.Rand  
--- @param m number @If m is the only parameter: upper limit
--- @param n number @Upper limit
--- @return number @Random value
function math.random(m, n)
end

--- Seeds the random number generator. The same seed will guarantee the same sequence of numbers each time with math.random.  
--- For shared random values across predicted realms, use util.SharedRandom.  
--- ⚠ **WARNING**: Incorrect usage of this function will affect `all` random numbers in the game.  
--- @param seed number @The new seed
function math.randomseed(seed)
end

--- Returns the [sine](https://en.wikipedia.org/wiki/Trigonometric_functions) of given angle.  
--- @param number number @Angle in radians
--- @return number @Sine for given angle
function math.sin(number)
end

--- Returns the [hyperbolic sine](https://en.wikipedia.org/wiki/Hyperbolic_functions) of the given angle.  
--- @param number number @Angle in radians.
--- @return number @The hyperbolic sine of the given angle.
function math.sinh(number)
end

--- Returns the square root of the number.  
--- @param value number @Value to get the square root of.
--- @return number @squareRoot
function math.sqrt(value)
end

--- Returns the tangent of the given angle.  
--- @param value number @Angle in radians
--- @return number @The tangent of the given angle.
function math.tan(value)
end

--- Returns the [hyperbolic tangent](https://en.wikipedia.org/wiki/Hyperbolic_functions) of the given number.  
--- @param number number @Angle in radians.
--- @return number @The hyperbolic tangent of the given angle.
function math.tanh(number)
end

