local lp = game.Players.LocalPlayer
local lpc = lp.Character
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))() --ty drray

function dcnotsupported()
	local dcnotsupported = Instance.new("Hint", workspace)
	dcnotsupported.Text = "This driving challenge is not supported yet. Sorry!"
	task.wait(5)
	dcnotsupported:Destroy()
end

if game.PlaceId == 3068144257 then -- base game
	------------------------------- Event Checkers

	local halloweenbool = game.Workspace.halloween
	local winterbool = game.Workspace.winter

	local spookmap = game.Workspace.map.SpookyStuff

	------------------------------- Cosmic Causeway Portal Buttons

	local spaceportal = game.Workspace.map.SpacePortal
	local portalbutton1 = spaceportal.button1.button
	local portalbutton2 = spaceportal.button2.button
	local portalbutton3 = spaceportal.button3.button
	local portalbutton4 = spaceportal.button4.button
	local spawnportal = nil
	
	for _, pt in ipairs(game.Workspace.map.SpacePortal.portbutton:GetChildren()) do
		if pt:IsA("Part") or pt:IsA("MeshPart") then
			local detector = pt:FindFirstChildOfClass("ClickDetector")
			if detector then
				spawnportal = detector
				break
			end
		end
	end

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

	hlgtpbutton1.Enabled = false
	bill1.Enabled = false
	hlgtpbutton2.Enabled = false
	bill2.Enabled = false
	hlgtpbutton3.Enabled = false
	bill3.Enabled = false
	hlgtpbutton4.Enabled = false
	bill4.Enabled = false

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

	--------------------------------------  Halloween exclusive safeguards
	if spookmap then
		if halloweenbool.Value == true then
			local wedgetospook1 = Instance.new("WedgePart", game.Workspace.SafeGuards)

			wedgetospook1.Anchored = true

			wedgetospook1.Transparency = 1

			wedgetospook1.CanCollide = false

			wedgetospook1.Size = Vector3.new(1632.694, 54.3, 429.204)

			wedgetospook1.Position = Vector3.new(771.147, 27.155, -470.598)

			wedgetospook1.Rotation = Vector3.new(0, 180, 0)
		end
	end

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
	------------------------------- Atmospheric Alleyway things

	local atmos = game.Workspace.map.AtmoPortal
	local aimpoint = atmos.aimpoint
	local signa = atmos.signa
	local signb = atmos.signb

	local rockclicker = nil

	for _, u in ipairs(atmos:GetChildren()) do
		if u:IsA("Part") or u:IsA("MeshPart") then
			local detector = u:FindFirstChildOfClass("ClickDetector")
			if detector then
				rockclicker = detector
				break
			end
		end
	end
	-------------------------------------------------------------------------------

	local TS2MainWindow = Library:Load("Taxi Simulator 2 Hub", "Default")
	local hometab = Library.newTab("Home", "7733960981")
	local dctab = Library.newTab("Driving Challenges", "7733708835")
	local tptab = Library.newTab("Location Teleports", "7733746980")
	local misctab = Library.newTab("Miscellaneous", "7743878358")

	-------------------------------------------------------------- Tab | Testing Place
	hometab.newLabel("Library Testing Place")

	hometab.newButton("Button", "Prints Hello!", function()
		print('Hello!')
	end)

	hometab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
		if toggleState then
			print("On")
		else
			print("Off")
		end
	end)

	hometab.newInput("Input", "Prints your input.", function(text)
		print("Entered text in Tab 1: " .. text)
	end)

	hometab.newDropdown("Dropdown", "Select one of these options!", {"water", "dog", "air", "bb", "airplane", "wohhho", "yeay", "delete"}, function(selectedOption)
		print(selectedOption)
	end)

	-------------------------------------------------------------- Tab 1 | Driving Challenges
	dctab.newLabel("Cosmic Causeway (CC)")

	dctab.newButton("Spawn CC Portal", "", function()
		fireclickdetector(portalbutton1.detect)
		fireclickdetector(portalbutton2.detect)
		fireclickdetector(portalbutton3.detect)
		fireclickdetector(portalbutton4.detect)
		wait(1)
		fireclickdetector(spawnportal)
	end)

	dctab.newToggle("Show CC Buttons", "Enables / Disables billboard guis on the buttons", false, function(showccbuttons)
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

	dctab.newLabel("Sandy Avenue")
	dctab.newButton("Click Sandy Avenue Buttons", "", function()
		fireclickdetector(sandyclicker1)
		fireclickdetector(sandyclicker2)
		fireclickdetector(sandyclicker3)
	end)

	if spookmap then
		if halloweenbool.Value == true then
			dctab.newLabel("Spooky Drive")

			dctab.newButton("Teleport to Skull A", "", function()
				if lpc.Humanoid.Sit == false then
					lpc.HumanoidRootPart.CFrame = spookmap.spookportal.skulla.Part.CFrame
				elseif lpc.Humanoid.Sit == true then
					game:GetService("StarterGui"):SetCore("SendNotification",{
						Title = "Error";
						Text = "Cannot teleport while sitting.";
						Duration = 3;
					})
				end
			end)

			dctab.newButton("Teleport to Skull B", "", function()
				if lpc.Humanoid.Sit == false then
					lpc.HumanoidRootPart.CFrame = spookmap.spookportal.skullb.Part.CFrame
				elseif lpc.Humanoid.Sit == true then
					game:GetService("StarterGui"):SetCore("SendNotification",{
						Title = "Error";
						Text = "Cannot teleport while sitting.";
						Duration = 3;
					})
				end
			end)

			dctab.newButton("Teleport to Skull C", "", function()
				if lpc.Humanoid.Sit == false then
					lpc.HumanoidRootPart.CFrame = spookmap.spookportal.skullc.Part.CFrame
				elseif lpc.Humanoid.Sit == true then
					game:GetService("StarterGui"):SetCore("SendNotification",{
						Title = "Error";
						Text = "Cannot teleport while sitting.";
						Duration = 3;
					})
				end
			end)

			dctab.newButton("Teleport to Skull D", "", function()
				if lpc.Humanoid.Sit == false then
					lpc.HumanoidRootPart.CFrame = spookmap.spookportal.skulld.Part.CFrame
				elseif lpc.Humanoid.Sit == true then
					game:GetService("StarterGui"):SetCore("SendNotification",{
						Title = "Error";
						Text = "Cannot teleport while sitting.";
						Duration = 3;
					})
				end
			end)
		end
	end -- halloween stuff ends

	-------------------------------------------------------------- Tab 2 | Teleports
	tptab.newLabel("Teleports | Main Island (5 Locations)")

	tptab.newButton("Teleport to Garage", "", function()
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

	tptab.newButton("Teleport to Part Store", "", function()
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

	tptab.newButton("Teleport to Taxi Shop", "", function()
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

	tptab.newLabel("Cool Katy")

	tptab.newButton("Teleport to Cool Katy's Taxi Parts", "", function()
		if lpc.Humanoid.Sit == false then
			lpc.HumanoidRootPart.CFrame = CFrame.new(1479.911, 9.289, -87.287)
		elseif lpc.Humanoid.Sit == true then
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Error";
				Text = "Cannot teleport while sitting.";
				Duration = 3;
			})
		end
	end)

	tptab.newButton("Teleport to Garage (Cool Katy's Taxi Parts)", "", function()
		if lpc.Humanoid.Sit == false then
			lpc.HumanoidRootPart.CFrame = CFrame.new(1438.488, 11.773, -89.705)
		elseif lpc.Humanoid.Sit == true then
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Error";
				Text = "Cannot teleport while sitting.";
				Duration = 3;
			})
		end
	end)

	tptab.newLabel("Teleports | Secondary Island (2 Locations)") ------------------------------------------------

	tptab.newButton("Teleport to Part World", "", function()
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

	tptab.newButton("Teleport to Garage (Part World)", "", function()
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

	-------------------------------------------------------------- Tab 3 | Misc
	misctab.newButton("Collect all Collectable Wrench Parts", "", function()
		ogc = lpc.HumanoidRootPart.CFrame
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
			if spookmap then	
				if halloweenbool.Value == true then
					lpc.HumanoidRootPart.CFrame = CFrame.new(-343.428, 45.17, 4052.268)
					task.wait(0.25)
					lpc.HumanoidRootPart.CFrame = CFrame.new(-1212.561, 2.545, 3800.685)
					task.wait(0.25)
					lpc.HumanoidRootPart.CFrame = CFrame.new(259.999, 69.77, 3908.613)
					task.wait(0.25)
					lpc.HumanoidRootPart.CFrame = CFrame.new(-680.994, -4.555, 2816.196)
					task.wait(0.25)
					lpc.HumanoidRootPart.CFrame = CFrame.new(611.124, 65.645, -1644.312)
					task.wait(0.25)
					lpc.HumanoidRootPart.CFrame = CFrame.new(-203.46, 378.145, 3656.213)
				end
			end
			lpc.HumanoidRootPart.CFrame = ogc
		elseif lpc.Humanoid.Sit == true then
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Error";
				Text = "Cannot teleport while sitting.";
				Duration = 3;
			})
		end
	end)
	
	misctab.newToggle("Show Shortcuts", "Makes Shortcuts Visible / Invisible", false, function(showrtcuts)
		if showrtcuts then
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
	
	misctab.newToggle("Safeguards", "Toggles Invisible parts on locations where your vechicle may be damaged", false, function(safeguard)
		if safeguard then
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Success";
				Text = "Enabled Safeguards";
				Duration = 2;
			})
			for _, child in pairs(game.Workspace.SafeGuards:GetChildren()) do
				child.CanCollide = true
				child.Transparency = 0.5
			end
		else
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Success";
				Text = "Disabled Safeguards";
				Duration = 2;
			})

			for _, child in pairs(game.Workspace.SafeGuards:GetChildren()) do
				child.CanCollide = false
				child.Transparency = 1
			end
		end
	end)
end
