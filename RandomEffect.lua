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

local FirstText = Instance.new("TextLabel")
FirstText.Parent = MainGui
FirstText.Position = UDim2.new(0.5, 0, 0.0210000, 0)
FirstText.Name = "Notification"
FirstText.Text = " "
FirstText.TextSize = 32
FirstText.TextColor3 = Color3.fromRGB(100,125,125)

while wait(math.random(12, 35)) do
  if MainGui then
    humanoid.JumpPower = 50
    humanoid.WalkSpeed = 16
    local RandomDoing = math.random(1, 5)
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
      FirstText.Text = "whoever moves first is gay"
      humanoid.WalkSpeed = 0
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
      wait(3)
      FirstText.Text=" "
    elseif RandomDoing == 5 then
      FirstText.Text = "what are you want?"
      game:GetService("StarterGui"):SetCore("SendNotification", { 
           Title = "what are you want?";
          Text = "что ты хочешь?";
          Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
      wait(3)
      FirstText.Text = " "
    end
  end
end
