local TextChatService = game:GetService("TextChatService")
local LocalPLR = game.Players.LocalPlayer

-- CONFIGURATION --

getgenv().Prefix = "^" -- With what symbol the cmds should start with. (e.g. if its . then .cmds if its ; then ;cmds)
getgenv().Username = "celloRoblox07" -- The username of the person you want to have full control over the bots.

local bots = {"CitoRep"} -- The display names of the bots you gonna run the script on.

local whitelist = {} -- Usernames of whitelisted people. You can leave empty and just use the whitelist command. (whitelisted people cant use certain commands like chat, shutdown, rejoin etc)

-- CONFIGURATION --

local index
for i, bot in ipairs(bots) do
    if LocalPLR.DisplayName == bot then
        index = i
        break
    end
end

function chat(msg)

    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
    else
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    end

end

chat("ControlBotZ Running!")
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Thank You",
    Text = "Thank you for using ControlBotZ!",
    Time = 6
})

function showDefaultGui(enabled, text)

    if enabled == true then
        screenGui = Instance.new("ScreenGui")
        screenGui.IgnoreGuiInset = true
        screenGui.Parent = LocalPLR:WaitForChild("PlayerGui")

        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundColor3 = Color3.fromRGB(0, 205, 216)
        frame.Parent = screenGui

        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.Text = text
        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        textLabel.BackgroundTransparency = 1
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextSize = 40
        textLabel.TextScaled = true
        textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        textLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        textLabel.Parent = frame
    elseif enabled == false then
        if screenGui then
            screenGui:Destroy()
        end
    end

end

function specifyBots(sub, callback)

    local botArgs = getArgs(sub)

    if next(botArgs) ~= nil then
        for _, arg in ipairs(botArgs) do
            if index == tonumber(arg) then
                callback()
            end
        end
    else
        callback()
    end

end

function specifyBots2(argTable, tableStartIndex, callback)

    local botArgs = {}

    for i = tableStartIndex, #argTable do
        table.insert(botArgs, argTable[i])
    end

    if #botArgs == 0 then
        callback()
    else
        for _, botArg in ipairs(botArgs) do
            if index == tonumber(botArg) then
                callback()
            end
        end
    end

end

function getArgs(command)

    local args = {}

    for arg in command:match("^%s*(.-)%s*$"):gmatch("%S+") do
        table.insert(args, arg)
    end

    return args

end

function isR15(returnValTrue, returnValFalse)

    if LocalPLR.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        if returnValTrue then
            return returnValTrue
        else
            return true
        end
    elseif LocalPLR.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        if returnValFalse then
            return returnValFalse
        else
            return false
        end
    end

end

function isWhitelisted(name)

    if name == getgenv().Username then
        return true
    end

    for _, whitelistedUser in pairs(whitelist) do
        if name == whitelistedUser then
            return true
        end
    end

    return false
end

-- RANDOM VARS:
local normalGravity = 196.2

