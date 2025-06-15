--- @meta

--- A library that allows implementing custom [material proxies](https://developer.valvesoftware.com/wiki/Material_proxies) for materials.  
--- Material proxies allow programmatically setting specific `.vmt` shader parameters on a per-entity basis, rather being global across all instances of a material.  
_G.matproxy = {}
--- A list of all material proxies registered with matproxy.Add.  
--- @type table
matproxy.ProxyList = nil --[[@as table]]

--- Register a material proxy. See matproxy for more general explanation of what they are.  
--- ℹ **NOTE**: The `bind` function is required. The `init` function won't run without it set.  
--- @param matProxyData table @The information about the proxy
function matproxy.Add(matProxyData)
end
