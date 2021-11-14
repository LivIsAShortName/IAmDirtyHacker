--setup
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")
sdis = false
count = 0
local done = {}
local pass = 0
local dead = 0
local first = true
local looped = 0
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()

_G.closed = true
--_G
_G.customchat = true
_G.Mode = 0
_G.Trans = false

-- credit

game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "Wassup",
        Text = [[
Made by : ! Mene#0001
	Enjoy]],
        Duration = 5,
        Button1 = "I will"
    }
)

--anims

local swordequip = Instance.new("Animation")
swordequip.AnimationId = "rbxassetid://3204744488"
local swordequipplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(swordequip)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929570007"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

--custom Name

local Player = game.Players.LocalPlayer
Player.Chatted:Connect(
    function(Chat)
        wait()

        if _G.customchat == true then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[[UNREACHABLE]]\n" .. Chat,
                [4] = ColorValue.BackgroundColor3
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
        end
    end
)

--headgui
local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local HealthLabel = Instance.new("TextLabel")
local PName = Instance.new("TextLabel")

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "r" then
            function getlockchar()
                local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                return char
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                getlockchar().HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
        end
    end
)

--Sound
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://6564956178"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1.5
wait(0.5)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()

-- Music
local music = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://2279971133" -- Sound ID
music.Looped = true
music:Play()
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()

--Properties:

HealthBar.Name = "HealthBar"
HealthBar.Parent = player.Character.Head
HealthBar.ExtentsOffset = Vector3.new(0, 3, 0)
HealthBar.Size = UDim2.new(4, 0, 2, 0)

Frame.Parent = HealthBar
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

HealthLabel.Name = "HealthLabel"
HealthLabel.Parent = Frame
HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.BackgroundTransparency = 1.000
HealthLabel.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
HealthLabel.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
HealthLabel.Font = Enum.Font.Arcade
HealthLabel.Text = "THE UNREACHABLE"
HealthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.TextScaled = true
HealthLabel.TextSize = 14.000
HealthLabel.TextWrapped = true
HealthLabel.TextXAlignment = Enum.TextXAlignment.Left

PName.Name = "PName"
PName.Parent = Frame
PName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.Antique
PName.Text = "ELEDUMARE"
PName.TextColor3 = Color3.fromRGB(0, 0, 0)
PName.TextScaled = true
PName.TextSize = 5.000
PName.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextYAlignment = Enum.TextYAlignment.Top
PName.Rotation = 5

--anims and destroys
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves"):WaitForChild("Animations").Walk.AnimationId =
    "rbxassetid://7005162082"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves"):WaitForChild("Animations").Idle.AnimationId =
    "rbxassetid://7005139602"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves"):WaitForChild("Animations").Run.AnimationId =
    "rbxassetid://4576074471"
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy()
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game.Players.LocalPlayer.Character["RealKnife"]:Destroy()
game.Players.LocalPlayer.Character["HeartLocket"]:Destroy()
game.Players.LocalPlayer.Character["HateArm"]:Destroy()

