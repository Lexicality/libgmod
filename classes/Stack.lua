--- @class GStack
--- An object returned by util.Stack.  
--- Like a Lua table, a Stack is a container. It follows the principle of LIFO (last in, first out).  
--- The Stack works like a stack of papers: the first page you put down (push) will be the last one you remove (pop). That also means that the last page you put down, will be the first to be removed.  
local GStack = {}
--- Pop an item from the stack  
--- @param amount number @Amount of items you want to pop.
function GStack:Pop(amount)
end

--- Push an item onto the stack  
--- @param object any @The item you want to push
function GStack:Push(object)
end

--- Returns the size of the stack  
--- @return number @The size of the stack
function GStack:Size()
end

--- Get the item at the top of the stack  
--- @return any @The item at the top of the stack
function GStack:Top()
end

