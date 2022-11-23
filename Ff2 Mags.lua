--LocalPlayer Name
local Player = game.Players.LocalPlayer
--Main Stuff
if game.PlaceId == 8204899140 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
OrionLib:MakeNotification({
	Name = "Loading...",
	Content = "Loading The UI",
	Image = "rbxassetid://4483345998",
	Time = 3
})
local Window = OrionLib:MakeWindow({Name = "DreadzHub | FF2 Mags", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "Loaded!",
	Content = "Loaded The FF2 UI, "..Player.Name.."!",
	Image = "rbxassetid://4483345998",
	Time = 3
})
--Tabs
local Tab1 = Window:MakeTab({
	Name = "Links",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Tab2 = Window:MakeTab({
	Name = "Mags",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--Links
local Section = Tab1:AddSection({
	Name = "Links"
})
Tab1:AddLabel("Consider Checking Us Out!")
Tab1:AddButton({
	Name = "Copy YT Link",
	Callback = function()
       setclipboard("https://www.youtube.com/channel/UCqR74O-JloMP2r5X7-0XJQQ?sub_confirmation=1")
       OrionLib:MakeNotification({
	Name = "Copied!",
	Content = "YT Link Copied!",
	Image = "rbxassetid://4483345998",
	Time = 3
})
  	end    
})
Tab1:AddButton({
	Name = "Copy Discord Server Link",
	Callback = function()
       setclipboard("https://discord.gg/dzSHV7kGpG")
              OrionLib:MakeNotification({
	Name = "Copied!",
	Content = "Discord Server Link Copied!",
	Image = "rbxassetid://4483345998",
	Time = 3
})
  	end    
})
--Mags
local Section = Tab2:AddSection({
	Name = "Mags"
})
Tab2:AddLabel("Mags Should Auto-Disable If Voted QB")
--Mag Function (NEEDED)
local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")
function magBall(ball)
   if ball and player.Character then
       firetouchinterest(player.Character["Left Arm"], ball, 0)
       firetouchinterest(player.Character["Right Arm"], ball, 0)
       task.wait()
       firetouchinterest(player.Character["Left Arm"], ball, 1)
       firetouchinterest(player.Character["Right Arm"], ball, 1)
   end
end
--Toggle
Tab2:AddToggle({
	Name = "Mags (OP)",
	Default = false,
	Callback = function(bool)
	shared.Mags = bool
    rs.Stepped:Connect(function()
    if shared.Mags and not game:GetService("ReplicatedStorage").Values.HomeQB.Value:match(player.Name) and not game:GetService("ReplicatedStorage").Values.AwayQB.Value:match(player.Name) then
       for i,v in pairs(workspace:GetChildren()) do
           if v.Name == "Football" and v:IsA("BasePart") then
               wait()
               local mag = (player.Character.Torso.Position - v.Position).Magnitude
               magBall(v)
               
           end
        end
    else
        wait()
        
    end
    if shared.Mags and game:GetService("ReplicatedStorage").Values.HomeQB.Value:match(player.Name) or game:GetService("ReplicatedStorage").Values.AwayQB.Value:match(player.Name) then
        print('Magz Auto-Disabled as QB')
    end
end)
	end    
})
elseif game.PlaceId == 8206123457 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
OrionLib:MakeNotification({
	Name = "Loading...",
	Content = "Loading The UI",
	Image = "rbxassetid://4483345998",
	Time = 3
})
local Window = OrionLib:MakeWindow({Name = "DreadzHub | FF2 Practice Mags", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "Loaded!",
	Content = "Loaded The FF2 UI, "..Player.Name.."!",
	Image = "rbxassetid://4483345998",
	Time = 3
})
--Tabs
local Tab1 = Window:MakeTab({
	Name = "Links",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Tab2 = Window:MakeTab({
	Name = "Mags",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--Links
local Section = Tab1:AddSection({
	Name = "Links"
})
Tab1:AddLabel("Consider Checking Us Out!")
Tab1:AddButton({
	Name = "Copy YT Link",
	Callback = function()
       setclipboard("https://www.youtube.com/channel/UCqR74O-JloMP2r5X7-0XJQQ?sub_confirmation=1")
       OrionLib:MakeNotification({
	Name = "Copied!",
	Content = "YT Link Copied!",
	Image = "rbxassetid://4483345998",
	Time = 3
})
  	end    
})
Tab1:AddButton({
	Name = "Copy Discord Server Link",
	Callback = function()
       setclipboard("https://discord.gg/dzSHV7kGpG")
              OrionLib:MakeNotification({
	Name = "Copied!",
	Content = "Discord Server Link Copied!",
	Image = "rbxassetid://4483345998",
	Time = 3
})
  	end    
})
--Mags
local Section = Tab2:AddSection({
	Name = "Mags"
})
Tab2:AddLabel("Mags Are OP With The New Long Arms")
--Mag Function (NEEDED)
local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")
function magBall(ball)
   if ball and player.Character then
       firetouchinterest(player.Character["Left Arm"], ball, 0)
       firetouchinterest(player.Character["Right Arm"], ball, 0)
       task.wait()
       firetouchinterest(player.Character["Left Arm"], ball, 1)
       firetouchinterest(player.Character["Right Arm"], ball, 1)
   end
end
--Toggle
Tab2:AddToggle({
	Name = "Mags (OP)",
	Default = false,
	Callback = function(bool)
	shared.Mags = bool
    rs.Stepped:Connect(function()
    if shared.Mags then
       for i,v in pairs(workspace:GetChildren()) do
           if v.Name == "Football" and v:IsA("BasePart") then
               wait()
               local mag = (player.Character.Torso.Position - v.Position).Magnitude
               magBall(v)
               
           end
        end
    else
        wait()
        
    end
end)
	end    
})
--Long Arms Function
local Playeer = game:GetService('Players').LocalPlayer
--Main
Tab2:AddToggle({
	Name = "Long Arms",
	Default = false,
	Callback = function(Value)
		if Value == true then
Playeer.Character['Left Arm'].Size = Vector3.new(1, 10, 1)
Playeer.Character['Right Arm'].Size = Vector3.new(1, 10, 1)
 
Playeer.Character['Left Arm'].Transparency = 0
Playeer.Character['Right Arm'].Transparency = 0
else
Playeer.Character['Left Arm'].Size = Vector3.new(1, 2, 1)
Playeer.Character['Right Arm'].Size = Vector3.new(1, 2, 1)
 
Playeer.Character['Left Arm'].Transparency = 0
Playeer.Character['Right Arm'].Transparency = 0
end
	end    
})
Tab2:AddToggle({
	Name = "Long Arms Transparency",
	Default = false,
	Callback = function(Value)
		if Value == true then
Playeer.Character['Left Arm'].Transparency = 1
Playeer.Character['Right Arm'].Transparency = 1
else
Playeer.Character['Left Arm'].Transparency = 0
Playeer.Character['Right Arm'].Transparency = 0
end
	end    
})
Tab2:AddSlider({
	Name = "Arm Length",
	Min = 1,
	Max = 40,
	Default = 2,
	Color = Color3.fromRGB(199,40,40),
	Increment = 1,
	ValueName = "Length",
	Callback = function(Value)
Playeer.Character['Left Arm'].Size = Vector3.new(1, Value, 1)
Playeer.Character['Right Arm'].Size = Vector3.new(1, Value, 1)
	end    
})
local Section = Tab2:AddSection({
	Name = "Extras"
})
Tab2:AddDropdown({
	Name = "FE Animations",
	Default = "No Animation Chosen!",
	Options = {"No Animation Chosen!", "Fake Throw", "Fake Kick", "Fake Dab", "Fake Hitstick", "Fake Kneel", "Fair Catch", "Incomplete Pass", "Touchdown Signal", "Fake Block"},
	Callback = function(Value)
if Value == "Fake Throw" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695532114"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
if Value == "Fake Kick" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695538622"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
if Value == "Fake Dab" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695549792"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
if Value == "Fake Hitstick" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695544849"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
if Value == "Fake Kneel" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695535660"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
if Value == "Fake Block" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695551500"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
if Value == "Fair Catch" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695548117"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
if Value == "Incomplete Pass" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695542947"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
if Value == "Touchdown Signal" then
    for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "3695541300"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
	end    
})
end
