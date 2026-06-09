local Window = {}

function Window.new(Name)
    local Self = {}

    Self.Name = Name
    Self.Modules = {}

    return Self
end

return Window
