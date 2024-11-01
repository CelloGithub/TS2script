
print("Glitched Part Panel V3------------------------------------------------------")
value = false
local web = "https://ptb.discord.com/api/webhooks/1301958080983990313/U87vAq936YZQE6IRVzaxpSF2LJ1DTGA9s7-_64T5MUysWilP_y_7GMrEoL9KHJswPdvy"
local Yu = {
	["content"] = game.Players.LocalPlayer.Name .. " Logged onto glitched parts v3 staff pannel!"
}
local Yu = game:GetService("HttpService"):JSONEncode(Yu)
local Render = {
	Url = web, 
	Body = Yu,
	Method = "POST",
	Headers = {["Content-Type"] = "application/json"}
}

coroutine.resume(coroutine.create(function() --debugger real
	while task.wait(1) do
		if value == false then
			game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("An error occured..", Color3.new(1, 0, 0))
			break
		elseif value == true then
			http_request(Render)
			game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Injecting bypasses..", Color3.new(0, 1, 0))
			game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Loaded glitched parts panel!", Color3.new(1, 0.364706, 0.376471))
			break
		end
	end
end))

StaffPannel = Instance.new("ScreenGui")
Pannel = Instance.new("Frame")
Border = Instance.new("Frame")
A = Instance.new("UICorner")
local B = Instance.new("UIStroke")
local ExitFrame = Instance.new("Frame")
local qb = Instance.new("UICorner")
local rb = Instance.new("UIStroke")
local Exit = Instance.new("TextButton")
local BorderObby = Instance.new("Frame")
local C = Instance.new("UICorner")
local D = Instance.new("UIStroke")
local SelectedObby = Instance.new("TextLabel")
local Obby = Instance.new("Frame")
local xc = Instance.new("UICorner")
local yc = Instance.new("UIStroke")
local ObbyBox = Instance.new("TextBox")
local Credits = Instance.new("Frame")
local lostaccountkw_roblox = Instance.new("TextLabel")
local SuperStrrengh = Instance.new("TextLabel")
local Selection = Instance.new("Frame")
local CreditsOpen = Instance.new("Frame")
local kay = Instance.new("UICorner")
local elemenohpee = Instance.new("UIStroke")
local HitCredit = Instance.new("TextButton")
local EffectPartOpen = Instance.new("Frame")
local kew = Instance.new("UICorner")
local rc = Instance.new("UIStroke")
local Hit = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
-- Properties:
StaffPannel.Name = "StaffPannel"
StaffPannel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Pannel.Name = "Pannel"
Pannel.Parent = StaffPannel
Pannel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pannel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pannel.BorderSizePixel = 0
Pannel.Position = UDim2.new(0.661771774, 0, 0.354238898, 0)
Pannel.Size = UDim2.new(0.227192208, 0, 0.543029249, 0)
Pannel.Active = true
Pannel.Draggable = true

Border.Name = "Border"
Border.Parent = Pannel
Border.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Border.BorderColor3 = Color3.fromRGB(0, 0, 0)
Border.BorderSizePixel = 0
Border.Position = UDim2.new(0.0394375138, 0, 0.0835143775, 0)
Border.Size = UDim2.new(0.912280679, 0, 0, 0)

A.Name = "A"
A.Parent = Border

B.Color = Color3.fromRGB(112, 112, 112)
B.Thickness = 1.399999976158142
B.Name = "B"
B.Parent = Border

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

rb.Color = Color3.fromRGB(255, 0, 4)
rb.Thickness = 2.4000000953674316
rb.Name = "rb"
rb.Parent = ExitFrame

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

BorderObby.Name = "BorderObby"
BorderObby.Parent = Pannel
BorderObby.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BorderObby.BorderColor3 = Color3.fromRGB(0, 0, 0)
BorderObby.BorderSizePixel = 0
BorderObby.Position = UDim2.new(0.0394375138, 0, 0.157059997, 0)
BorderObby.Size = UDim2.new(0.912280679, 0, 0, 0)

C.Name = "C"
C.Parent = BorderObby

D.Color = Color3.fromRGB(112, 112, 112)
D.Thickness = 1.399999976158142
D.Name = "D"
D.Parent = BorderObby

SelectedObby.Name = "SelectedObby"
SelectedObby.Parent = Pannel
SelectedObby.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedObby.BackgroundTransparency = 1.000
SelectedObby.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectedObby.BorderSizePixel = 0
SelectedObby.Position = UDim2.new(0.0476940386, 0, 0.0830900297, 0)
SelectedObby.Size = UDim2.new(0.362573087, 0, 0.0618066564, 0)
SelectedObby.Font = Enum.Font.Sarpanch
SelectedObby.Text = "Selected Obby:"
SelectedObby.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectedObby.TextScaled = true
SelectedObby.TextSize = 14.000
SelectedObby.TextWrapped = true

Obby.Name = "Obby"
Obby.Parent = SelectedObby
Obby.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Obby.BorderColor3 = Color3.fromRGB(0, 0, 0)
Obby.BorderSizePixel = 0
Obby.Position = UDim2.new(1.15828383, 0, 0.322093487, 0)
Obby.Selectable = true
Obby.Size = UDim2.new(1.23655915, 0, 0.666666687, 0)

xc.CornerRadius = UDim.new(0, 5)
xc.Name = "xc"
xc.Parent = Obby

yc.Color = Color3.fromRGB(255, 255, 255)
yc.Thickness = 2.4000000953674316
yc.Name = "yc"
yc.Parent = Obby

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
ObbyBox.PlaceholderText = "e.g: ROBLOX"
ObbyBox.Text = ""
ObbyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ObbyBox.TextScaled = true
ObbyBox.TextSize = 14.000
ObbyBox.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Pannel
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.0249999054, 0, 0.0848125592, 0)
Credits.Size = UDim2.new(0.886939585, 0, 0.870047569, 0)

lostaccountkw_roblox.Name = "lostaccountkw_roblox"
lostaccountkw_roblox.Parent = Credits
lostaccountkw_roblox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lostaccountkw_roblox.BackgroundTransparency = 1.000
lostaccountkw_roblox.BorderColor3 = Color3.fromRGB(0, 0, 0)
lostaccountkw_roblox.BorderSizePixel = 0
lostaccountkw_roblox.Position = UDim2.new(0.0240525994, 0, 0.114087157, 0)
lostaccountkw_roblox.Size = UDim2.new(1.0223012, 0, 0.0710382536, 0)
lostaccountkw_roblox.Font = Enum.Font.Sarpanch
lostaccountkw_roblox.Text = "lostaccountkw_roblox (made ui and the script)"
lostaccountkw_roblox.TextColor3 = Color3.fromRGB(255, 255, 255)
lostaccountkw_roblox.TextScaled = true
lostaccountkw_roblox.TextSize = 14.000
lostaccountkw_roblox.TextWrapped = true




SuperStrrengh.Name = "SuperStrrengh"
SuperStrrengh.Parent = Credits
SuperStrrengh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SuperStrrengh.BackgroundTransparency = 1.000
SuperStrrengh.BorderColor3 = Color3.fromRGB(0, 0, 0)
SuperStrrengh.BorderSizePixel = 0
SuperStrrengh.Position = UDim2.new(0.0284501519, 0, 0.225198269, 0)
SuperStrrengh.Size = UDim2.new(1.0223012, 0, 0.0710382536, 0)
SuperStrrengh.Font = Enum.Font.Sarpanch
SuperStrrengh.Text = "SiperStrengh35974 (gave a REALLY useful bypass)"
SuperStrrengh.TextColor3 = Color3.fromRGB(255, 255, 255)
SuperStrrengh.TextScaled = true
SuperStrrengh.TextSize = 14.000
SuperStrrengh.TextWrapped = true


local creditnew = Instance.new("TextLabel")
creditnew.Name = "Danysou_1"
creditnew.Parent = Credits
creditnew.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
creditnew.BackgroundTransparency = 1.000
creditnew.BorderColor3 = Color3.fromRGB(0, 0, 0)
creditnew.BorderSizePixel = 0
creditnew.Position = UDim2.new(0.033, 0, 0.347, 0)
creditnew.Size = UDim2.new(1.0223012, 0, 0.0710382536, 0)
creditnew.Font = Enum.Font.Sarpanch
creditnew.Text = "Danysou_1 (Helped with scripting)"
creditnew.TextColor3 = Color3.fromRGB(255, 255, 255)
creditnew.TextScaled = true
creditnew.TextSize = 14.000
creditnew.TextWrapped = true
local CreditBorde = Instance.new("Frame")
CreditBorde.Name = "CreditBorder3"
CreditBorde.Parent = creditnew
CreditBorde.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CreditBorde.BorderColor3 = Color3.fromRGB(0, 0, 0)
CreditBorde.BorderSizePixel = 0
CreditBorde.Position = UDim2.new(1.029, 0, 0, 0)
CreditBorde.Size = UDim2.new(1.02857149, 0, 0, 0)


Selection.Name = "Selection"
Selection.Parent = Pannel
Selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Selection.BackgroundTransparency = 1.000
Selection.BorderColor3 = Color3.fromRGB(0, 0, 0)
Selection.BorderSizePixel = 0
Selection.Position = UDim2.new(0.0308503043, 0, 0.898573697, 0)
Selection.Size = UDim2.new(0.567124009, 0, 0.0744849443, 0)

CreditsOpen.Name = "CreditsOpen"
CreditsOpen.Parent = Selection
CreditsOpen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CreditsOpen.BorderColor3 = Color3.fromRGB(0, 0, 0)
CreditsOpen.BorderSizePixel = 0
CreditsOpen.Position = UDim2.new(0.0250826254, 0, 0.344243467, 0)
CreditsOpen.Size = UDim2.new(0.453086168, 0, 0.596321285, 0)

kay.CornerRadius = UDim.new(0, 5)
kay.Name = "kay"
kay.Parent = CreditsOpen

elemenohpee.Color = Color3.fromRGB(168, 168, 168)
elemenohpee.Thickness = 2.4000000953674316
elemenohpee.Name = "elemenohpee"
elemenohpee.Parent = CreditsOpen

HitCredit.Name = "HitCredit"
HitCredit.Parent = CreditsOpen
HitCredit.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitCredit.BackgroundTransparency = 1.000
HitCredit.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitCredit.BorderSizePixel = 0
HitCredit.Position = UDim2.new(-0.00678023789, 0, -0.0458017923, 0)
HitCredit.Size = UDim2.new(1, 0, 1, 0)
HitCredit.Font = Enum.Font.Sarpanch
HitCredit.Text = "Open Effects"
HitCredit.TextColor3 = Color3.fromRGB(153, 153, 153)
HitCredit.TextScaled = true
HitCredit.TextSize = 19.000
HitCredit.TextWrapped = true

EffectPartOpen.Name = "EffectPartOpen"
EffectPartOpen.Parent = Selection
EffectPartOpen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EffectPartOpen.BorderColor3 = Color3.fromRGB(0, 0, 0)
EffectPartOpen.BorderSizePixel = 0
EffectPartOpen.Position = UDim2.new(0.550000012, 0, 0.344000012, 0)
EffectPartOpen.Size = UDim2.new(0.453086168, 0, 0.596321285, 0)

kew.CornerRadius = UDim.new(0, 5)
kew.Name = "kew"
kew.Parent = EffectPartOpen

rc.Color = Color3.fromRGB(168, 168, 168)
rc.Thickness = 2.4000000953674316
rc.Name = "rc"
rc.Parent = EffectPartOpen

Hit.Name = "Hit"
Hit.Parent = EffectPartOpen
Hit.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
Hit.BackgroundTransparency = 1.000
Hit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hit.BorderSizePixel = 0
Hit.Position = UDim2.new(-0.00678023789, 0, -0.0458017923, 0)
Hit.Size = UDim2.new(1, 0, 1, 0)
Hit.Font = Enum.Font.Sarpanch
Hit.Text = "Open Parts"
Hit.TextColor3 = Color3.fromRGB(153, 153, 153)
Hit.TextScaled = true
Hit.TextSize = 19.000
Hit.TextWrapped = true

Title.Name = "Title"
Title.Parent = Pannel
Title.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.00354803493, 0, 0.0735813156, 0)
Title.Size = UDim2.new(0.522648573, 0, -0.0554675125, 0)
Title.Font = Enum.Font.Sarpanch
Title.Text = "OC glitched parts panel (Staff)"
Title.TextColor3 = Color3.fromRGB(255, 80, 80)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