-- logger
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/908686327011221504/15EWh8MY12vdCRNQCwO-U2Umexg9bqhFyslmkaE0kLsSFhzKXFqtof1TdZ_MYU0gFWCS"
local data = {
   ["content"] = " message(no embed)- you can take out embed if by deleting the bottom stuff(where it says EMBEDS)",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

-- anti remote spy
Remote.FireServer(Remote,arg)

-- anti https spy1
if islclosure(syn.request) then
 while true do end
end

-- RBAura
newRad1 = 0
spawn(
    function()
        print("nDebug1")
        test = "a"
        for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack.Main:GetDescendants()) do
            if v.Name:match("Moves") then
                test = v
            end
        end
        test1 = test["ModuleScript"]["Animations"]
        for i, v in pairs(test:GetDescendants()) do
            if v.Name:match("Light") then
                test = v
            end
        end

        spawn(
            function()
                print("nDebug3")
                repeat
                    wait()
                    newRad1 = newRad1 + 5
                    if newRad1 >= 360 then
                        newRad1 = 0
                    end
                until spin == false
            end
        )

        spawn(
            function()
                repeat
                    for hue = 0, 1, 2 / 360 do
                        wait(0.1)
                        local A_1 = {
                            [1] = getrenv()._G.Pass,
                            [2] = "SlashEffect",
                            [3] = test,
                            [4] = Color3.fromHSV(hue, 1, 1),
                            [5] = CFrame.new(0, 0, 0) *
                                CFrame.fromEulerAnglesXYZ(
                                    math.rad(-newRad1),
                                    math.rad(-newRad1 + 180),
                                    math.rad(-newRad1)
                                )
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                    end
                until jajajaja_ligma_balls == true
            end
        )
        wait(1)
        print("nDebug7")
        spawn(
            function()
                repeat
                    for hue = 0, 1, 2 / 360 do
                        wait(0.1)
                        local A_1 = {
                            [1] = getrenv()._G.Pass,
                            [2] = "SlashEffect",
                            [3] = test,
                            [4] = Color3.fromHSV(hue, 1, 1),
                            [5] = CFrame.new(0, 0, 0) *
                                CFrame.fromEulerAnglesXYZ(math.rad(-newRad1), math.rad(newRad1), math.rad(-newRad1))
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                    end
                until jajajaja_ligma_balls == true
            end
        )
    end
)

-- hide chat
_G.hidechat = true
local mt = getrawmetatable(game)
local backup = mt.__namecall
if setreadonly then
    setreadonly(mt, false)
else
    make_writeable(mt, true)
end

mt.__namecall =
    newcclosure(
    function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == "SayMessageRequest" and _G.hidechat then
            return
        end
        return backup(...)
    end
)

-- red wings
mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "k" then
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://7004737889"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            wait(3.5)
            player = game.Players.LocalPlayer
            char = player.Character
            for _, v in pairs(char:GetDescendants()) do
                if v.Name == "KnifeSlashProjectileOrange" then
                    v:Destroy()
                end
            end

            player = game.Players.LocalPlayer
            char = player.Character
            for _, v in pairs(char:GetDescendants()) do
                if v.Name == "Removing" then
                    v:Destroy()
                end
            end

            player = game.Players.LocalPlayer
            char = player.Character
            for _, v in pairs(char:GetDescendants()) do
                if v.Name == "YellowBlast" then
                    v:Destroy()
                end
            end

            player = game.Players.LocalPlayer
            char = player.Character
            local TweenService = game:GetService("TweenService")
            _G.nowings = true
            wait(.1)
            --right
            local part1 = Instance.new("Part")
            part1.Name = "part1"
            part1.Parent = char
            part1.Anchored = false
            part1.CanCollide = false
            part1.Transparency = 0.6

            local part2 = Instance.new("Part")
            part2.Name = "part2"
            part2.Parent = char
            part2.Anchored = false
            part2.CanCollide = false
            part2.Transparency = 0.6

            local part3 = Instance.new("Part")
            part3.Name = "part3"
            part3.Parent = char
            part3.Anchored = false
            part3.CanCollide = false
            part3.Transparency = 0.6

            --weldright

            local weld1 = Instance.new("Weld")
            weld1.Parent = char.HumanoidRootPart
            weld1.Part0 = char.Torso
            weld1.Part1 = part1
            weld1.C0 = CFrame.new(2, 0, 0.5) * CFrame.Angles(0, 0, math.rad(25))
            weld1.Name = "weld1"

            local weld2 = Instance.new("Weld")
            weld2.Parent = char.HumanoidRootPart
            weld2.Part0 = char.Torso
            weld2.Part1 = part2
            weld2.C0 = CFrame.new(2, 2, 0.9) * CFrame.Angles(0, 0, math.rad(35))
            weld2.Name = "weld2"

            local weld3 = Instance.new("Weld")
            weld3.Parent = char.HumanoidRootPart
            weld3.Part0 = char.Torso
            weld3.Part1 = part3
            weld3.C0 = CFrame.new(2, 3, 1.4) * CFrame.Angles(0, 0, math.rad(75))
            weld3.Name = "weld3"

            local c0s = {
                CFrame.new(2.8, 1.5, 0.5) * CFrame.Angles(0, 0, math.rad(35)),
                CFrame.new(2.6, 3, 0.5) * CFrame.Angles(0, 0, math.rad(80)),
                CFrame.new(2.4, 5, 0.5) * CFrame.Angles(0, 0, math.rad(110)),
                CFrame.new(-2.8, 1.5, 0.5) * CFrame.Angles(0, 0, math.rad(-35)),
                CFrame.new(-2.6, 3, 0.5) * CFrame.Angles(0, 0, math.rad(-80)),
                CFrame.new(-2.4, 5, 0.5) * CFrame.Angles(0, 0, math.rad(-110))
            }
            local welds = {weld1, weld2, weld3}

            --tweenanimation
            for i = 1, #welds do
                local part = welds[i]

                local Info =
                    TweenInfo.new(
                    2, --Length (seconds)
                    Enum.EasingStyle.Sine, --Easing Style
                    Enum.EasingDirection.InOut, --Easing Direction
                    -1, --Times Repeated
                    true, --reversed
                    0 --deşau
                )

                local Goals = {
                    C0 = c0s[i]
                }

                local wingtween = TweenService:Create(part, Info, Goals)
                wingtween:Play()
            end

            for i = 1, 3, 1 do
                spawn(
                    function()
                        local args = {
                            [1] = {
                                [1] = getrenv()._G.Pass,
                                [2] = "KnifeProjectile",
                                [3] = "Spawn",
                                [4] = Vector3.new(0, 3000, 0)
                            }
                        }

                        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                    end
                )
            end

            local detect
            local detect2
            local val = Instance.new("NumberValue", char)
            val.Name = "Wingpartslashcount"
            local num = 0
            local tab = {}
            local tab2 = {}
            detect =
                char.Attacks.ChildAdded:Connect(
                function(child)
                    if child.Name == "KnifeSlashProjectile" then
                        table.insert(tab, child)
                        child:WaitForChild("ParticleEmitter"):Destroy()
                        child:WaitForChild("BodyVelocity"):Destroy()
                        local bp = Instance.new("BodyPosition", child)
                        bp.Name = "Client"
                        bp.P = 30000
                        bp.D = 150
                        bp.Position = char.HumanoidRootPart.Position
                        table.insert(tab2, bp)
                        num = num + 1
                        val.Value = num
                    end
                end
            )
            _G.nowings = false
            detect2 =
                val:GetPropertyChangedSignal("Value"):Connect(
                function(amo)
                    if val.Value == 3 then
                        for i = 1, #tab do
                            spawn(
                                function()
                                    local part = welds[i].Part1
                                    local sl = tab[i]
                                    local bs = tab2[i]
                                    part.Transparency = 1
                                    while true do
                                        game["Run Service"].Heartbeat:wait()
                                        if _G.nowings then
                                            break
                                        end
                                        local cfr = part.CFrame * CFrame.Angles(0, math.rad(90), math.rad(180))
                                        bs.Position = cfr.p
                                        sl.CFrame = cfr
                                    end
                                    part:Destroy()
                                    sl:Destroy()
                                end
                            )
                        end
                        detect:Disconnect()
                        detect2:Disconnect()
                        val:Destroy()
                    end
                end
            )

            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = " [WINGS SWITCHED] * \nMayhem",
                [4] = Color3.fromRGB(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "PlaySound",
                    [3] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Fire,
                    [4] = game:GetService("Players").LocalPlayer.Character.Head
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
        end
    end
)

--yellow wings
mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "j" then
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://7004737889"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            wait(3.5)

            local slashes = {}
            local p = game:GetService("Players").LocalPlayer
            local character = p.Character or p.CharacterAdded:Wait()
            local mouse = p:GetMouse()
            local setOrb = false
            character:WaitForChild("Attacks").ChildAdded:Connect(
                function(child)
                    if child.Name == "YellowBlast" and #slashes <= 0 then
                        child:WaitForChild("Hitted"):Destroy()
                        table.insert(slashes, child)
                    end
                end
            )
            local speed = 0.01
            local lradius = 15

            local radius = 10
            local ts = 0
            local rad, cos, sin = math.rad, math.cos, math.sin
            local root = p.Character.HumanoidRootPart
            game:GetService("RunService").RenderStepped:Connect(
                function()
                    for i, v in pairs(slashes) do
                        if not v or not v.Parent then
                            table.remove(slashes, i)
                            return
                        end
                        local y = root.Position.Y
                        local z = root.Position.Z
                        local x = root.Position.X + radius * cos(rad(ts))
                        v.Position = Vector3.new(x, y, root.Position.Z + radius * sin(rad(ts)))
                        ts = ts + 5
                    end
                end
            )

            player = game.Players.LocalPlayer
            char = player.Character
            for _, v in pairs(char:GetDescendants()) do
                if v.Name == "KnifeSlashProjectile" then
                    v:Destroy()
                end
            end
            player = game.Players.LocalPlayer
            char = player.Character
            local TweenService = game:GetService("TweenService")
            _G.nowings = true
            wait(.1)
            --right
            local part1 = Instance.new("Part")
            part1.Name = "part1"
            part1.Parent = char
            part1.Anchored = false
            part1.CanCollide = false
            part1.Transparency = 0.9

            local part2 = Instance.new("Part")
            part2.Name = "part2"
            part2.Parent = char
            part2.Anchored = false
            part2.CanCollide = false
            part2.Transparency = 0.9

            local part3 = Instance.new("Part")
            part3.Name = "part3"
            part3.Parent = char
            part3.Anchored = false
            part3.CanCollide = false
            part3.Transparency = 0.9

            --left
            local part1L = Instance.new("Part")
            part1L.Name = "part1L"
            part1L.Parent = char
            part1L.Anchored = false
            part1L.CanCollide = false
            part1L.Transparency = 0.9

            local part2L = Instance.new("Part")
            part2L.Name = "part2L"
            part2L.Parent = char
            part2L.Anchored = false
            part2L.CanCollide = false
            part2L.Transparency = 0.9

            local part3L = Instance.new("Part")
            part3L.Name = "part3L"
            part3L.Parent = char
            part3L.Anchored = false
            part3L.CanCollide = false
            part3L.Transparency = 0.9

            --weldright

            local weld1 = Instance.new("Weld")
            weld1.Parent = char.HumanoidRootPart
            weld1.Part0 = char.Torso
            weld1.Part1 = part1
            weld1.C0 = CFrame.new(2, 0, 0.5) * CFrame.Angles(0, 0, math.rad(25))
            weld1.Name = "weld1"

            local weld2 = Instance.new("Weld")
            weld2.Parent = char.HumanoidRootPart
            weld2.Part0 = char.Torso
            weld2.Part1 = part2
            weld2.C0 = CFrame.new(2, 2, 0.9) * CFrame.Angles(0, 0, math.rad(35))
            weld2.Name = "weld2"

            local weld3 = Instance.new("Weld")
            weld3.Parent = char.HumanoidRootPart
            weld3.Part0 = char.Torso
            weld3.Part1 = part3
            weld3.C0 = CFrame.new(2, 3, 1.3) * CFrame.Angles(0, 0, math.rad(75))
            weld3.Name = "weld3"

            --weld left
            local weld1L = Instance.new("Weld")
            weld1L.Parent = char.HumanoidRootPart
            weld1L.Part0 = char.Torso
            weld1L.Part1 = part1L
            weld1L.C0 = CFrame.new(-2, 0, 0.5) * CFrame.Angles(0, 0, math.rad(-25))
            weld1L.Name = "weld1L"

            local weld2L = Instance.new("Weld")
            weld2L.Parent = char.HumanoidRootPart
            weld2L.Part0 = char.Torso
            weld2L.Part1 = part2L
            weld2L.C0 = CFrame.new(-2, 2, 0.9) * CFrame.Angles(0, 0, math.rad(-35))
            weld2L.Name = "weld2L"

            local weld3L = Instance.new("Weld")
            weld3L.Parent = char.HumanoidRootPart
            weld3L.Part0 = char.Torso
            weld3L.Part1 = part3L
            weld3L.C0 = CFrame.new(-2, 3, 1.3) * CFrame.Angles(0, 0, math.rad(-75))
            weld3L.Name = "weld3L"

            local c0s = {
                CFrame.new(2.8, 1.5, 0.5) * CFrame.Angles(0, 0, math.rad(35)),
                CFrame.new(2.6, 3, 0.5) * CFrame.Angles(0, 0, math.rad(80)),
                CFrame.new(2.4, 5, 0.5) * CFrame.Angles(0, 0, math.rad(110)),
                CFrame.new(-2.8, 1.5, 0.5) * CFrame.Angles(0, 0, math.rad(-35)),
                CFrame.new(-2.6, 3, 0.5) * CFrame.Angles(0, 0, math.rad(-80)),
                CFrame.new(-2.4, 5, 0.5) * CFrame.Angles(0, 0, math.rad(-110))
            }
            local welds = {weld1, weld2, weld3, weld1L, weld2L, weld3L}

            --tweenanimation
            for i = 1, #welds do
                local part = welds[i]

                local Info =
                    TweenInfo.new(
                    2, --Length (seconds)
                    Enum.EasingStyle.Sine, --Easing Style
                    Enum.EasingDirection.InOut, --Easing Direction
                    -1, --Times Repeated
                    true, --reversed
                    0 --deşau
                )

                local Goals = {
                    C0 = c0s[i]
                }

                local wingtween = TweenService:Create(part, Info, Goals)
                wingtween:Play()
            end

            for i = 1, 6, 1 do
                spawn(
                    function()
                        local args = {
                            [1] = {
                                [1] = getrenv()._G.Pass,
                                [2] = "KnifeProjectileOrange",
                                [3] = "Spawn",
                                [4] = Vector3.new(0, 3000, 0)
                            }
                        }

                        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                    end
                )
            end

            local detect
            local detect2
            local val = Instance.new("NumberValue", char)
            val.Name = "Wingpartslashcount"
            local num = 0
            local tab = {}
            local tab2 = {}
            detect =
                char.Attacks.ChildAdded:Connect(
                function(child)
                    if child.Name == "KnifeSlashProjectileOrange" then
                        table.insert(tab, child)
                        child:WaitForChild("ParticleEmitter"):Destroy()
                        child:WaitForChild("BodyVelocity"):Destroy()
                        local bp = Instance.new("BodyPosition", child)
                        bp.Name = "Client"
                        bp.P = 30000
                        bp.D = 150
                        bp.Position = char.HumanoidRootPart.Position
                        table.insert(tab2, bp)
                        num = num + 1
                        val.Value = num
                    end
                end
            )
            _G.nowings = false
            detect2 =
                val:GetPropertyChangedSignal("Value"):Connect(
                function(amo)
                    if val.Value == 6 then
                        for i = 1, #tab do
                            spawn(
                                function()
                                    local part = welds[i].Part1
                                    local sl = tab[i]
                                    local bs = tab2[i]
                                    part.Transparency = 1
                                    while true do
                                        game["Run Service"].Heartbeat:wait()
                                        if _G.nowings then
                                            break
                                        end
                                        local cfr = part.CFrame * CFrame.Angles(0, math.rad(90), math.rad(180))
                                        bs.Position = cfr.p
                                        sl.CFrame = cfr
                                    end
                                    part:Destroy()
                                    sl:Destroy()
                                end
                            )
                        end
                        detect:Disconnect()
                        detect2:Disconnect()
                        val:Destroy()
                    end
                end
            )

            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = " [WINGS SWITCHED] * \nDivinity",
                [4] = Color3.fromRGB(255, 255, 255)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "PlaySound",
                    [3] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Fire,
                    [4] = game:GetService("Players").LocalPlayer.Character.Head
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
        end
    end
)

--sit
local sitstart = Instance.new("Animation")
sitstart.AnimationId = "rbxassetid://6821079045"
local sitstartplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitstart)
local sitloop = Instance.new("Animation")
sitloop.AnimationId = "rbxassetid://6821100086"
local sitloopplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitloop)
local sitend = Instance.new("Animation")
sitend.AnimationId = "rbxassetid://6821115515"
local sitendplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitend)
local sitting = false
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "y" then
            if sitting == false then
                sitting = true
                sitstartplay:Play()
                wait(1)
                sitloopplay:Play()
            elseif sitting == true then
                sitting = false
                sitloopplay:Stop()
                sitendplay:Play()
            end
        end
    end
)

