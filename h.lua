local library = {}
local MainModule = Game:GetObjects("rbxassetid://8043749563")[1]

local function GetModule(Module)
	return loadstring(MainModule[Module].Source)()
end

library.Get = {
	Utils = GetModule("Utils"),
	Window = GetModule("Window"),
	Tab = GetModule("Tab")
}

function library:Window(Options)
	library.Get.Window:Window(Options)
end

return library