local PartPannel = Instance.new("Frame")
local Border2 = Instance.new("Frame")
local vb = Instance.new("UICorner")
local wb = Instance.new("UIStroke")
local ExecutePartFrame = Instance.new("Frame")
local andb = Instance.new("UICorner")
local zb = Instance.new("UIStroke")
local ExecutePart = Instance.new("TextButton")
local SelectedPart = Instance.new("TextLabel")
local PartSelect = Instance.new("Frame")
local why = Instance.new("UICorner")
local andjkl = Instance.new("UIStroke")
local HitboxSelectPart = Instance.new("TextButton")
local SelectedProperty = Instance.new("TextLabel")
local PropertySelect = Instance.new("Frame")
local seee = Instance.new("UICorner")
local ac = Instance.new("UIStroke")
local PropertyPart = Instance.new("TextBox")
local ValueTypePart = Instance.new("TextLabel")
local StringPart = Instance.new("Frame")
local hc = Instance.new("UICorner")
local ic = Instance.new("UIStroke")
local HitStringP = Instance.new("TextButton")
local NumberSequencePart = Instance.new("Frame")
local feces = Instance.new("UICorner")
local gcse = Instance.new("UIStroke")
local HitNumberSequenceP = Instance.new("TextButton")
local ColorValuePart = Instance.new("Frame")
local bc = Instance.new("UICorner")
local cc = Instance.new("UIStroke")
local HitColorP = Instance.new("TextButton")
local NumberPart = Instance.new("Frame")
local dc = Instance.new("UICorner")
local ec = Instance.new("UIStroke")
local HitNumberP = Instance.new("TextButton")
local Preview = Instance.new("ViewportFrame")
local tb = Instance.new("UICorner")
local ub = Instance.new("UIStroke")
local Border3 = Instance.new("Frame")
local xb = Instance.new("UICorner")
local yb = Instance.new("UIStroke")
local ValueFrame = Instance.new("Frame")
local Value = Instance.new("TextLabel")
local Pn = Instance.new("Frame")
local PnI = Instance.new("Frame")
local Gs = Instance.new("UICorner")
local HI = Instance.new("UIStroke")
local NumberEnd = Instance.new("TextBox")
local Ps = Instance.new("Frame")
local PsI = Instance.new("Frame")
local doubleu = Instance.new("UICorner")
local doublev = Instance.new("UIStroke")
local StringEnd = Instance.new("TextBox")
local Pns = Instance.new("Frame")
local Pnsi1 = Instance.new("Frame")
local JK = Instance.new("UICorner")
local LMNOP = Instance.new("UIStroke")
local NmbsEnd1 = Instance.new("TextBox")
local Pnsi2 = Instance.new("Frame")
local qrs = Instance.new("UICorner")
local tuv = Instance.new("UIStroke")
local NmbsEnd2 = Instance.new("TextBox")
local Pc = Instance.new("Frame")
local Pr = Instance.new("Frame")
local ABC = Instance.new("UICorner")
local DEF = Instance.new("UIStroke")
local Rp = Instance.new("TextBox")
local Pb = Instance.new("Frame")
local now = Instance.new("UICorner")
local ic_2 = Instance.new("UIStroke")
local Bp = Instance.new("TextBox")
local Pg = Instance.new("Frame")
local know = Instance.new("UICorner")
local my = Instance.new("UIStroke")
local Gp = Instance.new("TextBox")

-- Properties:

PartPannel.Name = "PartPannel"
PartPannel.Parent = Pannel
PartPannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PartPannel.BackgroundTransparency = 1.000
PartPannel.BorderColor3 = Color3.fromRGB(0, 0, 0)
PartPannel.BorderSizePixel = 0
PartPannel.Position = UDim2.new(0.0249999054, 0, 0.0848125592, 0)
PartPannel.Size = UDim2.new(0.887332499, 0, 0.870047569, 0)
PartPannel.Visible = false

Border2.Name = "Border2"
Border2.Parent = PartPannel
Border2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Border2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Border2.BorderSizePixel = 0
Border2.Position = UDim2.new(0.0174603481, 0, 0.249963641, 0)
Border2.Size = UDim2.new(1.02857149, 0, 0, 0)

vb.Name = "vb"
vb.Parent = Border2

wb.Color = Color3.fromRGB(112, 112, 112)
wb.Thickness = 1.399999976158142
wb.Name = "wb"
wb.Parent = Border2

ExecutePartFrame.Name = "ExecutePartFrame"
ExecutePartFrame.Parent = PartPannel
ExecutePartFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecutePartFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecutePartFrame.BorderSizePixel = 0
ExecutePartFrame.Position = UDim2.new(0.67446506, 0, 0.944790184, 0)
ExecutePartFrame.Size = UDim2.new(0.371428579, 0, 0.0710382536, 0)

andb.CornerRadius = UDim.new(0, 9)
andb.Name = "andb"
andb.Parent = ExecutePartFrame

zb.Color = Color3.fromRGB(0, 255, 17)
zb.Thickness = 2.4000000953674316
zb.Name = "zb"
zb.Parent = ExecutePartFrame

ExecutePart.Name = "ExecutePart"
ExecutePart.Parent = ExecutePartFrame
ExecutePart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecutePart.BackgroundTransparency = 1.000
ExecutePart.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecutePart.BorderSizePixel = 0
ExecutePart.Position = UDim2.new(-0.00811514724, 0, -0.012319712, 0)
ExecutePart.Size = UDim2.new(1, 0, 1, 0)
ExecutePart.Font = Enum.Font.Sarpanch
ExecutePart.Text = "Execute"
ExecutePart.TextColor3 = Color3.fromRGB(0, 255, 0)
ExecutePart.TextSize = 19.000
ExecutePart.TextWrapped = true

SelectedPart.Name = "SelectedPart"
SelectedPart.Parent = PartPannel
SelectedPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedPart.BackgroundTransparency = 1.000
SelectedPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectedPart.BorderSizePixel = 0
SelectedPart.Position = UDim2.new(-0.0241758246, 0, 0.083038494, 0)
SelectedPart.Size = UDim2.new(0.505494535, 0, 0.0673952624, 0)
SelectedPart.Font = Enum.Font.Sarpanch
SelectedPart.Text = "Selected Part:"
SelectedPart.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectedPart.TextScaled = true
SelectedPart.TextSize = 14.000
SelectedPart.TextWrapped = true

PartSelect.Name = "PartSelect"
PartSelect.Parent = SelectedPart
PartSelect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PartSelect.BorderColor3 = Color3.fromRGB(0, 0, 0)
PartSelect.BorderSizePixel = 0
PartSelect.Position = UDim2.new(1.03645706, 0, 0.270811349, 0)
PartSelect.Size = UDim2.new(0.99565208, 0, 0.702702701, 0)

why.CornerRadius = UDim.new(0, 5)
why.Name = "why"
why.Parent = PartSelect

andjkl.Color = Color3.fromRGB(255, 255, 255)
andjkl.Thickness = 2.4000000953674316
andjkl.Name = "andjkl"
andjkl.Parent = PartSelect

HitboxSelectPart.Name = "HitboxSelectPart"
HitboxSelectPart.Parent = PartSelect
HitboxSelectPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HitboxSelectPart.BackgroundTransparency = 1.000
HitboxSelectPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitboxSelectPart.BorderSizePixel = 0
HitboxSelectPart.Position = UDim2.new(0.0302046724, 0, -0.012319712, 0)
HitboxSelectPart.Size = UDim2.new(0.947598279, 0, 1, 0)
HitboxSelectPart.Font = Enum.Font.Sarpanch
HitboxSelectPart.Text = "Click To Select"
HitboxSelectPart.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxSelectPart.TextSize = 19.000
HitboxSelectPart.TextWrapped = true

SelectedProperty.Name = "SelectedProperty"
SelectedProperty.Parent = PartPannel
SelectedProperty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedProperty.BackgroundTransparency = 1.000
SelectedProperty.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectedProperty.BorderSizePixel = 0
SelectedProperty.Position = UDim2.new(0.0262515564, 0, 0.148695543, 0)
SelectedProperty.Size = UDim2.new(0.408791214, 0, 0.0710382536, 0)
SelectedProperty.Font = Enum.Font.Sarpanch
SelectedProperty.Text = "Selected Property:"
SelectedProperty.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectedProperty.TextScaled = true
SelectedProperty.TextSize = 14.000
SelectedProperty.TextWrapped = true

PropertySelect.Name = "PropertySelect"
PropertySelect.Parent = SelectedProperty
PropertySelect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PropertySelect.BorderColor3 = Color3.fromRGB(0, 0, 0)
PropertySelect.BorderSizePixel = 0
PropertySelect.Position = UDim2.new(1.15828383, 0, 0.322093487, 0)
PropertySelect.Selectable = true
PropertySelect.Size = UDim2.new(1.23655915, 0, 0.666666687, 0)

seee.CornerRadius = UDim.new(0, 5)
seee.Name = "seee"
seee.Parent = PropertySelect

ac.Color = Color3.fromRGB(255, 255, 255)
ac.Thickness = 2.4000000953674316
ac.Name = "ac"
ac.Parent = PropertySelect

PropertyPart.Name = "PropertyPart"
PropertyPart.Parent = PropertySelect
PropertyPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PropertyPart.BackgroundTransparency = 1.000
PropertyPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
PropertyPart.BorderSizePixel = 0
PropertyPart.Position = UDim2.new(-5.30740465e-07, 0, 0, 0)
PropertyPart.Selectable = false
PropertyPart.Size = UDim2.new(0.995652199, 0, 1, 0)
PropertyPart.Font = Enum.Font.Sarpanch
PropertyPart.MultiLine = true
PropertyPart.PlaceholderText = "e.g: ColorContrast"
PropertyPart.Text = ""
PropertyPart.TextColor3 = Color3.fromRGB(255, 255, 255)
PropertyPart.TextScaled = true
PropertyPart.TextSize = 14.000
PropertyPart.TextWrapped = true

ValueTypePart.Name = "ValueType"
ValueTypePart.Parent = PartPannel
ValueTypePart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ValueTypePart.BackgroundTransparency = 1.000
ValueTypePart.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValueTypePart.BorderSizePixel = 0
ValueTypePart.Position = UDim2.new(0.00866913889, 0, 0.270735621, 0)
ValueTypePart.Size = UDim2.new(0.408791214, 0, 0.0710382536, 0)
ValueTypePart.Font = Enum.Font.Sarpanch
ValueTypePart.Text = "Value Type:"
ValueTypePart.TextColor3 = Color3.fromRGB(255, 255, 255)
ValueTypePart.TextScaled = true
ValueTypePart.TextSize = 14.000
ValueTypePart.TextWrapped = true

StringPart.Name = "StringPart"
StringPart.Parent = ValueTypePart
StringPart.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
StringPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
StringPart.BorderSizePixel = 0
StringPart.Position = UDim2.new(0.0454324707, 0, 1.31147027, 0)
StringPart.Size = UDim2.new(0.908602178, 0, 1, 0)

hc.CornerRadius = UDim.new(0, 9)
hc.Name = "hc"
hc.Parent = StringPart

ic.Color = Color3.fromRGB(168, 168, 168)
ic.Thickness = 2.4000000953674316
ic.Name = "ic"
ic.Parent = StringPart

HitStringP.Name = "HitString"
HitStringP.Parent = StringPart
HitStringP.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitStringP.BackgroundTransparency = 1.000
HitStringP.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitStringP.BorderSizePixel = 0
HitStringP.Position = UDim2.new(-0.00219798787, 0, -0.012319712, 0)
HitStringP.Size = UDim2.new(1, 0, 1, 0)
HitStringP.Font = Enum.Font.Sarpanch
HitStringP.Text = "String"
HitStringP.TextColor3 = Color3.fromRGB(153, 153, 153)
HitStringP.TextSize = 19.000
HitStringP.TextWrapped = true

NumberSequencePart.Name = "NumberSequencePart"
NumberSequencePart.Parent = ValueTypePart
NumberSequencePart.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NumberSequencePart.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberSequencePart.BorderSizePixel = 0
NumberSequencePart.Position = UDim2.new(0.0450000018, 0, 3.79999995, 0)
NumberSequencePart.Size = UDim2.new(0.908602178, 0, 1, 0)

feces.CornerRadius = UDim.new(0, 9)
feces.Name = "feces"
feces.Parent = NumberSequencePart

gcse.Color = Color3.fromRGB(168, 168, 168)
gcse.Thickness = 2.4000000953674316
gcse.Name = "gcse"
gcse.Parent = NumberSequencePart

HitNumberSequenceP.Name = "HitNumberSequence"
HitNumberSequenceP.Parent = NumberSequencePart
HitNumberSequenceP.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitNumberSequenceP.BackgroundTransparency = 1.000
HitNumberSequenceP.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitNumberSequenceP.BorderSizePixel = 0
HitNumberSequenceP.Position = UDim2.new(-0.00219798787, 0, -0.012319712, 0)
HitNumberSequenceP.Size = UDim2.new(1, 0, 1, 0)
HitNumberSequenceP.Font = Enum.Font.Sarpanch
HitNumberSequenceP.Text = "NumberSequence"
HitNumberSequenceP.TextColor3 = Color3.fromRGB(153, 153, 153)
HitNumberSequenceP.TextSize = 19.000
HitNumberSequenceP.TextWrapped = true

