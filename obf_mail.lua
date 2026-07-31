--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

local v0=game:GetService("Players");local v1=game:GetService("CoreGui");local v2=game:GetService("ReplicatedStorage");local v3=game:GetService("UserInputService");local v4=v0.LocalPlayer;local v5="rbxassetid://105468345186897";local v6={"Carrot","Strawberry","Blueberry","Tulip","Tomato","Apple","Bamboo","Corn","Cactus","Pineapple","Mushroom","Green Bean","Banana","Grape","Coconut","Mango","Rocket Pop","Dragon Fruit","Acorn","Cherry","Sunflower","Fire Fern","Venus Fly Trap","Pomegranate","Poison Apple","Venom Spitter","Briar Rose","Moon Bloom","Sun Bloom","Hypno Bloom","Dragon's Breath","Star Fruit","Gold"};local v7={"Dog","Cat","Dragon","Unicorn","Bunny","Bear","Raccoon","Fox","Monkey","Squirrel","Robin","Frog","Deer","Butterfly","Firefly","Turtle","Hedgehog","Owl","Bee","Wolf","BlackDragon","ShadowDragon","Swan","IceSerpent","GoldenDragonfly"};local v8={"Apple","Banana","Orange","Dragon Fruit","Mango","Strawberry","Bamboo","Carrot","Corn","Blueberry","Pineapple","Mushroom","Tomato","Grape","Coconut","Cherry","Sunflower","Star Fruit","Dragon's Breath","Pomegranate","Poison Apple","Moon Bloom","Sun Bloom"};local v9={"Common Watering Can","Super Watering Can","Common Sprinkler","Uncommon Sprinkler","Rare Sprinkler","Super Sprinkler","Legendary Sprinkler","Trowel","Basic Pot","Ladder Crate"};local v10={["Common Watering Can"]="WateringCans",["Super Watering Can"]="WateringCans",["Common Sprinkler"]="Sprinklers",["Uncommon Sprinkler"]="Sprinklers",["Rare Sprinkler"]="Sprinklers",["Super Sprinkler"]="Sprinklers",["Legendary Sprinkler"]="Sprinklers",Trowel="Trowels",["Basic Pot"]="EmptyPots",["Ladder Crate"]="Crates"};local v11,v12=pcall(function() return require(v2.SharedModules.Networking);end);if ( not v11 or  not v12) then return;end local v13="";local v14=nil;local function v15(v53) local v54=1055 -(87 + 968) ;while true do if (v54==(0 -0)) then v13=v53   .. v13 ;if v14 then v14:SetDesc(v13);end break;end end end local function v16(v55,v56,v57,v58,v59) local v60=0;local v61;local v62;local v63;local v64;while true do if (v60==1) then v62,v63,v64=pcall(function() return v12.Mailbox.SendBatch:Fire(v55,v61,"Kyzen V7");end);if (v62 and (v63==true)) then v15(string.format("[%s] ✅ Sent %d %s to %s\n",os.date("%H:%M:%S"),v58,v57,v59));return true;else local v119=0 + 0 ;while true do if (v119==0) then v15(string.format("[%s] ❌ Error %s: %s\n",os.date("%H:%M:%S"),v57,tostring(v64 or v63 )));return false;end end end break;end if (v60==0) then if (v58<=(0 -0)) then return;end v61={{Category=v56,ItemKey=v57,Count=v58}};v60=2 -1 ;end end end local function v17(v65,v66,v67,v68,v69) local v70=1817 -(1703 + 114) ;local v71;local v72;local v73;while true do if (v70==(702 -(376 + 325))) then v72={};v73=0;v70=2 -0 ;end if (v70==2) then for v115,v116 in ipairs(v71:GetChildren()) do if (v73>=v68) then break;end if ((v116:GetAttribute("IsFavorite")==true) or (v116:GetAttribute("Locked")==true) or (v116:GetAttribute("Equipped")==true)) then continue;end local v117=false;local v118=nil;if ((v66=="Pets") and (v116:GetAttribute("Pet")==v67)) then local v124=0;while true do if (v124==(0 -0)) then v118=v116:GetAttribute("PetId");v117=true;break;end end elseif ((v66=="HarvestedFruits") and (v116:GetAttribute("Fruit")==v67)) then local v127=0 + 0 ;local v128;while true do if ((0 -0)==v127) then v128=v116:GetAttribute("Id");if v128 then v118=v128;v117=true;end break;end end end if (v117 and v118) then local v125=14 -(9 + 5) ;while true do if (0==v125) then if (v66=="HarvestedFruits") then table.insert(v72,{Category=v66,ItemKey=v118,Count=1,FruitName=v67});else table.insert(v72,{Category=v66,ItemKey=v118,Count=377 -(85 + 291) });end v73=v73 + 1 ;break;end end end end if (v73>(1265 -(243 + 1022))) then local v120,v121,v122=pcall(function() return v12.Mailbox.SendBatch:Fire(v65,v72,"Kyzen V7 Sweeper");end);if (v120 and (v121==true)) then local v126=0 -0 ;while true do if (v126==(0 + 0)) then v15(string.format("[%s] 🌪️ Swept & Sent %d %s to %s\n",os.date("%H:%M:%S"),v73,v67,v69));return true,v73;end end else v15(string.format("[%s] ❌ Error %s: %s\n",os.date("%H:%M:%S"),v67,tostring(v122 or v121 )));return false,1180 -(1123 + 57) ;end else return false,0 + 0 ;end break;end if (v70==(254 -(163 + 91))) then if (v68<=(1930 -(1869 + 61))) then return;end v71=v4:WaitForChild("Backpack");v70=1 + 0 ;end end end local function v18(v74) if (v74=="") then return nil;end local v75,v76=pcall(function() return v0:GetUserIdFromNameAsync(v74);end);return (v75 and v76) or nil ;end local v19=loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))();local v20=v19:CreateWindow({Title="Kyzen Hub Premium",SubTitle="By Trongdz",TabWidth=120,Size=UDim2.fromOffset(1584 -1134 ,350),Acrylic=true,Theme="Rose",MinimizeKey=Enum.KeyCode.RightControl});local v21=Instance.new("ScreenGui");v21.Name="KyzenToggle";v21.ResetOnSpawn=false;v21.Parent=game:GetService("CoreGui");local v25=Instance.new("ImageButton");v25.Parent=v21;v25.Size=UDim2.new(0,61 -21 ,0,6 + 34 );v25.Position=UDim2.new(0.15 -0 ,0 + 0 ,1474.15 -(1329 + 145) ,971 -(140 + 831) );v25.BackgroundTransparency=1;v25.Image=v5;v25.Active=true;v25.AutoButtonColor=false;v25.ZIndex=1860 -(1409 + 441) ;local v34=Instance.new("UICorner");v34.CornerRadius=UDim.new(719 -(15 + 703) ,0 + 0 );v34.Parent=v25;local v37=Instance.new("UIStroke");v37.Parent=v25;v37.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;v37.Color=Color3.fromRGB(693 -(262 + 176) ,1826 -(345 + 1376) ,868 -(198 + 490) );v37.Thickness=3;local v43=Instance.new("UIGradient");v43.Color=ColorSequence.new({ColorSequenceKeypoint.new(0 -0 ,Color3.fromRGB(1461 -(696 + 510) ,356 -186 ,1482 -(1091 + 171) )),ColorSequenceKeypoint.new(3 -2 ,Color3.fromRGB(845 -590 ,80,170))});v43.Rotation=45;v43.Parent=v37;v25.MouseEnter:Connect(function() game:GetService("TweenService"):Create(v37,TweenInfo.new(0.15),{Thickness=379 -(123 + 251) ,Color=Color3.fromRGB(1267 -1012 ,868 -(208 + 490) ,19 + 201 )}):Play();end);v25.MouseLeave:Connect(function() game:GetService("TweenService"):Create(v37,TweenInfo.new(0.15 + 0 ),{Thickness=3,Color=Color3.fromRGB(1091 -(660 + 176) ,13 + 92 ,382 -(14 + 188) )}):Play();end);local v3=game:GetService("UserInputService");local v47=false;local v48;local v49;local v50;v25.InputBegan:Connect(function(v77) if ((v77.UserInputType==Enum.UserInputType.MouseButton1) or (v77.UserInputType==Enum.UserInputType.Touch)) then v47=true;v49=v77.Position;v50=v25.Position;v77.Changed:Connect(function() if (v77.UserInputState==Enum.UserInputState.End) then v47=false;end end);end end);v25.InputChanged:Connect(function(v78) if ((v78.UserInputType==Enum.UserInputType.MouseMovement) or (v78.UserInputType==Enum.UserInputType.Touch)) then v48=v78;end end);v3.InputChanged:Connect(function(v79) if (v47 and (v79==v48)) then local v111=675 -(534 + 141) ;local v112;while true do if ((0 + 0)==v111) then v112=v79.Position-v49 ;v25.Position=UDim2.new(v50.X.Scale,v50.X.Offset + v112.X ,v50.Y.Scale,v50.Y.Offset + v112.Y );break;end end end end);v3.InputEnded:Connect(function(v80) if ((v80.UserInputType==Enum.UserInputType.MouseButton1) or (v80.UserInputType==Enum.UserInputType.Touch)) then v47=false;end end);v25.MouseButton1Click:Connect(function() v20:Minimize();end);local v51={Main=v20:AddTab({Title="Main",Icon="settings"}),Fruits=v20:AddTab({Title="Fruits",Icon="apple"}),Pets=v20:AddTab({Title="Pets",Icon="paw"}),Gears=v20:AddTab({Title="Gears",Icon="hammer"}),Seeds=v20:AddTab({Title="Seeds",Icon="leaf"}),History=v20:AddTab({Title="History",Icon="scroll"})};local v52={TargetUsername="",TargetUserId=nil,FruitName=v8[1 + 0 ],FruitAmount=0,PetName=v7[1 + 0 ],PetAmount=0 -0 ,GearName=v9[1],GearAmount=0 -0 ,SeedName=v6[2 -1 ],SeedAmount=0 + 0 };v51.Main:AddInput("InputUsername",{Title="Target Username",Default="",Callback=function(v81) local v82=0 + 0 ;while true do if (v82==(396 -(115 + 281))) then v52.TargetUsername=v81;v52.TargetUserId=v18(v81);v82=2 -1 ;end if (v82==1) then if v52.TargetUserId then v19:Notify({Title="Success",Content="Target Locked!",Duration=3 + 0 });end break;end end end});v51.Fruits:AddDropdown("FruitDrop",{Title="Select Fruit",Values=v8,Default=2 -1 ,Callback=function(v83) v52.FruitName=v83;end});v51.Fruits:AddInput("FruitAmt",{Title="Amount",Numeric=true,Callback=function(v85) v52.FruitAmount=tonumber(v85) or (0 -0) ;end});v51.Fruits:AddButton({Title="🌪️ SWEEP & SEND FRUITS",Callback=function() if  not v52.TargetUserId then return v19:Notify({Title="Error",Content="Invalid Target Username!"});end local v87,v88=v17(v52.TargetUserId,"HarvestedFruits",v52.FruitName,v52.FruitAmount,v52.TargetUsername);if v87 then v19:Notify({Title="Success",Content="Sent "   .. v88   .. " fruits!" });else v19:Notify({Title="Failed",Content="Items not found or locked!"});end end});v51.Pets:AddDropdown("PetDrop",{Title="Select Pet",Values=v7,Default=868 -(550 + 317) ,Callback=function(v89) v52.PetName=v89;end});v51.Pets:AddInput("PetAmt",{Title="Amount",Numeric=true,Callback=function(v91) v52.PetAmount=tonumber(v91) or 0 ;end});v51.Pets:AddButton({Title="🌪️ SWEEP & SEND PETS",Callback=function() local v93=0 -0 ;local v94;local v95;while true do if (v93==(1 -0)) then if v94 then v19:Notify({Title="Success",Content="Sent "   .. v95   .. " pets!" });else v19:Notify({Title="Failed",Content="Items not found or locked!"});end break;end if (0==v93) then if  not v52.TargetUserId then return v19:Notify({Title="Error",Content="Invalid Target Username!"});end v94,v95=v17(v52.TargetUserId,"Pets",v52.PetName,v52.PetAmount,v52.TargetUsername);v93=2 -1 ;end end end});v51.Gears:AddDropdown("GearDrop",{Title="Select Gear",Values=v9,Default=286 -(134 + 151) ,Callback=function(v96) v52.GearName=v96;end});v51.Gears:AddInput("GearAmt",{Title="Amount",Numeric=true,Callback=function(v98) v52.GearAmount=tonumber(v98) or 0 ;end});v51.Gears:AddButton({Title="🚀 SEND GEARS",Callback=function() local v100=1665 -(970 + 695) ;local v101;local v102;while true do if (v100==(0 -0)) then if  not v52.TargetUserId then return v19:Notify({Title="Error",Content="Invalid Target Username!"});end v101=v10[v52.GearName] or "Tools" ;v100=1991 -(582 + 1408) ;end if (v100==(3 -2)) then v102=v16(v52.TargetUserId,v101,v52.GearName,v52.GearAmount,v52.TargetUsername);if v102 then v19:Notify({Title="Success",Content="Sent "   .. v52.GearAmount   .. " "   .. v52.GearName });end break;end end end});v51.Seeds:AddDropdown("SeedDrop",{Title="Select Seed",Values=v6,Default=1 -0 ,Callback=function(v103) v52.SeedName=v103;end});v51.Seeds:AddInput("SeedAmt",{Title="Amount",Numeric=true,Callback=function(v105) v52.SeedAmount=tonumber(v105) or 0 ;end});v51.Seeds:AddButton({Title="🚀 SEND SEEDS",Callback=function() local v107=0 -0 ;local v108;while true do if (v107==1) then if v108 then v19:Notify({Title="Success",Content="Sent "   .. v52.SeedAmount   .. " seeds" });end break;end if (v107==(1824 -(1195 + 629))) then if  not v52.TargetUserId then return v19:Notify({Title="Error",Content="Invalid Target Username!"});end v108=v16(v52.TargetUserId,"Seeds",v52.SeedName,v52.SeedAmount,v52.TargetUsername);v107=1;end end end});v14=v51.History:AddParagraph({Title="Activity Log",Content="No logs yet..."});v20:SelectTab(1 -0 );v19:Notify({Title="Kyzen Hub V7",Content="System Ready & Secured!",Duration=246 -(187 + 54) });

]]

