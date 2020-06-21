--- Add proxies to materials.  
_G.matproxy = {}
--- Adds a material proxy.  
--- @param MatProxyData table @The information about the proxy
function matproxy.Add(MatProxyData)
end

--- Called by the engine from OnBind  
--- @param uname string 
--- @param mat GIMaterial 
--- @param ent GEntity 
function matproxy.Call(uname, mat, ent)
end

--- Called by the engine from OnBind  
--- @param name string 
--- @param uname string 
--- @param mat GIMaterial 
--- @param values table 
function matproxy.Init(name, uname, mat, values)
end

--- Called by engine, returns true if we're overriding a proxy  
--- @param name string @The name of proxy in question
--- @return boolean @Are we overriding it?
function matproxy.ShouldOverrideProxy(name)
end