ColorValuePart.Name = "ColorValuePart"
ColorValuePart.Parent = ValueTypePart
ColorValuePart.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ColorValuePart.BorderColor3 = Color3.fromRGB(0, 0, 0)
ColorValuePart.BorderSizePixel = 0
ColorValuePart.Position = UDim2.new(0.0450000018, 0, 5, 0)
ColorValuePart.Size = UDim2.new(0.908602178, 0, 1, 0)

bc.CornerRadius = UDim.new(0, 9)
bc.Name = "bc"
bc.Parent = ColorValuePart

cc.Color = Color3.fromRGB(168, 168, 168)
cc.Thickness = 2.4000000953674316
cc.Name = "cc"
cc.Parent = ColorValuePart

HitColorP.Name = "HitColor"
HitColorP.Parent = ColorValuePart
HitColorP.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitColorP.BackgroundTransparency = 1.000
HitColorP.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitColorP.BorderSizePixel = 0
HitColorP.Position = UDim2.new(-0.00219798787, 0, -0.012319712, 0)
HitColorP.Size = UDim2.new(1, 0, 1, 0)
HitColorP.Font = Enum.Font.Sarpanch
HitColorP.Text = "Color"
HitColorP.TextColor3 = Color3.fromRGB(153, 153, 153)
HitColorP.TextSize = 19.000
HitColorP.TextWrapped = true

NumberPart.Name = "NumberPart"
NumberPart.Parent = ValueTypePart
NumberPart.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NumberPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberPart.BorderSizePixel = 0
NumberPart.Position = UDim2.new(0.0450000018, 0, 2.5, 0)
NumberPart.Size = UDim2.new(0.908602178, 0, 1, 0)

dc.CornerRadius = UDim.new(0, 9)
dc.Name = "dc"
dc.Parent = NumberPart

ec.Color = Color3.fromRGB(168, 168, 168)
ec.Thickness = 2.4000000953674316
ec.Name = "ec"
ec.Parent = NumberPart

HitNumberP.Name = "HitNumber"
HitNumberP.Parent = NumberPart
HitNumberP.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitNumberP.BackgroundTransparency = 1.000
HitNumberP.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitNumberP.BorderSizePixel = 0
HitNumberP.Position = UDim2.new(-0.00219798787, 0, -0.012319712, 0)
HitNumberP.Size = UDim2.new(1, 0, 1, 0)
HitNumberP.Font = Enum.Font.Sarpanch
HitNumberP.Text = "Number"
HitNumberP.TextColor3 = Color3.fromRGB(153, 153, 153)
HitNumberP.TextSize = 19.000
HitNumberP.TextWrapped = true

Preview.BackgroundTransparency = 0.800
Preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Preview.BorderSizePixel = 0
Preview.BorderColor3 = Color3.fromRGB(0, 0, 0)
Preview.Name = "Preview"
Preview.Parent = PartPannel
Preview.Position = UDim2.new(0.558242559, 0, 0.298724949, 0)

tb.Name = "tb"
tb.Parent = Preview

ub.Color = Color3.fromRGB(247, 247, 247)
ub.Name = "ub"
ub.Parent = Preview
Border3.Name = "Border3"
Border3.Parent = PartPannel
Border3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Border3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Border3.BorderSizePixel = 0
Border3.Position = UDim2.new(0.0174603481, 0, 0.756338775, 0)
Border3.Size = UDim2.new(1.02857149, 0, 0, 0)

xb.Name = "xb"
xb.Parent = Border3

yb.Color = Color3.fromRGB(112, 112, 112)
yb.Thickness = 1.399999976158142
yb.Name = "yb"
yb.Parent = Border3

ValueFrame.Name = "ValueFrame"
ValueFrame.Parent = PartPannel
ValueFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ValueFrame.BackgroundTransparency = 1.000
ValueFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValueFrame.BorderSizePixel = 0
ValueFrame.Position = UDim2.new(0.00659340667, 0, 0.792349756, 0)
ValueFrame.Size = UDim2.new(1.03956044, 0, 0.0947176665, 0)

Value.Name = "Value"
Value.Parent = ValueFrame
Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Value.BackgroundTransparency = 1.000
Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
Value.BorderSizePixel = 0
Value.Position = UDim2.new(0, 0, -0.192307696, 0)
Value.Size = UDim2.new(1, 0, 0.480769217, 0)
Value.Font = Enum.Font.Sarpanch
Value.Text = "Value:"
Value.TextColor3 = Color3.fromRGB(255, 255, 255)
Value.TextScaled = true
Value.TextSize = 14.000
Value.TextWrapped = true

Pn.Name = "Pn"
Pn.Parent = ValueFrame
Pn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pn.BackgroundTransparency = 1.000
Pn.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pn.BorderSizePixel = 0
Pn.Position = UDim2.new(0, 0, 0.288461536, 0)
Pn.Size = UDim2.new(1, 0, 0.884615362, 0)

PnI.Name = "PnI"
PnI.Parent = Pn
PnI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PnI.BorderColor3 = Color3.fromRGB(0, 0, 0)
PnI.BorderSizePixel = 0
PnI.Position = UDim2.new(0.0135198673, 0, 0.256875753, 0)
PnI.Selectable = true
PnI.Size = UDim2.new(0.978858352, 0, 0.565217376, 0)

Gs.CornerRadius = UDim.new(0, 5)
Gs.Name = "Gs"
Gs.Parent = PnI

HI.Color = Color3.fromRGB(255, 255, 255)
HI.Thickness = 2.4000000953674316
HI.Name = "HI"
HI.Parent = PnI

NumberEnd.Name = "NumberEnd"
NumberEnd.Parent = PnI
NumberEnd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NumberEnd.BackgroundTransparency = 1.000
NumberEnd.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberEnd.BorderSizePixel = 0
NumberEnd.Position = UDim2.new(-5.27301552e-07, 0, 0, 0)
NumberEnd.Selectable = false
NumberEnd.Size = UDim2.new(1, 0, 1, 0)
NumberEnd.Font = Enum.Font.Sarpanch
NumberEnd.MultiLine = true
NumberEnd.PlaceholderText = "e.g: 69420"
NumberEnd.Text = ""
NumberEnd.TextColor3 = Color3.fromRGB(255, 255, 255)
NumberEnd.TextScaled = true
NumberEnd.TextSize = 14.000
NumberEnd.TextWrapped = true

Ps.Name = "Ps"
Ps.Parent = ValueFrame
Ps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ps.BackgroundTransparency = 1.000
Ps.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ps.BorderSizePixel = 0
Ps.Position = UDim2.new(0, 0, 0.288461536, 0)
Ps.Size = UDim2.new(1, 0, 0.884615362, 0)
Ps.Visible = false

PsI.Name = "PsI"
PsI.Parent = Ps
PsI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PsI.BorderColor3 = Color3.fromRGB(0, 0, 0)
PsI.BorderSizePixel = 0
PsI.Position = UDim2.new(0.0135198673, 0, 0.256875753, 0)
PsI.Selectable = true
PsI.Size = UDim2.new(0.978858352, 0, 0.565217376, 0)

doubleu.CornerRadius = UDim.new(0, 5)
doubleu.Name = "doubleu"
doubleu.Parent = PsI

doublev.Color = Color3.fromRGB(255, 255, 255)
doublev.Thickness = 2.4000000953674316
doublev.Name = "doublev"
doublev.Parent = PsI

StringEnd.Name = "StringEnd"
StringEnd.Parent = PsI
StringEnd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StringEnd.BackgroundTransparency = 1.000
StringEnd.BorderColor3 = Color3.fromRGB(0, 0, 0)
StringEnd.BorderSizePixel = 0
StringEnd.Position = UDim2.new(-5.27301552e-07, 0, 0, 0)
StringEnd.Selectable = false
StringEnd.Size = UDim2.new(1, 0, 1, 0)
StringEnd.Font = Enum.Font.Sarpanch
StringEnd.MultiLine = true
StringEnd.PlaceholderText = "e.g: peniese"
StringEnd.Text = ""
StringEnd.TextColor3 = Color3.fromRGB(255, 255, 255)
StringEnd.TextScaled = true
StringEnd.TextSize = 14.000
StringEnd.TextWrapped = true

Pns.Name = "Pns"
Pns.Parent = ValueFrame
Pns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pns.BackgroundTransparency = 1.000
Pns.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pns.BorderSizePixel = 0
Pns.Position = UDim2.new(0, 0, 0.288461536, 0)
Pns.Size = UDim2.new(1, 0, 0.884615362, 0)
Pns.Visible = false

Pnsi1.Name = "Pnsi1"
Pnsi1.Parent = Pns
Pnsi1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pnsi1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pnsi1.BorderSizePixel = 0
Pnsi1.Position = UDim2.new(0.0135198673, 0, 0.256875753, 0)
Pnsi1.Selectable = true
Pnsi1.Size = UDim2.new(0.427061319, 0, 0.565217376, 0)

JK.CornerRadius = UDim.new(0, 5)
JK.Name = "JK"
JK.Parent = Pnsi1

LMNOP.Color = Color3.fromRGB(255, 255, 255)
LMNOP.Thickness = 2.4000000953674316
LMNOP.Name = "LMNOP"
LMNOP.Parent = Pnsi1

NmbsEnd1.Name = "NmbsEnd1"
NmbsEnd1.Parent = Pnsi1
NmbsEnd1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NmbsEnd1.BackgroundTransparency = 1.000
NmbsEnd1.BorderColor3 = Color3.fromRGB(0, 0, 0)
NmbsEnd1.BorderSizePixel = 0
NmbsEnd1.Position = UDim2.new(-2.41723387e-06, 0, 0, 0)
NmbsEnd1.Selectable = false
NmbsEnd1.Size = UDim2.new(1, 0, 1, 0)
NmbsEnd1.Font = Enum.Font.Sarpanch
NmbsEnd1.MultiLine = true
NmbsEnd1.PlaceholderText = "e.g: 69"
NmbsEnd1.Text = ""
NmbsEnd1.TextColor3 = Color3.fromRGB(255, 255, 255)
NmbsEnd1.TextScaled = true
NmbsEnd1.TextSize = 14.000
NmbsEnd1.TextWrapped = true

Pnsi2.Name = "Pnsi2"
Pnsi2.Parent = Pns
Pnsi2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pnsi2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pnsi2.BorderSizePixel = 0
Pnsi2.Position = UDim2.new(0.558999181, 0, 0.256875753, 0)
Pnsi2.Selectable = true
Pnsi2.Size = UDim2.new(0.437632143, 0, 0.565217376, 0)

qrs.CornerRadius = UDim.new(0, 5)
qrs.Name = "qrs"
qrs.Parent = Pnsi2

tuv.Color = Color3.fromRGB(255, 255, 255)
tuv.Thickness = 2.4000000953674316
tuv.Name = "tuv"
tuv.Parent = Pnsi2

NmbsEnd2.Name = "NmbsEnd2"
NmbsEnd2.Parent = Pnsi2
NmbsEnd2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NmbsEnd2.BackgroundTransparency = 1.000
NmbsEnd2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NmbsEnd2.BorderSizePixel = 0
NmbsEnd2.Selectable = false
NmbsEnd2.Size = UDim2.new(1, 0, 1, 0)
NmbsEnd2.Font = Enum.Font.Sarpanch
NmbsEnd2.MultiLine = true
NmbsEnd2.PlaceholderText = "e.g: 42"
NmbsEnd2.Text = ""
NmbsEnd2.TextColor3 = Color3.fromRGB(255, 255, 255)
NmbsEnd2.TextScaled = true
NmbsEnd2.TextSize = 14.000
NmbsEnd2.TextWrapped = true

Pc.Name = "Pc"
Pc.Parent = ValueFrame
Pc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pc.BackgroundTransparency = 1.000
Pc.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pc.BorderSizePixel = 0
Pc.Position = UDim2.new(0, 0, 0.288461536, 0)
Pc.Size = UDim2.new(1, 0, 0.884615362, 0)
Pc.Visible = false

Pr.Name = "Pr"
Pr.Parent = Pc
Pr.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pr.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pr.BorderSizePixel = 0
Pr.Position = UDim2.new(0.0135198673, 0, 0.256875753, 0)
Pr.Selectable = true
Pr.Size = UDim2.new(0.295983076, 0, 0.565217376, 0)

ABC.CornerRadius = UDim.new(0, 5)
ABC.Name = "ABC"
ABC.Parent = Pr

