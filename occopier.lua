local plrs=game:FindFirstChildOfClass("Players")
local lp=plrs.LocalPlayer
local ws=game:FindFirstChildOfClass("Workspace")
local uis=game:FindFirstChildOfClass("UserInputService")
local rs=game:FindFirstChildOfClass("RunService")
local heartbeat=rs.Heartbeat
local renderstepped=rs.RenderStepped
local angles=CFrame.Angles
local cf=CFrame.new
local v3=Vector3.new
local v3_010=v3(0,1,0)
local v3_0=v3(0,0,0)
local osclock=os.clock
local twait=task.wait
local slower=string.lower
local ssub=string.sub

local speeding=32
local maxspeed=75
local off=angles(-1.5707963267948966,0,0)

local function gp(p,n,cl)
	if typeof(p)=="Instance" then
		local c=p:GetChildren()
		for i=1,#c do
			local v=c[i]
			if (v.Name==n) and v:IsA(cl) then
				return v
			end
		end
	end
	return nil
end

local i=Instance.new 
local v2=Vector2.new 
local bc=BrickColor.new 
local c3=Color3.new 
local u2=UDim2.new 
local sc,mr=string.char,math.random 
local function rs(l) 
	l=l or mr(8,15) 
	local s="" 
	for i=1,l do 
		if mr(1,2)==1 then 
			s=s..sc(mr(65,90)) 
		else 
			s=s..sc(mr(97,122)) 
		end 
	end 
	return s 
end 
local e=Enum 
local i1=i("Frame") 
local i2=i("TextLabel") 
local i3=i("Frame") 
local i4=i("TextBox") 
local i5=i("TextButton") 
local i6=i("TextLabel") 
local i7=i("TextLabel") 
local i8=i("ScreenGui") 
i1.AnchorPoint=v2(0.5,0.5) 
i1.BackgroundColor=bc(149) 
i1.BackgroundColor3=c3(0.129412,0.129412,0.129412) 
i1.BorderColor=bc(1003) 
i1.BorderColor3=c3(0,0,0) 
i1.BorderSizePixel=0 
i1.Position=u2(0.5,0,0.5,0) 
i1.Size=u2(0,250,0,140) 
i1.Name=rs() 
i1.Parent=i8 
i2.Font=e.Font.SourceSans 
i2.FontSize=e.FontSize.Size24 
i2.Text="Epic gui" 
i2.TextColor=bc(1002) 
i2.TextColor3=c3(0.815686,0.815686,0.815686) 
i2.TextSize=20 
i2.BackgroundColor=bc(1001) 
i2.BackgroundColor3=c3(1,1,1) 
i2.BackgroundTransparency=1 
i2.BorderColor=bc(1003) 
i2.BorderColor3=c3(0,0,0) 
i2.BorderSizePixel=0 
i2.Size=u2(1,0,0,25) 
i2.Name=rs() 
i2.Parent=i1 
i3.BackgroundColor=bc(26) 
i3.BackgroundColor3=c3(0.192157,0.192157,0.192157) 
i3.BorderColor=bc(1003) 
i3.BorderColor3=c3(0,0,0) 
i3.BorderSizePixel=0 
i3.ClipsDescendants=true 
i3.Position=u2(0,5,0,25) 
i3.Size=u2(1,-10,1,-30) 
i3.Name=rs() 
i3.Parent=i1 
i4.CursorPosition=-1 
i4.Font=e.Font.SourceSans 
i4.FontSize=e.FontSize.Size24 
i4.PlaceholderColor3=c3(0.509804,0.509804,0.509804) 
i4.PlaceholderText="DisplayName/Name" 
i4.Text="" 
i4.TextColor=bc(1) 
i4.TextColor3=c3(0.952941,0.952941,0.952941) 
i4.TextSize=20 
i4.TextWrap=true 
i4.AnchorPoint=v2(0.5,0) 
i4.BackgroundColor=bc(364) 
i4.BackgroundColor3=c3(0.266667,0.266667,0.266667) 
i4.BorderColor=bc(1003) 
i4.BorderColor3=c3(0,0,0) 
i4.BorderSizePixel=0 
i4.ClipsDescendants=true 
i4.Position=u2(0.5,0,0,13) 
i4.Size=u2(1,-30,0,32) 
i4.Name=rs() 
i4.Parent=i3 
i5.AnchorPoint=v2(0.5,0) 
i5.BackgroundColor=bc(364) 
i5.BackgroundColor3=c3(0.266667,0.266667,0.266667) 
i5.BorderColor=bc(1003) 
i5.BorderColor3=c3(0,0,0) 
i5.BorderSizePixel=0 
i5.Position=u2(0.5,0,0,64) 
i5.Size=u2(1,-30,0,32) 
i5.Name=rs() 
i5.Parent=i3 
i5.Font=e.Font.FredokaOne 
i5.FontSize=e.FontSize.Size24 
i5.Text="Copy" 
i5.TextColor3=c3(0.55,0.55,0.55) 
i5.TextSize=23 
i6.Font=e.Font.SourceSans 
i6.FontSize=e.FontSize.Size14 
i6.Text="by BLOCKCE" 
i6.TextColor=bc(2) 
i6.TextColor3=c3(0.635294,0.635294,0.635294) 
i6.AnchorPoint=v2(1,1) 
i6.AutomaticSize=e.AutomaticSize.XY 
i6.BackgroundColor=bc(1001) 
i6.BackgroundColor3=c3(1,1,1) 
i6.BackgroundTransparency=1 
i6.BorderColor=bc(1003) 
i6.BorderColor3=c3(0,0,0) 
i6.BorderSizePixel=0 
i6.Position=u2(1,0,1,0) 
i6.Name=rs() 
i6.Parent=i3 
i7.Font=e.Font.SourceSans 
i7.FontSize=e.FontSize.Size14 
i7.Text="" 
i7.TextColor=bc(2) 
i7.TextColor3=c3(0.635294,0.635294,0.635294) 
i7.AnchorPoint=v2(0.5,0) 
i7.AutomaticSize=e.AutomaticSize.XY 
i7.BackgroundColor=bc(1001) 
i7.BackgroundColor3=c3(1,1,1) 
i7.BackgroundTransparency=1 
i7.BorderColor=bc(1003) 
i7.BorderColor3=c3(0,0,0) 
i7.BorderSizePixel=0 
i7.Position=u2(0.5,0,0,47) 
i7.Name=rs() 
i7.Parent=i3 
i8.ZIndexBehavior=e.ZIndexBehavior.Sibling 
i8.Name=rs() 

