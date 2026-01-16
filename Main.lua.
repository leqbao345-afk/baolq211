local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🐮 baolq211 hub | Blox Fruit",
   LoadingTitle = "Đang khởi tạo baolq211 hub...",
   LoadingSubtitle = "Chào mừng bạn quay trở lại!",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "baolq211Configs",
      FileName = "MainConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false -- Bạn có thể bật true nếu muốn làm hệ thống Key
})

-- TẠO TAB THÔNG TIN CÓ ẢNH CỦA BẠN (HÌNH TRÒN)
local HomeTab = Window:CreateTab("🏠 Trang chủ", 4483362458)

HomeTab:CreateSection("Người dùng: " .. game.Players.LocalPlayer.Name)

-- Chèn ảnh từ URL bạn cung cấp (Lưu ý: Để hiện ảnh trong Roblox thường cần upload lên Roblox Decal)
-- Dưới đây là cách tạo một thông báo có kèm ảnh khi bắt đầu
Rayfield:Notify({
   Title = "baolq211 hub Đã Sẵn Sàng!",
   Content = "Chúc bạn farm vui vẻ nhé!",
   Duration = 6.5,
   Image = "rbxassetid://123456789", -- Bạn cần thay ID ảnh sau khi up lên Roblox
})

-- CÁC CHỨC NĂNG CHÍNH
local FarmTab = Window:CreateTab("🌾 Auto Farm", 4483362458)
local FarmSection = FarmTab:CreateSection("Cày cấp")

_G.AutoFarm = false
FarmTab:CreateToggle({
   Name = "Auto Farm Level",
   CurrentValue = false,
   Flag = "AutoFarmFlag",
   Callback = function(Value)
      _G.AutoFarm = Value
      while _G.AutoFarm do
          task.wait(1)
          print("baolq211 hub đang thực hiện farm...")
          -- Chèn code logic farm ở đây
      end
   end,
})

-- TAB CÀI ĐẶT GIAO DIỆN
local MiscTab = Window:CreateTab("⚙️ Hệ thống", 4483362458)
MiscTab:CreateButton({
   Name = "Đóng Menu hoàn toàn",
   Callback = function()
       Rayfield:Destroy()
   end,
})