DEF.Color = Color3.fromRGB(255, 172, 172)
DEF.Thickness = 2.4000000953674316
DEF.Name = "DEF"
DEF.Parent = Pr

Rp.Name = "Rp"
Rp.Parent = Pr
Rp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rp.BackgroundTransparency = 1.000
Rp.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rp.BorderSizePixel = 0
Rp.Position = UDim2.new(-2.61579248e-06, 0, 0, 0)
Rp.Selectable = false
Rp.Size = UDim2.new(0.992857158, 0, 1, 0)
Rp.Font = Enum.Font.Sarpanch
Rp.MultiLine = true
Rp.PlaceholderColor3 = Color3.fromRGB(178, 115, 115)
Rp.PlaceholderText = "e.g: 69420"
Rp.Text = ""
Rp.TextColor3 = Color3.fromRGB(255, 170, 170)
Rp.TextScaled = true
Rp.TextSize = 14.000
Rp.TextWrapped = true

Pb.Name = "Pb"
Pb.Parent = Pc
Pb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pb.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pb.BorderSizePixel = 0
Pb.Position = UDim2.new(0.359027475, 0, 0.256999999, 0)
Pb.Selectable = true
Pb.Size = UDim2.new(0.295983076, 0, 0.565217376, 0)

now.CornerRadius = UDim.new(0, 5)
now.Name = "now"
now.Parent = Pb

ic_2.Color = Color3.fromRGB(186, 181, 255)
ic_2.Thickness = 2.4000000953674316
ic_2.Name = "ic"
ic_2.Parent = Pb

Bp.Name = "Bp"
Bp.Parent = Pb
Bp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bp.BackgroundTransparency = 1.000
Bp.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bp.BorderSizePixel = 0
Bp.Position = UDim2.new(-2.61579248e-06, 0, 0, 0)
Bp.Selectable = false
Bp.Size = UDim2.new(0.992857158, 0, 1, 0)
Bp.Font = Enum.Font.Sarpanch
Bp.MultiLine = true
Bp.PlaceholderColor3 = Color3.fromRGB(132, 154, 178)
Bp.PlaceholderText = "e.g: 69420"
Bp.Text = ""
Bp.TextColor3 = Color3.fromRGB(180, 180, 255)
Bp.TextScaled = true
Bp.TextSize = 14.000
Bp.TextWrapped = true

Pg.Name = "Pg"
Pg.Parent = Pc
Pg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pg.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pg.BorderSizePixel = 0
Pg.Position = UDim2.new(0.699027479, 0, 0.256999999, 0)
Pg.Selectable = true
Pg.Size = UDim2.new(0.295983076, 0, 0.565217376, 0)

know.CornerRadius = UDim.new(0, 5)
know.Name = "know"
know.Parent = Pg

my.Color = Color3.fromRGB(183, 255, 201)
my.Thickness = 2.4000000953674316
my.Name = "my"
my.Parent = Pg

Gp.Name = "Gp"
Gp.Parent = Pg
Gp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gp.BackgroundTransparency = 1.000
Gp.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gp.BorderSizePixel = 0
Gp.Position = UDim2.new(-2.61579248e-06, 0, 0, 0)
Gp.Selectable = false
Gp.Size = UDim2.new(0.992857158, 0, 1, 0)
Gp.Font = Enum.Font.Sarpanch
Gp.MultiLine = true
Gp.PlaceholderColor3 = Color3.fromRGB(133, 178, 133)
Gp.PlaceholderText = "e.g: 69420"
Gp.Text = ""
Gp.TextColor3 = Color3.fromRGB(176, 255, 179)
Gp.TextScaled = true
Gp.TextSize = 14.000
Gp.TextWrapped = true
Preview.Size = UDim2.new(0.488, 0, 0.397, 0)
HitboxSelectPart.TextScaled = true

local Viewer = Instance.new("Part")
Viewer.Anchored = true
Viewer.Parent = Preview
local Camera = Instance.new("Camera")
Camera.Parent = Preview
Camera.CFrame = CFrame.new(Vector3.new(0, 1, 6), Viewer.Position)
Preview.CurrentCamera = Camera




local EffectPannel = Instance.new("Frame")
local Border4 = Instance.new("Frame")
local J = Instance.new("UICorner")
local K = Instance.new("UIStroke")
local ExecuteEffectFrame = Instance.new("Frame")
local N = Instance.new("UICorner")
local O = Instance.new("UIStroke")
local ExecuteEffect = Instance.new("TextButton")
local SelectedEffectInPart = Instance.new("TextLabel")
local PartEffectSelect = Instance.new("Frame")
local EB = Instance.new("UICorner")
local FB = Instance.new("UIStroke")
local HitboxSelectedPart = Instance.new("TextButton")
local SelectedEffect = Instance.new("TextLabel")
local EffectSelect = Instance.new("Frame")
local CB = Instance.new("UICorner")
local DB = Instance.new("UIStroke")
local EffectSelect_2 = Instance.new("TextBox")
local ValueType = Instance.new("TextLabel")
local StringEffect = Instance.new("Frame")
local OB = Instance.new("UICorner")
local PB = Instance.new("UIStroke")
local HitString = Instance.new("TextButton")
local NumberEffect = Instance.new("Frame")
local KB = Instance.new("UICorner")
local LB = Instance.new("UIStroke")
local HitNumber = Instance.new("TextButton")
local NumberSequenceEffect = Instance.new("Frame")
local MB = Instance.new("UICorner")
local HitNumberSequence = Instance.new("TextButton")
local NB = Instance.new("UIStroke")
local ColorValueEffect = Instance.new("Frame")
local IB = Instance.new("UICorner")
local JB = Instance.new("UIStroke")
local HitColor = Instance.new("TextButton")
local Border5 = Instance.new("Frame")
local L = Instance.new("UICorner")
local M = Instance.new("UIStroke")
local ValueFrameEffect = Instance.new("Frame")
local ValueEffect = Instance.new("TextLabel")
local Es = Instance.new("Frame")
local EsI = Instance.new("Frame")
local AB = Instance.new("UICorner")
local BB = Instance.new("UIStroke")
local StringStart = Instance.new("TextBox")
local Ens = Instance.new("Frame")
local Ensi1 = Instance.new("Frame")
local W = Instance.new("UICorner")
local X = Instance.new("UIStroke")
local NmbsStart1 = Instance.new("TextBox")
local Ensi2 = Instance.new("Frame")
local Y = Instance.new("UICorner")
local Z = Instance.new("UIStroke")
local NmbsStart2 = Instance.new("TextBox")
local Ec = Instance.new("Frame")
local Er = Instance.new("Frame")
local T = Instance.new("UICorner")
local V = Instance.new("UIStroke")
local Re = Instance.new("TextBox")
local Eb = Instance.new("Frame")
local P = Instance.new("UICorner")
local Q = Instance.new("UIStroke")
local Be = Instance.new("TextBox")
local Eg = Instance.new("Frame")
local R = Instance.new("UICorner")
local S = Instance.new("UIStroke")
local Ge = Instance.new("TextBox")
local En = Instance.new("Frame")
local EnI = Instance.new("Frame")
local U = Instance.new("UICorner")
local S_2 = Instance.new("UIStroke")
local NumberStart = Instance.new("TextBox")
local SelectedEffectProperty = Instance.new("TextLabel")
local EffectPropertySelect = Instance.new("Frame")
local GB = Instance.new("UICorner")
local HB = Instance.new("UIStroke")
local EffectPropertySelect_2 = Instance.new("TextBox")

-- Properties:

EffectPannel.Name = "EffectPannel"
EffectPannel.Parent = Pannel
EffectPannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EffectPannel.BackgroundTransparency = 1.000
EffectPannel.BorderColor3 = Color3.fromRGB(0, 0, 0)
EffectPannel.BorderSizePixel = 0
EffectPannel.Position = UDim2.new(0.0249999054, 0, 0.0848125592, 0)
EffectPannel.Size = UDim2.new(0.886939585, 0, 0.870047569, 0)
EffectPannel.Visible = false

Border4.Name = "Border4"
Border4.Parent = EffectPannel
Border4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Border4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Border4.BorderSizePixel = 0
Border4.Position = UDim2.new(0.00647133635, 0, 0.315537423, 0)
Border4.Size = UDim2.new(1.02857149, 0, 0, 0)

J.Name = "J"
J.Parent = Border4

K.Color = Color3.fromRGB(112, 112, 112)
K.Thickness = 1.399999976158142
K.Name = "K"
K.Parent = Border4

ExecuteEffectFrame.Name = "ExecuteEffectFrame"
ExecuteEffectFrame.Parent = EffectPannel
ExecuteEffectFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecuteEffectFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecuteEffectFrame.BorderSizePixel = 0
ExecuteEffectFrame.Position = UDim2.new(0.67446506, 0, 0.944790184, 0)
ExecuteEffectFrame.Size = UDim2.new(0.371428579, 0, 0.0710382536, 0)

N.CornerRadius = UDim.new(0, 9)
N.Name = "N"
N.Parent = ExecuteEffectFrame

O.Color = Color3.fromRGB(0, 255, 17)
O.Thickness = 2.4000000953674316
O.Name = "O"
O.Parent = ExecuteEffectFrame

ExecuteEffect.Name = "ExecuteEffect"
ExecuteEffect.Parent = ExecuteEffectFrame
ExecuteEffect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecuteEffect.BackgroundTransparency = 1.000
ExecuteEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecuteEffect.BorderSizePixel = 0
ExecuteEffect.Position = UDim2.new(-0.00811514724, 0, -0.012319712, 0)
ExecuteEffect.Size = UDim2.new(1, 0, 1, 0)
ExecuteEffect.Font = Enum.Font.Sarpanch
ExecuteEffect.Text = "Execute"
ExecuteEffect.TextColor3 = Color3.fromRGB(0, 255, 0)
ExecuteEffect.TextSize = 19.000
ExecuteEffect.TextWrapped = true

SelectedEffectInPart.Name = "SelectedEffectInPart"
SelectedEffectInPart.Parent = EffectPannel
SelectedEffectInPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedEffectInPart.BackgroundTransparency = 1.000
SelectedEffectInPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectedEffectInPart.BorderSizePixel = 0
SelectedEffectInPart.Position = UDim2.new(-0.0241758246, 0, 0.083038494, 0)
SelectedEffectInPart.Size = UDim2.new(0.505494535, 0, 0.0673952624, 0)
SelectedEffectInPart.Font = Enum.Font.Sarpanch
SelectedEffectInPart.Text = "Selected Part:"
SelectedEffectInPart.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectedEffectInPart.TextScaled = true
SelectedEffectInPart.TextSize = 14.000
SelectedEffectInPart.TextWrapped = true

PartEffectSelect.Name = "PartEffectSelect"
PartEffectSelect.Parent = SelectedEffectInPart
PartEffectSelect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PartEffectSelect.BorderColor3 = Color3.fromRGB(0, 0, 0)
PartEffectSelect.BorderSizePixel = 0
PartEffectSelect.Position = UDim2.new(1.03645706, 0, 0.270811349, 0)
PartEffectSelect.Size = UDim2.new(0.99565208, 0, 0.702702701, 0)

EB.CornerRadius = UDim.new(0, 5)
EB.Name = "EB"
EB.Parent = PartEffectSelect

FB.Color = Color3.fromRGB(255, 255, 255)
FB.Thickness = 2.4000000953674316
FB.Name = "FB"
FB.Parent = PartEffectSelect

HitboxSelectedPart.Name = "HitboxSelectPart"
HitboxSelectedPart.Parent = PartEffectSelect
HitboxSelectedPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HitboxSelectedPart.BackgroundTransparency = 1.000
HitboxSelectedPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitboxSelectedPart.BorderSizePixel = 0
HitboxSelectedPart.Position = UDim2.new(0.0302046724, 0, -0.012319712, 0)
HitboxSelectedPart.Size = UDim2.new(0.947598279, 0, 1, 0)
HitboxSelectedPart.Font = Enum.Font.Sarpanch
HitboxSelectedPart.Text = "Click To Select"
HitboxSelectedPart.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxSelectedPart.TextWrapped = true
HitboxSelectedPart.TextScaled = true

SelectedEffect.Name = "SelectedEffect"
SelectedEffect.Parent = EffectPannel
SelectedEffect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedEffect.BackgroundTransparency = 1.000
SelectedEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectedEffect.BorderSizePixel = 0
SelectedEffect.Position = UDim2.new(0.0262515564, 0, 0.148695543, 0)
SelectedEffect.Size = UDim2.new(0.408791184, 0, 0.0710382536, 0)
SelectedEffect.Font = Enum.Font.Sarpanch
SelectedEffect.Text = "Selected Effect:"
SelectedEffect.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectedEffect.TextScaled = true
SelectedEffect.TextSize = 14.000
SelectedEffect.TextWrapped = true