local function Draggable(window,obj)
	local MB1enum = e.UserInputType.MouseButton1
	local TOUCHenum = e.UserInputType.Touch
	obj = obj or window
	local activeEntered = 0
	local mouseStart = nil
	local dragStart = nil
	local inputbegancon = nil
	local rendersteppedcon = nil
	local inputendedcon = nil
	local function inputendedf(a)
		a=a.UserInputType
		if (a==MB1enum) or (a==TOUCHenum) then
			rendersteppedcon:Disconnect()
			inputendedcon:Disconnect()
		end
	end
	local function rendersteppedf()
		local off = uis:GetMouseLocation()-mouseStart
		window.Position=dragStart+u2(0,off.X,0,off.Y)
	end
	local function inputbeganf(a)
		a=a.UserInputType
		if ((a==MB1enum) or (a==TOUCHenum)) and (activeEntered==0) and not uis:GetFocusedTextBox() then
			mouseStart=uis:GetMouseLocation()
			dragStart=window.Position
			if rendersteppedcon then rendersteppedcon:Disconnect() end
			rendersteppedcon = renderstepped:Connect(rendersteppedf)
			if inputendedcon then inputendedcon:Disconnect() end
			inputendedcon = uis.InputEnded:Connect(inputendedf)
		end
	end
	obj.MouseEnter:Connect(function()
		if inputbegancon then inputbegancon:Disconnect() end
		inputbegancon = uis.InputBegan:Connect(inputbeganf)
	end)
	obj.MouseLeave:Connect(function()
		inputbegancon:Disconnect()
	end)
	local function ondes(d)
		if d:IsA("GuiObject") then
			local thisEntered = false
			local thisAdded = false
			local con0 = d.MouseEnter:Connect(function()
				thisEntered = true
				if (not thisAdded) and d.Active then
					activeEntered = activeEntered + 1
					thisAdded = true
				end
			end)
			local con1 = d.MouseLeave:Connect(function()
				thisEntered = false
				if thisAdded then
					activeEntered = activeEntered - 1
					thisAdded = false
				end
			end)
			local con2 = d:GetPropertyChangedSignal("Active"):Connect(function()
				if thisEntered then
					if thisAdded and not d.Active then
						activeEntered = activeEntered - 1
						thisAdded = false
					elseif d.Active and not thisAdded then
						activeEntered = activeEntered + 1
						thisAdded = true
					end
				end
			end)
			local con3 = nil
			con3 = d.AncestryChanged:Connect(function()
				if not d:IsDescendantOf(window) then
					if thisEntered then
						activeEntered = activeEntered - 1
					end
					con0:Disconnect()
					con1:Disconnect()
					con2:Disconnect()
					con3:Disconnect()
				end
			end)
		end
	end
	window.DescendantAdded:Connect(ondes)
	local des=window:GetDescendants()
	for i=1,#des do 
		ondes(des[i])
	end