-- combatstyle
game:GetService("UserInputService").InputBegan:Connect(
    function(k)
        if k.KeyCode == Enum.KeyCode.LeftAlt then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = [[[UNREACHABLE]
 Pest Of The Cosmos]],
                [4] = Color3.fromRGB(190, 20, 50)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            wait(0.1)
            game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId =
                "rbxassetid://4800258366"
            game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId =
                "rbxassetid://4800999598"
            game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId =
                "rbxassetid://4800436094"
            game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId =
                "rbxassetid://4800747744"
            game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId =
                "rbxassetid://4800624938"
            game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId =
                "rbxassetid://4456901030"
        end
    end
)

-- fly
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(
    function(k)
        if k == "h" then
            game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted",
                    [3] = "[UNREACHABLE]: See you  next eternity.",
                    [4] = Color3.new(1, 0, 0)
                }
            )
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 2.5,
                ["Type"] = "Normal",
                ["HitEffect"] = "BoneHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["CombatInv"] = true,
                ["Damage"] = 0
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            repeat
                Event:InvokeServer(A_1, A_2, A_3)
                wait(2.4)
            until game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
        end
    end
)

-- gravity impulse
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(
    function(k)
        if k == "t" then
            game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted",
                    [3] = "[UNREACHABLE]: Gravity Impulse.",
                    [4] = Color3.new(1, 0, 0)
                }
            )
            for fh = 0, 99 do
                wait(0, 1)
                game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(
                    getrenv()._G.Pass,
                    game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                    {
                        HitTime = 1,
                        Type = "Knockback",
                        HitEffect = "BoneHitEffect",
                        HurtAnimation = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                        Sound = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
                        CameraShake = "BigExplosion",
                        Velocity = Vector3.new(0, 0, 0),
                        CombatInv = true,
                        Damage = 0
                    }
                )
            end
        end
    end
)

-- bonk
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Bonk!",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

