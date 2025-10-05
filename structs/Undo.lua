--- @meta

--- Table structure used by undo.Do_Undo and GM:CanUndo.  
--- @class SUndo
--- @field Owner GPlayer @The player responsible who owns the undo
--- @field Name string @The name of the text to report to the player
--- @field Entities GEntity[] @A table of entities to be removed by the undo
--- @field Functions table[] @A table of {function_to_call, func_arg2, func_arg3}
--- @field CustomUndoText string @A custom undo text to show the client
--- @field NiceText string @A "nice" name of the undo, which will be used for the UI