end
Draggable(i1)

local others={}
for i,v in pairs(plrs:GetPlayers()) do
	if v~=lp then
		others[v]=true
	end
end
plrs.PlayerAdded:Connect(function(plr)
	others[plr]=true
end)
local function findplr(txt)
	if txt=="" then
		return nil
	end
	for v,_ in pairs(others) do
		if v.DisplayName==txt then
			return v
		end
	end
	for v,_ in pairs(others) do
		if v.Name==txt then
			return v
		end
	end
	local lower=slower(txt)
	for v,_ in pairs(others) do
		if slower(v.DisplayName)==lower then
			return v
		end
	end
	for v,_ in pairs(others) do
		if slower(v.Name)==lower then
			return v
		end
	end
	local l=#txt
	for v,_ in pairs(others) do
		if ssub(v.DisplayName,1,l)==txt then
			return v
		end
	end
	for v,_ in pairs(others) do
		if ssub(v.Name,1,l)==txt then
			return v
		end
	end
	for v,_ in pairs(others) do
		if slower(ssub(v.DisplayName,1,l))==lower then
			return v
		end
	end
	for v,_ in pairs(others) do
		if slower(ssub(v.Name,1,l))==lower then
			return v
		end
	end
	return nil
end
local target=nil
i4:GetPropertyChangedSignal("Text"):Connect(function()
	local txt=i4.Text
	target=findplr(txt)
	if target then
		if (target.DisplayName) and (target.DisplayName~="") and (target.DisplayName~=target.Name) then
			i7.Text=target.DisplayName.." @"..target.Name
		else
			i7.Text="@"..target.Name
		end
		i5.TextColor3=c3(0.301961,1,0) 
	else
		i7.Text=""
		i5.TextColor3=c3(0.55,0.55,0.55) 
	end
end)
plrs.PlayerRemoving:Connect(function(plr)
	others[plr]=nil
	if plr==target then
		target=nil
		i7.Text=""
		i5.TextColor3=c3(0.55,0.55,0.55) 
	end
end)
local notifyid=0
local function notify(txt)
	notifyid=notifyid+1
	local thisid=notifyid
	i6.Text=txt
	twait(2)
	if notifyid==thisid then
		i6.Text="by BLOCKCE"
	end
