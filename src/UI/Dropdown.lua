local Dropdown = {}
Dropdown.__index = Dropdown

function Dropdown.new(Default, Options)
	local Self = setmetatable({}, Dropdown)

	Self.Options = Options or {}
	Self.Value = Default

	if not Self.Value and #Self.Options > 0 then
		Self.Value = Self.Options[1]
	end

	return Self
end

function Dropdown:Set(Value)
	for _, Option in ipairs(self.Options) do
		if Option == Value then
			self.Value = Value
			return true
		end
	end

	return false
end

function Dropdown:Get()
	return self.Value
end

function Dropdown:GetOptions()
	return self.Options
end

return Dropdown
