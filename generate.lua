local builtin = {
	string = true,
	xpcall = true,
	package = true,
	tostring = true,
	print = true,
	os = true,
	unpack = true,
	require = true,
	getfenv = true,
	setmetatable = true,
	next = true,
	assert = true,
	tonumber = true,
	io = true,
	rawequal = true,
	collectgarbage = true,
	getmetatable = true,
	module = true,
	rawset = true,
	math = true,
	debug = true,
	pcall = true,
	table = true,
	newproxy = true,
	type = true,
	coroutine = true,
	_G = true,
	select = true,
	gcinfo = true,
	pairs = true,
	rawget = true,
	loadstring = true,
	ipairs = true,
	_VERSION = true,
	dofile = true,
	setfenv = true,
	load = true,
	error = true,
	loadfile = true,
	GAMEMODE = true,
	_MODULES = true,
	luadev = true,
	easylua = true,
	these = true,
	bots = true,
	props = true,
	all = true,
	us = true,
	TEXFILTER = true,
	SCREENFADE = true,
	SENSORBONE = true,
}

local function fnator(name, fn)
	local info = debug.getinfo(fn)
	if info.isvararg then
		return "function " .. name .. "(...) end"
	end
	local fndef = "function " .. name .. "("
	for i = 1, info.nparams do
		if i > 1 then
			fndef = fndef .. ","
		end
		fndef = fndef .. "p" .. i
	end
	return fndef .. ") end"
end

local function libinator(libname, lib)
	print(libname, "= {}")
	for name, value in pairs(lib) do
		if type(name) ~= "number" and name[1] ~= "_" then
			name = libname .. "." .. name
			if type(value) == "function" then
				print(fnator(name, value))
			elseif type(value) == "table" then
				print(name, "= {}")
				-- libinator(name, value)
			else
				-- print(name, "=", util.TableToJSON({value}):sub(2, -2))
			end
		end
	end
end

for name, value in pairs(_G) do
	if not builtin[name] and name:sub(1, 6) ~= "color_" and name[1] ~= "D" and
		type(value) == "table" then
		libinator(name, value)
		print()
	end
end
