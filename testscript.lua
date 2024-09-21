if not game:IsLoaded() then
	game.Loaded:Wait()
end

game:GetService("GuiService"):ClearError()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()

local Window = OrionLib:MakeWindow({Name = "Taxi Simulator 2 Hub", HidePremium = true, IntroEnabled = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Home",
	Icon = "http://www.roblox.com/asset/?id=4370345144",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Driving Challenges",
	Icon = "http://www.roblox.com/asset/?id=7733708835",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Teleports",
	Icon = "http://www.roblox.com/asset/?id=7743869612",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Misc",
	Icon = "http://www.roblox.com/asset/?id=7734040271",
	PremiumOnly = false
})

local lpc = game.Players.LocalPlayer.Character

local spaceportal = game.Workspace.map.SpacePortal
local portalbutton1 = spaceportal.button1.button
local portalbutton2 = spaceportal.button2.button
local portalbutton3 = spaceportal.button3.button
local portalbutton4 = spaceportal.button4.button

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

hlgtpbutton3.FillColor = Color3.new(0, 1, 0)
bill3.StudsOffset =  Vector3.new(0, 5, 0)
bill3.Size = UDim2.new(0, 200, 0, 500)
bill3.AlwaysOnTop = true
bill3.MaxDistance = 500
textlabel3.Text = "Button 3"
textlabel3.Size = UDim2.new(1, 0, 1, 0)
textlabel3.BackgroundTransparency = 1
textlabel3.TextScaled = true
textlabel3.TextColor3 = Color3.new(0, 1, 0)

hlgtpbutton4.FillColor = Color3.new(0, 1, 0)
bill4.StudsOffset =  Vector3.new(0, 5, 0)
bill4.Size = UDim2.new(0, 200, 0, 500)
bill4.AlwaysOnTop = true
bill4.MaxDistance = 500
textlabel4.Text = "Button 4"
textlabel4.Size = UDim2.new(1, 0, 1, 0)
textlabel4.BackgroundTransparency = 1
textlabel4.TextScaled = true
textlabel4.TextColor3 = Color3.new(0, 1, 0)

local safeguardfolder = Instance.new("Folder", workspace)
safeguardfolder.Name = "SafeGuards"

-- Unfinished road safeguard
local urwedge1 = Instance.new("WedgePart", game.Workspace:FindFirstChild("SafeGuards"))
local urwedge2 = Instance.new("WedgePart", game.Workspace:FindFirstChild("SafeGuards"))
local urpart1 = Instance.new("Part", game.Workspace:FindFirstChild("SafeGuards"))

urwedge1.Transparency = 1
urwedge2.Transparency = 1
urpart1.Transparency = 1

urwedge1.CanCollide = false
urwedge2.CanCollide = false
urpart1.CanCollide = false

urwedge1.Size = Vector3.new(95.6, 2.8, 29.957)
urwedge2.Size = Vector3.new(95.6, 3, 22.457)
urpart1.Size = Vector3.new(378.5, 2.25, 100.274)

urwedge1.Position = CFrame.new(1615.004, 2.45, 83.25)
urwedge2.Position = CFrame.new(1210.297, 2.35, 83.25)
urpart1.Position = CFrame.new(1410.776, 2.725, 80.913)

--------------------------------------------------------------------------------------- Tab 1

Tab1:AddToggle({
	Name = "Show Cosmic Causeway Buttons",
	Default = false,
	Callback = function(Value)
		ShowCosmec = Value
		if ShowCosmec == false then
			OrionLib:MakeNotification({Name = "Success",Content = "Hid CC Buttons",Image = "rbxassetid://7733963797",Time = 5})
			hlgtpbutton1.Enabled = false
			bill1.Enabled = false
			hlgtpbutton2.Enabled = false
			bill2.Enabled = false
			hlgtpbutton3.Enabled = false
			bill3.Enabled = false
			hlgtpbutton4.Enabled = false
			bill4.Enabled = false
		end
		if ShowCosmec == true then
			OrionLib:MakeNotification({Name = "Success",Content = "Shown CC Buttons",Image = "rbxassetid://7733964016",Time = 5})
			hlgtpbutton1.Enabled = true
			bill1.Enabled = true
			hlgtpbutton2.Enabled = true
			bill2.Enabled = true
			hlgtpbutton3.Enabled = true
			bill3.Enabled = true
			hlgtpbutton4.Enabled = true
			bill4.Enabled = true
		end
	end
})

Tab1:AddButton({
	Name = "Click Sandy Avenue Buttons",
	Callback = function()
		OrionLib:MakeNotification({Name = "Success",Content = "Clicking Buttons",Image = "rbxassetid://7733715400",Time = 5})
		fireclickdetector(game.Workspace.map.SandQuest.sandbutton1:FindFirstDescendant("detect"))
		wait(0.15)
		fireclickdetector(game.Workspace.map.SandQuest.sandbutton2:FindFirstDescendant("detect"))
		wait(0.15)
		fireclickdetector(game.Workspace.map.SandQuest.sandbutton3:FindFirstDescendant("detect"))
	end    
})

--------------------------------------------------------------------------------------- Tab 2

Tab2:AddButton({
	Name = "TP to Garage",
	Callback = function()
		if lpc.Humanoid.Sit == false then
			OrionLib:MakeNotification({Name = "Success",Content = "Teleported to Garage",Image = "rbxassetid://7733715400",Time = 5})
			lpc.HumanoidRootPart.CFrame = CFrame.new(824.588, 11.825, 675.77)
		elseif lpc.Humanoid.Sit == true then
			OrionLib:MakeNotification({Name = "Error",Content = "You are sitting.",Image = "rbxassetid://7733658504",Time = 5})
		end
	end    
})

