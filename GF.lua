local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/UI/refs/heads/main/%E5%BD%A9%E8%99%B9.lua"))()

local Window = library:new("GF Hub V1")

local krx = Window:Tab("信息",'137003473399407')
local bin = krx:section("玩家信息",true)
local about = krx:section("作者信息",true)
local UI = krx:section("UI设置",true)

local Main = Window:Tab("主要",'137003473399407')
local General = Main:section("玩家",true)
local GX = Main:section("通用",true)
local QU = Main:section("ESP",true)
local QW = Main:section("其他",true)

local ZH = Window:Tab("旧冬脚本",'137003473399407')
local OW = ZH:section("旧冬脚本",true)  -- 注意：这里应该是ZH而不是Main

local JYRSt = Window:Tab("监狱人生",'92357198122176')
local TLT = JYRSt:section("整合",true)
local JYRS = JYRSt:section("监狱&主要",true)
local DL = JYRSt:section("身份",true)
local DP = JYRSt:section("其他",true)
local DX = JYRSt:section("传送地点",true)

local ZDYSt = Window:Tab("战斗勇士",'92357198122176')
local ZDYS = ZDYSt:section("主要",true)

local HBTXt = Window:Tab("河北唐县",'92357198122176')
local HBTX = HBTXt:section("主的",true)
local HBXT = HBTXt:section("传送位置",true)

local ZRZHt = Window:Tab("自然灾害",'92357198122176')
local ZRZH = ZRZHt:section("自然&灾害",true)
local RHE = ZRZHt:section("玩家",true)

local EVt = Window:Tab("Evade",'92357198122176')
local EV = EVt:section("Evade脚本",true)

local XGt = Window:Tab("新更",'92357198122176')
local XG = XGt:section("新更",true)
local GN = XGt:section("实用工具",true)

local OSCt = Window:Tab("其他脚本",'92357198122176')
local OSC = OSCt:section("通用脚本",true)

bin:Label("你的用户名:"..game.Players.LocalPlayer.Name)
bin:Label("你的注入器:"..identifyexecutor())
bin:Label("服务器id:"..game.GameId)

about:Label("GF Hub V1")
about:Label("作者QQ:1298521996 副作者:3253549307")
about:Label("主群:1067428076")
about:Label("副群:483321117")
about:Label("作者:百夜 副作者:小徐")
about:Label("帮助者:小徐")
about:Label("欢迎使用")

UI:Toggle("移除UI辉光", "DHG", false, function(DHG)
    if DHG then
        game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
    else
        game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
    end
end)
UI:Toggle("彩虹UI", "RBUI", false, function(RBUI)
    if RBUI then
        game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
    else
        game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
    end
end)
UI:Button("摧毁界面", function()
    game:GetService("CoreGui")["frosty is cute"]:Destroy()
end)

General:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed
    end
end)
General:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump
    end
end)
General:Textbox("重力设置!", "Gravity", "输入", function(Gravity)
    local num = tonumber(Gravity)
    if num then
        game.Workspace.Gravity = num
    end
end)
General:Toggle("夜视", "Light", false, function(Light)
    if Light then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)
General:Button("透视", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)
General:Button("隐身道具", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
end)
General:Toggle("穿墙(可用)", "NoClip", false, function(NC)
    if NC then
        _G.Noclip = true
        local noclipLoop
        noclipLoop = game:GetService("RunService").Stepped:Connect(function()
            if _G.Noclip and game.Players.LocalPlayer.Character then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            else
                noclipLoop:Disconnect()
            end
        end)
    else
        _G.Noclip = false
    end
end)

