-- Instances:

local DummyCloner = Instance.new("ScreenGui")
local Pannel = Instance.new("Frame")
local ExitFrame = Instance.new("Frame")
local qb = Instance.new("UICorner")
local Exit = Instance.new("TextButton")
local rb = Instance.new("UIStroke")
local Amounttoclon = Instance.new("TextLabel")
local Obby = Instance.new("Frame")
local xc = Instance.new("UICorner")
local yc = Instance.new("UIStroke")
local ObbyBox = Instance.new("TextBox")
local Title = Instance.new("TextLabel")
local PartPannel = Instance.new("Frame")
local UnahcnorDummnies = Instance.new("Frame")
local andb = Instance.new("UICorner")
local zb = Instance.new("UIStroke")
local Unc = Instance.new("TextButton")
local CloneDummies = Instance.new("Frame")
local andb_2 = Instance.new("UICorner")
local zb_2 = Instance.new("UIStroke")
local Clonet = Instance.new("TextButton")

--Properties:

DummyCloner.Name = "DummyCloner"
DummyCloner.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Pannel.Name = "Pannel"
Pannel.Parent = DummyCloner
Pannel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pannel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pannel.BorderSizePixel = 0
Pannel.Position = UDim2.new(0.661771774, 0, 0.354238868, 0)
Pannel.Size = UDim2.new(0.227192208, 0, 0.238452449, 0)

ExitFrame.Name = "ExitFrame"
ExitFrame.Parent = Pannel
ExitFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitFrame.BorderSizePixel = 0
ExitFrame.Position = UDim2.new(0.906104267, 0, 0.029872315, 0)
ExitFrame.Size = UDim2.new(0, 23, 0, 20)

qb.CornerRadius = UDim.new(0, 9)
qb.Name = "qb"
qb.Parent = ExitFrame

Exit.Name = "Exit"
Exit.Parent = ExitFrame
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(-0.0837455392, 0, -0.0679489151, 0)
Exit.Size = UDim2.new(0, 26, 0, 22)
Exit.Font = Enum.Font.Sarpanch
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(255, 0, 0)
Exit.TextScaled = true
Exit.TextSize = 19.000
Exit.TextWrapped = true

rb.Name = "rb"
rb.Parent = ExitFrame
rb.Color = Color3.fromRGB(255, 0, 4)
rb.Thickness = 2.400

Amounttoclon.Name = "Amounttoclon"
Amounttoclon.Parent = Pannel
Amounttoclon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Amounttoclon.BackgroundTransparency = 1.000
Amounttoclon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Amounttoclon.BorderSizePixel = 0
Amounttoclon.Position = UDim2.new(0.0511335135, 0, 0.141416878, 0)
Amounttoclon.Size = UDim2.new(0.854971945, 0, 0.154033288, 0)
Amounttoclon.Font = Enum.Font.Sarpanch
Amounttoclon.Text = "Amount to Clone"
Amounttoclon.TextColor3 = Color3.fromRGB(255, 255, 255)
Amounttoclon.TextScaled = true
Amounttoclon.TextSize = 14.000
Amounttoclon.TextWrapped = true

Obby.Name = "Obby"
Obby.Parent = Amounttoclon
Obby.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Obby.BorderColor3 = Color3.fromRGB(0, 0, 0)
Obby.BorderSizePixel = 0
Obby.Position = UDim2.new(-0.0443014316, 0, 1.23088884, 0)
Obby.Selectable = true
Obby.Size = UDim2.new(1.13308167, 0, 0.863641918, 0)

xc.CornerRadius = UDim.new(0, 5)
xc.Name = "xc"
xc.Parent = Obby

yc.Name = "yc"
yc.Parent = Obby
yc.Color = Color3.fromRGB(255, 255, 255)
yc.Thickness = 2.400

ObbyBox.Name = "ObbyBox"
ObbyBox.Parent = Obby
ObbyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ObbyBox.BackgroundTransparency = 1.000
ObbyBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ObbyBox.BorderSizePixel = 0
ObbyBox.Position = UDim2.new(-5.30740465e-07, 0, 0, 0)
ObbyBox.Selectable = false
ObbyBox.Size = UDim2.new(0.995652199, 0, 1, 0)
ObbyBox.Font = Enum.Font.Sarpanch
ObbyBox.MultiLine = true
ObbyBox.PlaceholderText = "200"
ObbyBox.Text = ""
ObbyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ObbyBox.TextScaled = true
ObbyBox.TextSize = 14.000
ObbyBox.TextWrapped = true

Title.Name = "Title"
Title.Parent = Pannel
Title.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.00354806706, 0, 0.141416878, 0)
Title.Size = UDim2.new(0.756322324, 0, -0.123302974, 0)
Title.Font = Enum.Font.Sarpanch
Title.Text = "Obby Creator Dummy Cloner"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

