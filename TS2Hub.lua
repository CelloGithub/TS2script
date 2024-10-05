local lp = game.Players.LocalPlayer
local lpc = lp.Character
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

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
	
	------ Player ESP Funcs
	
	local plresp = false
	
	local function addHighlight(character)
		if character and character:IsA("Model") then
			local highlight = Instance.new("Highlight")
			highlight.Adornee = character
			highlight.FillColor = Color3.fromRGB(255, 255, 0) -- Yellow color for the highlight
			highlight.FillTransparency = 0.5 -- Adjust transparency as needed
			highlight.OutlineColor = Color3.fromRGB(0, 0, 0) -- Black outline
			highlight.OutlineTransparency = 0 -- No outline transparency
			highlight.Parent = character
		end
	end
	
	local function removeHighlight(character)
		if character and character:FindFirstChildOfClass("Highlight") then
			character:FindFirstChildOfClass("Highlight"):Destroy()
		end
	end
	
	for _, player in ipairs(game.Players:GetPlayers()) do
		if plresp == true then
			if player.Character then
				addHighlight(player.Character)
			end
		end
	end
	
	game.Players.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			addHighlight(character)
		end)
	end)

	if lpc.Character then
		if plresp == true then
			addHighlight(lpc.Character)
		end
	end
	lpc.CharacterAdded:Connect(function(character)
		if plresp == true then
			addHighlight(character)
		end
	end)

	game.Players.PlayerRemoving:Connect(function(player)
		if player.Character then
			removeHighlight(player.Character)
		end
	end)
	
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
	
	dctab.newButton("Click Cosmic Causeway Buttons", "Clicks said driving challenge buttons", function()
		fireclickdetector(portalbutton1.detect)
		wait(0.15)
		fireclickdetector(portalbutton2.detect)
		wait(0.15)
		fireclickdetector(portalbutton3.detect)
		wait(0.15)
		fireclickdetector(portalbutton4.detect)
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
	dctab.newButton("Click Sandy Avenue Buttons", "Clicks said driving challenge buttons", function()
		fireclickdetector(sandyclicker1)
		wait(0.15)
		fireclickdetector(sandyclicker2)
		wait(0.15)
		fireclickdetector(sandyclicker3)
	end)
	
	if spookmap then
		if halloweenbool.Value == true then
			dctab.newLabel("Spooky Drive")

			dctab.newButton("Teleport to Skull A", "Self Explanatory", function()
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

			dctab.newButton("Teleport to Skull B", "Self Explanatory", function()
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

			dctab.newButton("Teleport to Skull C", "Self Explanatory", function()
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

			dctab.newButton("Teleport to Skull D", "Self Explanatory", function()
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
	
	tptab.newButton("Teleport to Garage", "Teleports you to said Location", function()
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
	
	tptab.newButton("Teleport to Part Store", "Teleports you to said Location", function()
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
	
	tptab.newButton("Teleport to Taxi Shop", "Teleports you to said Location", function()
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
	
	-----
	
	tptab.newButton("Teleport to Cool Katy's Taxi Parts", "Teleports you to said Location", function()
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
	
	tptab.newButton("Teleport to Garage (Cool Katy's Taxi Parts)", "Teleports you to said Location", function()
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
	
	tptab.newButton("Teleport to Part World", "Teleports you to said Location", function()
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
	
	tptab.newButton("Teleport to Garage (Part World)", "Teleports you to said Location", function()
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
	
	dctab.newToggle("Player ESP", "Toggles Player Esps", false, function(plresp)
		if plresp == true then
			print("ye")
		else
			print("nop")
		end
	end)
end
