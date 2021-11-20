local MainModule = Game:GetObjects("rbxassetid://8043967622")[1]

local function GetModule(Module)
	return loadstring(MainModule[Module].Source)()
end
local library = {}

local Get = {
	Utils = GetModule("Utils"),
	Window = GetModule("Window")
}

function library:LOL()
	print(" Oke Oke Oke ")
end

function library:Window(Options)
	return Get.Window:New(Options)
end


return library
