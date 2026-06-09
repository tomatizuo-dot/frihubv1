local Module = {}
Module.__index = Module

function Module.new(Name)
	local Self = setmetatable({}, Module)

	Self.Name = Name
	Self.Enabled = false
	Self.Expanded = false
	Self.Settings = {}

	return Self
end

function Module:Toggle()
	self.Enabled = not self.Enabled
	return self.Enabled
end

function Module:AddSetting(Name, Setting)
	self.Settings[Name] = Setting
end

function Module:GetSetting(Name)
	return self.Settings[Name]
end
function Module:GetSettings()
	return self.Settings
end

function Module:SetExpanded(State)
	self.Expanded = State
end

function Module:IsExpanded()
	return self.Expanded
end

function Module:IsEnabled()
	return self.Enabled
end

return Module