GX:Button("最强透视",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
end)
GX:Button("飞行v3",function()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt')()
end)
GX:Button("甩人",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
GX:Button("反挂机v2",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)
GX:Button("铁拳",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
end)
GX:Button("键盘",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
end)
GX:Button("动画中心",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
GX:Button("立即死亡",function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)
GX:Button("爬墙",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
GX:Button("转起来",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)
GX:Button("子弹追踪",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
end)
GX:Button("飞车",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/63T0fkBm"))()
end)
GX:Button("吸人",function()
    loadstring(game:HttpGet("https://shz.al/~HHAKS"))()
end)
GX:Button("无限跳跃",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end)

QU:Toggle("人物显示", "RWXS", false, function(RWXS)
    getgenv().enabled = RWXS 
    getgenv().filluseteamcolor = true 
    getgenv().outlineuseteamcolor = true 
    getgenv().fillcolor = Color3.new(1, 0, 0) 
    getgenv().outlinecolor = Color3.new(1, 1, 1) 
    getgenv().filltrans = 0.5 
    getgenv().outlinetrans = 0.5 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)

QW:Button("死亡笔记", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/dfhj/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0.txt"))()
end)

OW:Button("旧冬V3主脚本", function()  -- 修复：将中文逗号改为英文逗号
    -- 谢谢旧冬用户一路的支持
    -- 我们继续改进 做好每一步 请使用V3
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuCynic/Old-Winter-Script/refs/heads/main/%E4%B8%BB%E8%84%9A%E6%9C%AC.lua"))()
end)

TLT:Button("落叶监狱人生", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uDs9bhc8"))()
end)

JYRS:Button("无敌模式", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)
JYRS:Button("杀死所有人", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
end)
JYRS:Button("手里剑（秒杀）", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mSLiAZHk"))()
end)
JYRS:Button("变钢铁侠", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
end)
JYRS:Button("变死神", function()
    loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()
end)
JYRS:Button("变车模型", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
end)

DL:Button("变成警察", function()
    if workspace:FindFirstChild("Remote") and workspace.Remote:FindFirstChild("TeamEvent") then
        workspace.Remote.TeamEvent:FireServer("Bright blue")
    end
end)
DL:Button("变成囚犯", function()
    if workspace:FindFirstChild("Remote") and workspace.Remote:FindFirstChild("TeamEvent") then
        workspace.Remote.TeamEvent:FireServer("Bright orange")
    end
end)

DX:Button("传送警卫室", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
    end
end)
DX:Button("传送监狱室内", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
    end
end)
DX:Button("传送罪犯复活点", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
    end
end)
DX:Button("传送监狱室外", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
    end
end)
DX:Button("传送院子", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(788.5759887695312, 97.99992370605469, 2455.056640625)
    end
end)
DX:Button("传送警车库", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(602.7301635742188, 98.20000457763672, 2503.56982421875)
    end
end)
DX:Button("传送死人下水道", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.4256591796875, 78.69828033447266, 2416.18359375)
    end
end)
DX:Button("传送食堂", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(921.0059204101562, 99.98993682861328, 2289.23095703125)
    end
end)

ZDYS:Button("弓箭爆头", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6RQGbFqD"))()
end)

HBTX:Label("请成为快递员，才能自动刷钱")
HBTX:Toggle("自动刷钱", "AM", false, function(AM)
    _G.autoFarm = AM
    if _G.autoFarm then
        spawn(function()
            local function teleportTo(CFrame)
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                end
            end
            
            while _G.autoFarm do
                if game.Workspace:FindFirstChild("DeliverySys") then
                    local packagePile = game.Workspace.DeliverySys.Misc:FindFirstChild("Package Pile")
                    if packagePile and packagePile:FindFirstChild("ClickDetector") then
                        fireclickdetector(packagePile.ClickDetector)
                        task.wait(2.2)
                        
                        if game.Workspace.DeliverySys:FindFirstChild("DeliveryPoints") then
                            for _, point in pairs(game.Workspace.DeliverySys.DeliveryPoints:GetChildren()) do
                                if point:FindFirstChild("Locate") and point.Locate:FindFirstChild("Locate") and point.Locate.Locate.Enabled then
                                    teleportTo(point.CFrame)
                                    break
                                end
                            end
                        end
                    end
                end
                task.wait(0.1)
            end
        end)
    end
end)

HBXT:Button("传送到警察局", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5513.97412109375, 8.656171798706055, 4964.291015625)
    end
end)
HBXT:Button("传送到出生点", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3338.31982421875, 10.048742294311523, 3741.84033203125)
    end
end)
HBXT:Button("传送到医院", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5471.482421875, 14.149418830871582, 4259.75341796875)
    end
end)
HBXT:Button("传送到手机店", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6789.2041015625, 11.197686195373535, 1762.687255859375)
    end
