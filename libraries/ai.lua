--- @meta

--- The ai library.  
_G.ai = {}
--- Returns the number of AI nodes on the map, used by the base game NPCs.  
--- For nextbots, see navmesh.  
--- @return number @The node count.
function ai.GetNodeCount()
end

--- Translates a schedule name to its corresponding ID.  
--- @param sched string @Then schedule name
--- @return number @The schedule ID, see Enums/SCHED
function ai.GetScheduleID(sched)
end

--- Returns the squad leader of the given squad.  
--- @param squad string @The squad name.
--- @return GNPC @The squad leader.
function ai.GetSquadLeader(squad)
end

--- Returns the amount of members a given squad has. See also ai.GetSquadMembers.  
--- @param squad string @The squad name.
--- @return number @The member count.
function ai.GetSquadMemberCount(squad)
end

--- Returns all members of a given squad. See also ai.GetSquadMemberCount and NPC:GetSquad.  
--- @param squad string @The squad name.
--- @return table @A table of NPCs in the given squad.
function ai.GetSquadMembers(squad)
end

--- Translates a task name to its corresponding ID.  
--- @param task string @The task name.
--- @return number @The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/serv
function ai.GetTaskID(task)
end