-- ==========================================================
-- 🏴‍☠️ KYZEN HUB - EMERGENCY UPDATE ALERT SYSTEM
-- ==========================================================
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- Xóa UI cũ nếu có
if CoreGui:FindFirstChild("KyzenUpdateAlert") then
    CoreGui.KyzenUpdateAlert:Destroy()
end

-- 1. TẠO LỚP MÀN HÌNH ĐEN XÌ CHE KÍN TOÀN BỘ MÀN HÌNH
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KyzenUpdateAlert"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = CoreGui

local BlackScreen = Instance.new("Frame", ScreenGui)
BlackScreen.Size = UDim2.new(1, 0, 1, 0)
BlackScreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlackScreen.BackgroundTransparency = 0 -- Đen xì tuyệt đối
BlackScreen.Active = true

-- 2. KHUNG THÔNG BÁO CHÍNH (GIỮA MÀN HÌNH)
local AlertFrame = Instance.new("Frame", BlackScreen)
AlertFrame.Size = UDim2.new(0, 420, 0, 220)
AlertFrame.Position = UDim2.new(0.5, -210, 0.5, -110)
AlertFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
AlertFrame.BackgroundTransparency = 0.2

local Corner = Instance.new("UICorner", AlertFrame)
Corner.CornerRadius = UDim.new(0, 12)