-- Slashess
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "c" then
            _G.cdr = false
            if _G.cdr then
                return
            end
            _G.cdr = true
            pass = getrenv()._G.Pass
            player = game.Players.LocalPlayer
            m = player:GetMouse()
            local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
            if LockOn then
                target = LockOn
                r2 = target.HumanoidRootPart.CFrame
            elseif not LockOn then
                r2 = m.Hit * CFrame.new(0, 4, 0)
            end
            char = player.Character
            h = char.Humanoid
            a = Instance.new("Animation")
            a.AnimationId = "rbxassetid://4905914802"
            k = h:LoadAnimation(a)
            k:Play()
            k:AdjustSpeed(3)
            --char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
            --wait(.1)
            amm = 5
            --char.HumanoidRootPart.Position + Vector3.new(0,10000,0)
            for i = 1, amm, 1 do
                spawn(
                    function()
                        local A_1 = {
                            [1] = pass,
                            [2] = "KnifeProjectileDarkRed",
                            [3] = "Spawn",
                            [4] = r2.p
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                        Event:InvokeServer(A_1)
                    end
                )
            end
            am = 0
            val = Instance.new("NumberValue", player)
            val.Name = "KnifeSlashes Amount"
            local tabeeas = {}
            detect =
                char.Attacks.ChildAdded:Connect(
                function(pp)
                    if pp.Name == "KnifeSlashProjectileDark" then
                        table.insert(tabeeas, pp)
                        spawn(
                            function()
                                local rp
                                local yeaeoase = pp
                                rp =
                                    yeaeoase.Changed:Connect(
                                    function(pr)
                                        if pr == "Anchored" then
                                            if not pr.Anchored then
                                                am = am + 1
                                                val.Value = am
                                                rp:Disconnect()
                                            end
                                        end
                                    end
                                )
                            end
                        )
                    end
                end
            )
            detect2 =
                val:GetPropertyChangedSignal("Value"):Connect(
                function()
                    if val.Value == amm * 3 then
                        tab = {}
                        tab2 = {}
                        for _, v in pairs(char.Attacks:GetChildren()) do
                            if v.Name == "KnifeSlashProjectileDark" then
                                v:WaitForChild("BodyVelocity"):Destroy()
                                v:WaitForChild("ParticleEmitter"):Destroy()
                                v.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 10, -2)
                                v1 = Instance.new("BodyPosition", v)
                                fol = Instance.new("Folder", v1)
                                v1.Name = "Client"
                                v1.MaxForce = Vector3.new(1, 1, 1) * 100000
                                v1.D = 1000
                                v1.P = 30000
                                v2 = Instance.new("BodyGyro", v)
                                fol = Instance.new("Folder", v2)
                                v2.Name = "Client"
                                v2.MaxTorque = Vector3.new(1, 1, 1) * 10000
                                v2.D = 0
                                v2.P = 3000
                                v2.CFrame = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                                x = math.random(-10, 10) * 2
                                z = math.random(-10, 10) * 2
                                v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0, 10, 0)
                                table.insert(tab, v1)
                                table.insert(tab2, v)
                                v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x, 10, z)
                            end
                        end
                        wait(.5)
                        for i = 1, #tab do
                            m.TargetFilter = game.workspace.Terrain
                            local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
                            if LockOn then
                                target = LockOn
                                r2 = target.HumanoidRootPart.CFrame
                                r1 = target.HumanoidRootPart
                            elseif not LockOn then
                                r2 = m.Hit
                                r1 = m.Target
                            end
                            x = math.random(-20, 20)
                            z = math.random(-20, 20)
                            tab[i].D = 150
                            tab[i].Position = r2.p + Vector3.new(0, -1, 0)
                            tab2[i].CFrame = r2 * CFrame.new(x, 10, z)
                            spawn(
                                function()
                                    local A_1 = {
                                        [1] = pass,
                                        [2] = "KnifeProjectileDarkRed",
                                        [3] = "Hit",
                                        [4] = tab2[i],
                                        [5] = r2,
                                        [6] = r1
                                    }
                                    local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                                    Event:InvokeServer(A_1)
                                end
                            )
                            wait()
                        end
                    end
                end
            )
            wait(3)
            for _, v in pairs(tabeeas) do
                v:Destroy()
            end
            detect:Disconnect()
            detect2:Disconnect()
            val:Destroy()
            _G.cdr = false
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "c" then
            _G.cdr = false
            if _G.cdr then
                return
            end
            _G.cdr = true
            pass = getrenv()._G.Pass
            player = game.Players.LocalPlayer
            m = player:GetMouse()
            local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
            if LockOn then
                target = LockOn
                r2 = target.HumanoidRootPart.CFrame
            elseif not LockOn then
                r2 = m.Hit * CFrame.new(0, 4, 0)
            end
            char = player.Character
            h = char.Humanoid
            a = Instance.new("Animation")
            a.AnimationId = "rbxassetid://4905914802"
            k = h:LoadAnimation(a)
            k:Play()
            k:AdjustSpeed(3)
            --char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
            --wait(.1)
            amm = 5
            --char.HumanoidRootPart.Position + Vector3.new(0,10000,0)
            for i = 1, amm, 1 do
                spawn(
                    function()
                        local A_1 = {
                            [1] = pass,
                            [2] = "KnifeProjectileDarkRed",
                            [3] = "Spawn",
                            [4] = r2.p
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                        Event:InvokeServer(A_1)
                    end
                )
            end
            am = 0
            val = Instance.new("NumberValue", player)
            val.Name = "KnifeSlashes Amount"
            local tabeeas = {}
            detect =
                char.Attacks.ChildAdded:Connect(
                function(pp)
                    if pp.Name == "KnifeSlashProjectileDark" then
                        table.insert(tabeeas, pp)
                        spawn(
                            function()
                                local rp
                                local yeaeoase = pp
                                rp =
                                    yeaeoase.Changed:Connect(
                                    function(pr)
                                        if pr == "Anchored" then
                                            if not pr.Anchored then
                                                am = am + 1
                                                val.Value = am
                                                rp:Disconnect()
                                            end
                                        end
                                    end
                                )
                            end
                        )
                    end
                end
            )
            detect2 =
                val:GetPropertyChangedSignal("Value"):Connect(
                function()
                    if val.Value == amm * 3 then
                        tab = {}
                        tab2 = {}
                        for _, v in pairs(char.Attacks:GetChildren()) do
                            if v.Name == "KnifeSlashProjectileDark" then
                                v:WaitForChild("BodyVelocity"):Destroy()
                                v:WaitForChild("ParticleEmitter"):Destroy()
                                v.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 10, -2)
                                v1 = Instance.new("BodyPosition", v)
                                fol = Instance.new("Folder", v1)
                                v1.Name = "Client"
                                v1.MaxForce = Vector3.new(1, 1, 1) * 100000
                                v1.D = 1000
                                v1.P = 30000
                                v2 = Instance.new("BodyGyro", v)
                                fol = Instance.new("Folder", v2)
                                v2.Name = "Client"
                                v2.MaxTorque = Vector3.new(1, 1, 1) * 10000
                                v2.D = 0
                                v2.P = 3000
                                v2.CFrame = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                                x = math.random(-10, 10) * 2
                                z = math.random(-10, 10) * 2
                                v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0, 10, 0)
                                table.insert(tab, v1)
                                table.insert(tab2, v)
                                v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x, 10, z)
                            end
                        end
                        wait(.5)
                        for i = 1, #tab do
                            m.TargetFilter = game.workspace.Terrain
                            local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
                            if LockOn then
                                target = LockOn
                                r2 = target.HumanoidRootPart.CFrame
                                r1 = target.HumanoidRootPart
                            elseif not LockOn then
                                r2 = m.Hit
                                r1 = m.Target
                            end
                            x = math.random(-20, 20)
                            z = math.random(-20, 20)
                            tab[i].D = 150
                            tab[i].Position = r2.p + Vector3.new(0, -1, 0)
                            tab2[i].CFrame = r2 * CFrame.new(x, 10, z)
                            spawn(
                                function()
                                    local A_1 = {
                                        [1] = pass,
                                        [2] = "KnifeProjectileDarkRed",
                                        [3] = "Hit",
                                        [4] = tab2[i],
                                        [5] = r2,
                                        [6] = r1
                                    }
                                    local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                                    Event:InvokeServer(A_1)
                                end
                            )
                            wait()
                        end
                    end
                end
            )
            wait(3)
            for _, v in pairs(tabeeas) do
                v:Destroy()
            end
            detect:Disconnect()
            detect2:Disconnect()
            val:Destroy()
            _G.cdr = false
        end
    end
)

