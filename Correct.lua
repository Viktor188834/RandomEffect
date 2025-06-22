--COPY THAT ALL

--отредактируй, сколько от и до секунд будет рандомная фигня
local budetliviletatt = 1 -- будет ли вылетать ? (1 да, 0 нет)
--[[
СКРИПТ НА РАНДОМНЫЙ ЭВЕНТ
КАЖДЫЕ <настроено> СЕКУНД БУДЕТ ПРОИСХОДИТЬ ЛЮБОЙ ЭВЕНТ
ЭВЕНТЫ
1.присядь
2.ты не можешь прыгать - вовсе
3.ты игвалид на коляске
4.нечего
5.слепота - создаётся тёмная атмосфера, коротко слепота
6.потеря инвентаря - инвентарь удаляется
7.го почилим - ты на время телепортируешься наверх на 200 студов и замераешь на 10 секунд
8.уфф - если найдёт в гуманоидрутпарте звук смерти, воспроизводит его
9.курсор на своём - курсор жёстко дрыгает
10.молния - создаётся новый звук айди молнии возпроизводит его и после окончания удаляет звук
11.создаёт музыку, а если музыка уже есть удаляет её и создаёт новый
12.esp других игроков на 5 секунд
]]



















































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
SecondText.Position = UDim2.new(0.08, 0, 0.90000, 0)
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

while wait(math.random(25, 40)) do
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
		elseif RandomDoing == 12 then
			FirstText.Text = "ESP!"
			game:GetService("StarterGui"):SetCore("SendNotification", { 
   				Title = "ESP";
    			Text = "ESP other players";
    			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
			SecondText.Text = "esp"
			wait(3)
			FirstText.Text=" "
			for i, childrik in ipairs(workspace:GetDescendants()) do
    			if childrik:FindFirstChild("Body Colors") then
        			if not childrik:FindFirstChild("EspBox") then
            			if childrik ~= game.Players.LocalPlayer.Character then
                			local esp = Instance.new("Highlight",childrik)
           	    			esp.Name = "EspBox"
							esp.FillColor = Color3.fromRGB(255, 0, 0)
							esp.OutlineTransparency = 0.3
      	        		end
    	    		end
				end
			end
		elseif RandomDoing == 13 and budetliviletatt = 1 then
			player.PlayerGui:ClearAllChildren()
			player.Backpack:ClearAllChildren()
			local cr = player.Character
			local hm = cr.HumanoidRootPart
			hm.Anchored = true
			local lollllllllll = Instance.new("ScreenGui")
			local blur = Instance.new("BlurEffect")
			local CantDoing = Instance.new("Frame")
			local Frame = Instance.new("Frame")
			local line = Instance.new("Frame")
			local text = Instance.new("TextLabel")
			local text1 = Instance.new("TextLabel")
			text1.Text = "You were kicked from this experience: You have been"
			local text2 = Instance.new("TextLabel")
			text2.Text = "kicked from the game"
			local text3 = Instance.new("TextLabel")
			text3.Text = "(Error Code: 267)"
			local Button = Instance.new("TextButton")
			local corn = Instance.new("UICorner")
			lollllllllll.Parent = player.PlayerGui
			lollllllllll.Name = "BanScreen"
			wwwww.Name = "Ban"
			wwwww.Parent = lollllllllll
			wwwww.BackgroundColor3 = Color3.fromRGB(73, 73, 72)
			wwwww.Position = UDim2.new(0.4, 0, 0.39, 0)
			wwwww.Size = UDim2.new(0.2, 0, 0.22, 0)
			wwwww.BorderSizePixel = 0
			blur.Parent = game:FindService("Lighting")
			blur.Name = "blur"
			blur.Size = 25
			CantDoing.Parent = lollllllllll
			CantDoing.Name = "CantDoing"
			CantDoing.Size = UDim2.new(5, 5, 5 ,5)
			CantDoing.Position = UDim2.new(-2.5, 2.5, -2.5, 2.5)
			CantDoing.Active = true
			CantDoing.BackgroundTransparency = 0.99
			text.Parent = wwwww
			text.Name = "Text"
			text.TextColor3 = Color3.fromRGB(255, 255, 255)
			text.TextSize = 16
			text.Position = UDim2.new(0.5, 0, 0.11, 0)
			text.Text = "Disconnected"
			line.Parent = wwwww
			line.Name = "Line"
			line.Position = UDim2.new(0.05, 0, 0.2, 0)
			line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			line.Size = UDim2.new(0.9, 0, 0.0086, 0)
			line.BorderSizePixel = 0
			text1.Parent = wwwww
			text1.Name = "Reason1"
			text1.Position = UDim2.new(0.5, 0, 0.35, 0)
			text1.TextSize = 11
			text1.TextColor3 = Color3.fromRGB(255, 255, 255)
			text2.Parent = wwwww
			text2.Name = "Reason2"
			text2.Position = UDim2.new(0.5, 0, 0.45, 0)
			text2.TextSize = 11
			text2.TextColor3 = Color3.fromRGB(255, 255, 255)
			text3.Parent = wwwww
			text3.Name = "Reason3"
			text3.Position = UDim2.new(0.5, 0, 0.55, 0)
			text3.TextSize = 11
			text3.TextColor3 = Color3.fromRGB(255, 255, 255)
			Button.Parent = wwwww
			Button.Name = "Leave"
			Button.Text = "Leave"
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.TextColor3 = Color3.fromRGB(73, 73, 72)
			Button.Position = UDim2.new(0.1, 0, 0.7, 0)
			Button.Size = UDim2.new(0.8, 0, 0.2, 0)
			Button.TextSize = 11
			corn.Parent = Button
		end
	end
end

function oo()
	player:Destroy()
end
Button.MouseButton1Click:Connect(oo)