local Stroke = Instance.new("UIStroke", AlertFrame)
Stroke.Thickness = 2
Stroke.Color = Color3.fromRGB(255, 0, 0) -- Viền đỏ cảnh báo

-- 3. TIÊU ĐỀ NGUY HIỂM (MÀU ĐỎ + HIỆU ỨNG NHẤP NHÁY)
local Title = Instance.new("TextLabel", AlertFrame)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 15)
Title.BackgroundTransparency = 1
Title.Text = "⚠️ CẢNH BÁO HỆ THỐNG ⚠️"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22

-- 4. NỘI DUNG THÔNG BÁO
local Desc = Instance.new("TextLabel", AlertFrame)
Desc.Size = UDim2.new(0.9, 0, 0, 80)
Desc.Position = UDim2.new(0.05, 0, 0.35, 0)
Desc.BackgroundTransparency = 1
Desc.Text = "Kyzen Mailbox Hub đang Update!\nVui lòng liên hệ Admin để lấy Script mới."
Desc.TextColor3 = Color3.fromRGB(255, 80, 80) -- Đỏ sáng dễ đọc
Desc.Font = Enum.Font.GothamBold
Desc.TextSize = 16
Desc.TextWrapped = true

-- 5. NÚT LIÊN HỆ / THOÁT (TẠO CHO CÓ VẺ CHUYÊN NGHIỆP)
local Btn = Instance.new("TextButton", AlertFrame)
Btn.Size = UDim2.new(0.6, 0, 0, 40)
Btn.Position = UDim2.new(0.2, 0, 0.75, 0)
Btn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
Btn.Text = "ĐÃ HIỂU / ĐANG ĐỢI ADMIN"
Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn.Font = Enum.Font.GothamBold
Btn.TextSize = 14

local BtnCorner = Instance.new("UICorner", Btn)
BtnCorner.CornerRadius = UDim.new(0, 8)

-- 6. HIỆU ỨNG NHẤP NHÁY (BLINK) CHO VIỀN VÀ TIÊU ĐỀ
task.spawn(function()
    while ScreenGui.Parent do
        TweenService:Create(Stroke, TweenInfo.new(0.6), {Transparency = 0.8}):Play()
        TweenService:Create(Title, TweenInfo.new(0.6), {TextTransparency = 0.5}):Play()
        task.wait(0.6)
        TweenService:Create(Stroke, TweenInfo.new(0.6), {Transparency = 0}):Play()
        TweenService:Create(Title, TweenInfo.new(0.6), {TextTransparency = 0}):Play()
        task.wait(0.6)
    end
end)

-- Bấm nút để đóng thông báo (nếu muốn)
Btn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)


