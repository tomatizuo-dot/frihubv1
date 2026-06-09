local Categories = {
    require(script.Parent.Categories.Combat),
    require(script.Parent.Categories.Movement),
    require(script.Parent.Categories.Render),
    require(script.Parent.Categories.Misc),
    require(script.Parent.Categories.Settings)
}

for _, Category in ipairs(Categories) do
    print("Loading:", Category.Name)
end
