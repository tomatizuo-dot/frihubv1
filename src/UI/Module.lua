local Module = {}

function Module.new(Name)
    local Self = {}

    Self.Name = Name
    Self.Enabled = false
    Self.Expanded = false

    return Self
end

return Module