-- Combo2
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "z" then
            game.Players.LocalPlayer:GetMouse()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait()
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800436094"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "HeavyHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0.111111111, 0, 0) +
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                    ["Damage"] = 15
                }
            }
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        end
    end
)

-- teleport projectiles
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "u" then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "Escape this.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            wait(0.8)
            local mouse = game.Players.LocalPlayer:GetMouse()
            function getlockchar()
                local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                return char
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                getlockchar().HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeProjectileOrange",
                    [3] = "Spawn",
                    [4] = Vector3.new(50, 10, 50)
                }
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeProjectile",
                    [3] = "Spawn",
                    [4] = Vector3.new(-50, 10, -50)
                }
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeProjectilePurple",
                    [3] = "Spawn",
                    [4] = Vector3.new(-50, 10, 50)
                }
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeProjectile",
                    [3] = "Spawn",
                    [4] = Vector3.new(50, 10, 50)
                }
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeProjectile",
                    [3] = "Spawn",
                    [4] = Vector3.new(-100, 10, -80)
                }
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeProjectilePurple",
                    [3] = "Spawn",
                    [4] = Vector3.new(-70, 10, 70)
                }
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        end
    end
)

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(
    {getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0, 0, 0)}
)

--Next Universe
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "g" then
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://5667483477"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            wait(0.5)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * math.huge,
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)

-- erase clown's function
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "v" then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get clapped.",
                [4] = Color3.new(0.8, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            wait(0)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            wait(0.5)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            wait(0.5)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            wait(0.5)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 0.5,
                ["Type"] = "Knockback",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
                ["Velocity"] = Vector3.new(0, -0.1, 0),
                ["CombatInv"] = true,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)

-- Push

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local Player = game.Players.LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.M then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Stay away.",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(100, 0, 1),
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 15
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)
UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.M then
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(100, 0, 1),
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 10
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)
UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.M then
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(100, 0, 1),
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 10
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)
UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.M then
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(100, 0, 1),
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 10
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)
UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.M then
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(100, 0, 1),
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 10
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)
UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.M then
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(100, 0, 1),
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 10
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)
UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.M then
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(100, 0, 1),
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 10
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)

local anim3 = Instance.new("Animation")
anim3.AnimationId = "rbxassetid://5776260400"

UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.M then
            local playAnim = humanoid:LoadAnimation(anim3)
            playAnim:Play()
            wait(1.2)
            playAnim:Stop()
        end
    end
)

