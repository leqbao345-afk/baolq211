  local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🔵 baolq211 hub | Blox Fruit", "Aqua")

-- TAB FARM CHÍNH
local FarmTab = Window:NewTab("🌾 Farm")
local FarmSection = FarmTab:NewSection("Cày Cấp Tự Động")

FarmSection:NewToggle("Auto Farm Level", "Bật để tự đánh quái", function(state)
    _G.AutoFarm = state
    spawn(function()
        while _G.AutoFarm do
            task.wait()
            pcall(function()
                -- Ở đây sẽ là code logic nhận nhiệm vụ và bay tới quái
                -- Mình để dòng print để bạn kiểm tra trong F9
                print("baolq211 hub đang tìm quái phù hợp level...")
            end)
        end
    end)
end)

FarmSection:NewToggle("Auto Farm Bone (Xương)", "Dành cho Sea 3", function(state)
    _G.AutoBone = state
end)

-- TAB FRUIT
local FruitTab = Window:NewTab("🍎 Fruit")
local FruitSection = FruitTab:NewSection("Trái Ác Quỷ")

FruitSection:NewButton("Random Fruit", "Mua trái ngẫu nhiên", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end)

FruitSection:NewButton("Lưu trữ Trái (Store)", "Cất trái vào rương", function()
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v:FindFirstChild("Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", v.Name, v)
        end
    end
end)

-- TAB DISCORD
local DiscordTab = Window:NewTab("💬 Discord")
local DiscordSection = DiscordTab:NewSection("Hỗ trợ: https://discord.gg/37WE8TBTY")

DiscordSection:NewButton("Copy Link Discord", "Bấm để copy", function()
    setclipboard("https://discord.gg/37WE8TBTY")
end)