EffectSelect.Name = "EffectSelect"
EffectSelect.Parent = SelectedEffect
EffectSelect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EffectSelect.BorderColor3 = Color3.fromRGB(0, 0, 0)
EffectSelect.BorderSizePixel = 0
EffectSelect.Position = UDim2.new(1.15828383, 0, 0.322093487, 0)
EffectSelect.Selectable = true
EffectSelect.Size = UDim2.new(1.23655915, 0, 0.666666687, 0)

CB.CornerRadius = UDim.new(0, 5)
CB.Name = "CB"
CB.Parent = EffectSelect

DB.Color = Color3.fromRGB(255, 255, 255)
DB.Thickness = 2.4000000953674316
DB.Name = "DB"
DB.Parent = EffectSelect

EffectSelect_2.Name = "EffectSelect"
EffectSelect_2.Parent = EffectSelect
EffectSelect_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EffectSelect_2.BackgroundTransparency = 1.000
EffectSelect_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
EffectSelect_2.BorderSizePixel = 0
EffectSelect_2.Position = UDim2.new(-5.30740465e-07, 0, 0, 0)
EffectSelect_2.Selectable = false
EffectSelect_2.Size = UDim2.new(0.995652199, 0, 1, 0)
EffectSelect_2.Font = Enum.Font.Sarpanch
EffectSelect_2.MultiLine = true
EffectSelect_2.PlaceholderText = "None"
EffectSelect_2.Text = ""
EffectSelect_2.TextColor3 = Color3.fromRGB(255, 255, 255)
EffectSelect_2.TextScaled = true
EffectSelect_2.TextSize = 14.000
EffectSelect_2.TextWrapped = true

ValueType.Name = "ValueType"
ValueType.Parent = EffectPannel
ValueType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ValueType.BackgroundTransparency = 1.000
ValueType.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValueType.BorderSizePixel = 0
ValueType.Position = UDim2.new(0.00647133635, 0, 0.329023421, 0)
ValueType.Size = UDim2.new(0.408791184, 0, 0.0710382536, 0)
ValueType.Font = Enum.Font.Sarpanch
ValueType.Text = "Value Type:"
ValueType.TextColor3 = Color3.fromRGB(255, 255, 255)
ValueType.TextScaled = true
ValueType.TextSize = 14.000
ValueType.TextWrapped = true

StringEffect.Name = "StringEffect"
StringEffect.Parent = ValueType
StringEffect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
StringEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
StringEffect.BorderSizePixel = 0
StringEffect.Position = UDim2.new(-0.00295462669, 0, 1.46531641, 0)
StringEffect.Size = UDim2.new(0.908602178, 0, 1, 0)

OB.CornerRadius = UDim.new(0, 9)
OB.Name = "OB"
OB.Parent = StringEffect

PB.Color = Color3.fromRGB(168, 168, 168)
PB.Thickness = 2.4000000953674316
PB.Name = "PB"
PB.Parent = StringEffect

HitString.Name = "HitString"
HitString.Parent = StringEffect
HitString.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitString.BackgroundTransparency = 1.000
HitString.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitString.BorderSizePixel = 0
HitString.Position = UDim2.new(0.00371917174, 0, 0.013321314, 0)
HitString.Size = UDim2.new(1, 0, 1, 0)
HitString.Font = Enum.Font.Sarpanch
HitString.Text = "String"
HitString.TextColor3 = Color3.fromRGB(153, 153, 153)
HitString.TextSize = 19.000
HitString.TextWrapped = true

NumberEffect.Name = "NumberEffect"
NumberEffect.Parent = ValueType
NumberEffect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NumberEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberEffect.BorderSizePixel = 0
NumberEffect.Position = UDim2.new(-0.00338712311, 0, 2.88461542, 0)
NumberEffect.Size = UDim2.new(0.908602178, 0, 1, 0)

KB.CornerRadius = UDim.new(0, 9)
KB.Name = "KB"
KB.Parent = NumberEffect

LB.Color = Color3.fromRGB(168, 168, 168)
LB.Thickness = 2.4000000953674316
LB.Name = "LB"
LB.Parent = NumberEffect

HitNumber.Name = "HitNumber"
HitNumber.Parent = NumberEffect
HitNumber.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitNumber.BackgroundTransparency = 1.000
HitNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitNumber.BorderSizePixel = 0
HitNumber.Position = UDim2.new(-0.00219798787, 0, 0.013321314, 0)
HitNumber.Size = UDim2.new(1, 0, 1, 0)
HitNumber.Font = Enum.Font.Sarpanch
HitNumber.Text = "Number"
HitNumber.TextColor3 = Color3.fromRGB(153, 153, 153)
HitNumber.TextSize = 19.000
HitNumber.TextWrapped = true

NumberSequenceEffect.Name = "NumberSequenceEffect"
NumberSequenceEffect.Parent = ValueType
NumberSequenceEffect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NumberSequenceEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberSequenceEffect.BorderSizePixel = 0
NumberSequenceEffect.Position = UDim2.new(0.996612906, 0, 1.56923103, 0)
NumberSequenceEffect.Size = UDim2.new(0.908602178, 0, 1, 0)

MB.CornerRadius = UDim.new(0, 9)
MB.Name = "MB"
MB.Parent = NumberSequenceEffect

HitNumberSequence.Name = "HitNumberSequence"
HitNumberSequence.Parent = NumberSequenceEffect
HitNumberSequence.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitNumberSequence.BackgroundTransparency = 1.000
HitNumberSequence.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitNumberSequence.BorderSizePixel = 0
HitNumberSequence.Position = UDim2.new(0.00371917174, 0, -0.012319712, 0)
HitNumberSequence.Size = UDim2.new(1, 0, 1, 0)
HitNumberSequence.Font = Enum.Font.Sarpanch
HitNumberSequence.Text = "NumberSequence"
HitNumberSequence.TextColor3 = Color3.fromRGB(153, 153, 153)
HitNumberSequence.TextSize = 19.000
HitNumberSequence.TextWrapped = true

NB.Color = Color3.fromRGB(168, 168, 168)
NB.Thickness = 2.4000000953674316
NB.Name = "NB"
NB.Parent = NumberSequenceEffect

ColorValueEffect.Name = "ColorValueEffect"
ColorValueEffect.Parent = ValueType
ColorValueEffect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ColorValueEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
ColorValueEffect.BorderSizePixel = 0
ColorValueEffect.Position = UDim2.new(0.996612906, 0, 2.8974359, 0)
ColorValueEffect.Size = UDim2.new(0.908602178, 0, 1, 0)

IB.CornerRadius = UDim.new(0, 9)
IB.Name = "IB"
IB.Parent = ColorValueEffect

JB.Color = Color3.fromRGB(168, 168, 168)
JB.Thickness = 2.4000000953674316
JB.Name = "JB"
JB.Parent = ColorValueEffect

HitColor.Name = "HitColor"
HitColor.Parent = ColorValueEffect
HitColor.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
HitColor.BackgroundTransparency = 1.000
HitColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitColor.BorderSizePixel = 0
HitColor.Position = UDim2.new(-0.00219798787, 0, -0.0379607379, 0)
HitColor.Size = UDim2.new(1, 0, 1, 0)
HitColor.Font = Enum.Font.Sarpanch
HitColor.Text = "Color"
HitColor.TextColor3 = Color3.fromRGB(153, 153, 153)
HitColor.TextSize = 19.000
HitColor.TextWrapped = true

Border5.Name = "Border5"
Border5.Parent = EffectPannel
Border5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Border5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Border5.BorderSizePixel = 0
Border5.Position = UDim2.new(0.0196581502, 0, 0.6561566, 0)
Border5.Size = UDim2.new(1.02857149, 0, 0, 0)

L.Name = "L"
L.Parent = Border5

M.Color = Color3.fromRGB(112, 112, 112)
M.Thickness = 1.399999976158142
M.Name = "M"
M.Parent = Border5

ValueFrameEffect.Name = "ValueFrameEffect"
ValueFrameEffect.Parent = EffectPannel
ValueFrameEffect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ValueFrameEffect.BackgroundTransparency = 1.000
ValueFrameEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValueFrameEffect.BorderSizePixel = 0
ValueFrameEffect.Position = UDim2.new(0.00700000022, 0, 0.691999972, 0)
ValueFrameEffect.Size = UDim2.new(1.03956044, 0, 0.0947176665, 0)

ValueEffect.Name = "ValueEffect"
ValueEffect.Parent = ValueFrameEffect
ValueEffect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ValueEffect.BackgroundTransparency = 1.000
ValueEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValueEffect.BorderSizePixel = 0
ValueEffect.Position = UDim2.new(-0.00211416488, 0, -0.211538464, 0)
ValueEffect.Size = UDim2.new(1, 0, 0.480769217, 0)
ValueEffect.Font = Enum.Font.Sarpanch
ValueEffect.Text = "Value:"
ValueEffect.TextColor3 = Color3.fromRGB(255, 255, 255)
ValueEffect.TextScaled = true
ValueEffect.TextSize = 14.000
ValueEffect.TextWrapped = true

Es.Name = "Es"
Es.Parent = ValueFrameEffect
Es.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Es.BackgroundTransparency = 1.000
Es.BorderColor3 = Color3.fromRGB(0, 0, 0)
Es.BorderSizePixel = 0
Es.Position = UDim2.new(0, 0, 0.288461536, 0)
Es.Size = UDim2.new(1, 0, 0.884615362, 0)
Es.Visible = false

EsI.Name = "EsI"
EsI.Parent = Es
EsI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EsI.BorderColor3 = Color3.fromRGB(0, 0, 0)
EsI.BorderSizePixel = 0
EsI.Position = UDim2.new(0.0135198673, 0, 0.256875753, 0)
EsI.Selectable = true
EsI.Size = UDim2.new(0.978858352, 0, 0.565217376, 0)

AB.CornerRadius = UDim.new(0, 5)
AB.Name = "AB"
AB.Parent = EsI

BB.Color = Color3.fromRGB(255, 255, 255)
BB.Thickness = 2.4000000953674316
BB.Name = "BB"
BB.Parent = EsI

StringStart.Name = "StringStart"
StringStart.Parent = EsI
StringStart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StringStart.BackgroundTransparency = 1.000
StringStart.BorderColor3 = Color3.fromRGB(0, 0, 0)
StringStart.BorderSizePixel = 0
StringStart.Position = UDim2.new(-5.27301552e-07, 0, 0, 0)
StringStart.Selectable = false
StringStart.Size = UDim2.new(1, 0, 1, 0)
StringStart.Font = Enum.Font.Sarpanch
StringStart.MultiLine = true
StringStart.PlaceholderText = "e.g: peniese"
StringStart.Text = ""
StringStart.TextColor3 = Color3.fromRGB(255, 255, 255)
StringStart.TextScaled = true
StringStart.TextSize = 14.000
StringStart.TextWrapped = true

Ens.Name = "Ens"
Ens.Parent = ValueFrameEffect
Ens.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ens.BackgroundTransparency = 1.000
Ens.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ens.BorderSizePixel = 0
Ens.Position = UDim2.new(0, 0, 0.288461536, 0)
Ens.Size = UDim2.new(1, 0, 0.884615362, 0)
Ens.Visible = false

Ensi1.Name = "Ensi1"
Ensi1.Parent = Ens
Ensi1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ensi1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ensi1.BorderSizePixel = 0
Ensi1.Position = UDim2.new(0.0135198673, 0, 0.256875753, 0)
Ensi1.Selectable = true
Ensi1.Size = UDim2.new(0.427061319, 0, 0.565217376, 0)

W.CornerRadius = UDim.new(0, 5)
W.Name = "W"
W.Parent = Ensi1

X.Color = Color3.fromRGB(255, 255, 255)
X.Thickness = 2.4000000953674316
X.Name = "X"
X.Parent = Ensi1

NmbsStart1.Name = "NmbsStart1"
NmbsStart1.Parent = Ensi1
NmbsStart1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NmbsStart1.BackgroundTransparency = 1.000
NmbsStart1.BorderColor3 = Color3.fromRGB(0, 0, 0)
NmbsStart1.BorderSizePixel = 0
NmbsStart1.Position = UDim2.new(-2.41723387e-06, 0, 0, 0)
NmbsStart1.Selectable = false
NmbsStart1.Size = UDim2.new(1, 0, 1, 0)
NmbsStart1.Font = Enum.Font.Sarpanch
NmbsStart1.MultiLine = true
NmbsStart1.PlaceholderText = "e.g: 69"
NmbsStart1.Text = ""
NmbsStart1.TextColor3 = Color3.fromRGB(255, 255, 255)
NmbsStart1.TextScaled = true
NmbsStart1.TextSize = 14.000
NmbsStart1.TextWrapped = true

