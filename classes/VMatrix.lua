--- @class GVMatrix
--- List of all possible functions to manipulate matrices.  
--- This object can be created by Global.Matrix.  
local GVMatrix = {}
--- Returns the absolute rotation of the matrix.  
--- @return GAngle @Absolute rotation of the matrix
function GVMatrix:GetAngles()
end

--- Returns a specific field in the matrix.  
--- @param row number @Row of the field whose value is to be retrieved, from 1 to 4
--- @param column number @Column of the field whose value is to be retrieved, from 1 to 4
--- @return number @The value of the specified field
function GVMatrix:GetField(row, column)
end

--- Gets the forward direction of the matrix.  
--- ie. The first column of the matrix, excluding the w coordinate.  
--- @return GVector @The forward direction of the matrix.
function GVMatrix:GetForward()
end

--- Returns an inverted matrix without modifying the original matrix.  
--- Inverting the matrix will fail if its [determinant](https://en.wikipedia.org/wiki/Determinant) is 0 or close to 0. (ie. its "scale" in any direction is 0.)  
--- See also VMatrix:GetInverseTR.  
--- @return GVMatrix @The inverted matrix if possible, nil otherwise
function GVMatrix:GetInverse()
end

--- Returns an inverted matrix without modifying the original matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.  
--- Using this function on a matrix with modified scale may return an incorrect inverted matrix.  
--- To get the inverse of a matrix that contains other modifications, see VMatrix:GetInverse.  
--- @return GVMatrix @The inverted matrix.
function GVMatrix:GetInverseTR()
end

--- Gets the right direction of the matrix.  
--- ie. The second column of the matrix, negated, excluding the w coordinate.  
--- @return GVector @The right direction of the matrix.
function GVMatrix:GetRight()
end

--- Returns the absolute scale of the matrix.  
--- @return GVector @Absolute scale of the matrix
function GVMatrix:GetScale()
end

--- Returns the absolute translation of the matrix.  
--- @return GVector @Absolute translation of the matrix
function GVMatrix:GetTranslation()
end

--- Gets the up direction of the matrix.  
--- ie. The third column of the matrix, excluding the w coordinate.  
--- @return GVector @The up direction of the matrix.
function GVMatrix:GetUp()
end

--- Initializes the matrix as Identity matrix.  
function GVMatrix:Identity()
end

--- Inverts the matrix.  
--- Inverting the matrix will fail if its [determinant](https://en.wikipedia.org/wiki/Determinant) is 0 or close to 0. (ie. its "scale" in any direction is 0.)  
--- If the matrix cannot be inverted, it does not get modified.  
--- See also VMatrix:InvertTR.  
--- @return boolean @Whether the matrix was inverted or not
function GVMatrix:Invert()
end

--- Inverts the matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.  
--- Using this function on a matrix with modified scale may return an incorrect inverted matrix.  
--- To invert a matrix that contains other modifications, see VMatrix:Invert.  
function GVMatrix:InvertTR()
end

--- Returns whether the matrix is equal to Identity matrix or not.  
--- @return boolean @Is the matrix an Identity matrix or not
function GVMatrix:IsIdentity()
end

--- Returns whether the matrix is a rotation matrix or not.  
--- Technically it checks if the forward, right and up vectors are orthogonal and normalized.  
--- @return boolean @Is the matrix a rotation matrix or not
function GVMatrix:IsRotationMatrix()
end

--- Checks whenever all fields of the matrix are 0, aka if this is a [null matrix](https://en.wikipedia.org/wiki/Zero_matrix).  
--- @return boolean @If the matrix is a null matrix.
function GVMatrix:IsZero()
end

--- Rotates the matrix by the given angle.  
--- Postmultiplies the matrix by a rotation matrix (A = AR).  
--- @param rotation GAngle @Rotation.
function GVMatrix:Rotate(rotation)
end

--- Scales the matrix by the given vector.  
--- Postmultiplies the matrix by a scaling matrix (A = AS).  
--- @param scale GVector @Vector to scale with matrix with.
function GVMatrix:Scale(scale)
end

--- Scales the absolute translation with the given value.  
--- @param scale number @Value to scale the translation with.
function GVMatrix:ScaleTranslation(scale)
end

--- Copies values from the given matrix object.  
--- @param src GVMatrix @The matrix to copy values from.
function GVMatrix:Set(src)
end

--- Sets the absolute rotation of the matrix.  
--- @param angle GAngle @New angles.
function GVMatrix:SetAngles(angle)
end

--- Sets a specific field in the matrix.  
--- @param row number @Row of the field to be set, from 1 to 4
--- @param column number @Column of the field to be set, from 1 to 4
--- @param value number @The value to set in that field
function GVMatrix:SetField(row, column, value)
end

--- Sets the forward direction of the matrix.  
--- ie. The first column of the matrix, excluding the w coordinate.  
--- @param forward GVector @The forward direction of the matrix.
function GVMatrix:SetForward(forward)
end

--- Sets the right direction of the matrix.  
--- ie. The second column of the matrix, negated, excluding the w coordinate.  
--- @param forward GVector @The right direction of the matrix.
function GVMatrix:SetRight(forward)
end

--- Modifies the scale of the matrix while preserving the rotation and translation.  
--- @param scale GVector @The scale to set.
function GVMatrix:SetScale(scale)
end

--- Sets the absolute translation of the matrix.  
--- @param translation GVector @New translation.
function GVMatrix:SetTranslation(translation)
end

--- Sets each component of the matrix.  
--- @param e11 number 
--- @param e12 number 
--- @param e13 number 
--- @param e14 number 
--- @param e21 number 
--- @param e22 number 
--- @param e23 number 
--- @param e24 number 
--- @param e31 number 
--- @param e32 number 
--- @param e33 number 
--- @param e34 number 
--- @param e41 number 
--- @param e42 number 
--- @param e43 number 
--- @param e44 number 
function GVMatrix:SetUnpacked(e11, e12, e13, e14, e21, e22, e23, e24, e31, e32, e33, e34, e41, e42, e43, e44)
end

--- Sets the up direction of the matrix.  
--- ie. The third column of the matrix, excluding the w coordinate.  
--- @param forward GVector @The up direction of the matrix.
function GVMatrix:SetUp(forward)
end

--- Converts the matrix to a 4x4 table. See Global.Matrix function.  
--- @return table @The 4x4 table.
function GVMatrix:ToTable()
end

--- Translates the matrix by the given vector aka. adds the vector to the translation.  
--- Postmultiplies the matrix by a translation matrix (A = AT).  
--- @param translation GVector @Vector to translate the matrix by.
function GVMatrix:Translate(translation)
end

--- Returns each component of the matrix, expanding rows before columns.  
--- @return number @VMatrix:GetField(1, 1)
--- @return number @VMatrix:GetField(1, 2)
--- @return number @VMatrix:GetField(1, 3)
--- @return number @VMatrix:GetField(1, 4)
--- @return number @VMatrix:GetField(2, 1)
--- @return number @VMatrix:GetField(2, 2)
--- @return number @VMatrix:GetField(2, 3)
--- @return number @VMatrix:GetField(2, 4)
--- @return number @VMatrix:GetField(3, 1)
--- @return number @VMatrix:GetField(3, 2)
--- @return number @VMatrix:GetField(3, 3)
--- @return number @VMatrix:GetField(3, 4)
--- @return number @VMatrix:GetField(4, 1)
--- @return number @VMatrix:GetField(4, 2)
--- @return number @VMatrix:GetField(4, 3)
--- @return number @VMatrix:GetField(4, 4)
function GVMatrix:Unpack()
end

--- Sets all components of the matrix to 0, also known as a [null matrix](https://en.wikipedia.org/wiki/Zero_matrix).  
--- This function is more efficient than setting each element manually.  
function GVMatrix:Zero()
end

