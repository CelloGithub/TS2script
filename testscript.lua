if not game:IsLoaded() then
	game.Loaded:Wait()
end
game:GetService("GuiService"):ClearError()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DenDenZZZ/Kavo-UI-Library/main/Kavo.lua"))()
local Window = Library.CreateLib("Taxi Simulator 2 Hub", "DarkTheme")

local Tab = Window:NewTab("Home")
local Tab1 = Window:NewTab("Driving Challenges")
local Tab2 = Window:NewTab("Teleports")
local Tab3 = Window:NewTab("Misc")
local Section = Tab:NewSection("Section Name")
------------------------------- 
local lpc = game.Players.LocalPlayer.Character

------------------------------- Cosmic Causeway Portal Buttons

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

------------------------------- Safeguards

local safeguardfolder = Instance.new("Folder", workspace)
safeguardfolder.Name = "SafeGuards"

--------------------------------------  Unfinished road safeguard
local urwedge1 = Instance.new("WedgePart", game.Workspace.SafeGuards)
local urwedge2 = Instance.new("WedgePart", game.Workspace.SafeGuards)
local urpart1 = Instance.new("Part", game.Workspace.SafeGuards)

urwedge1.Anchored = true
urwedge2.Anchored = true
urpart1.Anchored = true

urwedge1.Transparency = 1
urwedge2.Transparency = 1
urpart1.Transparency = 1

urwedge1.CanCollide = false
urwedge2.CanCollide = false
urpart1.CanCollide = false

urwedge1.Size = Vector3.new(95.6, 2.8, 29.957)
urwedge2.Size = Vector3.new(95.6, 3, 22.457)
urpart1.Size = Vector3.new(378.5, 2.25, 100.274)

urwedge1.Position = Vector3.new(1615.004, 2.45, 83.25)
urwedge2.Position = Vector3.new(1210.297, 2.35, 83.25)
urpart1.Position = Vector3.new(1410.776, 2.725, 80.913)

urwedge1.Rotation =  Vector3.new(0, -90, 0)
urwedge2.Rotation =  Vector3.new(0, 90, 0)

------------------------------- Sandy Avenue Buttons

local sandyclicker1 = nil
local sandyclicker2 = nil
local sandyclicker3 = nil

for _, n in ipairs(game.Workspace.map.SandQuest.sandbutton1:GetChildren()) do
	if n:IsA("Part") or n:IsA("MeshPart") then
		local detector = n:FindFirstChildOfClass("ClickDetector")
		if detector then
			sandyclicker1 = detector
			break
		end
	end
end
for _, j in ipairs(game.Workspace.map.SandQuest.sandbutton2:GetChildren()) do
	if j:IsA("Part") or j:IsA("MeshPart") then
		local detector = j:FindFirstChildOfClass("ClickDetector")
		if detector then
			sandyclicker2 = detector
			break
		end
	end
end
for _, h in ipairs(game.Workspace.map.SandQuest.sandbutton3:GetChildren()) do
	if h:IsA("Part") or h:IsA("MeshPart") then
		local detector = h:FindFirstChildOfClass("ClickDetector")
		if detector then
			sandyclicker3 = detector
			break
		end
	end
end

-------------------------------------------------------------- Tab | Testing Place

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
	if state then
		print("Toggle On")
	else
		print("Toggle Off")
	end
end)

Section:NewButton("ButtonText", "ButtonInfo", function()
	print("Clicked")
end)

Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
	print(currentOption)
end)

local oldList = {
	"2019",
	"2020"
}
local newList = {
	"2021",
	"2022"
}
local dropdown = Section:NewDropdown("Dropdown","Info", oldList, function()

end)
Section:NewButton("Update Dropdown", "Refreshes Dropdown", function()
	dropdown:Refresh(newList)
end)

-------------------------------------------------------------- Tab 1 | Driving Challenges
local Section1 = Tab1:NewSection("Buttons Related")

Section1:NewToggle("Show Cosmic Causeway Buttons", "Enables / Disables the Billboard gui on the buttons", function(showccbuttons)
	if showccbuttons then
		hlgtpbutton1.Enabled = true
		bill1.Enabled = true
		hlgtpbutton2.Enabled = true
		bill2.Enabled = true
		hlgtpbutton3.Enabled = true
		bill3.Enabled = true
		hlgtpbutton4.Enabled = true
		bill4.Enabled = true
	else
		hlgtpbutton1.Enabled = false
		bill1.Enabled = false
		hlgtpbutton2.Enabled = false
		bill2.Enabled = false
		hlgtpbutton3.Enabled = false
		bill3.Enabled = false
		hlgtpbutton4.Enabled = false
		bill4.Enabled = false
	end
end)

Section1:NewButton("Click Cosmic Causeway Buttons", "Clicks all the buttons related to the driving challenge", function()
	fireclickdetector(portalbutton1.detect)
	wait(0.15)
	fireclickdetector(portalbutton2.detect)
	wait(0.15)
	fireclickdetector(portalbutton3.detect)
	wait(0.15)
	fireclickdetector(portalbutton4.detect)
end)