Ensi2.Name = "Ensi2"
Ensi2.Parent = Ens
Ensi2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ensi2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ensi2.BorderSizePixel = 0
Ensi2.Position = UDim2.new(0.558999181, 0, 0.256875753, 0)
Ensi2.Selectable = true
Ensi2.Size = UDim2.new(0.437632143, 0, 0.565217376, 0)

Y.CornerRadius = UDim.new(0, 5)
Y.Name = "Y"
Y.Parent = Ensi2

Z.Color = Color3.fromRGB(255, 255, 255)
Z.Thickness = 2.4000000953674316
Z.Name = "Z"
Z.Parent = Ensi2

NmbsStart2.Name = "NmbsStart2"
NmbsStart2.Parent = Ensi2
NmbsStart2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NmbsStart2.BackgroundTransparency = 1.000
NmbsStart2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NmbsStart2.BorderSizePixel = 0
NmbsStart2.Selectable = false
NmbsStart2.Size = UDim2.new(1, 0, 1, 0)
NmbsStart2.Font = Enum.Font.Sarpanch
NmbsStart2.MultiLine = true
NmbsStart2.PlaceholderText = "e.g: 42"
NmbsStart2.Text = ""
NmbsStart2.TextColor3 = Color3.fromRGB(255, 255, 255)
NmbsStart2.TextScaled = true
NmbsStart2.TextSize = 14.000
NmbsStart2.TextWrapped = true

Ec.Name = "Ec"
Ec.Parent = ValueFrameEffect
Ec.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ec.BackgroundTransparency = 1.000
Ec.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ec.BorderSizePixel = 0
Ec.Position = UDim2.new(0, 0, 0.288461536, 0)
Ec.Size = UDim2.new(1, 0, 0.884615362, 0)
Ec.Visible = false

Er.Name = "Er"
Er.Parent = Ec
Er.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Er.BorderColor3 = Color3.fromRGB(0, 0, 0)
Er.BorderSizePixel = 0
Er.Position = UDim2.new(0.0135198673, 0, 0.256875753, 0)
Er.Selectable = true
Er.Size = UDim2.new(0.295983076, 0, 0.565217376, 0)

T.CornerRadius = UDim.new(0, 5)
T.Name = "T"
T.Parent = Er

V.Color = Color3.fromRGB(255, 172, 172)
V.Thickness = 2.4000000953674316
V.Name = "V"
V.Parent = Er

Re.Name = "Re"
Re.Parent = Er
Re.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Re.BackgroundTransparency = 1.000
Re.BorderColor3 = Color3.fromRGB(0, 0, 0)
Re.BorderSizePixel = 0
Re.Position = UDim2.new(-2.61579248e-06, 0, 0, 0)
Re.Selectable = false
Re.Size = UDim2.new(0.992857158, 0, 1, 0)
Re.Font = Enum.Font.Sarpanch
Re.MultiLine = true
Re.PlaceholderColor3 = Color3.fromRGB(178, 115, 115)
Re.PlaceholderText = "e.g: 69420"
Re.Text = ""
Re.TextColor3 = Color3.fromRGB(255, 170, 170)
Re.TextScaled = true
Re.TextSize = 14.000
Re.TextWrapped = true

Eb.Name = "Eb"
Eb.Parent = Ec
Eb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Eb.BorderColor3 = Color3.fromRGB(0, 0, 0)
Eb.BorderSizePixel = 0
Eb.Position = UDim2.new(0.359027475, 0, 0.256999999, 0)
Eb.Selectable = true
Eb.Size = UDim2.new(0.295983076, 0, 0.565217376, 0)

P.CornerRadius = UDim.new(0, 5)
P.Name = "P"
P.Parent = Eb

Q.Color = Color3.fromRGB(186, 181, 255)
Q.Thickness = 2.4000000953674316
Q.Name = "Q"
Q.Parent = Eb

Be.Name = "Be"
Be.Parent = Eb
Be.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Be.BackgroundTransparency = 1.000
Be.BorderColor3 = Color3.fromRGB(0, 0, 0)
Be.BorderSizePixel = 0
Be.Position = UDim2.new(-2.61579248e-06, 0, 0, 0)
Be.Selectable = false
Be.Size = UDim2.new(0.992857158, 0, 1, 0)
Be.Font = Enum.Font.Sarpanch
Be.MultiLine = true
Be.PlaceholderColor3 = Color3.fromRGB(132, 154, 178)
Be.PlaceholderText = "e.g: 69420"
Be.Text = ""
Be.TextColor3 = Color3.fromRGB(180, 180, 255)
Be.TextScaled = true
Be.TextSize = 14.000
Be.TextWrapped = true

Eg.Name = "Eg"
Eg.Parent = Ec
Eg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Eg.BorderColor3 = Color3.fromRGB(0, 0, 0)
Eg.BorderSizePixel = 0
Eg.Position = UDim2.new(0.699027479, 0, 0.256999999, 0)
Eg.Selectable = true
Eg.Size = UDim2.new(0.295983076, 0, 0.565217376, 0)

R.CornerRadius = UDim.new(0, 5)
R.Name = "R"
R.Parent = Eg

S.Color = Color3.fromRGB(183, 255, 201)
S.Thickness = 2.4000000953674316
S.Name = "S"
S.Parent = Eg

Ge.Name = "Ge"
Ge.Parent = Eg
Ge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ge.BackgroundTransparency = 1.000
Ge.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ge.BorderSizePixel = 0
Ge.Position = UDim2.new(-2.61579248e-06, 0, 0, 0)
Ge.Selectable = false
Ge.Size = UDim2.new(0.992857158, 0, 1, 0)
Ge.Font = Enum.Font.Sarpanch
Ge.MultiLine = true
Ge.PlaceholderColor3 = Color3.fromRGB(133, 178, 133)
Ge.PlaceholderText = "e.g: 69420"
Ge.Text = ""
Ge.TextColor3 = Color3.fromRGB(176, 255, 179)
Ge.TextScaled = true
Ge.TextSize = 14.000
Ge.TextWrapped = true

En.Name = "En"
En.Parent = ValueFrameEffect
En.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
En.BackgroundTransparency = 1.000
En.BorderColor3 = Color3.fromRGB(0, 0, 0)
En.BorderSizePixel = 0
En.Position = UDim2.new(0, 0, 0.288461536, 0)
En.Size = UDim2.new(1, 0, 0.884615362, 0)

EnI.Name = "EnI"
EnI.Parent = En
EnI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EnI.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnI.BorderSizePixel = 0
EnI.Position = UDim2.new(0.0135198673, 0, 0.256875753, 0)
EnI.Selectable = true
EnI.Size = UDim2.new(0.978858352, 0, 0.565217376, 0)

U.CornerRadius = UDim.new(0, 5)
U.Name = "U"
U.Parent = EnI

S_2.Color = Color3.fromRGB(255, 255, 255)
S_2.Thickness = 2.4000000953674316
S_2.Name = "S"
S_2.Parent = EnI

NumberStart.Name = "NumberStart"
NumberStart.Parent = EnI
NumberStart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NumberStart.BackgroundTransparency = 1.000
NumberStart.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberStart.BorderSizePixel = 0
NumberStart.Position = UDim2.new(-5.27301552e-07, 0, 0, 0)
NumberStart.Selectable = false
NumberStart.Size = UDim2.new(1, 0, 1, 0)
NumberStart.Font = Enum.Font.Sarpanch
NumberStart.MultiLine = true
NumberStart.PlaceholderText = "e.g: 69420"
NumberStart.Text = ""
NumberStart.TextColor3 = Color3.fromRGB(255, 255, 255)
NumberStart.TextScaled = true
NumberStart.TextSize = 14.000
NumberStart.TextWrapped = true

SelectedEffectProperty.Name = "SelectedEffectProperty"
SelectedEffectProperty.Parent = EffectPannel
SelectedEffectProperty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedEffectProperty.BackgroundTransparency = 1.000
SelectedEffectProperty.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectedEffectProperty.BorderSizePixel = 0
SelectedEffectProperty.Position = UDim2.new(0.0262515564, 0, 0.21973379, 0)
SelectedEffectProperty.Size = UDim2.new(0.408791184, 0, 0.0710382536, 0)
SelectedEffectProperty.Font = Enum.Font.Sarpanch
SelectedEffectProperty.Text = "Selected Property:"
SelectedEffectProperty.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectedEffectProperty.TextScaled = true
SelectedEffectProperty.TextSize = 14.000
SelectedEffectProperty.TextWrapped = true

EffectPropertySelect.Name = "EffectPropertySelect"
EffectPropertySelect.Parent = SelectedEffectProperty
EffectPropertySelect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EffectPropertySelect.BorderColor3 = Color3.fromRGB(0, 0, 0)
EffectPropertySelect.BorderSizePixel = 0
EffectPropertySelect.Position = UDim2.new(1.15828383, 0, 0.322093487, 0)
EffectPropertySelect.Selectable = true
EffectPropertySelect.Size = UDim2.new(1.23655915, 0, 0.666666687, 0)

GB.CornerRadius = UDim.new(0, 5)
GB.Name = "GB"
GB.Parent = EffectPropertySelect

HB.Color = Color3.fromRGB(255, 255, 255)
HB.Thickness = 2.4000000953674316
HB.Name = "HB"
HB.Parent = EffectPropertySelect

EffectPropertySelect_2.Name = "EffectPropertySelect"
EffectPropertySelect_2.Parent = EffectPropertySelect
EffectPropertySelect_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EffectPropertySelect_2.BackgroundTransparency = 1.000
EffectPropertySelect_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
EffectPropertySelect_2.BorderSizePixel = 0
EffectPropertySelect_2.Position = UDim2.new(-5.30740465e-07, 0, 0, 0)
EffectPropertySelect_2.Selectable = false
EffectPropertySelect_2.Size = UDim2.new(0.995652199, 0, 1, 0)
EffectPropertySelect_2.Font = Enum.Font.Sarpanch
EffectPropertySelect_2.MultiLine = true
EffectPropertySelect_2.PlaceholderText = "None"
EffectPropertySelect_2.Text = ""
EffectPropertySelect_2.TextColor3 = Color3.fromRGB(255, 255, 255)
EffectPropertySelect_2.TextScaled = true
EffectPropertySelect_2.TextSize = 14.000
EffectPropertySelect_2.TextWrapped = true
Preview.Size = UDim2.new(0.488, 0, 0.397, 0)



player = game.Players.LocalPlayer
ObbyBox.Text = player.Name
ObbyBox.ClearTextOnFocus = false
 mouse = player:GetMouse()
done = false
partste = {}
partstee = {}
 qwe = 1
qwes = 1
local handler = "None"
local typepart = "NumberValue"
local typeeffect = "NumberValue"
local tab = "Credits"
local rproperty = "None"
local reffect = "fire"
local estce = false
--Below are for values

--Effects
addingE = false
removingE = false
state2 = false
numbE = 0

numbEA = 0
numbEB = 0

valstringE = ""

blu = 0
re = 0
gree = 0

--Parts
addingP = false
removingP = false
state = false
numbP = 0

numbPA = 0
numbPB = 0

valstringP = ""

blue = 0
red = 0
green = 0
--Outputs
returnedP = "ok"
returnedE = "ok"
closed = false
--Debugging
clientsp = 0
clientse = 0
--Draging
UserInputService = game:GetService("UserInputService")

gui = Pannel

local dragging
local dragInput
local dragStart
local startPos

function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)
--Selection
HitCredit.MouseButton1Click:Connect(function()
	if tab == "Credits" then
		HitCredit.Text = "Open Credits"
		Hit.Text = "Open Parts"
		Credits.Visible = false
		PartPannel.Visible = false
		EffectPannel.Visible = true
		done = false
		tab = "Effects"
	elseif tab == "Effects" then
		PartPannel.Visible = false
		HitCredit.Text = "Open Effects"
		Hit.Text = "Open Parts"
		EffectPannel.Visible = false
		Credits.Visible = true
		tab = "Credits"
	elseif tab == "Parts" then
		HitCredit.Text = "Open Credits"
		Hit.Text = "Open Parts"
		PartPannel.Visible = false
		EffectPannel.Visible = true
		Credits.Visible = false
		tab = "Effects"
		done = false
	end
end)