function commands(player, message)
    local msg = message:lower()

    if not isWhitelisted(player.Name) then
        return
    end

    function getFullPlayerName(typedName)

        if typedName == "me" then
            return player.Name
        end

        for _, plr in pairs(game.Players:GetPlayers()) do
            if string.find(plr.Name, typedName) then
                return plr.Name
            end
        end

    end

    -- WHITELIST:
    if msg:sub(1, 11) == getgenv().Prefix .. "whitelist+" then

        if player.Name ~= getgenv().Username then
            return
        end

        local targetPLR = message:sub(13)

        if game.Players[targetPLR] then
            table.insert(whitelist, targetPLR)

            if index == 1 then
                chat("Added Player To Whitelist!")
            end
        elseif index == 1 then
            chat("Player Could Not Be Found!")
        end
    end

    if msg:sub(1, 11) == getgenv().Prefix .. "whitelist-" then

        if player.Name ~= getgenv().Username then
            return
        end

        local targetPLR = message:sub(13)

        for i, whitelistedUser in pairs(whitelist) do
            if whitelistedUser == targetPLR then
                table.remove(whitelist, i)

                if index == 1 then
                    chat("Removed Player From Whitelist!")
                end

            end
        end
    end

    -- REJOIN:
    if msg:sub(1, 7) == getgenv().Prefix .. 'rejoin' then

        if player.Name ~= getgenv().Username then
            return
        end

        function runCode()
            LocalPLR:Kick("REJOINING...")
            wait()
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPLR)
        end

        specifyBots(msg:sub(9), runCode)

    end

    -- RESET:
    if msg:sub(1, 6) == getgenv().Prefix .. "reset" then

        function runCode()
            LocalPLR.Character.Humanoid.Health = 0
        end

        specifyBots(msg:sub(8), runCode)

    end

    -- JUMP:
    if msg:sub(1, 5) == getgenv().Prefix .. "jump" then

        function runCode()
            LocalPLR.Character.Humanoid.Jump = true
        end

        specifyBots(msg:sub(7), runCode)

    end

    -- BRING:
    if msg:sub(1, 6) == getgenv().Prefix .. "bring" then

        function runCode()
            LocalPLR.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Players[player.Name].Character:FindFirstChild("HumanoidRootPart").CFrame
        end

        specifyBots(msg:sub(8), runCode)

    end

    -- CHAT:
    if msg:sub(1, 5) == getgenv().Prefix .. "chat" then

        if player.Name ~= getgenv().Username then
            return
        end

        chat(message:sub(7))

    end

    -- SIT:
    if msg:sub(1, 4) == getgenv().Prefix .. "sit" then

        function runCode()
            LocalPLR.Character.Humanoid.Sit = true
        end

        specifyBots(msg:sub(6), runCode)

    end

    -- SPEED:
    if msg:sub(1, 6) == getgenv().Prefix .. "speed" then
        local args = getArgs(msg:sub(8))

        function runCode()
            LocalPLR.Character.Humanoid.WalkSpeed = args[1]
        end

        specifyBots2(args, 2, runCode)

    end

    -- LINEUP:
    if msg:sub(1, 7) == getgenv().Prefix .. "lineup" then

        local direction = msg:sub(9)
        local spacing = 3

        local targetHumanoidRootPart = game.Players[player.Name].Character.HumanoidRootPart

        local directionVector
        if direction == "front" then
            spacing = 3
            directionVector = targetHumanoidRootPart.CFrame.LookVector
        elseif direction == "back" then
            spacing = 3
            directionVector = -targetHumanoidRootPart.CFrame.LookVector
        elseif direction == "left" then
            spacing = 5
            directionVector = -targetHumanoidRootPart.CFrame.RightVector
        elseif direction == "right" then
            spacing = 5
            directionVector = targetHumanoidRootPart.CFrame.RightVector
        end

        local offset = directionVector * (spacing * index)
        LocalPLR.Character.HumanoidRootPart.CFrame = targetHumanoidRootPart.CFrame + offset

    end

    -- SHUTDOWN:
    if msg:sub(1, 9) == getgenv().Prefix .. "shutdown" then

        if player.Name ~= getgenv().Username then
            return
        end

        function runCode()
            game:Shutdown()
        end

        specifyBots(msg:sub(11), runCode)

    end

    -- SURROUND:
    if msg:sub(1, 9) == getgenv().Prefix .. "surround" then -- LITERALY COPY PASTE OF ORBIT COMMAND(too lazy srry)

        local args = getArgs(message:sub(11))
        local targetPLR = getFullPlayerName(args[1])

        local player = game.Players[targetPLR].Character.HumanoidRootPart
        local lpr = LocalPLR.Character.HumanoidRootPart

        local speed = 8
        local radius = 8
        local spacing = tonumber(args[2]) or 1
        local eclipse = 1

        local sin, cos = math.sin, math.cos
        local rotspeed = math.pi*2/speed
        eclipse = eclipse * radius

        local rot = 0

        rot = rot + rotspeed

        local offsetAngle = rot - (index * spacing)
        local offset = Vector3.new(sin(offsetAngle) * eclipse, 0, cos(offsetAngle) * radius)
        local newPosition = player.Position + offset

        lpr.CFrame = CFrame.new(newPosition, player.Position)

    end

    -- ORBIT:
    if msg:sub(1, 6) == getgenv().Prefix .. "orbit" then

        local args = getArgs(message:sub(8))
        local targetPLR = getFullPlayerName(args[1])

        local player = game.Players[targetPLR].Character.HumanoidRootPart
        local lpr = LocalPLR.Character.HumanoidRootPart

        local speed = tonumber(args[2]) or 8
        local radius = 8
        local spacing = 1
        local eclipse = 1
        local rotation = CFrame.Angles(0,0,0)

        local sin, cos = math.sin, math.cos
        local rotspeed = math.pi*2/speed
        eclipse = eclipse * radius

        local rot = 0

        function runCode()
            workspace.Gravity = 0

            orbit1 = game:GetService('RunService').Stepped:connect(function(t, dt)
                rot = rot + dt * rotspeed

                local offsetAngle = rot - (index * spacing)  -- Delay based on index
                local offset = Vector3.new(sin(offsetAngle) * eclipse, 0, cos(offsetAngle) * radius)
                lpr.CFrame = rotation * CFrame.new(offset) + player.Position
            end)
        end

        specifyBots2(args, 3, runCode)
    end

    if msg:sub(1, 8) == getgenv().Prefix .. "unorbit" then

        function runCode()
            orbit1:Disconnect()
            workspace.Gravity = normalGravity
        end

        specifyBots(msg:sub(10), runCode)

    end

    -- ROCKET:
    if msg:sub(1, 7) == getgenv().Prefix .. "rocket" then
        local args = getArgs(msg:sub(9))
        local studs = 500

        if args[1] then
            studs = tonumber(args[1])
        end

        if index == 1 then
            chat("Target Height: " .. studs .. " studs")
            wait()

            chat("Launching In: 3")
            wait(1)

            chat("Launching In: 2")
            wait(1)

            chat("Launching In: 1")
            wait(1)

            chat("Lifting Up!")
            wait(0.5)
        else
            wait()
            wait(3.5)
        end

        local Spin = Instance.new("BodyAngularVelocity")
        Spin.Name = "SpinningRocket"
        Spin.Parent = LocalPLR.Character.HumanoidRootPart
        Spin.MaxTorque = Vector3.new(0, math.huge, 0)
        Spin.AngularVelocity = Vector3.new(0, 15 ,0)

        while LocalPLR.Character.HumanoidRootPart.Position.Y <= studs do
            wait()

            LocalPLR.Character.HumanoidRootPart.Position += Vector3.new(0, 1.5, 0)
        end

        LocalPLR.Character.Humanoid.Health = 0

    end

    -- WALKTO:
    if msg:sub(1, 7) == getgenv().Prefix .. "walkto" then
        local args = getArgs(message:sub(9))

        local targetPLR = getFullPlayerName(args[1])

        function runCode()
            if game.Players[targetPLR] then
                LocalPLR.Character:FindFirstChild("Humanoid"):MoveTo(game.Players[targetPLR].Character:FindFirstChild("HumanoidRootPart").Position)
            end
        end

        specifyBots2(args, 2, runCode)

    end

    -- GOTO:
    if msg:sub(1, 5) == getgenv().Prefix .. "goto" then
        local args = getArgs(message:sub(7))

        local targetPLR = getFullPlayerName(args[1])

        function runCode()
            if game.Players[targetPLR] then
                LocalPLR.Character.HumanoidRootPart.CFrame = game.Players[targetPLR].Character.HumanoidRootPart.CFrame
            end
        end

        specifyBots2(args, 2, runCode)

    end

    -- FOLLOW:
    if msg:sub(1, 7) == getgenv().Prefix .. "follow" then
        local args = getArgs(message:sub(9))

        local targetPLR = getFullPlayerName(args[1])

        function runCode()
            followF = game:GetService("RunService").Heartbeat:Connect(function()
                LocalPLR.Character:FindFirstChild("Humanoid"):MoveTo(game.Players[targetPLR].Character:FindFirstChild("HumanoidRootPart").Position)
            end)
        end

        specifyBots2(args, 2, runCode)

    end

    if msg:sub(1, 9) == getgenv().Prefix .. "unfollow" then

        function runCode()
            followF:Disconnect()
        end

        specifyBots(msg:sub(11), runCode)

    end

    -- LINEFOLLOW:
    if msg:sub(1, 11) == getgenv().Prefix .. "linefollow" then
        local args = getArgs(message:sub(13))

        local spacing = 3
        local targetPLR = getFullPlayerName(args[1])

        function runCode()
            linefollowF = game:GetService("RunService").Heartbeat:Connect(function()
                LocalPLR.Character:FindFirstChild("Humanoid"):MoveTo(game.Players[targetPLR].Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, spacing * index).Position)

                LocalPLR.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPLR.Character.HumanoidRootPart.Position, game.Players[targetPLR].Character.HumanoidRootPart.Position)
            end)
        end

        specifyBots2(args, 2, runCode)

    end

    if msg:sub(1, 13) == getgenv().Prefix .. "unlinefollow" then

        function runCode()
            linefollowF:Disconnect()
        end

        specifyBots(msg:sub(15), runCode)

    end

    -- ANTI-BANG:
    if msg:sub(1, 9) == getgenv().Prefix .. "antibang" then

            function runCode()

                local root = LocalPLR.Character:WaitForChild("HumanoidRootPart")

                workspace.FallenPartsDestroyHeight = -1000
                local originalPosition = root.CFrame
                root.CFrame = CFrame.new(Vector3.new(0, -500, 0))

                wait(1)

                root.CFrame = originalPosition
                workspace.FallenPartsDestroyHeight = -500

            end

            specifyBots(msg:sub(11), runCode)

    end

    -- SPIN:
    if msg:sub(1, 5) == getgenv().Prefix .. "spin" then
        local args = getArgs(msg:sub(7))

        local spinSpeed = args[1]

        function runCode()
            local Spin = Instance.new("BodyAngularVelocity")
            Spin.Name = "Spinning"
            Spin.Parent = LocalPLR.Character.HumanoidRootPart
            Spin.MaxTorque = Vector3.new(0, math.huge, 0)
            Spin.AngularVelocity = Vector3.new(0, spinSpeed, 0)
        end

        specifyBots2(args, 2, runCode)

    end

    if msg:sub(1, 7) == getgenv().Prefix .. "unspin" then

        function runCode()
            for _, v in pairs(LocalPLR.Character.HumanoidRootPart:GetChildren()) do
                if v.Name == "Spinning" then
                    v:Destroy()
                end
            end
        end

        specifyBots(msg:sub(9), runCode)

    end

    -- STACK:
    if msg:sub(1, 6) == getgenv().Prefix .. "stack" then
        local args = getArgs(message:sub(8))

        local targetPLR = getFullPlayerName(args[1])

        function runCode()
            if game.Players[targetPLR].Character:FindFirstChild("HumanoidRootPart") then
                workspace.Gravity = 0

                local stackHeight = 3
                local offset = (index - 1) * stackHeight

                stackF = game:GetService("RunService").Heartbeat:Connect(function()

                    if LocalPLR.Character.Humanoid.Sit == false then
                        LocalPLR.Character.Humanoid.Sit = true
                    end

                    LocalPLR.Character.HumanoidRootPart.CFrame = game.Players[targetPLR].Character.Head.CFrame * CFrame.new(0, offset, 0)

                end)
            end
        end

        specifyBots2(args, 2, runCode)

    end

    if msg:sub(1, 8) == getgenv().Prefix .. "unstack" then

        function runCode()
            stackF:Disconnect();
            LocalPLR.Character.Humanoid.Sit = false

            workspace.Gravity = normalGravity
        end

        specifyBots(msg:sub(10), runCode)

    end

    -- LOOKAT:
    if msg:sub(1, 7) == getgenv().Prefix .. "lookat" then
        local args = getArgs(message:sub(9))

        local targetPLR = getFullPlayerName(args[1])

        function runCode()
            LocalPLR.CameraMode = Enum.CameraMode.LockFirstPerson
            lookatF = game:GetService("RunService").Heartbeat:Connect(function()
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, game.Players[targetPLR].Character.Head.Position)
                wait(0.1)
            end)
        end

        specifyBots2(args, 2, runCode)

    end

    if msg:sub(1, 9) == getgenv().Prefix .. "unlookat" then

        function runCode()
            lookatF:Disconnect()
            lookatF = nil

            LocalPLR.CameraMode = Enum.CameraMode.Classic
            LocalPLR.CameraMaxZoomDistance = 25
            LocalPLR.CameraMinZoomDistance = 25

            LocalPLR.CameraMaxZoomDistance = 128
            LocalPLR.CameraMinZoomDistance = 0.5
        end

        specifyBots(msg:sub(11), runCode)

    end

    -- FLING:
    if msg:sub(1, 6) == getgenv().Prefix .. "fling" then
        local args = getArgs(message:sub(8))

        lastCFRAME = LocalPLR.Character.HumanoidRootPart.CFrame

        local targetPLR = getFullPlayerName(args[1])
        local flingSpeed = 1000

        function runCode()
            Spin = Instance.new("BodyAngularVelocity")
            Spin.Name = "Flinging"
            Spin.Parent = LocalPLR.Character.HumanoidRootPart
            Spin.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            Spin.AngularVelocity = Vector3.new(0, flingSpeed, 0)

            FlingVelocity = Instance.new("BodyVelocity")
            FlingVelocity.Name = "FlingVelocity"
            FlingVelocity.Parent = LocalPLR.Character.HumanoidRootPart
            FlingVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            FlingVelocity.Velocity = Vector3.new(flingSpeed, flingSpeed, flingSpeed)

            followF = game:GetService("RunService").Heartbeat:Connect(function()
                LocalPLR.Character.HumanoidRootPart.CFrame = game.Players[targetPLR].Character.HumanoidRootPart.CFrame
            end)
        end

        specifyBots2(args, 2, runCode)

    end

    if msg:sub(1, 8) == getgenv().Prefix .. "unfling" then

        function runCode()
            Spin:Destroy()
            followF:Disconnect()
            FlingVelocity:Destroy()

            LocalPLR.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            LocalPLR.Character.HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)

            LocalPLR.Character.HumanoidRootPart.CFrame = lastCFRAME
        end

        specifyBots(msg:sub(10), runCode)

    end

    -- BANG:
    if msg:sub(1, 5) == getgenv().Prefix .. "bang" then

        local args = getArgs(message:sub(7))
        local targetPLR = getFullPlayerName(args[1])

        local bangSpeed = tonumber(args[2]) or 10

        function runCode()
            if game.Players[targetPLR] then

                bangAnim = Instance.new('Animation')
                bangAnim.AnimationId = "rbxassetid://" .. isR15(5918726674, 148840371)
                plrHum = LocalPLR.Character.Humanoid

                anim = plrHum:LoadAnimation(bangAnim)
                anim:Play()
                anim:AdjustSpeed(bangSpeed)

                bangLoop = game:GetService("RunService").Stepped:Connect(function()
                    wait()
                    LocalPLR.Character.HumanoidRootPart.CFrame = game.Players[targetPLR].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.1)
                end)
            end

        end

        specifyBots2(args, 3, runCode)

    end

    -- FACEBANG:
    if msg:sub(1, 9) == getgenv().Prefix .. "facebang" then

        local args = getArgs(message:sub(11))
        local targetPLR = getFullPlayerName(args[1])

        local bangSpeed = tonumber(args[2]) or 10
        local bangOffet = CFrame.new(0, 2.3, -1.1)

        function runCode()
            if game.Players[targetPLR] then

                bangAnim2 = Instance.new('Animation')
                bangAnim2.AnimationId = "rbxassetid://" .. isR15(5918726674, 148840371)
                plrHum = LocalPLR.Character.Humanoid

                anim2 = plrHum:LoadAnimation(bangAnim2)
                anim2:Play(0.1, 1, 1)
                anim2:AdjustSpeed(bangSpeed)

                facebangLoop = game:GetService("RunService").Stepped:Connect(function()
                    wait()

                    local targetRoot = LocalPLR.Character:FindFirstChild("HumanoidRootPart")
                    targetRoot.CFrame = game.Players[targetPLR].Character:FindFirstChild("HumanoidRootPart").CFrame * bangOffet * CFrame.Angles(0,3.15,0)
                    targetRoot.Velocity = Vector3.new(0,0,0)
                end)

            end
        end

        specifyBots2(args, 3, runCode)

    end

    if msg:sub(1, 7) == getgenv().Prefix .. "unbang" then

        function runCode()
            if anim then
                anim:Stop()
                bangAnim:Destroy()
            end
            if bangLoop then
                bangLoop:Disconnect()
            end
        end

        specifyBots(msg:sub(9), runCode)

    end

    if msg:sub(1, 8) == getgenv().Prefix .. "unfbang" then

        function runCode()
            if anim2 then
                anim2:Stop()
                bangAnim2:Destroy()
            end
            if facebangLoop then
                facebangLoop:Disconnect()
            end
        end

        specifyBots(msg:sub(10), runCode)

    end

    -- CLEARCHAT (CREDITS TO @thereal_asu):
    if msg == getgenv().Prefix .. "clearchat" then

        if player.Name ~= getgenv().Username then
            return
        end

        if index == 1 then
            if TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
                chat("Clearchat doesnt work on old chat!")
                return
            end

            blob = "\u{000D}"
            chat("." .. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. " ".. blob .. "----Chat Cleared----")
        end

    end

    -- ANNOUNCE:
    if msg:sub(1, 9) == getgenv().Prefix .. "announce" then

        if player.Name ~= getgenv().Username then
            return
        end

        if index == 1 then
            if TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
                chat("Announce doesnt work on old chat!")
                return
            end

            blob = "\u{000D}"
            chat("." .. blob .. " " .. blob .. " " .. blob .. " " .. blob .. " " .. blob .. " " .. blob .. " " .. blob .. " " .. blob .. "🚨 Important Announcement: " .. msg:sub(11) ..  " 🚨" .. blob .. " " .. blob .. " " .. blob .. " " .. blob .. " " .. blob .. " " .. blob .. ".")
        end
    end

    -- RIZZ:
    if msg:sub(1, 4) == getgenv().Prefix .. "riz" then

        local rizzlines = {
            "Can I be your snowflake? I promise to never melt away from your heart.",
            "Are you a Wi-Fi signal? Because I’m feeling a strong connection.",
            "Are you a heart? Because I'd never stop beating for you.",
            "I believe in following my dreams, so you lead the way.",
            "If being beautiful was a crime, you’d be on the most wanted list.",
            "Are you iron? Because I don’t get enough of you.",
            "You should be Jasmine without the 'Jas'.",
            "Are you a Disney ride? Because I'd wait forever for you.",
            "Hey, I’m sorry to bother you, but my phone must be broken because it doesn’t seem to have your number in it.",
            "Are you good at math? Me neither, the only number I care about is yours.",
            "Is your name Elsa? Because I can't let you go.",
            "Do you know the difference between history and you? History is the past and you are my future.",
            "Do you work for NASA? Because your beauty is out of this world.",
            "Math is so confusing. It's always talking about x and y and never you and I.",
            "Are you Christmas morning? Because I’ve been waiting all year for you to arrive.",
            "Are you from Tennessee? Because you're the only ten I see.",
            "Are you Nemo? Because I've been trying to find you.",
            "Are you a bank loan? Because you have my interest.",
            "I hope you know CPR, because you just took my breath away.",
            "Are you the sun? Because I could stare at you all day, and it’d be worth the risk.",
            "Are you a keyboard? Because you're just my type.",
            "My mom said sharing is caring but, no...you're all mine!",
            "It's time to pay up. It's the first of the month, and you've been living in my mind rent-free.",
            "Are you a light? Because you always make me feel bright.",
            "Do you have a bandaid? My knees hurt from falling for you.",
            "We may not be pants, but we'd make a great pair.",
            "You know what's beautiful? Repeat the first word.",
            "Your eyes remind me of Ikea: easy to get lost in.",
            "If you were a Transformer, you'd be Optimus Fine.",
            "I must be a time traveler, because I can't imagine my future without you.",
            "Are you a light switch? Because you turn me on.",
            "Are you a doctor? Because you instantly make me feel better.",
            "You must be a masterpiece, because I can't take my eyes off of you.",
            "Are you my favorite song? Because I can't get you out of my head.",
            "I'm no photographer, but I can picture us together."
        }

        local targetPLR = getFullPlayerName(message:sub(6))
        local randomrizzline = math.random(1, #rizzlines)
        local originalCFrame = LocalPLR.Character.HumanoidRootPart.CFrame

        if not game.Players[targetPLR] then
            return
        end

        wait(5 * (index - 1))

        rizzFollow = game:GetService("RunService").Heartbeat:Connect(function()
            LocalPLR.Character.HumanoidRootPart.CFrame = CFrame.lookAt((game.Players[targetPLR].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)).Position, game.Players[targetPLR].Character.HumanoidRootPart.Position)
        end)
        chat(rizzlines[randomrizzline])

        wait(5)

        rizzFollow:Disconnect()
        LocalPLR.Character.HumanoidRootPart.CFrame = originalCFrame

    end

    -- CARPET:
    if msg:sub(1, 7) == getgenv().Prefix .. "carpet" then

        local args = getArgs(message:sub(9))
        local targetPLR = getFullPlayerName(args[1])

        function runCode()
            carpetAnim = Instance.new("Animation")
            carpetAnim.AnimationId = "rbxassetid://282574440"
            carpet = LocalPLR.Character.Humanoid:LoadAnimation(carpetAnim)
            carpet:Play(0.1, 1, 1)

            carpetF = game:GetService("RunService").Heartbeat:Connect(function()
                LocalPLR.Character.HumanoidRootPart.CFrame = game.Players[targetPLR].Character.HumanoidRootPart.CFrame
            end)
        end

        specifyBots2(args, 2, runCode)

    end

    if msg:sub(1, 9) == getgenv().Prefix .. "uncarpet" then

        function runCode()
            carpetF:Disconnect()
            carpet:Stop()
            carpetAnim:Destroy()
        end

        specifyBots(msg:sub(11), runCode)

    end

    -- DANCE:
    if msg:sub(1, 6) == getgenv().Prefix .. "dance" then
        local args = getArgs(msg:sub(8))
        local pickedEmote = nil
        local loopAnim = false

        if not args[1] then
            pickedEmote = nil
        else
            if isR15() then
            else
                if args[1] == "party" then
                    pickedEmote = 33796059
                    loopAnim = true
                elseif args[1] == "punch" then
                    pickedEmote = 204062532
                    loopAnim = false
                elseif args[1] == "dance3" then
                    pickedEmote = 182436935
                    loopAnim = true
                end
            end
        end

        function runCode()
            if pickedEmote == nil then
                if index == 1 then
                    chat("Pick emote!")
                end

                return
            end

            danceAnim = Instance.new("Animation")
            danceAnim.AnimationId = 'rbxassetid://' .. pickedEmote

            anim = LocalPLR.Character.Humanoid:LoadAnimation(danceAnim)
            anim.Looped = loopAnim
            anim:Play()
        end

        specifyBots2(args, 2, runCode)

    end

    if msg:sub(1, 8) == getgenv().Prefix .. "undance" then

        function runCode()
            anim:Stop()
            danceAnim:Destroy()
        end

        specifyBots(msg:sub(10), runCode)

    end

    -- CREDITS (CANT ADD IN CMDS COMMAND BC IT GETS TAGGED):
    if msg == getgenv().Prefix .. "credits" then

        if index == 1 then
            chat("This is a open source controlbot script made by sixpenny_fox4. Ḍ̲ị̲ṣ̲с̲ọ̲ṛ̲ḍ̲: Ẉ̲ɡ̲Ạ̲с̲Ṭ̲Ẓ̲ẓ̲Ṣ̲ṭ̲Ḅ̲")
        end

    end

    -- SETTING COMMANDS --

    -- 3dRendering:
    if msg:sub(1, 9) == getgenv().Prefix .. "3drender" then

        if player.Name ~= getgenv().Username then
            return
        end

        local switch = msg:sub(11)

        if switch == "disable" then
            game:GetService("RunService"):Set3dRenderingEnabled(false)

            showDefaultGui(true, "ControlBotZ Running (3drender disabled)")

            chat("3D Rendering Has Been Disabled On Bot " .. index .. "!")
        elseif switch == "enable" then
            game:GetService("RunService"):Set3dRenderingEnabled(true)

            showDefaultGui(false)

            chat("3D Rendering Has Been Enabled On Bot " .. index .. "!")
        end

    end

    -- PRIVACYMODE
    if msg:sub(1, 12) == getgenv().Prefix .. "privacymode" then

        if player.Name ~= getgenv().Username then
            return
        end

        local switch = msg:sub(14)

        if switch == "disable" then
            showDefaultGui(false)

            chat("Privacy Mode Has Been Disabled On Bot " .. index .. "!")
        elseif switch == "enable" then
            showDefaultGui(true, "ControlBotZ Running (privacy mode enabled)")

            chat("Privacy Mode Has Been Enabled On Bot " .. index .. "!")
        end
    end

    -- CMDS:
    if msg:sub(1, 5) == getgenv().Prefix .. "cmds" then
        local page = msg:sub(7)

        if index == 1 then
            if page == "1" then
                chat("rejoin, jump, reset, sit, chat (message), shutdown, orbit (username) (speed)/unorbit, bang (username) (speed)/unbang, walkto (username), speed (number), bring, clearchat, privacymode (enable/disable)")

                wait(0.2)
                chat("spin (number)/unspin, lineup (direction), 3drender (enable/disable), dance (emote)/undance, fling (username)/unfling, follow (username)/unfollow, lookat (username)/unlookat, stack (username)/unstack")

                wait(0.2)
                chat("goto (username), carpet (username)/uncarpet, linefollow (username)/unlinefollow, riz (username), facebang (username) (speed)/unfbang, announce (message), rocket (studs), antibang")
            elseif page == "2" then
                chat("surround (username) (spacing)")
            else
                chat("Please select a page 1 or 2!")
            end
        end

    end

end

for _, player in pairs(game.Players:GetPlayers()) do
    player.Chatted:Connect(function(message)
        commands(player, message)
    end)
end

game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        commands(player, message)
    end)
end)
