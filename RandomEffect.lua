local player = game:GetService("Players").LocalPlayer
print(player)
local charecter = player.Character
print(charecter)
local humanoid = charecter:FindFirstChild("Humanoid")
print(humanoid)

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "RandomMod by Viktor188834";
	Text = "RandomModification by Viktor188834";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "RandomModification"
MainGui.ResetOnSpawn = false
MainGui.Parent = player:WaitForChild("PlayerGui")

local FirstText = Instance.new("TextLabel")
FirstText.Parent = MainGui
FirstText.Position = UDim2.new(0.5, 0, 0.0210000, 0)
FirstText.Name = "Notification"
FirstText.Text = " "
FirstText.TextSize = 32
FirstText.TextColor3 = Color3.fromRGB(100,125,125)

local atmosphera = Instance.new("Atmosphere")
atmosphera.Parent = game:GetService("Lighting")
atmosphera.Name = "atmosphera"
atmosphera.Density = 0.03

local RandomDoing = math.random(1, 6)

while wait(math.random(25, 40)) do
	atmosphera.Density = 0
	humanoid.JumpPower = 50
	humanoid.WalkSpeed = 16
	RandomDoing = math.random(1, 6)
	if RandomDoing == 1 then
		FirstText.Text = "SIT DOWN!!!"
		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "sit down";
			Text = "сядь на хуй";
			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
		humanoid.Sit = true
		wait(3)
		FirstText.Text = " "
	elseif RandomDoing == 2 then
		FirstText.Text = "NOW YOU CAN'T JUMP!!1!"
		humanoid.JumpPower = 0
		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "skiping day of legs";
			Text = "пропускал день ног";
			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
		wait(3)
		FirstText.Text = " "
	elseif RandomDoing == 3 then
		FirstText.Text = "skiping day of legs V2"
		humanoid.WalkSpeed = 7
		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "skiping day of legs V2";
			Text = "пропускал день ног два В";
			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
		wait(3)
		FirstText.Text=" "
	elseif RandomDoing == 4 then
		FirstText.Text = "what are you want?"
		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "what are you want?";
			Text = "что ты хочешь?";
			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
		wait(3)
		FirstText.Text=" "
	elseif RandomDoing == 5 then
		FirstText.Text = "i can't see"
		atmosphera.Parent = game:GetService("Lighting")
		atmosphera.Name = "atmosphera"
		atmosphera.Density = 0.75
		atmosphera.Offset = 0.4
		atmosphera.Color = Color3.fromRGB(0, 0, 0)
		atmosphera.Decay = Color3.fromRGB(0, 0, 0)
		atmosphera.Haze = 10
		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "i can't see";
			Text = "я не чего не вижу";
			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
		wait(3)
		FirstText.Text = " "
	elseif RandomDoing == 6 then
		humanoid.WalkSpeed = 49
		FirstText.Text = "Super Speed!!!!1111!!"
		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "Super Speed!!!!1111!!";
			Text = "супер скорость!!!!!!!11";
			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
		wait(3)
		FirstText.Text=" "
	elseif RandomDoing == 7 then
		FirstText.Text = "Backpack lost"
		player.backpack:Destroy()
		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "Backpack lost";
			Text = "потерял рюкзак";
			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
		wait(3)
		FirstText.Text=" "
	end
	if not atmosphera then
		warn("atmosphere not found, correction")
		local atmosphera = Instance.new("Atmosphere")
		atmosphera.Parent = game:GetService("Lighting")
		atmosphera.Name = "atmosphera"
		atmosphera.Density = 0
	end
	if not game:FindService("Players").LocalPlayer.PlayerGui.RandomModification then
		player:Destroy()
	end
end