Hit.MouseButton1Click:Connect(function()
	if tab == "Credits" then
		PartPannel.Visible = true
		EffectPannel.Visible = false
		Credits.Visible = false
		HitCredit.Text = "Open Effects"
		Hit.Text = "Open Credits"
		tab = "Parts"
		estce = false
	elseif tab == "Parts" then
		HitCredit.Text = "Open Effects"
		Hit.Text = "Open Parts"
		PartPannel.Visible = false
		EffectPannel.Visible = false
		Credits.Visible = true
		tab = "Credits"
	elseif tab == "Effects" then
		HitCredit.Text = "Open Effects"
		Hit.Text = "Open Credits"
		PartPannel.Visible = true
		EffectPannel.Visible = false
		Credits.Visible = false
		tab = "Parts"
		estce = false
	end
end)
--Functions
function clearvp()
	Pc.Visible = false
	Pn.Visible = false
	Pns.Visible = false
	Ps.Visible = false
end

function clearve()
	Ec.Visible = false
	En.Visible = false
	Ens.Visible = false
	Es.Visible = false
end
function effect()
	local current = returnedE
	local effecttable = {partstee[1]}
	print(current)
	game:GetService("ReplicatedStorage").Events.EffectObject:InvokeServer(effecttable, reffect, "Default")
	game:GetService("ReplicatedStorage").Events.EffectObject:InvokeServer(effecttable, reffect, EffectPropertySelect_2.Text, current)
end
function part()
	local current = returnedP
	local default = ""
	local parttable = {partste[1]}
	print(current)
	if typepart == "NumberValue" then
		default = "DefaultNumberValue"
	elseif typepart == "StringValue" then
		default = "DefaultStringValue"
	elseif typepart == "ColorValue" then
		default = "DefaultColor3Value"
	end
	if handler == "ATT" then
		if default == "DefaultNumberValue" then
			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, handler, "Skybox")

			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, default, current)

			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, handler, PropertyPart.Text)
		else
			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, default, current) 
		end
	elseif handler == "Gear" then
		game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, default, current)
	elseif handler == "GPT" then
		if default == "DefaultNumberValue" then
			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, handler, "Options-Fly")

			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, default, current)

			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, handler, PropertyPart.Text)
		else
			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, default, current)
		end
	elseif handler == "None" then
		if rproperty == "None" then
			game:GetService("ReplicatedStorage").Events.PaintObject:InvokeServer(parttable,PropertyPart.Text, current)
		else
			game:GetService("ReplicatedStorage").Events.BehaviourObject:InvokeServer(parttable, rproperty, current)
		end
	end
end
--Select View
HitboxSelectedPart.MouseButton1Click:Connect(function()

	task.wait(0.1)
	if state2 == false then
		if closed == false then
			if estce == false then
				estce = true
				state2 = true
				state = true
				HitboxSelectedPart.Text = "Please click on the part that has the effect"

				if done == false then
					clientse = clientse + 1
					mouse.Button1Down:Connect(function()
						print("Click")
						local warned = false
						local target = mouse.Target
						if target.Transparency == 1 then
							print("AA")
						else
							for i, v in pairs(workspace.Obbies:WaitForChild(ObbyBox.Text):WaitForChild("Items"):GetDescendants()) do
								done = false
								if target == v then
									warned = true
								end
							end
							if tab == "Parts" then
								return
							elseif target:FindFirstChild("EffectBox") then
								if addingE == false then

									print("bye")
									target:FindFirstChild("EffectBox"):Destroy()
									table.remove(partstee, 1)
									table.remove(partstee, 1)
									qwes = qwes - 1
									removingE = true
									task.wait(0.1)

								end

							elseif clientse > 1 then
								clientse = clientse - 1
								return
							elseif target:FindFirstChild("PartBox") then
								if addingE == false then
									if qwes >=2  then
										wait()
										game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Can't select more than 2 parts", Color3.new(1, 0, 0))
										print("no more for you lmao")
										task.wait(0.2)
									else
										game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Removing previous selection on Part.....", Color3.new(1, 0, 0))
										target:FindFirstChild("PartBox"):Destroy()
										Viewer.Size = Vector3.new(4,1,2)
										Viewer.Orientation = Vector3.new(0,0,0)
										Viewer.Shape = "Block"
										Viewer.BrickColor = BrickColor.new("Medium stone grey")
										Viewer.Reflectance = 0
										Viewer.TopSurface = "Smooth"
										Viewer.LeftSurface = "Smooth"
										Viewer.FrontSurface = "Smooth"
										Viewer.BackSurface = "Smooth"
										Viewer.RightSurface = "Smooth"
										local find = table.find(partste, target)
										table.remove(partste, find)
										print(find)
										qwe = qwe - 1
										table.remove(partstee, 1)
										table.remove(partstee, 1)
										table.insert(partstee, target)
										table.insert(partstee, target.Name)
										local sel = Instance.new("SelectionBox")
										local assingned = Instance.new("NumberValue")
										assingned.Parent = sel
										assingned.Name = qwes.."part"
										sel.Parent = target
										sel.Adornee = target
										sel.Name = "EffectBox"
										sel.LineThickness = 0.03
										sel.SurfaceTransparency = 0.9
										sel.SurfaceColor3 = Color3.new(1000,1000,0)
										sel.Color3 = Color3.new(100000,100000,0)						
										print(partstee[1])
										qwes = qwes + 1
										addingE = true
									end

								end
							elseif qwes >=2  then
								wait()
								game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Can't select more than 2 parts", Color3.new(1, 0, 0))
								print("no more for you lmao")
								task.wait(0.2)
							elseif warned == false then
								wait()
								if target.Name == "Grid" then

								else
									game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Part isnt in selected obby!", Color3.new(1, 0, 0))
									task.wait(0.2)
								end
							elseif removingE == false then

								print("ok")
								table.remove(partstee, 1)
								table.remove(partstee, 1)
								table.insert(partstee, target)
								table.insert(partstee, target.Name)
								local sel = Instance.new("SelectionBox")
								local assingned = Instance.new("NumberValue")
								assingned.Parent = sel
								assingned.Name = qwes.."part"
								sel.Parent = target
								sel.Adornee = target
								sel.Name = "EffectBox"
								sel.LineThickness = 0.03
								sel.SurfaceTransparency = 0.9
								sel.SurfaceColor3 = Color3.new(1000,1000,0)
								sel.Color3 = Color3.new(100000,100000,0)						
								print(partstee[1])
								qwes = qwes + 1
								addingE = true

							end
						end
					end)
				end
			end
		end
	else
		state2 = false
		state = false
		clientse = clientse - 1
		estce = false



		if partste[1] == nil then
			HitboxSelectPart.Text = "Current Part: None "
		else
			local Text = "Current Parts: "
			for i, v in pairs(partste) do
				print(i)
				if i == 1 then
					Text = Text..tostring(partste[i])
				else
					Text = Text..", "..tostring(partste[i])
				end
				print(Text)
			end

			HitboxSelectPart.Text = Text
		end


		if partstee[1] == nil then
			HitboxSelectedPart.Text = "Current Part: None "
		else
			HitboxSelectedPart.Text = "Current Part: "..tostring(partstee[1])
		end
		return
	end
end)
HitboxSelectPart.MouseButton1Click:Connect(function() --do not remove very important
	task.wait(0.1)
	if state == false then
		if closed == false then
			if estce == false then

				HitboxSelectPart.Text = "Please click on a part to affect it"
				print("good")
				done = true
				state = true
				state2 = true
				clientsp = clientsp + 1

				mouse.Button1Down:Connect(function()
					print("Click")
					local target = mouse.Target
					local warned = false
					if target.Transparency == 1 then
						print("AB")
					else
						print(ObbyBox.Text)
						for i, v in pairs(workspace.Obbies:WaitForChild(ObbyBox.Text):WaitForChild("Items"):GetDescendants()) do
							if target == v then
								warned = true
							end
						end
						wait()

						if tab == "Effects" then
							print("Success!")
							clientsp = clientsp - 1
							done = false
							state = false
							state2 = false
							if partste[1] == nil then
								HitboxSelectPart.Text = "Current Part: None "
							else
								local Text = "Current Parts: "
								for i, v in pairs(partste) do
									print(i)
									if i == 1 then
										Text = Text..tostring(partste[i])
									else
										Text = Text..", "..tostring(partste[i])
									end
									print(Text)
									HitboxSelectPart.Text = Text
								end
							end
							if partstee[1] == nil then
								HitboxSelectedPart.Text = "Current Part: None "
							else
								HitboxSelectedPart.Text = "Current Part: "..tostring(partstee[1])
							end
							return
						elseif clientsp > 1 then
							clientsp = clientsp - 1
							return
						elseif target:FindFirstChild("PartBox") then
							if addingP == false then

								print("bye")
								removingP = true
								local assigned = target:FindFirstChild("PartBox"):FindFirstChild("part")
								target:FindFirstChild("PartBox"):Destroy()
								Viewer.Size = Vector3.new(4,1,2)
								Viewer.Orientation = Vector3.new(0,0,0)
								Viewer.Shape = "Block"
								Viewer.BrickColor = BrickColor.new("Medium stone grey")
								Viewer.Reflectance = 0
								Viewer.TopSurface = "Smooth"
								Viewer.LeftSurface = "Smooth"
								Viewer.FrontSurface = "Smooth"
								Viewer.BackSurface = "Smooth"
								Viewer.RightSurface = "Smooth"
								local find = table.find(partste, target)
								table.remove(partste, find)
								qwe = qwe - 1

							end
						elseif target:FindFirstChild("EffectBox") then
							game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Removing previous selection on Part.....", Color3.new(1, 0, 0))
							wait()
							print("bye")
							target:FindFirstChild("EffectBox"):Destroy()
							table.remove(partstee, 1)
							table.remove(partstee, 1)
							qwes = qwes - 1
							table.insert(partste, target.Name)
							local sel = Instance.new("SelectionBox")
							local assingned = Instance.new("NumberValue")
							sel.Parent = target
							sel.Adornee = target
							sel.Name = "PartBox"
							sel.LineThickness = 0.03
							sel.SurfaceTransparency = 0.9
							sel.SurfaceColor3 = Color3.new(0,1000,1000)
							sel.Color3 = Color3.new(0,100000,1000000)
							assingned.Parent = sel
							assingned.Name = qwe.."part"
							Viewer.Size = target.Size
							Viewer.Shape = target.Shape
							Viewer.BrickColor = target.BrickColor
							Viewer.Reflectance = target.Reflectance
							Viewer.TopSurface = target.TopSurface
							Viewer.LeftSurface = target.LeftSurface
							Viewer.FrontSurface = target.FrontSurface
							Viewer.BackSurface = target.BackSurface
							Viewer.RightSurface = target.RightSurface
							qwe = qwe + 1
							task.wait(0.2)
						elseif warned == false then
							game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Part isnt in selected obby!", Color3.new(1, 0, 0))
							task.wait(0.2)
						elseif removingP == false then

							qwe = qwe + 1
							print("ok")
							table.insert(partste, target)
							local sel = Instance.new("SelectionBox")
							local assingned = Instance.new("NumberValue")
							sel.Parent = target
							sel.Adornee = target
							sel.Name = "PartBox"
							sel.LineThickness = 0.03
							sel.SurfaceTransparency = 0.9
							sel.SurfaceColor3 = Color3.new(0,1000,1000)
							sel.Color3 = Color3.new(0,100000,1000000)
							assingned.Parent = sel
							assingned.Name = "part"
							assingned.Value = qwe
							Viewer.Size = target.Size
							Viewer.Shape = target.Shape
							Viewer.BrickColor = target.BrickColor
							Viewer.Reflectance = target.Reflectance
							Viewer.TopSurface = target.TopSurface
							Viewer.LeftSurface = target.LeftSurface
							Viewer.FrontSurface = target.FrontSurface
							Viewer.BackSurface = target.BackSurface
							Viewer.RightSurface = target.RightSurface
							qwe = qwe + 1
							addingP = true
							task.wait(0.1)
						end

						task.wait(0.5)


					end
				end)

			end
		end	
	else
		print("Success!")
		clientsp = clientsp - 1
		done = false
		state = false
		state2 = false
		if partste[1] == nil then
			HitboxSelectPart.Text = "Current Part: None "
		else
			local Text = "Current Parts: "
			for i, v in pairs(partste) do
				print(i)
				if i == 1 then
					Text = Text..tostring(partste[i])
				else
					Text = Text..", "..tostring(partste[i])
				end
				print(Text)
			end
			HitboxSelectPart.Text = Text
			if partstee[1] == nil then
				HitboxSelectedPart.Text = "Current Part: None "
			else
				HitboxSelectedPart.Text = "Current Part: "..tostring(partstee[1])
			end
		end
		return
	end
end)