end)
HBXT:Button("传送到火锅店", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5912.84765625, 12.217276573181152, 1058.29443359375)
    end
end)

ZRZH:Toggle("在水上行走", "AHJ", false, function(AHJ)
    if game.Workspace:FindFirstChild("WaterLevel") then
        game.Workspace.WaterLevel.CanCollide = AHJ
        if AHJ then
            game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
        else
            game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
        end
    end
end)
ZRZH:Toggle("自动禁用掉落伤害", "AJH", false, function(AJH)
    _G.NoFallDamage = AJH
    spawn(function()
        while wait(0.5) do
            if _G.NoFallDamage and game.Players.LocalPlayer.Character then
                local FallDamageScript = game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript")
                if FallDamageScript then
                    FallDamageScript:Destroy()
                end
            end
        end
    end)
end)

RHE:Button("传送到地图", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.828506, 65.4863434, 18.8461514, 0.00697017973, 0.0789371505, -0.996855199, -3.13589936e-07, 0.996879458, 0.0789390653, 0.999975681, -0.000549906865, 0.00694845384)
    end
end)
RHE:Button("游戏岛", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5, 38.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end
end)
RHE:Toggle("预测灾害", "YCZN", false, function(YCZN)
    _G.nextdis = YCZN
    local plr = game.Players.LocalPlayer
    if not plr.PlayerGui then return end
    
    local Message = Instance.new("TextLabel")
    Message.Parent = plr.PlayerGui
    Message.Size = UDim2.new(0, 200, 0, 50)
    Message.Position = UDim2.new(0.5, -100, 0, 10)
    Message.BackgroundTransparency = 0.5
    Message.TextColor3 = Color3.new(1, 1, 1)
    Message.Visible = false
    
    spawn(function()
        while wait(1) and _G.nextdis do
            if plr.Character then
                local SurvivalTag = plr.Character:FindFirstChild("SurvivalTag")
                if SurvivalTag then
                    -- 这里可以添加灾害类型判断逻辑
                    Message.Visible = true
                    Message.Text = "灾害预测功能"
                else
                    Message.Visible = false
                end
            end
        end
        Message:Destroy()
    end)
end)

RHE:Button("获取气球", function()
    local plyr = game.Players.LocalPlayer
    local char = plyr.Character
    if not char then return end
    
    local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
    if not torso then return end
    
    local Run = game:GetService('RunService')
    
    -- 创建气球工具
    local tool = Instance.new("HopperBin", plyr.Backpack)
    tool.Name = "气球"
    tool.TextureId = "http://www.roblox.com/asset/?id=27471616"
    
    -- 创建气球零件
    local function createBalloon(weldOffset)
        local part = Instance.new("Part", char)
        part.FormFactor = "Symmetric"
        part.Size = Vector3.new(1, 3, 1)
        part.TopSurface = 0
        part.BottomSurface = 0
        part:BreakJoints()
        
        local special = Instance.new("SpecialMesh", part)
        special.MeshId = "http://www.roblox.com/asset/?id=25498565"
        special.TextureId = "http://www.roblox.com/asset/?id=26725707"
        special.Scale = Vector3.new(2, 2, 2)
        
        local w = Instance.new("Weld", char)
        w.Part0 = part
        w.Part1 = torso
        w.C0 = weldOffset
        
        return part, w
    end
    
    -- 创建两个气球
    local part1, w1 = createBalloon(CFrame.new(-0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, 0.2))
    local part2, w2 = createBalloon(CFrame.new(0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, -0.2))
    
    -- 气球浮动动画
    local floating = true
    spawn(function()
        while floating and part1 and part2 and w1 and w2 do
            for i = 0, 3 do
                w1.C0 = w1.C0 * CFrame.new(0, 0.002, 0)
                w2.C0 = w2.C0 * CFrame.new(0, 0.002, 0)
                Run.Stepped:wait()
            end
            wait(0.147)
            for i = 0, 3 do
                w1.C0 = w1.C0 * CFrame.new(0, -0.002, 0)
                w2.C0 = w2.C0 * CFrame.new(0, -0.002, 0)
                Run.Stepped:wait()
            end
            wait(0.312)
        end
    end)
    
    -- 创建平台
    local platform = nil
    
    tool.Selected:connect(function(mouse)
        mouse.Button1Down:connect(function()
            local hum = char:FindFirstChild("Humanoid")
            local ra = char:FindFirstChild("Right Arm")
            local la = char:FindFirstChild("Left Arm")
            
            if not hum or not ra or not la then return end
            
            -- 获取肩膀连接
            local rs = torso:FindFirstChild("Right Shoulder")
            local ls = torso:FindFirstChild("Left Shoulder")
            
            if not rs or not ls then return end
            
            -- 创建平台
            if platform then
                platform:Destroy()
                platform = nil
            end
            
            platform = Instance.new("Part", workspace)
            platform.Name = "Platform"
            platform.FormFactor = "Custom"
            platform.Transparency = 0.5
            platform.BrickColor = BrickColor.new("Bright blue")
            platform.Material = "Plastic"
            platform.Size = Vector3.new(4, 1, 4)
            platform.Anchored = true
            platform.CanCollide = true
            
            -- 平台跟随角色
            spawn(function()
                for i = 2.5, 6, 0.05 do
                    if platform and torso then
                        platform.CFrame = CFrame.new(
                            torso.Position.x, 
                            torso.Position.y - i, 
                            torso.Position.z
                        )
                        Run.Stepped:wait()
                    end
                end
                
                -- 自动销毁平台
                wait(5)
                if platform then
                    platform:Destroy()
                    platform = nil
                end
            end)()
        end)
    end)
    
    -- 清理函数
    local function cleanup()
        floating = false
        if part1 then part1:Destroy() end
        if part2 then part2:Destroy() end
        if platform then platform:Destroy() end
        if tool then tool:Destroy() end
    end
    
    -- 当角色死亡时清理
    if char:FindFirstChild("Humanoid") then
        char.Humanoid.Died:Connect(cleanup)
    end
    
    -- 10秒后自动清理
    delay(10, cleanup)
end)

