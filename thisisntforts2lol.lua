local wh = ''..getgenv().why..''
local mainembedcolor = nil

local mainusers = {"Roblox"}
local altusers = {"builderman"}
-- empty table because anonymous i think

local startembed = {
    ['title'] = ':white_check_mark: | Connection Established!',
    --["color"] = tonumber(0xdead43),
    ['description'] = "**["..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId, Enum.InfoType.Asset).Name.."](https://roblox.com/games/"..game.PlaceId..")** | **at "..tostring(os.date("%m/%d/%y")).."**."
}
local a = request({
    Url = wh,
    Headers = {['Content-Type'] = 'application/json'},
    Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {startembed}, ['content'] = ''}),
    Method = "POST"
})
function logMsg(Webhook, Player, Message)
    local isAltUser = false
    local isMainUser = false
    local userId = getUserIdFromUsername(Player)

    for _, username in ipairs(altusers) do
        if Player == username then
            isAltUser = true
            break
        end
    end
    
    for _, username in ipairs(mainusers) do
        if Player == username then
            isMainUser = true
            if Player == "Roblox" then
                mainembedcolor = 0x3082c5
            end
            break
        end
    end
    
    local plrmessageembed = {
        --["color"] = tonumber(0xdead43),
        --['description'] = "**"..Player..":** "..Message
        ['description'] = Message
	['footer']: {
		["text"]: ""..Player.."",
		['icon_url']: "https://www.roblox.com/headshot-thumbnail/image?userId="..userId.."&width=420&height=420&format=png"
	}
    }
    local altmessageembed = {
        ["color"] = tonumber(0x30c542),
        --['description'] = "**:sparkles: | "..Player..":** "..Message
	['description'] = Message
	['footer']: {
		["text"]: "✨ | "..Player.."",
		['icon_url']: "https://www.roblox.com/headshot-thumbnail/image?userId="..userId.."&width=420&height=420&format=png"
	}
    }
    local mainmessageembed = {
        ["color"] = tonumber(mainembedcolor),
        --['description'] = "**:crown: | "..Player..":** "..Message
	['description'] = Message
	['footer']: {
		["text"]: "👑 | "..Player.."",
		['icon_url']: "https://www.roblox.com/headshot-thumbnail/image?userId="..userId.."&width=420&height=420&format=png"
	}
    }

    if isAltUser then
        local a = request({
            Url = Webhook,
            Headers = {['Content-Type'] = 'application/json'},
            Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {altmessageembed}, ['content'] = ''}),
            Method = "POST"
        })
    elseif isMainUser then
        local a = request({
            Url = Webhook,
            Headers = {['Content-Type'] = 'application/json'},
            Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {mainmessageembed}, ['content'] = ''}),
            Method = "POST"
        })
    else
        local a = request({
            Url = Webhook,
            Headers = {['Content-Type'] = 'application/json'},
            Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {plrmessageembed}, ['content'] = ''}),
            Method = "POST"
        })
    end
end

for i,v in pairs(game.Players:GetPlayers()) do
    v.Chatted:Connect(function(msg)
        logMsg(wh, v.Name, msg)
    end)
end

game.Players.PlayerAdded:Connect(function(plr)
    plr.Chatted:Connect(function(msg)
        logMsg(wh, plr.Name, msg)
    end)
end)