Section1:NewButton("Click Sandy Avenue Buttons", "Clicks all the buttons related to the driving challenge", function()
	fireclickdetector(sandyclicker1)
	wait(0.15)
	fireclickdetector(sandyclicker2)
	wait(0.15)
	fireclickdetector(sandyclicker3)
end)

-------------------------------------------------------------- Tab 2 | Teleports
local Section3 = Tab2:NewSection("Location Teleports")

Section3:NewButton("Teleport to Garage", "Teleports you to said Location", function()
	if lpc.Humanoid.Sit == false then
		lpc.HumanoidRootPart.CFrame = CFrame.new(824.588, 11.825, 675.77)
	elseif lpc.Humanoid.Sit == true then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Error";
			Text = "Cannot teleport while sitting.";
			Duration = 3;
		})
	end
end)

Section3:NewButton("Teleport to Part Store", "Teleports you to said Location", function()
	if lpc.Humanoid.Sit == false then
		lpc.HumanoidRootPart.CFrame = CFrame.new(869.063, 12.4, 675.758)
	elseif lpc.Humanoid.Sit == true then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Error";
			Text = "Cannot teleport while sitting.";
			Duration = 3;
		})
	end
end)

Section3:NewButton("Teleport to Taxi Shop", "Teleports you to said Location", function()
	if lpc.Humanoid.Sit == false then
		lpc.HumanoidRootPart.CFrame = CFrame.new(846.888, 11.825, 675.77)
	elseif lpc.Humanoid.Sit == true then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Error";
			Text = "Cannot teleport while sitting.";
			Duration = 3;
		})
	end
end)

Section3:NewButton("Teleport to Garage (Part World)", "Teleports you to said Location", function()
	if lpc.Humanoid.Sit == false then
		lpc.HumanoidRootPart.CFrame = CFrame.new(510.382, 11.825, 3643.592)
	elseif lpc.Humanoid.Sit == true then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Error";
			Text = "Cannot teleport while sitting.";
			Duration = 3;
		})
	end
end)

Section3:NewButton("Teleport to Part World", "Teleports you to said Location", function()
	if lpc.Humanoid.Sit == false then
		lpc.HumanoidRootPart.CFrame = CFrame.new(454.366, 12.4, 3646.1)
	elseif lpc.Humanoid.Sit == true then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Error";
			Text = "Cannot teleport while sitting.";
			Duration = 3;
		})
	end
end)

-------------------------------------------------------------- Tab 3 | Misc
local Section4 = Tab3:NewSection("Misc")
local Section5 = Tab3:NewSection("Only enable these when you're on a Small / Solo server OR your own private server")

Section4:NewToggle("Show Shortucts", "Makes Shortcuts Visible", function(showshortc)
	if showshortc then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Success";
			Text = "Made Shortcuts Visible";
			Duration = 2;
		})
		for i, shortcutpart in ipairs(game.Workspace.shortcuts:GetChildren()) do
			if shortcutpart:IsA("BasePart") then
				shortcutpart.Transparency = 0.75
				shortcutpart.BrickColor = BrickColor.new("Bright red")
			end
		end
	else
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Success";
			Text = "Made Shortcuts Invisible";
			Duration = 2;
		})
		for i, shortcutpart in ipairs(game.Workspace.shortcuts:GetChildren()) do
			if shortcutpart:IsA("BasePart") then
				shortcutpart.Transparency = 1
				shortcutpart.BrickColor = BrickColor.new("Medium stone grey")
			end
		end
	end
end)

Section4:NewToggle("Safeguards", "Toggles Invisible parts on locations where your vechicle may be damaged", function(safeguard)
	if safeguard then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Success";
			Text = "Enabled Safeguards";
			Duration = 2;
		})
		-- unfin road
		urwedge1.Transparency = 0.5
		urwedge2.Transparency = 0.5
		urpart1.Transparency = 0.5

		urwedge1.CanCollide = true
		urwedge2.CanCollide = true
		urpart1.CanCollide = true
	else
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Success";
			Text = "Disabled Safeguards";
			Duration = 2;
		})
		-- unfin road
		urwedge1.Transparency = 1
		urwedge2.Transparency = 1
		urpart1.Transparency = 1

		urwedge1.CanCollide = false
		urwedge2.CanCollide = false
		urpart1.CanCollide = false
	end
end)

Section4:NewButton("Get All Wrenches", "Self-Explanatory", function()
	ogc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	if lpc.Humanoid.Sit == false then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Success";
			Text = "Collecting All Wrenches.";
			Duration = 2;
		})
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
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Error";
			Text = "Cannot teleport while sitting.";
			Duration = 3;
		})
	end
end)

Section5:NewToggle("Ocean Collision", "Toggles collision on the ocean", function(safeguard)
	if safeguard then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Success";
			Text = "Enabled Water Collision";
			Duration = 2;
		})
		game.Workspace.map.oceanwater.CanCollide = true
	else
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Success";
			Text = "Disabled Water Collision";
			Duration = 2;
		})
		game.Workspace.map.oceanwater.CanCollide = false
	end
end)
	
