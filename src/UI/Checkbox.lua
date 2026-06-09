local Checkbox = {}
Checkbox.__index = Checkbox

function Checkbox.new(Default)
	local Self = setmetatable({}, Checkbox)

	Self.Value = Default or false

	return Self
end

function Checkbox:Set(Value)
	self.Value = Value
end

function Checkbox:Get()
	return self.Value
end

function Checkbox:Toggle()
	self.Value = not self.Value
	return self.Value
end

return Checkbox