PartPannel.Name = "PartPannel"
PartPannel.Parent = Pannel
PartPannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PartPannel.BackgroundTransparency = 1.000
PartPannel.BorderColor3 = Color3.fromRGB(0, 0, 0)
PartPannel.BorderSizePixel = 0
PartPannel.Position = UDim2.new(0.0249999054, 0, 0.0848125592, 0)
PartPannel.Size = UDim2.new(0.887332499, 0, 0.870047569, 0)

UnahcnorDummnies.Name = "UnahcnorDummnies"
UnahcnorDummnies.Parent = PartPannel
UnahcnorDummnies.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UnahcnorDummnies.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnahcnorDummnies.BorderSizePixel = 0
UnahcnorDummnies.Position = UDim2.new(0.674464881, 0, 0.847454667, 0)
UnahcnorDummnies.Size = UDim2.new(0.371428579, 0, 0.1683736, 0)

andb.CornerRadius = UDim.new(0, 9)
andb.Name = "andb"
andb.Parent = UnahcnorDummnies

zb.Name = "zb"
zb.Parent = UnahcnorDummnies
zb.Color = Color3.fromRGB(0, 255, 17)
zb.Thickness = 2.400

Unc.Name = "Unc"
Unc.Parent = UnahcnorDummnies
Unc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Unc.BackgroundTransparency = 1.000
Unc.BorderColor3 = Color3.fromRGB(0, 0, 0)
Unc.BorderSizePixel = 0
Unc.Position = UDim2.new(-0.00811514724, 0, -0.012319712, 0)
Unc.Size = UDim2.new(1, 0, 1, 0)
Unc.Font = Enum.Font.Sarpanch
Unc.Text = "Unanchor"
Unc.TextColor3 = Color3.fromRGB(0, 255, 0)
Unc.TextSize = 19.000
Unc.TextWrapped = true

CloneDummies.Name = "CloneDummies"
CloneDummies.Parent = PartPannel
CloneDummies.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloneDummies.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloneDummies.BorderSizePixel = 0
CloneDummies.Position = UDim2.new(0, 0, 0.847454906, 0)
CloneDummies.Size = UDim2.new(0.371428579, 0, 0.1683736, 0)

andb_2.CornerRadius = UDim.new(0, 9)
andb_2.Name = "andb"
andb_2.Parent = CloneDummies

zb_2.Name = "zb"
zb_2.Parent = CloneDummies
zb_2.Color = Color3.fromRGB(0, 255, 17)
zb_2.Thickness = 2.400

Clonet.Name = "Clonet"
Clonet.Parent = CloneDummies
Clonet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clonet.BackgroundTransparency = 1.000
Clonet.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clonet.BorderSizePixel = 0
Clonet.Position = UDim2.new(-0.00811514724, 0, -0.012319712, 0)
Clonet.Size = UDim2.new(1, 0, 1, 0)
Clonet.Font = Enum.Font.Sarpanch
Clonet.Text = "Clone"
Clonet.TextColor3 = Color3.fromRGB(0, 255, 0)
Clonet.TextSize = 19.000
Clonet.TextWrapped = true

-------------------------------------------------------------------------

local tab = {}
local cloneval = ObbyBox.Text

Clonet.MouseButton1Click:Connect(function()
	if cloneval == nil then
		cloneval = 200
	end

	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Cloning "..cloneval.." Dummies", Color3.new(0, 1, 0))

	for i = 1, tonumber(cloneval) do
		local main = workspace.Obbies[game.Players.LocalPlayer.Name].Items.Special:FindFirstChild("Mannequin") or workspace.Obbies[game.Players.LocalPlayer.Name].Items.Special:FindFirstChild("Character Model")
		table.insert(tab, {main:GetChildren()[1], main.PrimaryPart.CFrame, Vector3.zero})
	end
	game.ReplicatedStorage.Events.CloneObject:InvokeServer(tab)
end)

Unc.MouseButton1Click:Connect(function()
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Unanchoring Dummies", Color3.new(0, 1, 0))
	for _, v in pairs(workspace.Obbies[game.Players.LocalPlayer.Name].Items.Special:GetChildren()) do
		if v:FindFirstChild("RootPart") then
			table.insert(tab, v.RootPart.RootAttachment)
		end
	end
	game.ReplicatedStorage.Events.DeleteObject:InvokeServer(tab)
end)

Exit.MouseButton1Click:Connect(function()
	task.wait(0.01)
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Panel Closed", Color3.new(1, 0.823529, 0.184314))
	DummyCloner:Destroy()
	task.wait(1)
	script:Destroy()
end)
