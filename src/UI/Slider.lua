local Slider = {}
Slider.__index = Slider

function Slider.new(Default, Min, Max)
	local Self = setmetatable({}, Slider)

	Self.Min = Min or 0
	Self.Max = Max or 100
	Self.Value = Default or Self.Min

	return Self
end

function Slider:Set(Value)
	Value = math.clamp(Value, self.Min, self.Max)
	self.Value = Value
end

function Slider:Get()
	return self.Value
end

function Slider:GetPercent()
	return (self.Value - self.Min) / (self.Max - self.Min)
end

return Slider
