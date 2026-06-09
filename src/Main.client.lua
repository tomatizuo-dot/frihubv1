local Renderer = require(script.Parent.UI.Renderer)

local Categories = {
	require(script.Parent.Categories.Combat),
	require(script.Parent.Categories.Movement),
	require(script.Parent.Categories.Render),
	require(script.Parent.Categories.Misc),
	require(script.Parent.Categories.Settings)
}

local Windows = Renderer:Render(Categories)

print("Loaded Windows:", #Windows)

for _, Window in ipairs(Windows) do
	print(Window.Name)

	for _, Module in ipairs(Window:GetModules()) do
		print("  ->", Module.Name)

		for SettingName, SettingValue in pairs(Module:GetSettings()) do
			print("     ", SettingName, SettingValue)
		end
	end
end