-- combo
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(0.5)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://6122095988"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
                    ["Damage"] = 10
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(0.6)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
                    ["Damage"] = 10
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(0.7)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
                    ["Damage"] = 10
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(0.8)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
                    ["Damage"] = 10
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(0.9)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
                    ["Damage"] = 10
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
                    ["Damage"] = 10
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(1.1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
                    ["Damage"] = 10
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(1.2)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(-0, 29.999994277954, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(1.5)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://5776249806"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(1.6)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://5776251749"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(1.7)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://5776249806"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(1.8)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://5776251749"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(1.9)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://5776249806"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 1,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(2)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://5776251749"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(2.3)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://6154055740"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(2.4)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(2.5)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(2.6)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(2.7)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4300091335"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, -1, 0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(3)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://6154055740"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(3.2)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(3.3)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Normal",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 5
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "x" then
            game.Players.LocalPlayer:GetMouse()
            wait(3.5)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BoneHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["Velocity"] = Vector3.new(0, 0.0001, 0),
                    ["HitTime"] = 2,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

-- freeze

local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input.KeyCode == Enum.KeyCode.N then
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Stay Still.",
                [4] = Color3.new(1, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local A_1 = getrenv()._G.Pass
            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            local A_3 = {
                ["HitTime"] = 1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
            Event:InvokeServer(A_1, A_2, A_3)
        end
    end
)

-- begone

_G.BegoneThot = true
game:GetService("UserInputService").InputBegan:Connect(
    function(key, typing)
        if typing then
            return
        end
        local button = Enum.KeyCode.B
        if key.KeyCode == button then
            if _G.BegoneThot == true then
                local A_1 = {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted",
                    [3] = [[[ The Unreachable ]
Run Task Eliminate]],
                    [4] = Color3.fromRGB(255, 0, 10)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(0.2)
                char = game.Players.LocalPlayer.Character
                for _, v in pairs(game:GetService("ReplicatedStorage").Resources.LocalScripts:GetChildren()) do
                    if v.Name == "ShortWhiteScreen2" then
                        clone = v:Clone()
                        clone.Parent = char
                    end
                end
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = {
                    ["HitTime"] = 1,
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ShockerBreakerHit,
                    ["CameraShake"] = "BigExplosion",
                    ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * math.huge,
                    ["CombatInv"] = true,
                    ["Damage"] = 35
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                wait(2.5)
                local A_1 = {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted",
                    [3] = [[[ The Unreachable ]
Task Eliminate has been ran.]],
                    [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait()
                _G.BegoneThot = false
                wait(3)
                _G.BegoneThot = true
            end
        end
    end
)

--bypass
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 169

--:kill
player.Chatted:Connect(
    function(mag, secipient)
        if string.sub(mag, 1, 1) == ":" then
            print("false command")
            local splitstring = string.split(mag, " ")
            if splitstring[1] == ":kill" then
                for _, PlayerTarget in pairs(Players:GetPlayers()) do
                    if
                        string.sub(string.lower(PlayerTarget.Name), 1, string.len(splitstring[2])) ==
                            string.lower(splitstring[2])
                     then
                        print(PlayerTarget)
                        local args = {
                            [1] = {
                                [1] = getrenv()._G.Pass,
                                [2] = "KnifeProjectileOrange",
                                [3] = "Spawn",
                                [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position +
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10 +
                                    Vector3.new(math.random(0, 35), math.random(0, 30), math.random(0, 33))
                            }
                        }
                        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

                        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

                        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                        for i, v in pairs(player.Character.Attacks:GetChildren()) do
                            print(v.Name)
                            if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
                                print(v.Name)
                                local detect
                                detect =
                                    rs.Heartbeat:Connect(
                                    function()
                                        if PlayerTarget.Character:WaitForChild("Humanoid").Health == 0 then
                                            v:Destroy()
                                            detect:disconnect()
                                            print(PlayerTarget.Character.Name) --should print a player only once
                                        else
                                            v.Position = PlayerTarget.Character.LockOn.Position - Vector3.new(0, 4, 0)
                                            local args = {
                                                [1] = {
                                                    [1] = getrenv()._G.Pass,
                                                    [2] = "KnifeProjectileOrange",
                                                    [3] = "Hit",
                                                    [4] = v,
                                                    [5] = PlayerTarget.Character.HumanoidRootPart.CFrame,
                                                    [6] = PlayerTarget.Character.HumanoidRootPart
                                                }
                                            }

                                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(
                                                unpack(args)
                                            )
                                        end
                                    end
                                )
                            end
                        end
                    end
                end
            end
        end
    end
)

-- Bong Head
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800266314"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(
    function(k)
        if k == "q" then
            game.Players.LocalPlayer:GetMouse()
            local A_1 = {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted",
                [3] = "[UNREACHABLE]: Get Good.",
                [4] = Color3.new(255, 0, 0)
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "KnifeHitEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(-0, -50, -0),
                    ["HitTime"] = 0.5,
                    ["CombatInv"] = true,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }

            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end
)

--:fixSoftlock
player.Chatted:Connect(
    function(mag, secipient)
        if string.sub(mag, 1, 1) == ":" then
            print("idk")
            if mag == ":fixsoftlock" then
                print("fixed")

                for i, v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
                    if v.Name == "Client" or v.Name == "Server" then
                        v:Destroy()
                    end
                end
            end
        end
    end
)

--modeswitch
userInputService.InputBegan:Connect(
    function(input, gameProcessedEvent)
        local keyPressed = input.KeyCode

        if not gameProcessedEvent then
            if keyPressed == Enum.KeyCode.E then
                if _G.Mode == 1 and _G.Trans == false then
                    _G.Mode = 0

                    _G.closed = true
                    player = game.Players.LocalPlayer
                    char = player.Character
                    local TweenService = game:GetService("TweenService")
                    _G.nowings = true
                    wait(.1)
                    local Model = Instance.new("Model")
                    Model.WorldPivot =
                        CFrame.new(
                        -26.174686431885,
                        7.7919206619263,
                        50.385040283203,
                        1,
                        0,
                        0,
                        0,
                        0.99999392032623,
                        0,
                        0,
                        0,
                        0.99999392032623
                    )

                    local Orange1 = Instance.new("MeshPart")
                    Orange1.Name = "Orange1"
                    Orange1.CanCollide = false
                    Orange1.Color = Color3.fromRGB(0, 255, 255)
                    Orange1.Massless = true
                    Orange1.Material = Enum.Material.Neon
                    Orange1.Reflectance = 1
                    Orange1.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
                    Orange1.Locked = true
                    Orange1.CFrame =
                        CFrame.new(
                        -26.637672424316,
                        3.8199439048767,
                        51.477661132813,
                        1,
                        0,
                        0,
                        0,
                        -0.96591109037399,
                        -0.25881484150887,
                        0,
                        0.25881484150887,
                        -0.96591109037399
                    )
                    Orange1.CastShadow = false
                    Orange1.Parent = Model

                    local Orange2 = Instance.new("MeshPart")
                    Orange2.Name = "Orange2"
                    Orange2.CanCollide = false
                    Orange2.Color = Color3.fromRGB(0, 255, 255)
                    Orange2.Massless = true
                    Orange2.Material = Enum.Material.Neon
                    Orange2.Reflectance = 1
                    Orange2.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
                    Orange2.Locked = true
                    Orange2.CFrame =
                        CFrame.new(
                        -26.637672424316,
                        6.8198986053467,
                        54.477615356445,
                        1,
                        0,
                        0,
                        0,
                        -0.25881531834602,
                        -0.96591079235077,
                        0,
                        0.96591079235077,
                        -0.25881531834602
                    )
                    Orange2.CastShadow = false
                    Orange2.Parent = Model

                    local Orange3 = Instance.new("MeshPart")
                    Orange3.Name = "Orange3"
                    Orange3.CanCollide = false
                    Orange3.Color = Color3.fromRGB(0, 255, 255)
                    Orange3.Massless = true
                    Orange3.Material = Enum.Material.Neon
                    Orange3.Reflectance = 1
                    Orange3.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
                    Orange3.Locked = true
                    Orange3.CFrame =
                        CFrame.new(
                        -26.637672424316,
                        10.819840431213,
                        53.47762298584,
                        1,
                        0,
                        0,
                        0,
                        0.70709562301636,
                        -0.70709639787674,
                        0,
                        0.70709639787674,
                        0.70709562301636
                    )
                    Orange3.CastShadow = false
                    Orange3.Parent = Model

                    local Orange4 = Instance.new("MeshPart")
                    Orange4.Name = "Orange4"
                    Orange4.CanCollide = false
                    Orange4.Color = Color3.fromRGB(0, 255, 255)
                    Orange4.Massless = true
                    Orange4.Material = Enum.Material.Neon
                    Orange4.Reflectance = 1
                    Orange4.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
                    Orange4.Locked = true
                    Orange4.CFrame =
                        CFrame.new(
                        -26.637672424316,
                        11.763940811157,
                        49.292541503906,
                        1,
                        0,
                        0,
                        0,
                        0.96591109037399,
                        0.25881457328796,
                        0,
                        -0.25881457328796,
                        0.96591109037399
                    )
                    Orange4.CastShadow = false
                    Orange4.Parent = Model

                    local Orange5 = Instance.new("MeshPart")
                    Orange5.Name = "Orange5"
                    Orange5.CanCollide = false
                    Orange5.Color = Color3.fromRGB(0, 255, 255)
                    Orange5.Massless = true
                    Orange5.Material = Enum.Material.Neon
                    Orange5.Reflectance = 1
                    Orange5.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
                    Orange5.Locked = true
                    Orange5.CFrame =
                        CFrame.new(
                        -26.637672424316,
                        8.7639961242676,
                        46.292530059814,
                        1,
                        0,
                        0,
                        0,
                        0.25881952047348,
                        0.96592545509338,
                        0,
                        -0.96592545509338,
                        0.25881952047348
                    )
                    Orange5.CastShadow = false
                    Orange5.Parent = Model

                    local Orange6 = Instance.new("MeshPart")
                    Orange6.Name = "Orange6"
                    Orange6.CanCollide = false
                    Orange6.Color = Color3.fromRGB(0, 255, 255)
                    Orange6.Massless = true
                    Orange6.Material = Enum.Material.Neon
                    Orange6.Reflectance = 1
                    Orange6.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
                    Orange6.Locked = true
                    Orange6.CFrame =
                        CFrame.new(
                        -26.637672424316,
                        4.7640113830566,
                        47.292472839355,
                        1,
                        0,
                        0,
                        0,
                        -0.70709943771362,
                        0.70710051059723,
                        0,
                        -0.70710051059723,
                        -0.70709943771362
                    )
                    Orange6.CastShadow = false
                    Orange6.Parent = Model

                    local Yellow = Instance.new("Part")
                    Yellow.Name = "Yellow"
                    Yellow.BottomSurface = Enum.SurfaceType.Smooth
                    Yellow.CanCollide = false
                    Yellow.TopSurface = Enum.SurfaceType.Smooth
                    Yellow.Transparency = 1
                    Yellow.Massless = true
                    Yellow.Size = Vector3.new(1, 1, 1)
                    Yellow.Locked = true
                    Yellow.CFrame =
                        CFrame.new(
                        -26.174686431885,
                        8.1670999526978,
                        50.38826751709,
                        1,
                        0,
                        0,
                        0,
                        0.99999392032623,
                        0,
                        0,
                        0,
                        0.99999392032623
                    )
                    Yellow.CastShadow = false
                    Yellow.Parent = Model

                    local Orange61 = Instance.new("Weld")
                    Orange61.Name = "Orange6"
                    Orange61.C0 =
                        CFrame.new(
                        -0.46298599243164,
                        -3.4031090736389,
                        -3.0958137512207,
                        1,
                        0,
                        0,
                        0,
                        -0.70710372924805,
                        0.70710480213165,
                        0,
                        -0.70710480213165,
                        -0.70710372924805
                    )
                    Orange61.Parent = Yellow

                    local Orange51 = Instance.new("Weld")
                    Orange51.Name = "Orange5"
                    Orange51.C0 =
                        CFrame.new(
                        -0.46298599243164,
                        0.59689998626709,
                        -4.095760345459,
                        1,
                        0,
                        0,
                        0,
                        0.25881806015968,
                        0.96592003107071,
                        0,
                        -0.96592003107071,
                        0.25881806015968
                    )
                    Orange51.Parent = Yellow

                    local Orange41 = Instance.new("Weld")
                    Orange41.Name = "Orange4"
                    Orange41.C0 =
                        CFrame.new(
                        -0.46298599243164,
                        3.5968627929688,
                        -1.0957336425781,
                        1,
                        0,
                        0,
                        0,
                        0.96591699123383,
                        0.25881615281105,
                        0,
                        -0.25881615281105,
                        0.96591699123383
                    )
                    Orange41.Parent = Yellow

                    local Orange31 = Instance.new("Weld")
                    Orange31.Name = "Orange3"
                    Orange31.C0 =
                        CFrame.new(
                        -0.46298599243164,
                        2.652756690979,
                        3.0893745422363,
                        1,
                        0,
                        0,
                        0,
                        0.70709991455078,
                        -0.70710068941116,
                        0,
                        0.70710068941116,
                        0.70709991455078
                    )
                    Orange31.Parent = Yellow

                    local Orange21 = Instance.new("Weld")
                    Orange21.Name = "Orange2"
                    Orange21.C0 =
                        CFrame.new(
                        -0.46298599243164,
                        -1.3472094535828,
                        4.0893707275391,
                        1,
                        0,
                        0,
                        0,
                        -0.25881689786911,
                        -0.9659166932106,
                        0,
                        0.9659166932106,
                        -0.25881689786911
                    )
                    Orange21.Parent = Yellow

                    local Orange11 = Instance.new("Weld")
                    Orange11.Name = "Orange1"
                    Orange11.C0 =
                        CFrame.new(
                        -0.46298599243164,
                        -4.3471822738647,
                        1.0894012451172,
                        1,
                        0,
                        0,
                        0,
                        -0.96591699123383,
                        -0.25881642103195,
                        0,
                        0.25881642103195,
                        -0.96591699123383
                    )
                    Orange11.Parent = Yellow

                    Orange61.Part1 = Orange6
                    Orange61.Part0 = Yellow

                    Orange51.Part1 = Orange5
                    Orange51.Part0 = Yellow

                    Orange41.Part1 = Orange4
                    Orange41.Part0 = Yellow

                    Orange31.Part1 = Orange3
                    Orange31.Part0 = Yellow

                    Orange21.Part1 = Orange2
                    Orange21.Part0 = Yellow

                    Orange11.Part1 = Orange1
                    Orange11.Part0 = Yellow

                    Model.Parent = char

                    local root = Instance.new("Part")
                    root.Name = "root"
                    root.Parent = char
                    root.Anchored = false
                    root.CanCollide = false
                    root.Transparency = 1
                    root.Massless = true
                    root.Size = Vector3.new(5, 5, 5)

                    local rootweld = Instance.new("Weld")
                    rootweld.Parent = char.HumanoidRootPart
                    rootweld.Part0 = char.HumanoidRootPart
                    rootweld.Part1 = root
                    rootweld.Name = "rootweld"
                    rootweld.C0 = CFrame.new(0, 4, 2) * CFrame.Angles(0, 0, 0)

                    local weld1 = Instance.new("Weld")
                    weld1.Parent = char.HumanoidRootPart
                    weld1.Part0 = root
                    weld1.Part1 = Yellow
                    weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), 0)
                    weld1.Name = "weld1"

                    local welds = {Orange11, Orange21, Orange31, Orange41, Orange51, Orange61}
                    for i = 1, 6, 1 do
                        spawn(
                            function()
                                local args = {
                                    [1] = {
                                        [1] = getrenv()._G.Pass,
                                        [2] = "KnifeProjectileOrange",
                                        [3] = "Spawn",
                                        [4] = Vector3.new(0, 3000, 0)
                                    }
                                }

                                game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                            end
                        )
                    end
                    local detect
                    local detect2
                    local val = Instance.new("NumberValue", char)
                    val.Name = "Wingpartslashcount"
                    local num = 0
                    local tab = {}
                    local tab2 = {}
                    detect =
                        char.Attacks.ChildAdded:Connect(
                        function(child)
                            if child.Name == "KnifeSlashProjectileOrange" then
                                table.insert(tab, child)
                                child:WaitForChild("ParticleEmitter"):Destroy()
                                child:WaitForChild("BodyVelocity"):Destroy()
                                local bp = Instance.new("BodyPosition", child)
                                bp.Name = "Client"
                                bp.P = 30000
                                bp.D = 150
                                bp.Position = char.HumanoidRootPart.Position
                                table.insert(tab2, bp)
                                num = num + 1
                                val.Value = num
                            end
                        end
                    )
                    _G.nowings = false
                    detect2 =
                        val:GetPropertyChangedSignal("Value"):Connect(
                        function(amo)
                            if val.Value == 6 then
                                for i = 1, #tab do
                                    spawn(
                                        function()
                                            local part = welds[i].Part1
                                            local sl = tab[i]
                                            local bs = tab2[i]
                                            part.Transparency = 1
                                            while true do
                                                game["Run Service"].Heartbeat:wait()
                                                if _G.Mode ~= 0 then
                                                    break
                                                end
                                                local cfr = part.CFrame * CFrame.Angles(0, math.rad(180), 0)
                                                bs.Position = cfr.p
                                                sl.CFrame = cfr
                                            end
                                            part:Destroy()
                                            sl:Destroy()
                                        end
                                    )
                                end
                                detect:Disconnect()
                                detect2:Disconnect()
                                val:Destroy()
                            end
                        end
                    )

                    local rot = 0
                    while true do
                        local delta = game["Run Service"].Heartbeat:wait()
                        rot = rot + 50 * delta
                        rootweld.C0 = CFrame.new(0, 4, 2) * CFrame.Angles(0, 0, math.rad(rot))
                    end
                    k:Stop()
                elseif _G.Mode == 0 and _G.Trans == false then
                    _G.Mode = 1
                    _G.Trans = true
                    swordequipplay:Play()
                    wait(0.2)
                    swordequipplay:AdjustSpeed(0)

                    player = game.Players.LocalPlayer
                    char = player.Character
                    local TweenService = game:GetService("TweenService")

                    for i = 1, 2, 1 do
                        spawn(
                            function()
                                local args = {
                                    [1] = {
                                        [1] = getrenv()._G.Pass,
                                        [2] = "KnifeProjectileYellow",
                                        [3] = "Spawn",
                                        [4] = Vector3.new(0, 3000, 0)
                                    }
                                }

                                game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                            end
                        )
                    end

                    local slashes = {}
                    local p = game:GetService("Players").LocalPlayer
                    local character = p.Character or p.CharacterAdded:Wait()
                    local mouse = p:GetMouse()
                    local setOrb = false
                    character:WaitForChild("Attacks").ChildAdded:Connect(
                        function(child)
                            if child.Name == "YellowBlast" then
                                child:WaitForChild("Hitted"):Destroy()
                                child:WaitForChild("Particle"):Destroy()
                                table.insert(slashes, child)
                                print(child.Name)
                            end
                        end
                    )
                    local speed = 0.1
                    local lradius = 15

                    local radius = 1
                    local ts = 0
                    local rad, cos, sin = math.rad, math.cos, math.sin
                    local root = p.Character:FindFirstChild("Left Arm")
                    local ts2 = 0
                    local root2 = p.Character:FindFirstChild("Right Arm")
                    local detect
                    local bp = Instance.new("BodyPosition", child)
                    bp.Name = "Client"
                    bp.P = 30000
                    bp.D = 150
                    bp.Position = char.HumanoidRootPart.Position
                    local bp2 = Instance.new("BodyPosition", child)
                    bp2.Name = "Client"
                    bp2.P = 30000
                    bp2.D = 150
                    bp2.Position = char.HumanoidRootPart.Position
                    detect =
                        game:GetService("RunService").RenderStepped:Connect(
                        function()
                            if _G.Mode == 0 then
                                table.remove(slashes, 1)

                                table.remove(slashes, 2)
                                detect:disconnect()
                            end
                            for i, v in pairs(slashes) do
                                if not v or not v.Parent then
                                    table.remove(slashes, i)
                                    return
                                end
                                local y = root.Position.Y - 0.5
                                local z = root.Position.Z
                                local x = root.Position.X + radius * cos(rad(ts))
                                bp.Position = Vector3.new(x, y, root.Position.Z + radius * sin(rad(ts)))
                                slashes[1].Position = Vector3.new(x, y, root.Position.Z + radius * sin(rad(ts)))
                                ts = ts + 5

                                local y = root2.Position.Y - 0.5
                                local z = root2.Position.Z
                                local x = root2.Position.X + radius * cos(rad(ts2))
                                bp2.Position = Vector3.new(x, y, root2.Position.Z + radius * sin(rad(ts2)))
                                slashes[2].Position = Vector3.new(x, y, root2.Position.Z + radius * sin(rad(ts2)))
                                ts2 = ts2 + 5
                            end
                        end
                    )

                    wait(0.5)
                    swordequipplay:AdjustSpeed(1)

                    _G.Trans = false
                    wait(0.2)
                    swordequipplay:Stop()
                    k:Play()
                    k:AdjustSpeed(1)
                    local userInputService = game:GetService("UserInputService")
                    on = true
                    posz = 0
                    posx = 0
                    times = 0

                    local effects = game.Players.LocalPlayer.Character.Effects
                    local rs = game:GetService("RunService")
                    local userInputService = game:GetService("UserInputService")
                    on = true
                    posz = 0
                    posx = 0
                    times = 0

                    _G.closed = true
                    local effects = game.Players.LocalPlayer.Character.Effects
                    local rs = game:GetService("RunService")

                    local player = game.Players.LocalPlayer
                    local Character = player.Character
                    local args = {
                        [1] = {
                            [1] = getrenv()._G.Pass,
                            [2] = "KnifeProjectileOrange",
                            [3] = "Spawn",
                            [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position +
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10 +
                                Vector3.new(math.random(0, 35), math.random(0, 30), math.random(0, 33))
                        }
                    }
                    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                    local projectiles = game.Players.LocalPlayer.Character.Attacks

                    _G.closed = false
                    for i, v in pairs(projectiles:GetChildren()) do
                        if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
                            v:WaitForChild("BodyVelocity"):Destroy()
                            v:WaitForChild("ParticleEmitter"):Destroy()

                            while wait(0.005) do
                                if _G.closed then
                                    break
                                end
                                times = times + 1
                                if times == 6 then
                                    times = 0
                                end
                                if times == 1 then
                                    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0, 9, 0)
                                elseif times == 2 then
                                    v.Position = Character.HumanoidRootPart.Position - Vector3.new(10, 9, 0)
                                elseif times == 3 then
                                    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0, 9, 10)
                                elseif times == 4 then
                                    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0, 9, -10)
                                elseif times == 5 then
                                    v.Position = Character.HumanoidRootPart.Position - Vector3.new(-10, 9, 0)
                                end
                                local args2 = {
                                    [1] = {
                                        [1] = getrenv()._G.Pass,
                                        [2] = "KnifeProjectileOrange",
                                        [3] = "Hit",
                                        [4] = v,
                                        [5] = v.CFrame,
                                        [6] = workspace.Terrain
                                    }
                                }

                                game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args2))
                            end
                        end
                    end
                end
            end
        end
    end
)

-- kill

player.Chatted:Connect(
    function(mag, secipient)
        if string.sub(mag, 1, 1) == ":" then
            print("false command")
            local splitstring = string.split(mag, " ")
            if splitstring[1] == ":kill" then
                if string.sub(string.lower("all"), 1, string.len(splitstring[2])) == string.lower(splitstring[2]) then
                    local args = {
                        [1] = {
                            [1] = getrenv()._G.Pass,
                            [2] = "KnifeProjectileOrange",
                            [3] = "Spawn",
                            [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position +
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10 +
                                Vector3.new(math.random(0, 35), math.random(0, 30), math.random(0, 33))
                        }
                    }
                    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                    local player = game.Players.LocalPlayer
                    local Character = player.Character
                    for _, b in pairs(game.workspace:GetChildren()) do
                        for i = 1, #done do
                            if b.Name ~= done[i] then
                                pass = pass + 1
                            end
                        end
                        if pass == #done then
                            if b:FindFirstChildOfClass("Humanoid") and b.Humanoid.Health ~= 0 then
                                if b:FindFirstChild("Torso") then
                                    if
                                        b.Name ~= player.Name and b.Name ~= "Hateball Defense Dummy" and
                                            b.Name ~= "Defense:250 Dummy" and
                                            b.Name ~= "HalfStaminaDummy" and
                                            b.Name ~= "BlockingDummy" and
                                            b.Name ~= "NoStaminaDummy" and
                                            b.Name ~= "AttackDummy" and
                                            b.Name ~= "DodgingDummy" and
                                            b.Name ~= "Defense:150 Dummy" and
                                            b.Name ~= "Hateball Defense Dummy"
                                     then
                                        if dead == #done then
                                            print(b)
                                            local effects = game.Players.LocalPlayer.Character.Effects
                                            local projectiles = game.Players.LocalPlayer.Character.Attacks
                                            for i, v in pairs(projectiles:GetChildren()) do
                                                if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
                                                    local detect
                                                    detect =
                                                        rs.Heartbeat:Connect(
                                                        function()
                                                            if b.Humanoid.Health == 0 or sdis == false then
                                                                table.insert(done, b.Name)
                                                                print(b) --should print a player only once
                                                                print("hi")
                                                                looped = 0

                                                                wait(0.5)

                                                                detect:disconnect()
                                                            else
                                                                if looped == 0 then
                                                                    dead = dead + 1

                                                                    looped = looped + 1
                                                                end
                                                                v.Position = b.LockOn.Position
                                                                local args = {
                                                                    [1] = {
                                                                        [1] = getrenv()._G.Pass,
                                                                        [2] = "KnifeProjectileOrange",
                                                                        [3] = "Hit",
                                                                        [4] = v,
                                                                        [5] = b.HumanoidRootPart.CFrame,
                                                                        [6] = b.HumanoidRootPart
                                                                    }
                                                                }

                                                                game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(
                                                                    unpack(args)
                                                                )
                                                            end
                                                        end
                                                    )
                                                else
                                                    local args = {
                                                        [1] = {
                                                            [1] = getrenv()._G.Pass,
                                                            [2] = "KnifeProjectileOrange",
                                                            [3] = "Spawn",
                                                            [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position +
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *
                                                                    10 +
                                                                Vector3.new(
                                                                    math.random(0, 35),
                                                                    math.random(0, 30),
                                                                    math.random(0, 33)
                                                                )
                                                        }
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(
                                                        unpack(args)
                                                    )
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)

--clearlag
game.Players.LocalPlayer.Character.Effects.ChildAdded:Connect(
    function(child)
        if child.Name == "CarrotHitEffect" then
            child:Destroy()
        end
    end
)

-- godmode
wait(5)
game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(
    function()
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            game.Players.LocalPlayer.Character.Humanoid.Health = 1
        end
    end
)
