--- @meta

--- The string *type* is a sequence of characters.  
--- The string *library* is a standard Lua library which provides functions for the manipulation of strings.[[1]](https://www.lua.org/pil/20.html)  
--- In Garry's Mod there are several extra useful functions and features added to this library.  
--- Most notably all strings will access this library through the string metatable index function.[[2]](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/lua/includes/extensions/string.lua#L311-L322)  
--- This means all strings are treated like table objects and the string library as its Meta Table  
--- ```lua  
--- local x = "Kittens"  
--- function string.Foobar(self) return self:Right(4) end  
--- string.Right(x,4) == x:Right(4) == x:Foobar() == ("Kittens"):Right(4) == x[-4]..x[-3]..x[-2]..x[-1]  
--- ```  
--- The string *metatable* however is something else, and to access that you must use `getmetatable("")`.  
--- The difference here is related to Metamethods, such as using (+) instead of (..) to concatenate strings.  
--- ⚠ **WARNING**: Using `+` operator for concatenation breaks lua metamethod to sum string as numbers (Example: `"10" + "1"` return `11` (number)) and this is 400 times SLOWER!  
--- ```lua  
--- local stringmeta = getmetatable("")  
--- function stringmeta.__add(str,x) return str..x end -- This will work  
--- function string.__add(str,x) return str..x end -- But this will not.  
--- print("Kittens" + " And " + "Puppies")  
--- ```  
--- See Meta Tables and Metamethods for more information.  
--- ⚠ **WARNING**: Making changes to the string *metatable* is not a good idea unless you know what you are doing. Use the string *library* instead.  
--- This category lists functions available in the string *library*.  
_G.string = {}
--- Converts a cardinal (`111`) number to its [ordinal/sequential variation](https://en.wikipedia.org/wiki/Ordinal_numeral) (`111th`).  
--- See also Global.STNDRD for a function that returns just the suffix.  
--- @param input number @A number to convert to ordinal.
--- @return string @The ordinal numeral.
function string.CardinalToOrdinal(input)
end

--- Inserts commas for every third digit of a given number.  
--- @param value number @The input number to commafy
--- @param separator? string @An optional string that will be used instead of the default comma.
--- @return string @The commafied string
function string.Comma(value, separator)
end

--- Returns whether or not the second passed string matches the end of the first.  
--- @param str string @The string whose end is to be checked.
--- @param end_ string @The string to be matched with the end of the first.
--- @return boolean @`true` if the first string ends with the second, or the second is empty, otherwise `false`.
function string.EndsWith(str, end_)
end

--- Splits a string up wherever it finds the given separator.  
--- The function string.Split is an alias of this function, except that function doesn't support using patterns.  
--- See string.Implode for the reverse operation of this function.  
--- @param separator string @The string will be separated wherever this sequence is found.
--- @param str string @The string to split up.
--- @param withpattern? boolean @Set this to true if your separator is a pattern.
--- @return table @Exploded string as a numerical sequential table.
function string.Explode(separator, str, withpattern)
end

--- Returns the time as a formatted string or as a table if no format is given.  
--- @param float number @The time in seconds to format.
--- @param format? string @An optional formatting to use
--- @return string @Returns the time as a formatted string only if a format was specified
function string.FormattedTime(float, format)
end

--- Creates a string from a Color variable.  
--- @param color table @The Color to put in the string.
--- @return string @Output
function string.FromColor(color)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use either string.sub(str, index, index) or str[index].  
---  Returns char value from the specified index in the supplied string.  
--- @param str string @The string that you will be searching with the supplied index.
--- @param index number @The index's value of the string to be returned.
--- @return string @str
function string.GetChar(str, index)
end

--- Returns extension of the file.  
--- @param path string @The string eg
--- @return string @File extension or `nil`.
function string.GetExtensionFromFilename(path)
end

--- Returns file name and extension.  
--- @param path string @The string eg
--- @return string @File name or unmodified string.
function string.GetFileFromFilename(path)
end

--- Returns the path only from a file's path.  
--- @param path string @The string eg
--- @return string @Path or empty string.
function string.GetPathFromFilename(path)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You really should just use table.concat.  
--- Joins the values of a table together to form a string.  
--- This is the reverse of string.Explode and is functionally identical to table.concat, but with less features.  
--- @param separator? string @The separator to insert between each piece.
--- @param pieces? table @The table of pieces to concatenate
--- @return string @Imploded pieces
function string.Implode(separator, pieces)
end

--- Interpolates a given string with the given table. This is useful for formatting localized strings.  
--- @param str string @The string that should be interpolated.
--- @param lookuptable table @The table to search in.
--- @return string @The modified string.
function string.Interpolate(str, lookuptable)
end

--- Escapes special characters for JavaScript in a string, making the string safe for inclusion in to JavaScript strings.  
--- @param str string @The string that should be escaped.
--- @return string @The escaped string.
function string.JavascriptSafe(str)
end

--- Returns everything left of supplied place of that string.  
--- @param str string @The string to extract from.
--- @param num number @Amount of chars relative to the beginning (starting from 1).
--- @return string @Returns a string containing a specified number of characters from the left side of a string.
function string.Left(str, num)
end

--- Converts a `"string_likeThis"` to a more human-friendly `"String like This"`.  
--- This is used internally by Faceposer and other code to transform flex and bodygroup names to a more friendly format.  
--- @param text string @The name to transform.
--- @return string @The more human-friendly version of the input text.
function string.NiceName(text)
end

--- Converts a digital filesize to human-readable text.  
--- @param bytes number @The filesize in bytes.
--- @return string @The human-readable filesize, in Bytes/KB/MB/GB (whichever is appropriate).
function string.NiceSize(bytes)
end

--- Formats the supplied number (in seconds) to the highest possible time unit.  
--- @param num number @The number to format, in seconds.
--- @return string @A nicely formatted time string.
function string.NiceTime(num)
end

--- Escapes all special characters within a string, making the string safe for inclusion in a Lua pattern.  
--- @param str string @The string to be sanitized
--- @return string @The string that has been sanitized for inclusion in Lua patterns
function string.PatternSafe(str)
end

--- Replaces all occurrences of the supplied second string.  
--- @param str string @The string we are seeking to replace an occurrence(s).
--- @param find string @What we are seeking to replace.
--- @param replace string @What to replace find with.
--- @return string @The processed string with replacements.
function string.Replace(str, find, replace)
end

--- Returns the last n-th characters of the string.  
--- @param str string @The string to extract from.
--- @param num number @Amount of chars relative to the end (starting from 1).
--- @return string @Returns a string containing a specified number of characters from the right side of a string.
function string.Right(str, num)
end

--- Sets the character at the specific index of the string.  
--- @param InputString string @The input string
--- @param Index number @The character index, 1 is the first from left.
--- @param ReplacementChar string @String to replace with.
--- @return string @ModifiedString
function string.SetChar(InputString, Index, ReplacementChar)
end

--- Splits the string into a table of strings, separated by the second argument.  
--- This is an alias of string.Explode, but with flipped arguments.  
--- @param Inputstring string @String to split
--- @param Separator string @Character(s) to split with.
--- @return table @Split table
function string.Split(Inputstring, Separator)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use string.StartsWith.  
--- Returns whether or not the first string starts with the second. This is a alias of string.StartsWith.  
--- @param inputStr string @String to check.
--- @param start string @String to check with.
--- @return boolean @Whether the first string starts with the second.
function string.StartWith(inputStr, start)
end

--- Returns whether or not the first string starts with the second.  
--- @param inputStr string @String to check.
--- @param start string @String to check with.
--- @return boolean @Whether the first string starts with the second.
function string.StartsWith(inputStr, start)
end

--- Removes the extension of a path.  
--- @param path string @The string eg
--- @return string @File-path without extension or unmodified string.
function string.StripExtension(path)
end

--- Fetches a Color type from a string.  
--- @param Inputstring string @The string to convert from.
--- @return table @The output Color
function string.ToColor(Inputstring)
end

--- Returns given time in "MM:SS" format.  
--- @param time number @Time in seconds
--- @return string @Formatted time
function string.ToMinutesSeconds(time)
end

--- Returns given time in "MM:SS:MS" format.  
--- @param time number @Time in seconds
--- @return string @Formatted time
function string.ToMinutesSecondsMilliseconds(time)
end

--- Splits the string into characters and creates a sequential table of characters.  
--- ⚠ **WARNING**: As a result of the  encoding, non-ASCII characters will be split into more than one character in the output table. Each character value in the output table will always be 1 byte.  
--- @param str string @The string you'll turn into a table.
--- @return table @A sequential table where each value is a character from the given string
function string.ToTable(str)
end

--- Removes leading and trailing matches of a string.  
--- @param Inputstring string @The string to trim.
--- @param Char? string @String to match - can be multiple characters
--- @return string @Modified string
function string.Trim(Inputstring, Char)
end

--- Removes leading spaces/characters from a string.  
--- @param str string @String to trim
--- @param char? string @Custom character to remove
--- @return string @Trimmed string
function string.TrimLeft(str, char)
end

--- Removes trailing spaces/passed character from a string.  
--- @param str string @String to remove from
--- @param char? string @Custom character to remove, default is a space
--- @return string @Trimmed string
function string.TrimRight(str, char)
end

--- Returns the given string's characters in their numeric ASCII representation.  
--- ⚠ **WARNING**: This function will throw an error if the slice length is greater than 8000 characters.  
--- @param string string @The string to get the chars from.
--- @param startPos? number @The first character of the string to get the byte of.
--- @param endPos? number @The last character of the string to get the byte of.
--- @return any @Numerical bytes
function string.byte(string, startPos, endPos)
end

--- Takes the given numerical bytes and converts them to a string.  
--- @vararg any @The bytes to create the string from.
--- @return string @String built from given bytes
function string.char(...)
end

--- Returns the binary bytecode of the given function.  
--- ℹ **NOTE**: This does not work with functions created in C/C++. An error will be thrown if it is  
--- @param func function @The function to get the bytecode of
--- @param stripDebugInfo? boolean @True to strip the debug data, false to keep it
--- @return string @Bytecode
function string.dump(func, stripDebugInfo)
end

--- Attempts to find the specified substring in a string.  
--- ⚠ **WARNING**: This function uses Lua Patterns by default.  
--- @param haystack string @The string to search in.
--- @param needle string @The string to find, can contain patterns if enabled.
--- @param startPos? number @The position to start the search from, can be negative start position will be relative to the end position.
--- @param noPatterns? boolean @Disable patterns.
--- @return number @Starting position of the found text, or nil if the text wasn't found
--- @return number @Ending position of found text, or nil if the text wasn't found
--- @return string @Matched text for each group if patterns are enabled and used, or nil if the text wasn't found
function string.find(haystack, needle, startPos, noPatterns)
end

--- Formats the specified values into the string given.  
--- @param format string @The string to be formatted.<br>
--- @vararg any @Values to be formatted into the string.
--- @return string @The formatted string
function string.format(format, ...)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: This function is removed in Lua versions later than what GMod is currently using. Use string.gmatch instead.  
--- Returns an iterator function that is called for every complete match of the pattern, all sub matches will be passed as to the loop.  
--- @param data string @The string to search in
--- @param pattern string @The pattern to search for
--- @return function @The iterator function that can be used in a for-in loop
function string.gfind(data, pattern)
end

--- Using Patterns, returns an iterator which will return either one value if no capture groups are defined, or any capture group matches.  
--- @param data string @The string to search in
--- @param pattern string @The pattern to search for
--- @return function @The iterator function that can be used in a for-in loop
function string.gmatch(data, pattern)
end

--- This functions main purpose is to replace certain character sequences in a string using Patterns.  
--- @param string string @String which should be modified.
--- @param pattern string @The pattern that defines what should be matched and eventually be replaced.
--- @param replacement string @In case of a string the matched sequence will be replaced with it
--- @param maxReplaces? number @Maximum number of replacements to be made.
--- @return string @replaceResult
--- @return number @replaceCount
function string.gsub(string, pattern, replacement, maxReplaces)
end

--- Counts the number of characters in the string (length). This is equivalent to using the length operator (#).  
--- @param str string @The string to find the length of.
--- @return number @Length of the string
function string.len(str)
end

--- Changes any upper-case letters in a string to lower-case letters.  
--- ℹ **NOTE**: This function doesn't work on special non-English UTF-8 characters.  
--- @param str string @The string to convert.
--- @return string @A string representing the value of a string converted to lower-case.
function string.lower(str)
end

--- Finds a Pattern in a string.  
--- @param string string @String which should be searched in for matches.
--- @param pattern string @The pattern that defines what should be matched.
--- @param startPosition? number @The start index to start the matching from, can be negative to start the match from a position relative to the end.
--- @return any @Matched text(s)
function string.match(string, pattern, startPosition)
end

--- Repeats a string by the provided number, with an optional separator.  
--- @param str string @The string to convert.
--- @param repetitions number @Times to repeat, this value gets rounded internally.
--- @param separator? string @String that will separate the repeated piece
--- @return string @Repeated string.
function string.rep(str, repetitions, separator)
end

--- Reverses a string.  
--- @param str string @The string to be reversed.
--- @return string @reversed string
function string.reverse(str)
end

--- Returns a sub-string, starting from the character at position `StartPos` of the string (inclusive), and optionally ending at the character at position `EndPos` of the string (also inclusive). If EndPos is not given, the rest of the string is returned.  
--- @param string string @The string you'll take a sub-string out of.
--- @param StartPos number @The position of the first character that will be included in the sub-string
--- @param EndPos? number @The position of the last character to be included in the sub-string
--- @return string @The substring.
function string.sub(string, StartPos, EndPos)
end

--- Changes any lower-case letters in a string to upper-case letters.  
--- ℹ **NOTE**: This function doesn't work on special non-English UTF-8 characters.  
--- @param str string @The string to convert.
--- @return string @A string representing the value of a string converted to upper-case.
function string.upper(str)
end