EV:Button("Evade脚本1", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
end)
EV:Button("Evade脚本2", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua'))()
end)

XG:Button("显示FPS", function()
    local FpsGui = Instance.new("ScreenGui")
    FpsGui.Name = "FPSGui"
    FpsGui.ResetOnSpawn = false
    FpsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    local FpsXS = Instance.new("TextLabel")
    FpsXS.Name = "FpsXS"
    FpsXS.Size = UDim2.new(0, 100, 0, 50)
    FpsXS.Position = UDim2.new(0, 10, 0, 10)
    FpsXS.BackgroundTransparency = 1
    FpsXS.Font = Enum.Font.SourceSansBold
    FpsXS.Text = "FPS: 0"
    FpsXS.TextSize = 20
    FpsXS.TextColor3 = Color3.new(1, 1, 1)
    FpsXS.Parent = FpsGui
    
    game:GetService("RunService").RenderStepped:Connect(function()
        local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
        FpsXS.Text = "FPS: " .. fps
    end)
    
    FpsGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end)

XG:Button("自瞄", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)

XG:Button("范围", function()
    _G.HeadSize = 20 
    _G.Disabled = true 
    game:GetService('RunService').RenderStepped:connect(function() 
        if _G.Disabled then 
            for i,v in next, game:GetService('Players'):GetPlayers() do 
                if v.Name ~= game:GetService('Players').LocalPlayer.Name and v.Character then 
                    pcall(function() 
                        local root = v.Character:FindFirstChild("HumanoidRootPart")
                        if root then
                            root.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                            root.Transparency = 0.7
                            root.BrickColor = BrickColor.new("Really blue")
                            root.Material = "Neon"
                            root.CanCollide = false
                        end
                    end) 
                end 
            end 
        end 
    end)
end)

