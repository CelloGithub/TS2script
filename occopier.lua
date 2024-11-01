local plr = game.Players.LocalPlayer
local T
local Copying = false
local Obbys = workspace.Obbies
local myObby = Obbys:FindFirstChild(plr.Name)
local myArea
if myObby then
	myArea = myObby:FindFirstChild("Area")
end
local font = Font.new(
	"rbxasset://fonts/families/SourceSansPro.json",
	Enum.FontWeight.Bold
)

local PlayerGui = plr.PlayerGui
local Gui = Instance.new("ScreenGui", PlayerGui)
Gui.ScreenInsets = Enum.ScreenInsets.None

local Frame = Instance.new("Frame", Gui)
Frame.Size = UDim2.new(0.2,0,0.2,0)
Frame.AnchorPoint = Vector2.new(0.5,0.5)
Frame.Position = UDim2.new(0.5,0,0.5,0)
Frame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint", Frame)
UIAspectRatioConstraint.AspectRatio = 1.459
UIAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
local FrameCorners = Instance.new("UICorner", Frame)

local Cross = Instance.new("ImageButton", Frame)
Cross.Size = UDim2.new(0.089, 0,0.13, 0)
Cross.Position = UDim2.new(0.99, 0,0.017, 0)
Cross.AnchorPoint = Vector2.new(1,0)
Cross.Image = "rbxassetid://3926305904"
Cross.ImageRectOffset = Vector2.new(284, 4)
Cross.ImageRectSize = Vector2.new(24, 24)
Cross.BackgroundTransparency = 1

