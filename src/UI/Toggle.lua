local Toggle = {}
Toggle.__index = Toggle

function Toggle.new(Default)
    local Self = setmetatable({}, Toggle)

    Self.Value = Default or false

    return Self
end

function Toggle:Set(Value)
    self.Value = Value
end

function Toggle:Get()
    return self.Value
end

function Toggle:Toggle()
    self.Value = not self.Value
    return self.Value
end

return Toggle