end
local bringing=false
i5.MouseButton1Click:Connect(function()
	i5.Text="copying" 
	local obby = game.Workspace.Obbies:WaitForChild(target.name)
	local myobby = game.Workspace.Obbies:WaitForChild(game.Players.LocalPlayer.name)
	print(obby)
	if obby.StartingSpawn.StartingPart.Rotation == myobby.StartingSpawn.StartingPart.Rotation then
		for i, v in pairs(obby.Items.Parts:GetChildren()) do
			if v.Name == "Part" then


				local args = {
					[1] = "Part",
					[2] = myobby.Area.CFrame				
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AddObject"):InvokeServer(unpack(args))
				local count = 0
				repeat 
					wait()
					count = count + 1
					if count >= 100 then
						local args = {
							[1] = "Part",
							[2] = myobby.Area.CFrame				
						}
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AddObject"):InvokeServer(unpack(args))
						count = 0
					end
				until myobby.Items.Parts:FindFirstChild("Part")
				print("e")
				wait(0.5)
				myobby.Items.Parts.Part.Name = "Part"..tostring(i)
				args = {
					[1] = {
						[1] = {
							[1] = myobby.Items.Parts:WaitForChild("Part"..tostring(i)),
							[2] = CFrame.new(myobby.StartingSpawn.StartingPart.Position.X + (v.Position.X - obby.StartingSpawn.StartingPart.Position.X), myobby.StartingSpawn.StartingPart.Position.Y + (v.Position.Y - obby.StartingSpawn.StartingPart.Position.Y) , myobby.StartingSpawn.StartingPart.Position.Z + (v.Position.Z - obby.StartingSpawn.StartingPart.Position.Z)) * CFrame.Angles(math.rad(v.Rotation.X), math.rad(v.Rotation.Y), math.rad(v.Rotation.Z)),
							[3] = v.Size
						}
					}
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MoveObject"):InvokeServer(unpack(args))
				args = {
					[1] = {
						[1] = myobby.Items.Parts:WaitForChild("Part"..tostring(i))
					},
					[2] = "Color",
					[3] = v.Color
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PaintObject"):InvokeServer(unpack(args))
				args = {
					[1] = {
						[1] = myobby.Items.Parts:WaitForChild("Part"..tostring(i))
					},
					[2] = "CanCollide",
					[3] = v.CanCollide
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PaintObject"):InvokeServer(unpack(args))
				local function FindCharacterInString(String, CharacterToFind, Start, End)
					if not String or not CharacterToFind or not Start then return end
					if not End then End = string.len(String) end
					local CharacterPos
					for i = Start, End do
						if string.sub(String, i, i) == CharacterToFind then
							CharacterPos = i
							break
						end
					end
					return CharacterPos
				end
				local function GetMaterialOfPartAsString(Part)
					if not Part then return end
					local EnumAsString = tostring(Part.Material)
					local FirstDotPos = FindCharacterInString(EnumAsString, ".", 1)
					if FirstDotPos then
						local SecondDotPos = FindCharacterInString(EnumAsString, ".", FirstDotPos + 1)
						if SecondDotPos then
							local MaterialOfPart = string.sub(EnumAsString, SecondDotPos + 1)
							return MaterialOfPart
						end
					end
				end
				args = {
					[1] = {
						[1] = myobby.Items.Parts:WaitForChild("Part"..tostring(i))
					},
					[2] = "Material",
					[3] = GetMaterialOfPartAsString(v)
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PaintObject"):InvokeServer(unpack(args))
				args = {
					[1] = {
						[1] = myobby.Items.Parts:WaitForChild("Part"..tostring(i))
					},
					[2] = "Reflectance",
					[3] = v.Reflectance
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PaintObject"):InvokeServer(unpack(args))
				args = {
					[1] = {
						[1] = myobby.Items.Parts:WaitForChild("Part"..tostring(i))
					},
					[2] = "Surface",
					[3] = v.TopSurface
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PaintObject"):InvokeServer(unpack(args))
				args = {
					[1] = {
						[1] = myobby.Items.Parts:WaitForChild("Part"..tostring(i))
					},
					[2] = "Transparency",
					[3] = v.Transparency
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PaintObject"):InvokeServer(unpack(args))
				args = {
					[1] = {
						[1] = myobby.Items.Parts:WaitForChild("Part"..tostring(i))
					},
					[2] = "Shape",
					[3] = v.Shape
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PaintObject"):InvokeServer(unpack(args))


			end


			
		end
	else

	end

end)
local iscg,_=pcall(function()
	i8.Parent=game:FindFirstChildOfClass("CoreGui")
end)
if not iscg then
	i8.Parent=lp:FindFirstChildOfClass("PlayerGui")
end

