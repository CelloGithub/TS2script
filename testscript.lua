local map = game.Workspace.map
local LP = game.Players.LocalPlayer

-- shortcuts
local shortcuts = game.Workspace.shortcuts

for _, shortcutp in pairs(shortcuts:GetChildren()) do
	if shortcutp:IsA("BasePart") then
		shortcutp.Transparency = 0.75
		shortcutp.BrickColor = BrickColor.new("Bright red")
	end
end

-- cosmic causeway
-- portals
local spaceportal = map.SpacePortal
local portalbutton1 = spaceportal.button1.button
local portalbutton2 = spaceportal.button2.button
local portalbutton3 = spaceportal.button3.button
local portalbutton4 = spaceportal.button4.button

-- buttons
local hlgtpbutton1 = Instance.new("Highlight", portalbutton1)
local bill1 = Instance.new("BillboardGui", portalbutton1)
local textlabel1 = Instance.new("TextLabel", bill1)

local hlgtpbutton2 = Instance.new("Highlight", portalbutton2)
local bill2 = Instance.new("BillboardGui", portalbutton2)
local textlabel2 = Instance.new("TextLabel", bill2)

local hlgtpbutton3 = Instance.new("Highlight", portalbutton3)
local bill3 = Instance.new("BillboardGui", portalbutton3)
local textlabel3 = Instance.new("TextLabel", bill3)

local hlgtpbutton4 = Instance.new("Highlight", portalbutton4)
local bill4 = Instance.new("BillboardGui", portalbutton4)
local textlabel4 = Instance.new("TextLabel", bill4)

-- 1
hlgtpbutton1.FillColor = Color3.new(0, 1, 0)
bill1.StudsOffset =  Vector3.new(0, 5, 0)
bill1.Size = UDim2.new(0, 200, 0, 500)
bill1.AlwaysOnTop = true
bill1.MaxDistance = 500
textlabel1.Text = "Button 1"
textlabel1.Size = UDim2.new(1, 0, 1, 0)
textlabel1.BackgroundTransparency = 1
textlabel1.TextScaled = true
textlabel1.TextColor3 = Color3.new(0, 1, 0)

-- 2
hlgtpbutton2.FillColor = Color3.new(0, 1, 0)
bill2.StudsOffset =  Vector3.new(0, 5, 0)
bill2.Size = UDim2.new(0, 200, 0, 500)
bill1.AlwaysOnTop = true
bill2.MaxDistance = 500
textlabel2.Text = "Button 2"
textlabel2.Size = UDim2.new(1, 0, 1, 0)
textlabel2.BackgroundTransparency = 1
textlabel2.TextScaled = true
textlabel2.TextColor3 = Color3.new(0, 1, 0)

-- 3
hlgtpbutton3.FillColor = Color3.new(0, 1, 0)
bill3.StudsOffset =  Vector3.new(0, 5, 0)
bill3.Size = UDim2.new(0, 200, 0, 500)
bill3.AlwaysOnTop = true
bill3.MaxDistance = 500
textlabel3.Text = "Button 2"
textlabel3.Size = UDim2.new(1, 0, 1, 0)
textlabel3.BackgroundTransparency = 1
textlabel3.TextScaled = true
textlabel3.TextColor3 = Color3.new(0, 1, 0)

-- 4
hlgtpbutton4.FillColor = Color3.new(0, 1, 0)
bill4.StudsOffset =  Vector3.new(0, 5, 0)
bill4.Size = UDim2.new(0, 200, 0, 500)
bill4.AlwaysOnTop = true
bill4.MaxDistance = 500
textlabel4.Text = "Button 3"
textlabel4.Size = UDim2.new(1, 0, 1, 0)
textlabel4.BackgroundTransparency = 1
textlabel4.TextScaled = true
textlabel4.TextColor3 = Color3.new(0, 1, 0)

-- Go to falling freeway
local gtff = game.Players.LocalPlayer.PlayerGui.ScreenGui.settingsbutton:Clone()
gtff.Name = "gotofallingfreeway"
gtff.Parent = game.Players.LocalPlayer.PlayerGui.ScreenGui
gtff.Text = "Go To Falling Freeway"
gtff.Position = UDim2.new(0.6, 0, 0.094, 0)

gtff.MouseButton1Click:Connect(function() 
	LP.Character.FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-262.961, 237.475, 3767.735)
end)
