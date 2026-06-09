local Module = require(script.Parent.Module)

local Window = {}
Window.__index = Window

function Window.new(Name)
    local Self = setmetatable({}, Window)

    Self.Name = Name
    Self.Modules = {}

    return Self
end

function Window:AddModule(Name)
	local Existing = self:GetModule(Name)

	if Existing then
		return Existing
	end

	local NewModule = Module.new(Name)

	table.insert(self.Modules, NewModule)

	return NewModule
end

function Window:GetModules()
	return self.Modules
end

function Window:GetModule(Name)
	for _, Module in ipairs(self.Modules) do
		if Module.Name == Name then
			return Module
		end
	end
end

return Window
