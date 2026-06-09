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
end

function Module:SetExpanded(State)
    self.Expanded = State
end

function Module:AddSetting(Name, Default)
    self.Settings[Name] = Default
end

return Module
