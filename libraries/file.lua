--- The file library provides functions for finding, reading and writing to files.   
--- The following path values are most commonly used:  
--- * `LUA` searches the lua files (in /lua/, in your gamemodes, in all the addons).  
--- * `GAME` searches all the mounted content (main folder, addons, mounted games etc).  
--- * `MOD` searches only the garrysmod folder.  
--- * `DATA` searches in the data folder.  
--- See File Search Paths for the descriptive list of path values.  
--- For the full list of path values, type `path` in the console.  
_G.file = {}
--- Appends a file relative to the `data` folder.  
--- @param name string @The file's name.
--- @param content string @The content which should be appended to the file.
function file.Append(name, content)
end

--- Returns the content of a file asynchronously.  
--- All limitations of file.Read also apply.  
--- ℹ **NOTE**: This function is currently broken in the Menu State and won't be fixed. [Bug Report](https://github.com/Facepunch/garrysmod-issues/issues/5433)  
--- @param fileName string @The name of the file.
--- @param gamePath string @The path to look for the files and directories in
--- @param callback function @A callback function that will be called when the file read operation finishes
--- @param sync? boolean @If `true` the file will be read synchronously.
--- @return number @FSASYNC_OK on success, FSASYNC_ERR_ on failure.
function file.AsyncRead(fileName, gamePath, callback, sync)
end

--- Creates a directory that is relative to the `data` folder.  
--- @param name string @The directory's name.
function file.CreateDir(name)
end

--- Deletes a file or `empty` folder that is relative to the **data** folder. You can't remove any files outside of **data** folder.  
--- ℹ **NOTE**: You are able to delete **any** file in the Menu state.  
--- @param name string @The file name.
--- @param path? string @The path to look for the files and directories in
--- @return boolean 
function file.Delete(name, path)
end

--- Returns a boolean of whether the file or directory exists or not.  
--- If you want to check for a directory, file.IsDir will be faster since it won't check for files.  
--- @param name string @The file or directory's name
--- @param gamePath string @The path to look for the files and directories in
--- @return boolean @Returns `true` if the file exists and `false` if it does not.
function file.Exists(name, gamePath)
end

--- Returns a list of files and directories inside a single folder.  
--- ⚠ **WARNING**: It seems that paths with capital letters (e.g. lua/MyFolder/*) don't work as expected on Linux.  
--- @param name string @The wildcard to search for
--- @param path string @The path to look for the files and directories in
--- @param sorting? string @The sorting to be used, **optional**
--- @return table @A table of found files, or `nil` if the path is invalid
--- @return table @A table of found directories, or `nil` if the path is invalid
function file.Find(name, path, sorting)
end

--- Returns whether the given file is a directory or not.  
--- @param fileName string @The file or directory's name.
--- @param gamePath string @The path to look for the files and directories in
--- @return boolean @`true` if the given path is a directory or `false` if it's a file.
function file.IsDir(fileName, gamePath)
end

--- Attempts to open a file with the given mode.  
--- @param fileName string @The files name
--- @param fileMode string @The mode to open the file in
--- @param gamePath string @The path to look for the files and directories in
--- @return GFile @The opened file object, or `nil` if it failed to open due to it not existing or being used by another process.
function file.Open(fileName, fileMode, gamePath)
end

--- Returns the content of a file.  
--- ⚠ **WARNING**: Beware of casing -- some filesystems are case-sensitive. SRCDS on Linux seems to force file/directory creation to lowercase, but will not modify read operations.  
--- @param fileName string @The name of the file.
--- @param gamePath? string @The path to look for the files and directories in
--- @return string @The data from the file as a string, or `nil` if the file isn't found.
function file.Read(fileName, gamePath)
end

--- Attempts to rename a file with the given name to another given name.  
--- This function is constrained to the `data/` folder.  
--- @param orignalFileName string @The original file or folder name
--- @param targetFileName string @The target file or folder name
--- @return boolean @`true` on success, `false` otherwise.
function file.Rename(orignalFileName, targetFileName)
end

--- Returns the file's size in bytes.  
--- @param fileName string @The file's name.
--- @param gamePath string @The path to look for the files and directories in
--- @return number @The file size in bytes, or `-1` if the file is not found.
function file.Size(fileName, gamePath)
end

--- Returns when the file or folder was last modified in Unix time.  
--- @param path string @The **file** or **folder** path.
--- @param gamePath string @The path to look for the files and directories in
--- @return number @Seconds passed since Unix epoch, or `0` if the file is not found.
function file.Time(path, gamePath)
end

--- Writes the given string to a file. Erases all previous data in the file. To add data without deleting previous data, use file.Append.  
--- @param fileName string @The name of the file being written into
--- @param content string @The content that will be written into the file.
function file.Write(fileName, content)
end

