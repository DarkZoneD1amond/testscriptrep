local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
print("initialising")
task.spawn(function()
    while true do
      firesignal(game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame:WaitForChild("Opener").SENSOR.MouseButton1Click)
      repeat task.wait() until not game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame:FindFirstChild("Opener")
    end
end)

while true do
  for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.PetDisplay.ScrollingFrame:GetChildren() do
    if v:IsA("Frame") then
      if v.Name~="PetTemplate" then
        if v:FindFirstChild("Main") then
            if string.find(v:WaitForChild("Main").PET_TYPE.Text, "Echo Frog") then
              repeat
                task.wait()
              until string.find(v:WaitForChild("Main").Cooldowns.COOLDOWN_1.COOLDOWN_NAME.Text, "6")
            end
        end
      end
    end
  end
  for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.PetDisplay.ScrollingFrame:GetChildren() do
    if v:IsA("Frame") then
      if v.Name~="PetTemplate" then
        if v:WaitForChild("Main").PET_TYPE.Text == "Blood Hedgehog" then
          local petpart = v
          game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
          task.wait(0.5)
          game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("EquipPet", petpart.Name, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
      end
    end
  end
end
