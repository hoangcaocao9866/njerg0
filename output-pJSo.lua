local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MMB HUB", "Midnight")
local Tab = Window:NewTab("SBR")
local Section = Tab:NewSection("Fling")

local osPart = Instance.new("Part")
osPart.Name = ("oneshot")
osPart.Transparency = 0
osPart.Anchored = true
osPart.Size = Vector3.new(100, 5, 100)
osPart.Position = Vector3.new(5000000, 100, 5000000) -- (X, Y, Z)
osPart.Parent = game.Workspace

local myPart = Instance.new("Part")
myPart.Name = ("yomama")
myPart.Transparency = 0
myPart.Anchored = true
myPart.Size = Vector3.new(10, 1, 10)
myPart.Position = Vector3.new(25000, 1, 25000)
myPart.Parent = game.Workspace

local plater = game:GetService("Players"):GetChildren()
local platerTable = {}

for i,v in pairs(plater) do
	table.insert(platerTable, v.Name)
	end
Section:NewKeybind("Hide GUI", "KeybindInfo", Enum.KeyCode.M, function()
	Library:ToggleUI()
end)
local dropdown = Section:NewDropdown("Choose Target","Info", platerTable, function(value)
 target = value;
end)
Section:NewButton("Pull Target", "ButtonInfo", function()
	local ofPart = Instance.new("Part")
	ofPart.Name = ("oldcfame")
	ofPart.Transparency = 1
	ofPart.Anchored = true
	ofPart.Size = Vector3.new(10, 1, 10)
    ofPart.Parent = game.Workspace
	ofPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[target].Character.HumanoidRootPart.CFrame * CFrame.new (0, 5, 0)
wait(0.1)
local A_1 = "InputBegan"
local A_2 = 
{
	["Input"] = Enum.KeyCode.Y
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
local A_1 = "InputEnded"
local A_2 = 
{
	["Input"] = Enum.KeyCode.Y
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oneshot.CFrame * CFrame.new(0, 10, 0)
wait(1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oldcfame.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
game:GetService("Workspace").oldcfame:Destroy()

end)

Section:NewButton("Fling Nearest PP", "REQ : BB + auto pull learned", function()
	local ofPart = Instance.new("Part")
	ofPart.Name = ("oldcfame")
	ofPart.Transparency = 1
	ofPart.Anchored = true
	ofPart.Size = Vector3.new(10, 1, 10)
    ofPart.Parent = game.Workspace
	ofPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
	local A_1 = "InputBegan"
local A_2 = 
{
	["Input"] = Enum.KeyCode.Y
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)

local A_1 = "InputEnded"
local A_2 = 
{
	["Input"] = Enum.KeyCode.Y
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oneshot.CFrame * CFrame.new(0, 10, 0)
wait(1.5)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oldcfame.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
game:GetService("Workspace").oldcfame:Destroy()
end)
Section:NewKeybind("Fling Nearest Keybind", "KeybindInfo", Enum.KeyCode.U, function()
	local ofPart = Instance.new("Part")
	ofPart.Name = ("oldcfame")
	ofPart.Transparency = 1
	ofPart.Anchored = true
	ofPart.Size = Vector3.new(10, 1, 10)
    ofPart.Parent = game.Workspace
	ofPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
	local A_1 = "InputBegan"
local A_2 = 
{
	["Input"] = Enum.KeyCode.Y
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)

local A_1 = "InputEnded"
local A_2 = 
{
	["Input"] = Enum.KeyCode.Y
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oneshot.CFrame * CFrame.new(0, 10, 0)
wait(1.5)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oldcfame.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
game:GetService("Workspace").oldcfame:Destroy()
end)
Section:NewButton("TP back if flung", "TP back if flung", function()
wait(0.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").yomama.CFrame * CFrame.new(0, 10, 0)
wait(0.5)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
end)
local Section = Tab:NewSection("ESP")
Section:NewButton("ESP invis Players", "Show Invis Players", function()
	local c = workspace.CurrentCamera
	local ps = game:GetService("Players")
	local lp = ps.LocalPlayer
	local rs = game:GetService("RunService")
	
	local function getdistancefc(part)
		return (part.Position - c.CFrame.Position).Magnitude
	end
	
	local function esp(p,cr)
		local h = cr:WaitForChild("Humanoid")
		local hrp = cr:WaitForChild("HumanoidRootPart")
	
		local text = Drawing.new("Text")
		text.Visible = false
		text.Center = true 
		text.Outline = true 
		text.Font = 2
		text.Color = Color3.fromRGB(255,255,255)
		text.Size = 16
	
		local c1 
		local c2 
		local c3 
	
		local function dc()
			text.Visible = false
			text:Remove()
			if c1 then
				c1:Disconnect()
				c1 = nil 
			end
			if c2 then
				c2:Disconnect()
				c2 = nil 
			end
			if c3 then
				c3:Disconnect()
				c3 = nil 
			end
		end
	
		c2 = cr.AncestryChanged:Connect(function(_,parent)
			if not parent then
				dc()
			end
		end)
	
		c3 = h.HealthChanged:Connect(function(v)
			if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
				dc()
			end
		end)
	
		c1 = rs.RenderStepped:Connect(function()
			local hrp_pos,hrp_os = c:WorldToViewportPoint(hrp.Position)
			if hrp_os then
				text.Position = Vector2.new(hrp_pos.X,hrp_pos.Y)
				text.Text = p.Name .. ' ('..tostring(math.floor(getdistancefc(hrp)))..' ms)'
				text.Visible = true
			else
				text.Visible = false 
			end
		end)
	end
	
	local function p_added(p)
		if p.Character then
			esp(p,p.Character)
		end
		p.CharacterAdded:Connect(function(cr)
			esp(p,cr)
		end)
	end
	
	
	for i,p in next, ps:GetPlayers() do 
		if p ~= lp then
			p_added(p)
		end
	end
	
	ps.PlayerAdded:Connect(p_added)
end)
Section:NewButton("ESP Body", "SHOW Invis Body / Players ESP", function()
	local c = workspace.CurrentCamera
	local ps = game:GetService("Players")
	local lp = ps.LocalPlayer
	local rs = game:GetService("RunService")
	
	local function getdistancefc(part)
		return (part.Position - c.CFrame.Position).Magnitude
	end
	
	local function esp(p,cr)
		local h = cr:WaitForChild("Humanoid")
		local hrp = cr:WaitForChild("Head")
	
		local text = Drawing.new("Text")
		text.Visible = false
		text.Center = true 
		text.Outline = true 
		text.Font = 2
		text.Color = Color3.fromRGB(255,255,255)
		text.Size = 16
	
		local c1 
		local c2 
		local c3 
	
		local function dc()
			text.Visible = false
			text:Remove()
			if c1 then
				c1:Disconnect()
				c1 = nil 
			end
			if c2 then
				c2:Disconnect()
				c2 = nil 
			end
			if c3 then
				c3:Disconnect()
				c3 = nil 
			end
		end
	
		c2 = cr.AncestryChanged:Connect(function(_,parent)
			if not parent then
				dc()
			end
		end)
	
		c3 = h.HealthChanged:Connect(function(v)
			if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
				dc()
			end
		end)
	
		c1 = rs.RenderStepped:Connect(function()
			local hrp_pos,hrp_os = c:WorldToViewportPoint(hrp.Position)
			if hrp_os then
				text.Position = Vector2.new(hrp_pos.X,hrp_pos.Y)
				text.Text = p.Name .. ' ('..tostring(math.floor(getdistancefc(hrp)))..' ms)'
				text.Visible = true
			else
				text.Visible = false 
			end
		end)
	end
	
	local function p_added(p)
		if p.Character then
			esp(p,p.Character)
		end
		p.CharacterAdded:Connect(function(cr)
			esp(p,cr)
		end)
	end
	
	
	for i,p in next, ps:GetPlayers() do 
		if p ~= lp then
			p_added(p)
		end
	end
	
	ps.PlayerAdded:Connect(p_added)
end)
local Section = Tab:NewSection("Safe Place.")
Section:NewButton("Safe Place", "Teleport To Safe Place", function()
wait(0.5)
local faPart = Instance.new("Part")
faPart.Name = ("oldsf")
faPart.Transparency = 1
faPart.Anchored = true
faPart.Size = Vector3.new(1, 1, 1)
faPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
faPart.Parent = game.Workspace
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").yomama.CFrame * CFrame.new(0, 10, 0)
end)
Section:NewButton("TP back (after tp to safe place)", "Teleport To Back", function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oldsf.CFrame * CFrame.new(0, 10, 0)
	game:GetService("Workspace").oldsf:Destroy()
end)
Section:NewSlider("Low HP:", "Set low hp", 70, 30, function(lha) -- 500 (MaxValue) | 0 (MinValue)
    lowhp = lha
end)
Section:NewButton("Enable Auto TP if low", "Enable Auto TP to safe place if low", function()
getgenv().Toggled = true
while getgenv().Toggled == true do
    wait(0.1)
	if game:GetService("Players").LocalPlayer.Character.Humanoid.Health < lowhp then 
		local faPart = Instance.new("Part")
		faPart.Name = ("oldsf")
		faPart.Transparency = 1
		faPart.Anchored = true
		faPart.Size = Vector3.new(1, 1, 1)
		faPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
		faPart.Parent = game.Workspace
     wait(0.1)
	 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").yomama.CFrame * CFrame.new(0, 10, 0)
     wait(0.5)
	 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").yomama.CFrame * CFrame.new(0, 10, 0)
     wait(0.5)
	 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").yomama.CFrame * CFrame.new(0, 10, 0)
     wait(0.5)
	 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").yomama.CFrame * CFrame.new(0, 10, 0)
     wait(0.5)
	 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").yomama.CFrame * CFrame.new(0, 10, 0)
     wait(0.5)
local A_1 = "InputBegan"
local A_2 = 
{
	["Input"] = Enum.KeyCode.P
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
local A_1 = "InputEnded"
local A_2 = 
{
	["Input"] = Enum.KeyCode.P
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
wait(10)
end
end
end)
Section:NewButton("Disable Auto TP if low", "Disable Auto TP to safe place if low", function()
getgenv().Toggled = false
end)
local Section = Tab:NewSection("PlayerTP")
local dropdown = Section:NewDropdown("Choose Target","Info", platerTable, function(valua)
	tpplat = valua
   end)
Section:NewButton("TP to player", "TP you to player", function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[tpplat].Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
end)
Section:NewButton("TP to player body (invis exploiters)", "TP you to player", function()
	local ptPart = Instance.new("Part")
	ptPart.Name = ("isnveri")
	ptPart.Transparency = 0
	ptPart.Anchored = true
	ptPart.Size = Vector3.new(100, 1, 100)
	ptPart.CFrame = game:GetService("Players")[tpplat].Character.Head.CFrame
	ptPart.Parent = game.Workspace
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[tpplat].Character.Head.CFrame * CFrame.new(0, -5, 0)
end)
Section:NewButton("Delete Part in tp body", "TP you to player", function()
game:GetService("Workspace").isnveri:Destroy()
end)
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Misc")
Section:NewButton("Invisible", "Invisible", function()
if game.PlaceId == 2809202155 then
local ofPart = Instance.new("Part")
ofPart.Name = ("oldcfame")
ofPart.Transparency = 1
ofPart.Anchored = true
ofPart.Size = Vector3.new(10, 1, 10)
ofPart.Parent = game.Workspace
ofPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
local os3Part = Instance.new("Part")
os3Part.Name = ("invis")
os3Part.Transparency = 0
os3Part.Anchored = true
os3Part.Size = Vector3.new(10, 5, 10)
os3Part.Position = Vector3.new(-303.906, -33.2701, -1081.32) -- (X, Y, Z)
os3Part.Parent = game.Workspace


game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").invis.CFrame * CFrame.new(0, 10, 0)

game:GetService("Players").LocalPlayer.Character.UpperTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.UpperTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.LowerTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.LowerTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.LowerTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.LeftFoot:Destroy()
game:GetService("Players").LocalPlayer.Character.RightFoot:Destroy()
game:GetService("Players").LocalPlayer.Character.LeftUpperLeg:Destroy()
game:GetService("Players").LocalPlayer.Character.LeftLowerLeg:Destroy()
game:GetService("Players").LocalPlayer.Character.RightUpperLeg:Destroy()
game:GetService("Players").LocalPlayer.Character.RightLowerLeg:Destroy()
wait(0.1)
game:GetService("Players").LocalPlayer.Character.UpperTorso.Waist:Destroy()
wait(0.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oldcfame.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
game:GetService("Workspace").oldcfame:Destroy()
end


if game.PlaceId == 4643697430 then
local ofPart = Instance.new("Part")
ofPart.Name = ("oldcfame")
ofPart.Transparency = 1
ofPart.Anchored = true
ofPart.Size = Vector3.new(10, 1, 10)
ofPart.Parent = game.Workspace
ofPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
local os3Part = Instance.new("Part")
os3Part.Name = ("invis")
os3Part.Transparency = 0
os3Part.Anchored = true
os3Part.Size = Vector3.new(10, 5, 10)
os3Part.Position = Vector3.new(-481.122, 406.114, 7428.07) -- (X, Y, Z)
os3Part.Parent = game.Workspace


game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").invis.CFrame * CFrame.new(0, 10, 0)

game:GetService("Players").LocalPlayer.Character.UpperTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.UpperTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.LowerTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.LowerTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.LowerTorso.BallSocketConstraint:Destroy()
game:GetService("Players").LocalPlayer.Character.LeftFoot:Destroy()
game:GetService("Players").LocalPlayer.Character.RightFoot:Destroy()
game:GetService("Players").LocalPlayer.Character.LeftUpperLeg:Destroy()
game:GetService("Players").LocalPlayer.Character.LeftLowerLeg:Destroy()
game:GetService("Players").LocalPlayer.Character.RightUpperLeg:Destroy()
game:GetService("Players").LocalPlayer.Character.RightLowerLeg:Destroy()
wait(0.1)
game:GetService("Players").LocalPlayer.Character.UpperTorso.Waist:Destroy()
wait(0.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oldcfame.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
game:GetService("Workspace").oldcfame:Destroy()
wait(0.1)
game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
game:GetService("Lighting").FogColor = Color3.new(1, 1, 1)
game:GetService("Lighting").FogEnd = ("100000000")
game:GetService("Lighting").FogStart = ("100000000")
game:GetService("Lighting").OutdoorAmbient = Color3.new(1, 1, 1)
end
end)
Section:NewButton("Learn Worthiness II", "Learn Worthiness II", function()
local A_1 = "LearnSkill"
local A_2 = 
{
	["Skill"] = "Worthiness II", 
	["SkillTreeType"] = "Character"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteFunction
Event:InvokeServer(A_1, A_2)
end)
local Tab = Window:NewTab("AUTO STORY")
local Section = Tab:NewSection("auto farm story")
Section:NewButton("auto farm story", "fully automatic story farm, REQ: Any Human Stand + 5k money + do giorno first quest and get the suitcase", function()
local osPart = Instance.new("Part")
osPart.Name = ("autofarming")
osPart.Transparency = 1
osPart.Anchored = true
osPart.Size = Vector3.new(1, 1, 1)
osPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
osPart.Parent = game.Workspace

local ccaPart = Instance.new("Part")
ccaPart.Name = ("stpar")
ccaPart.Transparency = 0
ccaPart.Anchored = true
ccaPart.Size = Vector3.new(10, 1, 10)
ccaPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
ccaPart.Parent = game.Workspace
wait(1)
if game:GetService("Players").LocalPlayer.Character.SummonedStand.Value == false then
local A_1 = "ToggleStand"
local A_2 = "Toggle"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteFunction
Event:InvokeServer(A_1, A_2)
wait(1)
end
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.StandAttach.Parent = game:GetService("Workspace").autofarming
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Help Giorno by Defeating Security Guards") then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Storyline #1", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue6"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(2)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Return Koichi's Suitcase") then
local A_3 = "EndDialogue"
local A_4 = 
{
	["NPC"] = "Storyline #2", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue3"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_3, A_4)
wait(1)
local A_5 = "EndDialogue"
local A_6 = 
{
	["NPC"] = "Storyline #3", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue3"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_5, A_6)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat Leaky Eye Luca") then
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").Living["Leaky Eye Luca"].HumanoidRootPart.CFrame * CFrame.new(0, 75, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
getgenv().autolek = true
while getgenv().autolek == true do
wait(0.0000000000000000000001)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Leaky Eye Luca"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living["Leaky Eye Luca"].Health.Value == 0 then
getgenv().autolek = false
end
end
end
wait(1)
if getgenv().autolek == false then
local A_9 = "EndDialogue"
local A_10 = 
{
	["NPC"] = "Storyline #3", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue6"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_9, A_10)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat Bucciarati") then
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").Living["Bucciarati"].HumanoidRootPart.CFrame * CFrame.new(0, 75, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
getgenv().autobrun = true
while getgenv().autobrun == true do
wait(0.0000000000000000000001)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Bucciarati"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Bucciarati.Health.Value == 0 then
getgenv().autobrun = false
end
end
end
wait(2)
if getgenv().autobrun == false then
    local A_1 = "EndDialogue"
    local A_2 = 
    {
        ["NPC"] = "Storyline #4", 
        ["Option"] = "Option1", 
        ["Dialogue"] = "Dialogue3"
    }
    local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
    Event:FireServer(A_1, A_2)
end
wait(2)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Give Giorno The Lighter") then
    local A_1 = "EndDialogue"
    local A_2 = 
    {
        ["NPC"] = "Storyline #5", 
        ["Option"] = "Option1", 
        ["Dialogue"] = "Dialogue5"
    }
    local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
    Event:FireServer(A_1, A_2)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Meet Fugo") then
    local A_1 = "EndDialogue"
    local A_2 = 
    {
        ["NPC"] = "Storyline #6", 
        ["Option"] = "Option1", 
        ["Dialogue"] = "Dialogue5"
    }
    local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
    Event:FireServer(A_1, A_2)
end
wait(0.5)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Meet Mista") then
    local A_1 = "EndDialogue"
    local A_2 = 
    {
        ["NPC"] = "Storyline #7", 
        ["Option"] = "Option1", 
        ["Dialogue"] = "Dialogue5"
    }
    local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
    Event:FireServer(A_1, A_2)
end
wait(0.5)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Meet Narancia") then
    local A_1 = "EndDialogue"
    local A_2 = 
    {
        ["NPC"] = "Storyline #8", 
        ["Option"] = "Option1", 
        ["Dialogue"] = "Dialogue4"
    }
    local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
    Event:FireServer(A_1, A_2)
end
wait(0.5)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Meet Abbacchio") then
    local A_1 = "EndDialogue"
    local A_2 = 
    {
        ["NPC"] = "Storyline #9", 
        ["Option"] = "Option1", 
        ["Dialogue"] = "Dialogue7"
    }
    local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
    Event:FireServer(A_1, A_2)

    local A_3 = "EndDialogue"
    local A_4 = 
    {
	["NPC"] = "Storyline #10", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue6"
    }
    local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
    Event:FireServer(A_3, A_4)
end
wait(0.5)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Collect $5,000 To Cover For Popo's Real Fortune") then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Storyline #11", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue8"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat Fugo And His Purple Haze") then
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").Living["Fugo"].HumanoidRootPart.CFrame * CFrame.new(0, 75, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
getgenv().autofug = true
while getgenv().autofug == true do
wait(0.0000000000000000000001)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Fugo"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Fugo.Health.Value == 0 then
getgenv().autofug = false
end
end
end
wait(1)
if getgenv().autofug == false then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Storyline #11", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue11"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat Pesci") then
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").Living["Pesci"].HumanoidRootPart.CFrame * CFrame.new(0, 75, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
getgenv().autopep = true
while getgenv().autopep == true do
wait(0.0000000000000000000001)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Pesci"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Pesci.Health.Value == 0 then
getgenv().autopep = false
end
end
end
wait(1)
if getgenv().autopep == false then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Storyline #11", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue13"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
wait(1)
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Storyline #12", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue3"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat Ghiaccio") then
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").Living["Ghiaccio"].HumanoidRootPart.CFrame * CFrame.new(0, 75, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
getgenv().autoghi = true
while getgenv().autoghi == true do
wait(0.0000000000000000000001)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Ghiaccio"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Ghiaccio.Health.Value == 0 then
getgenv().autoghi = false
end
end
end
wait(1)
if getgenv().autoghi == false then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Storyline #13", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue7"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
wait(1)
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Storyline #14", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue2"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(3)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat Diavolo") then
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").Living["Diavolo"].HumanoidRootPart.CFrame * CFrame.new(0, 125, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
getgenv().autodeo = true
while getgenv().autodeo == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Diavolo"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Diavolo.Health.Value == 0 then
getgenv().autodeo = false
end
end
end
wait(2)
if getgenv().autodeo == false then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Storyline #14", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue7"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
wait(10)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Storyline Completed") then
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end
end
end)
Section:NewButton("auto farm LVL", "auto farm LVL", function()
local osPart = Instance.new("Part")
osPart.Name = ("autofarming")
osPart.Transparency = 1
osPart.Anchored = true
osPart.Size = Vector3.new(1, 1, 1)
osPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
osPart.Parent = game.Workspace

local ccaPart = Instance.new("Part")
ccaPart.Name = ("stpar")
ccaPart.Transparency = 0
ccaPart.Anchored = true
ccaPart.Size = Vector3.new(10, 1, 10)
ccaPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
ccaPart.Parent = game.Workspace
wait(1)
if game:GetService("Players").LocalPlayer.Character.SummonedStand.Value == false then
local A_1 = "ToggleStand"
local A_2 = "Toggle"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteFunction
Event:InvokeServer(A_1, A_2)
end
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.StandAttach.Parent = game:GetService("Workspace").autofarming
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Level.Value > 24 and game:GetService("Players").LocalPlayer.PlayerStats.Level.Value < 30 then
getgenv().autofarmlv = true
while getgenv().autofarmlv == true do
wait(0.1)
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "William Zeppeli", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue4"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
wait(0.1)
getgenv().auto1 = true
while getgenv().auto1 == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Vampire"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").autofarming.CFrame * CFrame.new(0, 7, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Vampire.Health.Value == 0 then
getgenv().auto1 = false
wait(2)
getgenv().auto2 = true
while getgenv().auto2 == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Vampire"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").autofarming.CFrame * CFrame.new(0, 7, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Vampire.Health.Value == 0 then
getgenv().auto2 = false
wait(2)
getgenv().auto3 = true
while getgenv().auto3 == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Vampire"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").autofarming.CFrame * CFrame.new(0, 7, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Vampire.Health.Value == 0 then
getgenv().auto3 = false
wait(1.5)
if game:GetService("Players").LocalPlayer.PlayerStats.Level.Value == 30 then
getgenv().autofarmlv = false
end
end
end
end
end
end
end
end
end
wait(10)
if game:GetService("Players").LocalPlayer.PlayerStats.Level.Value > 29 and game:GetService("Players").LocalPlayer.PlayerStats.Level.Value < 35 then
getgenv().autofarmlv30 = true
while getgenv().autofarmlv30 == true do
wait(0.1)
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Doppio", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue5"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
wait(0.1)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").Living["Dio"].HumanoidRootPart.CFrame * CFrame.new(0, 75, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(1.5)
getgenv().autodio = true
while getgenv().autodio == true do
wait(0.0000000000000000000001)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Dio"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Dio.Health.Value == 0 then
getgenv().autodio = false
wait(1.5)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0)
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Level.Value == 35 then
getgenv().autofarmlv30 = false
end
end
end
end
end
wait(10)
if game:GetService("Players").LocalPlayer.PlayerStats.Level.Value > 34 and game:GetService("Players").LocalPlayer.PlayerStats.Level.Value < 50 then
getgenv().autofarmlv35 = true
while getgenv().autofarmlv35 == true do
wait(0.1)
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Dio", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue4"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
wait(0.1)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").Living["Jotaro"].HumanoidRootPart.CFrame * CFrame.new(0, 75, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
wait(0.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(1.5)
getgenv().autojoe = true
while getgenv().autojoe == true do
wait(0.0000000000000000000001)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Jotaro"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living.Jotaro.Health.Value == 0 then
getgenv().autojoe = false
wait(1.5)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0)
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Level.Value == 50 then
getgenv().autofarmlv35 = false
end
end
end
end
end
end)
Section:NewButton("disable auto farm", "disable auto farm", function()
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
wait(0.1)
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
wait(0.1)
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
wait(0.1)
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
wait(0.1)
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
end)
Section:NewButton("Auto Farm Cmoon", "Auto Farm Cmoon", function()

local osPart = Instance.new("Part")
osPart.Name = ("autofarming")
osPart.Transparency = 1
osPart.Anchored = true
osPart.Size = Vector3.new(1, 1, 1)
osPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
osPart.Parent = game.Workspace

local ccaPart = Instance.new("Part")
ccaPart.Name = ("stpar")
ccaPart.Transparency = 0
ccaPart.Anchored = true
ccaPart.Size = Vector3.new(10, 1, 10)
ccaPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
ccaPart.Parent = game.Workspace
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.StandAttach.Parent = game:GetService("Workspace").autofarming
local number = 0
local numbera = 0
local numberb = 0
local numberc = 0
local numberd = 0
if game:GetService("Players").LocalPlayer.Character.StandMorph["Stand Name"].Value == ("Whitesnake") then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Pucci", 
	["Option"] = "Option1", 
	["Dialogue"] = "Thugs"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat 30 Thugs (Dio's Plan)") then
wait(1)
getgenv().count = true
getgenv().qu1 = true
wait(0.5)
while getgenv().qu1 == true do
wait(1)
getgenv().au1 = true
while getgenv().au1 == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Thug"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").autofarming.CFrame * CFrame.new(0, 7, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living["Thug"].Health.Value == 0 then
getgenv().au1 = false
game:GetService("Workspace").Living["Thug"]:Destroy()
wait(0.1)
if getgenv().count == true then
number = number + 1
wait(0.3)
if number == 30 then
getgenv().count = false
if getgenv().count == false then
getgenv().qu1 = false
end
end
end
end
end
end
end
wait(5)
if getgenv().qu1 == false then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Pucci", 
	["Option"] = "Option1", 
	["Dialogue"] = "Alpha Thugs"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat 25 Alpha Thugs (Dio's Plan)") then
getgenv().count2 = true
getgenv().qu2 = true
wait(0.5)
while getgenv().qu2 == true do
getgenv().au12 = true
while getgenv().au12 == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Alpha Thug"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").autofarming.CFrame * CFrame.new(0, 7, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living["Alpha Thug"].Health.Value == 0 then
getgenv().au12 = false
game:GetService("Workspace").Living["Alpha Thug"]:Destroy()
wait(0.1)
if getgenv().count2 == true then
numbera = numbera + 1
wait(0.3)
if numbera == 25 then
getgenv().count2 = false
if getgenv().count2 == false then
getgenv().qu2 = false
end
end
end
end
end
end
end
wait(5)
if getgenv().qu2 == false then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Pucci", 
	["Option"] = "Option1", 
	["Dialogue"] = "Corrupt Police"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat 20 Corrupt Police (Dio's Plan)") then
getgenv().count3 = true
getgenv().qu3 = true
wait(0.5)
while getgenv().qu3 == true do
getgenv().au13 = true
wait(3)
while getgenv().au13 == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Corrupt Police"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").autofarming.CFrame * CFrame.new(0, 7, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living["Corrupt Police"].Health.Value == 0 then
getgenv().au13 = false
game:GetService("Workspace").Living["Corrupt Police"]:Destroy()
wait(0.1)
if getgenv().count3 == true then
numberb = numberb + 1
wait(1)
if numberb == 20 then
getgenv().count3 = false
if getgenv().count3 == false then
getgenv().qu3 = false
end
end
end
end
end
end
end
wait(5)
if getgenv().qu3 == false then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Pucci", 
	["Option"] = "Option1", 
	["Dialogue"] = "Zombie Henchman"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat 15 Zombie Henchman (Dio's Plan)") then
getgenv().count4 = true
getgenv().qu4 = true
wait(0.5)
while getgenv().qu4 == true do
getgenv().au14 = true
while getgenv().au14 == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Zombie Henchman"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").autofarming.CFrame * CFrame.new(0, 7, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living["Zombie Henchman"].Health.Value == 0 then
wait(0.2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
wait(0.2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
wait(0.2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
wait(0.2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
getgenv().au14 = false
game:GetService("Workspace").Living["Zombie Henchman"]:Destroy()
wait(0.1)
if getgenv().count4 == true then
numberc = numberc + 1
wait(0.3)
if numberc == 15 then
getgenv().count4 = false
if getgenv().count4 == false then
getgenv().qu4 = false
end
end
end
end
end
end
end
wait(10)
if getgenv().qu4 == false then
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Pucci", 
	["Option"] = "Option1", 
	["Dialogue"] = "Vampire"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
end
wait(1)
if game:GetService("Players").LocalPlayer.PlayerStats.Quest.Value == ("Defeat 10 Vampires (Dio's Plan)") then
getgenv().count5 = true
getgenv().qu5 = true
wait(0.5)
while getgenv().qu5 == true do
getgenv().au15 = true
while getgenv().au15 == true do
wait(0.0000000000000000000001)
game:GetService("Workspace").autofarming.CFrame = game:GetService("Workspace").Living["Vampire"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
game:GetService("Workspace").stpar.CFrame = game:GetService("Workspace").autofarming.CFrame * CFrame.new(0, 7, 0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").stpar.CFrame * CFrame.new(0, 10, 0)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
if game:GetService("Workspace").Living["Vampire"].Health.Value == 0 then
wait(0.2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
wait(0.2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
wait(0.2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
wait(0.2)
local A_11 = "Attack"
local A_12 = "m1"
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_11, A_12)
getgenv().au15 = false
game:GetService("Workspace").Living["Vampire"]:Destroy()
wait(0.1)
if getgenv().count5 == true then
numberd = numberd + 1
wait(0.3)
if numberd == 10 then
getgenv().count5 = false
if getgenv().count5 == false then
getgenv().qu5 = false
end
end
end
end
end
end
end
wait(10)
local A_1 = "EndDialogue"
local A_2 = 
{
	["NPC"] = "Pucci", 
	["Option"] = "Option1", 
	["Dialogue"] = "Green Baby"
}
local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
Event:FireServer(A_1, A_2)
wait(5)
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
wait(0.1)
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
wait(0.1)
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
wait(0.1)
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
wait(0.1)
game:GetService("Workspace").stpar:Destroy()
game:GetService("Workspace").autofarming:Destroy()
end)
Section:NewButton("Prestige", "Prestige", function()
wait(0.1)
    local A_1 = "EndDialogue"
    local A_2 = 
    {
        ["NPC"] = "Prestige", 
        ["Option"] = "Option1", 
        ["Dialogue"] = "Dialogue2"
    }
    local Event = game:GetService("Players").LocalPlayer.Character.RemoteEvent
    Event:FireServer(A_1, A_2)
end)
