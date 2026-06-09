local Files = {
	"src/Core/theme.lua",
	"src/Core/config.lua",
	"src/Core/drag.lua",

	"src/UI/toggle.lua",
	"src/UI/slider.lua",
	"src/UI/dropdown.lua",
	"src/UI/module.lua",
	"src/UI/window.lua",
	"src/UI/renderer.lua",

	"src/Categories/combat.lua",
	"src/Categories/movement.lua",
	"src/Categories/render.lua",
	"src/Categories/misc.lua",
	"src/Categories/settings.lua",

	"src/Main.client.lua"
}

local Output = {}

for _, Path in ipairs(Files) do
	local File = io.open(Path, "r")

	if File then
		table.insert(
			Output,
			"\n--[[ "..Path.." ]]\n"
		)

		table.insert(
			Output,
			File:read("*a")
		)

		File:close()
	else
		warn("Missing file: "..Path)
	end
end

local Build = io.open(
	"build/FriHub.lua",
	"w"
)

Build:write(table.concat(Output, "\n"))
Build:close()

print("Build complete.")
