--- @meta

--- Just started  
_G.TASKSTATUS_NEW = 0
--- Running task & movement.  
_G.TASKSTATUS_RUN_MOVE_AND_TASK = 1
--- Just running movement.  
_G.TASKSTATUS_RUN_MOVE = 2
--- Just running task.  
_G.TASKSTATUS_RUN_TASK = 3
--- Completed, get next task.  
_G.TASKSTATUS_COMPLETE = 4

--- Used by NPC:GetTaskStatus and NPC:SetTaskStatus.  
--- @alias ETASKSTATUS `TASKSTATUS_NEW`|`TASKSTATUS_RUN_MOVE_AND_TASK`|`TASKSTATUS_RUN_MOVE`|`TASKSTATUS_RUN_TASK`|`TASKSTATUS_COMPLETE`
