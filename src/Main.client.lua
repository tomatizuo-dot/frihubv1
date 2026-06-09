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
