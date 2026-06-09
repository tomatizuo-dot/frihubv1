local Window = require(script.Parent.Window)

local Renderer = {}

function Renderer:RenderCategory(CategoryData)
	local WindowObject = Window.new(CategoryData.Name)

	for _, ModuleData in ipairs(CategoryData.Modules) do
		local ModuleObject = WindowObject:AddModule(ModuleData.Name)

		if ModuleData.Settings then
			for SettingName, SettingValue in pairs(ModuleData.Settings) do
				ModuleObject:AddSetting(
					SettingName,
					SettingValue
				)
			end
		end
	end

	return WindowObject
end

function Renderer:Render(Categories)
	local Windows = {}

	for _, Category in ipairs(Categories) do
		table.insert(
			Windows,
			self:RenderCategory(Category)
		)
	end

	return Windows
end

return Renderer
