local Renderer = {}

function Renderer:CreateGui()
	local Players = game:GetService("Players")

	local Player = Players.LocalPlayer
	local PlayerGui = Player:WaitForChild("PlayerGui")

	local Existing = PlayerGui:FindFirstChild("FriHub")

	if Existing then
		Existing:Destroy()
	end

	local Gui = Instance.new("ScreenGui")
	Gui.Name = "FriHub"
	Gui.ResetOnSpawn = false
	Gui.Parent = PlayerGui

	return Gui
end

function Renderer:CreateWindow(Parent, Name, Position)
	local Frame = Instance.new("Frame")

	Frame.Name = Name
	Frame.Parent = Parent

	Frame.Size = UDim2.fromOffset(180, 250)
	Frame.Position = Position

	local Header = Instance.new("TextLabel")
	Header.Parent = Frame
	Header.Size = UDim2.new(1,0,0,20)
	Header.Text = Name

	return Frame
end

function Renderer:CreateModule(Parent, Name, Y)
	local Button = Instance.new("TextButton")

	Button.Parent = Parent

	Button.Size = UDim2.new(1,0,0,18)
	Button.Position = UDim2.fromOffset(0,Y)

	Button.Text = Name

	return Button
end

function Renderer:Render(Categories)
	local Gui = self:CreateGui()

	local X = 20

	for _, Category in ipairs(Categories) do

		local Window = self:CreateWindow(
			Gui,
			Category.Name,
			UDim2.fromOffset(X,50)
		)

		local Y = 25

		for _, ModuleData in ipairs(Category.Modules) do

			self:CreateModule(
				Window,
				ModuleData.Name,
				Y
			)

			Y += 20
		end

		X += 200
	end
end

return Renderer
