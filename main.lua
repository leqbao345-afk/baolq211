 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "🔵 baolq211 hub | Blox Fruit", HidePremium = false, SaveConfig = true, ConfigFolder = "baolq211"})

-- TAB CHÍNH
local MainTab = Window:MakeTab({Name = "🏠 Main", Icon = "rbxassetid://4483362458", Premium = false})

_G.AutoFarm = false
MainTab:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Callback = function(Value)
		_G.AutoFarm = Value
		while _G.AutoFarm do
			task.wait(1)
			print("Đang cày cấp...")
		end
	end    
})

-- TAB RAID & V4
local RaidTab = Window:MakeTab({Name = "⚔️ Raid & V4", Icon = "rbxassetid://4483362458", Premium = false})

RaidTab:AddToggle({
	Name = "Auto Raid (Tự đi Raid)",
	Default = false,
	Callback = function(Value)
		_G.AutoRaid = Value
	end    
})

RaidTab:AddButton({
	Name = "Auto Up V4 (Gạt cần/Tìm đảo)",
	Callback = function()
		print("Đang tìm đảo bí ẩn...")
	end    
})

-- TAB TRÁI ÁC QUỶ (FRUIT)
local FruitTab = Window:MakeTab({Name = "🍎 Fruit", Icon = "rbxassetid://4483362458", Premium = false})

FruitTab:AddButton({
	Name = "Auto Random Fruit (Mua trái)",
	Callback = function()
		print("Đang random trái ác quỷ...")
	end    
})

FruitTab:AddToggle({
	Name = "Auto Bring Fruit (Nhặt trái)",
	Default = false,
	Callback = function(Value)
		_G.BringFruit = Value
	end    
})

-- TAB HỆ THỐNG (SERVER)
local ServerTab = Window:MakeTab({Name = "🌐 Server", Icon = "rbxassetid://4483362458", Premium = false})

ServerTab:AddButton({
	Name = "Hop Server (Đổi Server)",
	Callback = function()
		local PlaceID = game.PlaceId
		local AllServers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..PlaceID.."/servers/Public?sortOrder=Asc&limit=100"))
		for _, v in pairs(AllServers.data) do
			if v.playing < v.maxPlayers then
				game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, v.id)
			end
		end
	end    
})

OrionLib:Init()