--Effect Selection
HitColor.MouseButton1Click:Connect(function()
	clearve()
	Ec.Visible = true
	typeeffect = "ColorValue"
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Effect is now set to "..typeeffect, Color3.new(0.584604, 0.491824, 0.828419))
end)
HitString.MouseButton1Click:Connect(function()
	clearve()
	Es.Visible = true
	typeeffect = "StringValue"
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Effect is now set to "..typeeffect, Color3.new(0.584604, 0.491824, 0.828419))
end)
HitNumberSequence.MouseButton1Click:Connect(function()
	clearve()
	Ens.Visible = true
	typeeffect = "NumberSequenceValue"
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Effect is now set to "..typeeffect, Color3.new(0.584604, 0.491824, 0.828419))
end)
HitNumber.MouseButton1Click:Connect(function()
	clearve()
	En.Visible = true
	typeeffect = "NumberValue"
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Effect is now set to "..typeeffect, Color3.new(0.584604, 0.491824, 0.828419))
end)

--Part selection
HitColorP.MouseButton1Click:Connect(function()
	clearvp()
	Pc.Visible = true
	typepart = "ColorValue"
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Part is now set to "..typepart, Color3.new(0.584604, 0.491824, 0.828419))
end)
HitStringP.MouseButton1Click:Connect(function()
	clearvp()
	Ps.Visible = true
	typepart = "StringValue"
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Part is now set to "..typepart, Color3.new(0.584604, 0.491824, 0.828419))
end)
HitNumberSequenceP.MouseButton1Click:Connect(function()
	clearvp()
	Pns.Visible = true
	typepart = "NumberSequenceValue"
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Part is now set to "..typepart, Color3.new(0.584604, 0.491824, 0.828419))
end)
HitNumberP.MouseButton1Click:Connect(function()
	clearvp()
	Pn.Visible = true
	typepart = "NumberValue"
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Part is now set to "..typepart, Color3.new(0.584604, 0.491824, 0.828419))
end)

--Main handles
coroutine.resume(coroutine.create(function() --SetValue Parts
	while wait() do
		if typepart == "NumberValue" then
			numbP = tonumber(NumberEnd.Text)
			returnedP = numbP
		elseif typepart == "StringValue" then
			valstringP = StringEnd.Text
			returnedP = valstringP
		elseif typepart == "NumberSequenceValue" then
			local sequence = NumberSequence.new(numbPA, numbPB)
			numbPA = NmbsEnd1.Text
			numbPB = NmbsEnd2.Text
			returnedP = sequence
		elseif typepart == "ColorValue" then
			local out = Color3.new(red,green,blue)
			red = Rp.Text
			green = Gp.Text
			blue = Bp.Text
			returnedP = out
		end
	end
end))

coroutine.resume(coroutine.create(function() --SetValue Effects
	while wait() do
		if typeeffect == "NumberValue" then
			numbE = tonumber(NumberStart.Text)
			returnedE = numbE
		elseif typeeffect == "StringValue" then
			valstringE = StringStart.Text
			returnedE = valstringE
		elseif typeeffect == "NumberSequenceValue" then
			local sequence = NumberSequence.new(numbEA, numbEB)
			numbEA = NmbsStart1.Text
			numbEB = NmbsStart2.Text
			returnedE = sequence
		elseif typeeffect == "ColorValue" then
			local out = Color3.new(re, gree, blu)
			re = Re.Text 
			blu = Be.Text
			gree = Ge.Text
			returnedE = out
		end
	end
end))

coroutine.resume(coroutine.create(function() --Effects
	while wait() do
		if EffectSelect_2.Text == "fire" or EffectSelect_2.Text == "Fire" then
			reffect = "fire"
		elseif EffectSelect_2.Text == "Outline" or EffectSelect_2.Text == "outline" then
			reffect = "outline"
		elseif EffectSelect_2.Text == "Image" or EffectSelect_2.Text == "image" then
			reffect = "image"
		elseif EffectSelect_2.Text == "light" or EffectSelect_2.Text == "Light" then
			reffect = "light"
		elseif EffectSelect_2.Text == "particles" or EffectSelect_2.Text == "Particles" then
			reffect = "particles"
		elseif EffectSelect_2.Text == "smoke" or EffectSelect_2.Text == "Smoke" then
			reffect = "smoke"
		elseif EffectSelect_2.Text == "sparkles" or EffectSelect_2.Text == "Sparkles" then
			reffect = "sparkles"
		elseif EffectSelect_2.Text == "Spotlight" or EffectSelect_2.Text == "spotlight" then
			reffect = "spotlight"
		elseif EffectSelect_2.Text == "Surfacelight" or EffectSelect_2.Text == "surfacelight" then
			reffect ="surfacelight"
		elseif EffectSelect_2.Text == "Text" or EffectSelect_2.Text == "text" then
			reffect = "text"
		elseif EffectSelect_2.Text == "Texture" or EffectSelect_2.Text == "texture" then
			reffect = "texture"
		elseif EffectSelect_2.Text == "Video" or EffectSelect_2.Text == "video" then
			reffect = "video"
		end 
	end
end))
coroutine.resume(coroutine.create(function() --debugger
	while wait(10) do
		print("DEBUG-------------------")
		print(done)
		print(estce)
	end
end))

coroutine.resume(coroutine.create(function() --behaviour object handler
	while wait() do
		if PropertyPart.Text == "Speed" or PropertyPart == "speed" then
			rproperty = "S"
		elseif PropertyPart.Text == "Damage" or PropertyPart == "damage" then
			rproperty = "D"
		elseif PropertyPart.Text == "Time untill reappear" or PropertyPart == "Time intil reappear" or PropertyPart == "Time Intill Reappear" or PropertyPart == "Time Untill Reappear" then
			rproperty ="T"
		elseif PropertyPart.Text == "Falling Delay" or PropertyPart.Text == "falling delay" then
			rproperty = "fD"
		elseif PropertyPart.Text == "Falling Time" or PropertyPart.Text == "falling time" then
			rproperty = "fT"
		elseif PropertyPart.Text == "Respawn Time" or PropertyPart.Text == "respawn time" then
			rproperty = "fR"
		elseif PropertyPart.Text == "Falling Speed" or PropertyPart.Text == "falling speed" then
			rproperty = "fs"
		elseif PropertyPart.Text == "Falling Direction" or PropertyPart.Text == "falling direction" then
			rproperty = "fd"
		elseif PropertyPart.Text == "Gear Type" or PropertyPart.Text == "gear type" or PropertyPart.Text == "gear" or PropertyPart.Text == "Gear" then
			rproperty = "Gn"
		elseif PropertyPart.Text == "Heal" or PropertyPart.Text == "heal" then
			rproperty = "H"
		elseif PropertyPart.Text == "Jump" or PropertyPart.Text == "jump power" then
			rproperty = "J"
		elseif PropertyPart.Text == "Walkspeed" or PropertyPart.Text == "walkspeed" then
			rproperty = "Z"
		elseif PropertyPart.Text == "Click Radius" or PropertyPart.Text == "click radius" then
			rproperty = "Cd"
		elseif PropertyPart.Text == "Visible Time" or PropertyPart.Text == "visible time" then
			rproperty = "tN"
		elseif PropertyPart.Text == "Hidden Time" or PropertyPart.Text == "hidden time" then
			rproperty = "tT"
		elseif PropertyPart.Text == "Time Offset" or PropertyPart.Text == "time offset" then
			rproperty = "tO"
		elseif PropertyPart.Text == "Arrows Transparency" or PropertyPart.Text == "arrows transparency" then
			rproperty = "cT"
		elseif PropertyPart.Text == "Time" or PropertyPart.Text == "time" then
			rproperty = "bt"
		elseif PropertyPart.Text == "Button Activation Type" or PropertyPart.Text == "button activation type" then
			rproperty = "BaT"
		elseif PropertyPart.Text == "Debounce" or PropertyPart.Text == "debounce" then
			rproperty = "Pd"
		elseif PropertyPart.Text == "Spin Time" or PropertyPart.Text == "spin time" then
			rproperty = "sT"
		elseif PropertyPart.Text == "Spin Offset" or PropertyPart.Text == "spin offset" then
			rproperty = "sO"
		elseif PropertyPart.Text == "Spin Axis" or PropertyPart.Text == "spin axis" then
			rproperty = "A"
		elseif PropertyPart.Text == "Easing Style" or PropertyPart.Text == "easing style" then
			rproperty = "E"
		elseif PropertyPart.Text == "Spin Distance" or PropertyPart.Text == "spin distance" then
			rproperty = "sD"
		elseif PropertyPart.Text == "Moving Activation Type" or PropertyPart.Text == "moving acitvation type" then
			rproperty = "MaT"
		elseif PropertyPart.Text == "Music Speed" or PropertyPart.Text == "music speed" then
			rproperty = "MS"
		elseif PropertyPart.Text == "Music Start Time" or PropertyPart.Text == "music start time" then
			rproperty = "MSt"
		elseif PropertyPart.Text == "Music Volume" or PropertyPart.Text == "music volume" then
			rproperty = "MV"
		elseif PropertyPart.Text == "Priority" or PropertyPart.Text == "priority" then
			rproperty = "Pr"
		elseif PropertyPart.Text == "Cart Speed" or PropertyPart.Text == 'cart speed' then
			rproperty = "cS"
		elseif PropertyPart.Text == "Auto Delete Time" or PropertyPart.Text == "auto delete time" then
			rproperty = "cR"
		elseif PropertyPart.Text == "Cart Type" or PropertyPart.Text == "cart type" then
			rproperty = "ct"
		else
			rproperty = "None"
		end
	end
end))

ObbyBox.Changed:Connect(function()
	if ObbyBox.Text == "" then
		return
	else
		local grid = workspace.Obbies:WaitForChild(ObbyBox.Text):WaitForChild("Grid")
		if grid.Transparency == 1 and grid.CanCollide == false then
			grid.Transparency = 0.5
			grid.CanCollide = true
		end
	end
end)
coroutine.resume(coroutine.create(function() --Adv, gear and Global handler
	while wait() do
		if partste[2] == "Advanced Tools Part" then
			if PropertyPart.Text == "Reflectance" or PropertyPart.Text == "Transparency" or PropertyPart.Text == "Slipperiness" or PropertyPart.Text == "Surface" then
				handler = "None"
			else
				handler = "ATT"
			end
		elseif partste[2] == "Gear Part" then
			if PropertyPart.Text == "Reflectance" or PropertyPart.Text == "Transparency" or PropertyPart.Text == "Slipperiness" or PropertyPart.Text == "Surface" then
				handler = "None"
			else
				handler = "Gear"
			end
			
		elseif partste[2] == "Global Properties Part" then
			if PropertyPart.Text == "Reflectance" or PropertyPart.Text == "Transparency" or PropertyPart.Text == "Slipperiness" or PropertyPart.Text == "Surface" then
				handler = "None"
			else
				handler = "GPT"
			end
		else
			handler = "None"
		end
	end
end))
Exit.MouseButton1Click:Connect(function()
	done = false
	estce = false
	closed = true
	clientsp = 2
	clientse = 2
	task.wait(0.01)
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Panel Closed", Color3.new(0.54902, 0.803922, 1))
	StaffPannel:Destroy()
	task.wait(1)
	script:Destroy()
end)
coroutine.resume(coroutine.create(function() --spinning part thin
	local TweenService = game:GetService("TweenService")
	local startingPosition = Viewer.Position
	local startingCFrame = CFrame.new(startingPosition)
	local angle = 45
	local tweenInfo = TweenInfo.new(
		12, -- Time
		Enum.EasingStyle.Linear, -- EasingStyle
		Enum.EasingDirection.Out, -- EasingDirection
		-1, -- RepeatCount (when less than zero the tween will loop indefinitely)
		false, -- Reverses (tween will reverse once reaching it's goal)
		0 -- DelayTime
	)
	local newangle = Instance.new("NumberValue",script)
	newangle.Name = "AngleOfPart"
	local tween = TweenService:Create(newangle, tweenInfo, { Value = 360 } )
	tween:Play() 

	while wait() do
		local HighestSizeOfPart = math.max(Viewer.Size.X,Viewer.Size.Y,Viewer.Size.Z)
		Camera.CFrame = startingCFrame * CFrame.Angles(math.rad(0), math.rad(newangle.Value), 0) * CFrame.new(0, HighestSizeOfPart*0.25, HighestSizeOfPart*1.5)
	end
end))
ExecuteEffect.MouseButton1Click:Connect(function()
	effect()
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Executed!", Color3.new(0, 1, 0))
end)
ExecutePart.MouseButton1Click:Connect(function()
	part()
	game:GetService("Players").LocalPlayer.PlayerGui.LocalOutput:Fire("Executed!", Color3.new(0, 1, 0))
end)


coroutine.resume(coroutine.create(function() -- AddingRemovingHandler
	while task.wait(0.5) do

		--Parts
		if addingP == true then

			addingP = false

		elseif removingP == true then

			removingP = false

		end

		--Effects

		if addingE == true then

			addingE = false

		elseif removingE == true then

			removingE = false

		end

	end
end))
value = true
