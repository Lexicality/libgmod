--- @meta

--- @class GVector
--- List of all possible functions to manipulate vectors.  
--- Created by Global.Vector.  
--- @field x number @The X component of the vector.
--- @field y number @The Y component of the vector.
--- @field z number @The Z component of the vector.
local GVector = {}
--- Adds the values of the argument vector to the original vector. This function is the same as vector1 + vector2 without creating a new vector object, skipping object construction and garbage collection.  
--- @param vector GVector @The vector to add.
function GVector:Add(vector)
end

--- Returns an angle representing the normal of the vector.  
--- @return GAngle @The angle/direction of the vector.
function GVector:Angle()
end

--- Returns the angle of this vector (normalized), but instead of assuming that up is Global.Vector( 0, 0, 1 ) (Like Vector:Angle does) you can specify which direction is 'up' for the angle.  
--- @param up GVector @The up direction vector
--- @return GAngle @The angle
function GVector:AngleEx(up)
end

--- Calculates the cross product of this vector and the passed one.  
--- The cross product of two vectors is a 3-dimensional vector with a direction perpendicular (at right angles) to both of them (according to the [right-hand rule](https://en.wikipedia.org/wiki/Right-hand_rule)), and magnitude equal to the area of parallelogram they span. This is defined as the product of the magnitudes, the sine of the angle between them, and unit (normal) vector `n` defined by the right-hand rule:  
--- :**a** × **b** = |**a**| |**b**| sin(θ) **n̂**  
--- where **a** and **b** are vectors, and **n̂** is a unit vector (magnitude of 1) perpendicular to both.  
--- @param otherVector GVector @Vector to calculate the cross product with.
--- @return GVector @The cross product of the two vectors.
function GVector:Cross(otherVector)
end

--- Returns the squared distance of 2 vectors, this is quicker to call than Vector:Distance as DistToSqr does not need to calculate the square root, which is an expensive process.  
--- ℹ **NOTE**: Squared distances should not be summed. If you need to sum distances, use Vector:Distance.  
--- When performing a distance check, ensure the distance being checked against is squared. See example code below.  
--- @param otherVec GVector @The vector to calculate the distance to.
--- @return number @Squared distance to the vector.
function GVector:DistToSqr(otherVec)
end

--- Returns the Euclidean distance between the vector and the other vector.  
--- ℹ **NOTE**: This function is more expensive than Vector:DistToSqr. However, please see the notes for Vector:DistToSqr before using it as squared distances are not the same as euclidean distances.  
--- @param otherVector GVector @The vector to get the distance to.
--- @return number @Distance between the vectors.
function GVector:Distance(otherVector)
end

--- Returns the Euclidean distance between the vector and the other vector in 2D space. The Z axis is ignored.  
--- ℹ **NOTE**: This function is more expensive than Vector:Distance2DSqr. However, please see the notes for Vector:Distance2DSqr before using it as squared distances are not the same as Euclidean distances.  
--- @param otherVector GVector @The vector to get the distance to.
--- @return number @Distance between the vectors in 2D space.
function GVector:Distance2D(otherVector)
end

--- Returns the squared distance between 2 vectors in 2D space, ignoring the Z axis. This is faster than Vector:Distance2D as calculating the square root is an expensive process.  
--- ℹ **NOTE**: Squared distances should not be summed. If you need to sum distances, use Vector:Distance2D.  
--- When performing a distance check, ensure the distance being checked against is squared.  
--- @param otherVec GVector @The vector to calculate the distance to.
--- @return number @Squared distance to the vector in 2D space.
function GVector:Distance2DSqr(otherVec)
end

--- Divide the vector by the given number, that means x, y and z are divided by that value. This will change the value of the original vector, see example 2 for division without changing the value.  
--- @param divisor number @The value to divide the vector with.
function GVector:Div(divisor)
end

--- Returns the [dot product](https://en.wikipedia.org/wiki/Dot_product#Geometric_definition)  of this vector and the passed one.  
--- The dot product of two vectors is the product of their magnitudes (lengths), and the cosine of the angle between them:  
--- **a · b** = |**a**| |**b**| cos(θ)   
--- where **a** and **b** are vectors.  
--- See Vector:Length for obtaining magnitudes.  
--- A dot product returns just the cosine of the angle if both vectors are normalized, and zero if the vectors are at right angles to each other.  
--- @param otherVector GVector @The vector to calculate the dot product with
--- @return number @The dot product between the two vectors
function GVector:Dot(otherVector)
end

--- 🛑 **DEPRECATED**: This is an alias of Vector:Dot. Use that instead.  
--- Returns the dot product of the two vectors.  
--- @param Vector GVector @The other vector.
--- @return number @Dot Product
function GVector:DotProduct(Vector)
end

--- Returns the negative version of this vector, i.e. a vector with every component to the negative value of itself.  
--- See also Vector:Negate.  
--- @return GVector @The negative of this vector.
function GVector:GetNegated()
end

--- 🛑 **DEPRECATED**: Use Vector:GetNormalized instead.  
--- Returns a normalized version of the vector. This is a alias of Vector:GetNormalized.  
--- @return GVector @Normalized version of the vector.
function GVector:GetNormal()
end

--- Returns a normalized version of the vector. Normalized means vector with same direction but with length of 1.  
--- This does not affect the vector you call it on; to do this, use Vector:Normalize.  
--- @return GVector @Normalized version of the vector.
function GVector:GetNormalized()
end

--- Returns if the vector is equal to another vector with the given tolerance.  
--- @param compare GVector @The vector to compare to.
--- @param tolerance number @The tolerance range.
--- @return boolean @Are the vectors equal or not.
function GVector:IsEqualTol(compare, tolerance)
end

--- Checks whenever all fields of the vector are 0.  
--- @return boolean @Do all fields of the vector equal 0 or not
function GVector:IsZero()
end

--- Returns the [Euclidean length](https://en.wikipedia.org/wiki/Euclidean_vector#Length) of the vector: √(x² + y² + z²).  
--- ⚠ **WARNING**:   
--- This is a relatively expensive process since it uses the square root. It is recommended that you use Vector:LengthSqr whenever possible.  
--- @return number @Length of the vector.
function GVector:Length()
end

--- Returns the length of the vector in two dimensions, without the Z axis.  
--- ⚠ **WARNING**:   
--- This is a relatively expensive process since it uses the square root. It is recommended that you use Vector:Length2DSqr whenever possible.  
--- @return number @Length of the vector in two dimensions, √(x² + y²)
function GVector:Length2D()
end

--- Returns the squared length of the vectors x and y value, x² + y².  
--- This is faster than Vector:Length2D as calculating the square root is an expensive process.  
--- @return number @Squared length of the vector in two dimensions
function GVector:Length2DSqr()
end

--- Returns the squared length of the vector, x² + y² + z².  
--- This is faster than Vector:Length as calculating the square root is an expensive process.  
--- @return number @Squared length of the vector
function GVector:LengthSqr()
end

--- Scales the vector by the given number (that means x, y and z are multiplied by that value), a Vector (X, Y, and Z of each vector are multiplied) or a VMatrix (Transforms the vector by the matrix's rotation/translation).  
--- @param multiplier number @The value to scale the vector with.
function GVector:Mul(multiplier)
end

--- Negates this vector, i.e. sets every component to the negative value of itself. Same as `Vector( -vec.x, -vec.y, -vec.z )`  
function GVector:Negate()
end

--- Normalizes the given vector. This changes the vector you call it on, if you want to return a normalized copy without affecting the original, use Vector:GetNormalized.  
function GVector:Normalize()
end

--- Randomizes each element of this Vector object.  
--- @param min? number @The minimum value for each component.
--- @param max? number @The maximum value for each component.
function GVector:Random(min, max)
end

--- Rotates a vector by the given angle.  
--- Doesn't return anything, but rather changes the original vector.  
--- @param rotation GAngle @The angle to rotate the vector by.
function GVector:Rotate(rotation)
end

--- Copies the values from the second vector to the first vector.  
--- @param vector GVector @The vector to copy from.
function GVector:Set(vector)
end

--- Sets the x, y, and z of the vector.  
--- @param x number @The x component
--- @param y number @The y component
--- @param z number @The z component
function GVector:SetUnpacked(x, y, z)
end

--- Substracts the values of the second vector from the orignal vector, this function can be used to avoid garbage collection.  
--- @param vector GVector @The other vector.
function GVector:Sub(vector)
end

--- Translates the Vector (values ranging from 0 to 1) into a Color. This will also range the values from 0 - 1 to 0 - 255.  
--- x * 255 -> r  
--- y * 255 -> g  
--- z * 255 -> b  
--- This is the opposite of Color:ToVector  
--- @return table @The created Color.
function GVector:ToColor()
end

--- Returns where on the screen the specified position vector would appear. A related function is gui.ScreenToVector, which converts a 2D coordinate to a 3D direction.  
--- ℹ **NOTE**: Should be called from a 3D rendering environment or after cam.Start3D or it may not work correctly.  
--- 🦟 **BUG**: [Errors in a render hook can make this value incorrect until the player restarts their game.](https://github.com/Facepunch/garrysmod-issues/issues/462)  
--- 🦟 **BUG**: [cam.Start3D or 3D context cam.Start with non-default parameters incorrectly sets the reference FOV for this function, causing incorrect return values. This can be fixed by creating and ending a default 3D context (cam.Start3D with no arguments).](https://github.com/Facepunch/garrysmod-issues/issues/1404)  
--- @return table @The created Structures/ToScreenData.
function GVector:ToScreen()
end

--- Returns the vector as a table with three elements.  
--- @return table @The table with elements 1 = x, 2 = y, 3 = z.
function GVector:ToTable()
end

--- Returns the x, y, and z of the vector.  
--- @return number @x or Vector[1].
--- @return number @y or Vector[2].
--- @return number @z or Vector[3].
function GVector:Unpack()
end

--- Returns whenever the given vector is in a box created by the 2 other vectors.  
--- <upload src="22674/8d9276d7e6dd0af.png" size="6279" name="image.png">  
--- </upload>  
--- @param boxStart GVector @The first vector.
--- @param boxEnd GVector @The second vector.
--- @return boolean @Is the vector in the box or not.
function GVector:WithinAABox(boxStart, boxEnd)
end

--- Sets x, y and z to 0.  
function GVector:Zero()
end