Tab2:AddButton({
	Name = "TP to Part Store",
	Callback = function()
		if lpc.Humanoid.Sit == false then
			OrionLib:MakeNotification({Name = "Success",Content = "Teleported to Part Store",Image = "rbxassetid://7733715400",Time = 5})
			lpc.HumanoidRootPart.CFrame = CFrame.new(869.063, 12.4, 675.758)
		elseif lpc.Humanoid.Sit == true then
			OrionLib:MakeNotification({Name = "Error",Content = "You are sitting.",Image = "rbxassetid://7733658504",Time = 5})
		end
	end    
})

Tab2:AddButton({
	Name = "TP to Taxi Shop",
	Callback = function()
		if lpc.Humanoid.Sit == false then
			OrionLib:MakeNotification({Name = "Success",Content = "Teleported to Taxi Shop",Image = "rbxassetid://7733715400",Time = 5})
			lpc.HumanoidRootPart.CFrame = CFrame.new(846.888, 11.825, 675.77)
		elseif lpc.Humanoid.Sit == true then
			OrionLib:MakeNotification({Name = "Error",Content = "You are sitting.",Image = "rbxassetid://7733658504",Time = 5})
		end
	end    
})

Tab2:AddButton({
	Name = "TP to Garage (Part World)",
	Callback = function()
		if lpc.Humanoid.Sit == false then
			OrionLib:MakeNotification({Name = "Success",Content = "Teleported to Garage (Part World)",Image = "rbxassetid://7733715400",Time = 5})
			lpc.HumanoidRootPart.CFrame = CFrame.new(510.382, 11.825, 3643.592)
		elseif lpc.Humanoid.Sit == true then
			OrionLib:MakeNotification({Name = "Error",Content = "You are sitting.",Image = "rbxassetid://7733658504",Time = 5})
		end
	end    
})

Tab2:AddButton({
	Name = "TP to Part World",
	Callback = function()
		if lpc.Humanoid.Sit == false then
			OrionLib:MakeNotification({Name = "Success",Content = "Teleported to Part World",Image = "rbxassetid://7733715400",Time = 5})
			lpc.HumanoidRootPart.CFrame = CFrame.new(454.366, 12.4, 3646.1)
		elseif lpc.Humanoid.Sit == true then
			OrionLib:MakeNotification({Name = "Error",Content = "You are sitting.",Image = "rbxassetid://7733658504",Time = 5})
		end
	end    
})

--------------------------------------------------------------------------------------- Tab 3

Tab3:AddToggle({
	Name = "Show Shortcuts",
	Default = false,
	Callback = function(Value)
		ShowShortcuts = Value
		if ShowShortcuts == false then
			for i, shortcutpart in ipairs(game.Players:GetChildren()) do
				if shortcutpart:IsA("BasePart") then
					shortcutpart.Transparency = 1
					shortcutpart.BrickColor = BrickColor.new("Medium stone grey")
				end
			end
		end
		if ShowShortcuts == true then
			for i, shortcutpart in ipairs(game.Workspace.shortcuts:GetChildren()) do
				if shortcutpart:IsA("BasePart") then
					shortcutpart.Transparency = 0.75
					shortcutpart.BrickColor = BrickColor.new("Bright red")
				end
			end
		end
	end
})

Tab3:AddButton({
	Name = "Get All Wrenches",
	Callback = function()
		if lpc.Humanoid.Sit == false then
			OrionLib:MakeNotification({Name = "Success",Content = "Collecting all Wrenches.",Image = "rbxassetid://7733715400",Time = 5})
			lpc.HumanoidRootPart.CFrame = CFrame.new(1777.662, 5.113, -94.187)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(1166.916, 3.508, 1599.638)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(-75.189, 5.113, 329.388)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(753.087, 44.388, 882.613)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(1172.136, -16.812, 1382.738)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(60.916, 5.108, 204.238)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(-210.934, -73.692, 1007.838)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(276.116, 39.258, -49.812)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(1493.308, -3.742, 2260.246)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(-156.179, 25.258, 3498.343)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(-1692.723, 53.558, 3112.965)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = CFrame.new(259.364, 3.658, 4186.648)
			task.wait(0.25)
			lpc.HumanoidRootPart.CFrame = ogc
		elseif lpc.Humanoid.Sit == true then
			OrionLib:MakeNotification({Name = "Error",Content = "You are sitting.",Image = "rbxassetid://7733658504",Time = 5})
		end
	end    
})

Tab3:AddToggle({
	Name = "Safeguards",
	Default = false,
	Callback = function(Value)
		Safeguard = Value
		if Safeguard == false then
			-- unfin road
			urwedge1.Transparency = 1
			urwedge2.Transparency = 1
			urpart1.Transparency = 1

			urwedge1.CanCollide = false
			urwedge2.CanCollide = false
			urpart1.CanCollide = false
		end
		if Safeguard == true then
			-- unfin road
			urwedge1.Transparency = 0.5
			urwedge2.Transparency = 0.5
			urpart1.Transparency = 0.5

			urwedge1.CanCollide = true
			urwedge2.CanCollide = true
			urpart1.CanCollide = true
		end
	end
})
