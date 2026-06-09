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
    local NewModule = Module.new(Name)

    table.insert(self.Modules, NewModule)

    return NewModule
end

return Window