local TextBox = Instance.new("TextBox", Frame)
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.Size = UDim2.new(0.8, 0,0.3, 0)
TextBox.Position = UDim2.new(0.5, 0,0.3, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
TextBox.TextScaled = true
TextBox.PlaceholderText = "Player"
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Text = ""
TextBox.FontFace = font
local TextBoxCorners = Instance.new("UICorner", TextBox)
local TextBoxStroke = Instance.new("UIStroke", TextBox)
TextBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TextBoxStroke.Color = Color3.fromRGB(255, 255, 255)

local PlayerLabel = Instance.new("TextLabel", Frame)
PlayerLabel.BorderSizePixel = 0
PlayerLabel.AnchorPoint = Vector2.new(0.5,0)
PlayerLabel.Size = UDim2.new(0.8, 0,0.15, 0)
PlayerLabel.Position = UDim2.new(0.5, 0,0.45, 0)
PlayerLabel.BackgroundTransparency = 1
PlayerLabel.TextScaled = true
PlayerLabel.TextColor3 = Color3.fromRGB(98, 98, 98)
PlayerLabel.Text = ""
PlayerLabel.FontFace = font

local Button = Instance.new("TextButton", Frame)
Button.AnchorPoint = Vector2.new(0.5, 0.5)
Button.Size = UDim2.new(0.6, 0,0.2, 0)
Button.Position = UDim2.new(0.5, 0,0.75, 0)
Button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Button.TextScaled = true
Button.TextColor3 = Color3.fromRGB(0, 255, 0)
Button.Text = "Copy"
Button.FontFace = font
local ButtonCorners = Instance.new("UICorner", Button)
local ButtonStroke = Instance.new("UIStroke", Button)
ButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ButtonStroke.Color = Color3.fromRGB(0, 255, 0)

local Credits = Instance.new("TextLabel", Frame)
Credits.AnchorPoint = Vector2.new(0,1)
Credits.Position = UDim2.new(0.025, 0,0.983, 0)
Credits.Size = UDim2.new(1, 0,0.1, 0)
Credits.BackgroundTransparency = 1
Credits.TextScaled = true
Credits.TextColor3 = Color3.fromRGB(178, 178, 178)
Credits.TextXAlignment = Enum.TextXAlignment.Left
Credits.Text = "Made by BLOCKCE"
Credits.FontFace = font



local ended = false

Frame.InputBegan:Connect(function(Imput)
	if Imput.UserInputType == Enum.UserInputType.MouseButton1 or Imput.UserInputType == Enum.UserInputType.Touch then
		local screenSize = workspace.Camera.ViewportSize
		local FramePos = Frame.AbsolutePosition
		local mousePos = plr:GetMouse()
		local DistanceX = mousePos.X - FramePos.X
		local DistanceY = mousePos.Y - FramePos.Y
		repeat wait()
			local mousePos = plr:GetMouse()
			local FramePos = Frame.AbsolutePosition

			local PosX = (mousePos.X - DistanceX) / screenSize.X + ((Frame.AbsoluteSize.X / 2) / screenSize.X)
			local PosY = ((mousePos.Y - DistanceY) / screenSize.Y) + ((Frame.AbsoluteSize.Y) / screenSize.Y)

			Frame.Position = UDim2.new(PosX,0,PosY,0)
		until ended == true
		ended = false
	end
end)

Frame.InputEnded:Connect(function(Imput)
	if Imput.UserInputType == Enum.UserInputType.MouseButton1 or Imput.UserInputType == Enum.UserInputType.Touch then
		ended = true
	end
end)

Cross.Activated:Connect(function()
	Gui:Destroy()
end)

TextBox:GetPropertyChangedSignal("Text"):Connect(function()
	local Text = TextBox.Text
	T = nil
	if Text ~= "" then
		local PlayerTable = game.Players:GetChildren()
		table.sort(PlayerTable, function(a, b)
			return a.Name > b.Name
		end)

		for _, currentPlayer in game.Players:GetChildren() do
			if string.lower(currentPlayer.Name):sub(1, #Text) == string.lower(Text) then
				T = currentPlayer
				break
			else
				T = nil
			end
		end
		if T == nil then
			table.sort(PlayerTable, function(a, b)
				return a.DisplayName > b.DisplayName
			end)
			for _, currentPlayer in game.Players:GetChildren() do
				if string.lower(currentPlayer.DisplayName):sub(1, #Text) == string.lower(Text) then
					T = currentPlayer
					break
				else
					T = nil
				end
			end
		end
	end

	if T then
		PlayerLabel.Text = T.Name.."("..T.DisplayName..")"
	else
		PlayerLabel.Text = ""
	end
end)

local myParts = myObby.Items.Parts
local mySpawn = myObby.StartingSpawn.StartingPart
Button.Activated:Connect(function()
	if Copying == false then
		if T and T.Parent then
			Copying = true
			Button.Text = "Cancel"
			Button.TextColor3 = Color3.fromRGB(255, 0, 0)
			ButtonStroke.Color = Color3.fromRGB(255, 0, 0)

			local tObby = Obbys:FindFirstChild(T.Name)
			if tObby then
				local tArea = tObby:FindFirstChild("Area")
				if tArea then
					local tSpawn = tObby.StartingSpawn.StartingPart
					local Parts = tObby.Items.Parts:GetChildren()
					local partParts = {}
					local cd = false


					for _, v in Parts do
						if v.Name == "Part" then
							table.insert(partParts, v)
						end
					end

					local spawnX = math.random(myArea.Position.X - (myArea.Size.X / 2 - 10), myArea.Position.X + (myArea.Size.X / 2 - 10))
					local spawnY = math.random(myArea.Position.Y - (myArea.Size.Y / 2 - 10), myArea.Position.Y + (myArea.Size.Y / 2 - 10))
					local spawnZ = math.random(myArea.Position.Z - (myArea.Size.Z / 2 - 10), myArea.Position.Z + (myArea.Size.Z / 2 - 10))
					local args = {
						[1] = "Part",
						[2] = CFrame.new(spawnX, spawnY, spawnZ) 
					}

					local partmade = game:GetService("ReplicatedStorage").Events.AddObject:InvokeServer(unpack(args))
					local function partCheck()
						if partmade ~= true then
							task.wait(1)
							partmade = game:GetService("ReplicatedStorage").Events.AddObject:InvokeServer(unpack(args))
							partCheck()
						end
					end

					partCheck()



					local myPartParts = {}

					for _, v in myParts:GetChildren() do
						if v.Name == "Part" then
							table.insert(myPartParts, v)
						end
					end







					local args = {}

					for i = 1, #partParts - #myPartParts do

						local spawnX = math.random(myArea.Position.X - (myArea.Size.X / 2 - 10), myArea.Position.X + (myArea.Size.X / 2 - 10))
						local spawnY = math.random(myArea.Position.Y - (myArea.Size.Y / 2 - 10), myArea.Position.Y + (myArea.Size.Y / 2 - 10))
						local spawnZ = math.random(myArea.Position.Z - (myArea.Size.Z / 2 - 10), myArea.Position.Z + (myArea.Size.Z / 2 - 10))

						table.insert(args, {
							[1] = myPartParts[1],
							[2] = CFrame.new(spawnX, spawnY, spawnZ),
							[3] = Vector3.new(1, 1, 1)
						})
					end


					local cloneMade = game:GetService("ReplicatedStorage").Events.CloneObject:InvokeServer(args)
					local function cloneCheck()
						if cloneMade ~= true then
							task.wait(1)
							cloneMade = game:GetService("ReplicatedStorage").Events.CloneObject:InvokeServer(args)
							cloneCheck()
						end
					end

					cloneCheck()

					for _, v in myParts:GetChildren() do
						if v.Name == "Part" then
							table.insert(myPartParts, v)
						end
					end

					local mirror = false
					if mySpawn.Position.Z > 0 then
						if tSpawn.Position.Z < 0 then
							mirror = true
						end
					else
						if tSpawn.Position.Z > 0 then
							mirror = true
						end
					end

					local args = {}

					for i, v in partParts do
						local Pos = Vector3.new(0,0,0)
						local CF = CFrame.new(Vector3.new(0,0,0))
						if mirror == true then
							Pos = Vector3.new(mySpawn.Position.X + (tSpawn.Position.X - v.Position.X), mySpawn.Position.Y - (tSpawn.Position.Y - v.Position.Y), mySpawn.Position.Z + (tSpawn.Position.Z - v.Position.Z))
							CF = (CFrame.new(Pos) * CFrame.Angles(math.rad(v.Orientation.X), math.rad(v.Orientation.Y), math.rad(v.Orientation.Z))) * CFrame.Angles(math.rad(180), 0, 0)
						else
							Pos = mySpawn.Position - (tSpawn.Position - v.Position)
							CF = CFrame.new(Pos) * CFrame.Angles(math.rad(v.Orientation.X), math.rad(v.Orientation.Y), math.rad(v.Orientation.Z))
						end

						table.insert(args, {
							[1] = myPartParts[i],
							[2] = CF,
							[3] = v.Size
						})
					end


					local moveMade = game:GetService("ReplicatedStorage").Events.MoveObject:InvokeServer(args)
					local function moveCheck()
						if moveMade ~= true then
							task.wait(1)
							moveMade = game:GetService("ReplicatedStorage").Events.MoveObject:InvokeServer(args)
							moveCheck()
						end
					end

					moveCheck()


					local paintedParts = {}
					for i, v in partParts do
						local part = myPartParts[i]
						if not table.find(paintedParts, part) then
							local argsParts = {part}
							for i2, secondPart in partParts do
								if i2 > i then
									if secondPart.Color == v.Color then
										table.insert(argsParts, myPartParts[i2])
										table.insert(paintedParts, myPartParts[i2])
									end
								end
							end


							local args = {
								[1] = argsParts,
								[2] = "Color",
								[3] = v.Color
							}
							local stop = false
							repeat
								stop = game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(unpack(args))
							until stop == true
						end

					end

					paintedParts = {}
					for i, v in partParts do
						local part = myPartParts[i]
						if not table.find(paintedParts, part) then
							local argsParts = {part}
							for i2, secondPart in partParts do
								if i2 > i then
									if secondPart.Shape == v.Shape then
										table.insert(argsParts, myPartParts[i2])
										table.insert(paintedParts, myPartParts[i2])
									end
								end
							end


							local args = {
								[1] = argsParts,
								[2] = "Shape",
								[3] = v.Shape
							}
							local stop = false
							repeat
								stop = game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(unpack(args))
							until stop == true
						end

					end

					paintedParts = {}
					for i, v in partParts do
						local part = myPartParts[i]
						if not table.find(paintedParts, part) then
							local argsParts = {part}
							for i2, secondPart in partParts do
								if i2 > i then
									if secondPart.Material == v.Material then
										table.insert(argsParts, myPartParts[i2])
										table.insert(paintedParts, myPartParts[i2])
									end
								end
							end


							local args = {
								[1] = argsParts,
								[2] = "Material",
								[3] = tostring(v.Material):split(".")[3]
							}
							local stop = false
							repeat
								stop = game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(unpack(args))
							until stop == true
						end

					end

					paintedParts = {}
					for i, v in partParts do
						local part = myPartParts[i]
						if not table.find(paintedParts, part) then
							local argsParts = {part}
							for i2, secondPart in partParts do
								if i2 > i then
									if secondPart.TopSurface == v.TopSurface then
										table.insert(argsParts, myPartParts[i2])
										table.insert(paintedParts, myPartParts[i2])
									end
								end
							end


							local args = {
								[1] = argsParts,
								[2] = "Surface",
								[3] = tostring(v.TopSurface):split(".")[3]
							}
							local stop = false
							repeat
								stop = game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(unpack(args))
							until stop == true
						end

					end

					paintedParts = {}
					for i, v in partParts do
						local part = myPartParts[i]
						if not table.find(paintedParts, part) then
							local argsParts = {part}
							for i2, secondPart in partParts do
								if i2 > i then
									if secondPart.Transparency == v.Transparency then
										table.insert(argsParts, myPartParts[i2])
										table.insert(paintedParts, myPartParts[i2])
									end
								end
							end


							local args = {
								[1] = argsParts,
								[2] = "Transparency",
								[3] = v.Transparency
							}
							local stop = false
							repeat
								stop = game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(unpack(args))
							until stop == true
						end

					end

					paintedParts = {}
					for i, v in partParts do
						local part = myPartParts[i]
						if not table.find(paintedParts, part) then
							local argsParts = {part}
							for i2, secondPart in partParts do
								if i2 > i then
									if secondPart.Reflectance == v.Reflectance then
										table.insert(argsParts, myPartParts[i2])
										table.insert(paintedParts, myPartParts[i2])
									end
								end
							end


							local args = {
								[1] = argsParts,
								[2] = "Reflectance",
								[3] = v.Reflectance
							}
							local stop = false
							repeat
								stop = game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(unpack(args))
							until stop == true
						end
					end

					paintedParts = {}
					for i, v in partParts do
						local part = myPartParts[i]
						if not table.find(paintedParts, part) then
							local argsParts = {part}
							for i2, secondPart in partParts do
								if i2 > i then
									if secondPart.CanCollide == v.CanCollide then
										table.insert(argsParts, myPartParts[i2])
										table.insert(paintedParts, myPartParts[i2])
									end
								end
							end


							local args = {
								[1] = argsParts,
								[2] = "CanCollide",
								[3] = v.CanCollide
							}
							local stop = false
							repeat
								stop = game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(unpack(args))
							until stop == true
						end
					end

					paintedParts = {}
					for i, v in partParts do
						local part = myPartParts[i]
						if not table.find(paintedParts, part) then
							local argsParts = {part}
							for i2, secondPart in partParts do
								if i2 > i then
									if secondPart.CastShadow == v.CastShadow then
										table.insert(argsParts, myPartParts[i2])
										table.insert(paintedParts, myPartParts[i2])
									end
								end
							end

							local args = {
								[1] = argsParts,
								[2] = "CastShadow",
								[3] = v.CastShadow
							}
							local stop = false
							repeat
								stop = game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(unpack(args))
							until stop == true
						end
					end
				end
			end
		end
	else
		Copying = false
		Button.Text = "Copy"
		Button.TextColor3 = Color3.fromRGB(0, 255, 0)
		ButtonStroke.Color = Color3.fromRGB(0, 255, 0)
	end
end)