XG:Button("iw指令", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

XG:Button("操b脚本", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GR4ChWKv"))()
end)

XG:Button("情云同款", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Chinagy/-/main/%E6%83%85%E4%BA%91.lua"))()
end)

XG:Button("情云同款自瞄可调", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)

XG:Button("玩家加入通知", function()
    -- 简单的通知系统
    local function createNotification(title, message)
        local notify = Instance.new("ScreenGui")
        notify.Name = "PlayerNotification"
        notify.ResetOnSpawn = false
        
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0, 300, 0, 80)
        frame.Position = UDim2.new(0.5, -150, 0.8, 0)
        frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        frame.BorderSizePixel = 2
        frame.BorderColor3 = Color3.fromRGB(100, 100, 100)
        frame.Parent = notify
        
        local titleLabel = Instance.new("TextLabel")
        titleLabel.Size = UDim2.new(1, 0, 0.4, 0)
        titleLabel.Position = UDim2.new(0, 0, 0, 0)
        titleLabel.BackgroundTransparency = 1
        titleLabel.Text = title
        titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        titleLabel.Font = Enum.Font.SourceSansBold
        titleLabel.TextSize = 18
        titleLabel.Parent = frame
        
        local messageLabel = Instance.new("TextLabel")
        messageLabel.Size = UDim2.new(1, 0, 0.6, 0)
        messageLabel.Position = UDim2.new(0, 0, 0.4, 0)
        messageLabel.BackgroundTransparency = 1
        messageLabel.Text = message
        messageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        messageLabel.Font = Enum.Font.SourceSans
        messageLabel.TextSize = 16
        messageLabel.Parent = frame
        
        notify.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        
        -- 自动销毁
        spawn(function()
            wait(5)
            notify:Destroy()
        end)
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        createNotification("玩家加入", player.Name .. " 加入了游戏")
    end)
    
    game.Players.PlayerRemoving:Connect(function(player)
        createNotification("玩家离开", player.Name .. " 离开了游戏")
    end)
end)

GN:Button("工具包", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)
GN:Button("F3X", function()
    loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)
GN:Button("保存游戏", function()
    saveinstance()
end)
GN:Button("离开游戏", function()
    game:Shutdown()
end)

OSC:Button("小凌脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/Xiao-Ling-NEO.UI/main/%E2%82%AA%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83(%E6%96%B0%E7%89%88ui).txt"))()
end)

OSC:Button("导管中心", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end)

OSC:Button("云中心", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/%E4%BA%91%E4%B8%AD%E5%BF%83CLOUD-HUB.lua", true))()
end)

OSC:Button("XSC卡密x", function()
    getgenv().XC = "作者XC"
    loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
end)

OSC:Button("情云", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Chinagy/-/main/%E6%83%85%E4%BA%91.lua"))()
end)

OSC:Button("星空脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E5%85%B6%E4%BB%96%E5%9B%BD%E5%86%85%E8%84%9A%E6%9C%AC/%E6%98%9F%E7%A9%BA%E8%84%9A%E6%9C%AC/MoonSecV3.lua"))()
end)

OSC:Button("林脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
end)

OSC:Button("k1s脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/dkdjdj/main/%E6%B7%B7%E6%B7%86.txt"))()
end)

OSC:Button("丁丁脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vvbnn/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E9%98%89%E5%89%B2.txt"))()
end)

OSC:Button("剑客V4修复版", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia'))()
end)

OSC:Button("呱鸡脚本", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MRgmQkUy", true))()
end)

OSC:Button("☁云脚本☁", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/%E4%BA%91%E8%84%9A%E6%9C%ACCloud%20script.lua", true))()
end)

OSC:Button("鲨脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/shark-shark-shark-shark-shark/main/shark-scriptlollol.txt",true))()
end)

OSC:Button("冰脚本", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GR4ChWKv"))()
end)

OSC:Button("被遗弃HT脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/OWOWOWWOW/HTT/main/HT.lua"))()
end)

OSC:Button("河流脚本", function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\77\50\57\77\117\81\115\80"))()
end)

OSC:Button("BS脚本（偷云脚本）", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/G9guzXdK"))()
end)

OSC:Button("地岩脚本", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
end)

OSC:Button("波奇塔脚本", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/qm7LywRu"))()
end)

OSC:Button("皇脚本", function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
end)

OSC:Button("青脚本", function()
    loadstring(game:HttpGet("https://rentry.co/cyq78/raw"))()
end)

OSC:Button("皮脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

OSC:Button("森林中的99夜", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/99-Nights-TX-XIAN-MIAN______-_-_--_-_-_-_--_-_-_-_--_-_-_-_-_--_-_-_-__------_-_-_-_.lua"))()
end)