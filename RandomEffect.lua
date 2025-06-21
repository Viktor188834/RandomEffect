local player = game:GetService("Players").LocalPlayer
print(player)
local charecter = player.Character
print(charecter)
local humanoid = charecter:FindFirstChild("Humanoid")
print(humanoid)

game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "RandomModification by Viktor188834";
    Text = "RandomModification by Viktor188834";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "RandomModification"
MainGui.ResetOnSpawn = false
MainGui.Parent = player:WaitForChild("PlayerGui")

local SecondText = Instance.new("TextLabel")
SecondText.Parent = MainGui
SecondText.Position = UDim2.new(0.08, 0, 0.810000, 0)
SecondText.Name = "Modification"
SecondText.Text = "nothing"
SecondText.TextSize = 32
SecondText.TextColor3 = Color3.fromRGB(240, 240, 240)
SecondText.BackgroundTransparency = 1

local FirstText = Instance.new("TextLabel")
FirstText.Parent = MainGui
FirstText.Position = UDim2.new(0.5, 0, 0.0210000, 0)
FirstText.Name = "Notification"
FirstText.Text = " "
FirstText.TextSize = 32
FirstText.TextColor3 = Color3.fromRGB(100, 125, 125)
FirstText.BackgroundTransparency = 1

local atmosphera = Instance.new("Atmosphere")
atmosphera.Parent = game:GetService("Lighting")
atmosphera.Name = "atmosphera"
atmosphera.Density = 0.03

while wait(math.random(25, 50)) do
	if MainGui then
		humanoid.JumpPower = 50
		humanoid.WalkSpeed = 16
		atmosphera.Density = 0
		atmosphera.Color = Color3.fromRGB(240, 240, 240)
		local RandomDoing = math.random(1, 11)
		if RandomDoing == 1 then
			FirstText.Text = "SIT DOWN!!!"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "sit down";
    			Text = "сядь на хуй";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			humanoid.Sit = true
			SecondText.Text = "sit down"
			wait(3)
			FirstText.Text = " "
		elseif RandomDoing == 2 then
			FirstText.Text = "NOW YOU CAN'T JUMP!!1!"
			humanoid.JumpPower = 0
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "skiping day of legs";
    			Text = "пропускал день ног";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "without jumps"
			wait(3)
			FirstText.Text = " "
		elseif RandomDoing == 3 then
			FirstText.Text = "whoever moves first is gay"
			humanoid.WalkSpeed = 0
			SecondText.Text = "without WalkSpeed"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "whoever moves first is gay";
    			Text = "кто первый двинется тот гей";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			wait(3)
			FirstText.Text=" "
		elseif RandomDoing == 4 then
			FirstText.Text = "what are you want?"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "what are you want?";
    			Text = "что ты хочешь?";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "nothing"
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
			SecondText.Text = "you can't see"
			wait(3)
			FirstText.Text = " "
		elseif RandomDoing == 6 then
			FirstText.Text = "Backpack lost"
			player.Backpack:Destroy()
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "Backpack was lost(";
    			Text = "рюкзак проебал";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "Backpack Was lost"
			wait(3)
			FirstText.Text=" "
		elseif RandomDoing == 7 then
			FirstText.Text = "Let's chilling!"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "Let's chill!";
    			Text = "го почилим";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "ChillGuy"
			local humanoidrotpart = charecter.HumanoidRootPart
			wait(3)
			FirstText.Text=" "
			humanoidrotpart.CFrame = humanoidrotpart.CFrame + Vector3.new(0, 200, 0)
			humanoidrotpart.Anchored = true
			wait(10)
			humanoidrotpart.Anchored = false
			humanoidrotpart.CFrame = humanoidrotpart.CFrame + Vector3.new(0, -199, 0)
		elseif RandomDoing == 8 then
			FirstText.Text = "uff"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "UFF";
    			Text = "уфф";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "Sound"
			local uff = humanoidrotpart:FindFirstChild("Died")
			uff.Volume = 1
			uff.TimePosition = 0
			uff.Playing = true
			wait(0.460)
			uff.Playing = false
			wait(3)
			FirstText.Text=" "
		elseif RandomDoing == 9 then
			FirstText.Text = "lol with Cursor"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "lol with cursor";
    			Text = "полный хаос с курсором";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "nothing"
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			mousemoveabs(math.random(-900, 900), math.random(-900, 900))
			wait(math.random(0.50,1.5))
			FirstText.Text=" "
		elseif RandomDoing == 10 then
			FirstText.Text = "storm"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "storm";
    			Text = "молния";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "storm"
			FirstText.Text=" "
			local stormmm = Instance.new("Sound")
			stormmm.Parent = workspace
			stormmm.Name = "suicide"
			stormmm.SoundId = "rbxassetid://224339201"
			stormmm.Volume = 1
			stormmm.TimePosition = 0
			stormmm.Playing = true
			wait(3.563)
			stormmm.Playing = false
			stormmm:Destroy()
			FirstText.Text=" "
		elseif RandomDoing == 11 then
			local myMusic = workspace:FindFirstChild("Music")
			myMusic:Destroy()
			FirstText.Text = "Music"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "Music";
    			Text = "молния";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "Music"
			local Music = Instance.new("Sound")
			Music.Parent = workspace
			Music.Name = "Music"
			Music.SoundId = "rbxassetid://1846178770"
			Music.Volume = 0.8
			Music.TimePosition = 0
			Music.Playing = true
			FirstText.Text=" "
		end
	end
end

while wait() do
	print("lol")
end
