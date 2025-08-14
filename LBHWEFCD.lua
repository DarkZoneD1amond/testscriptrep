local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
print("initialising")

while true do
  firesignal(game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Opener.SENSOR.MouseButton1Click)
  for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.PetDisplay.ScrollingFrame:GetChildren() do
    if v:IsA("Frame") then
      if v.Name~="PetTemplate" then
        if string.find(v.Main.PET_TYPE.Text, "Echo Frog") then
          repeat task.wait() until string.find(v.Main.Cooldowns.COOLDOWN_1.COOLDOWN_NAME.text, "8")
        end
      end
    end
  end
  for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.PetDisplay.ScrollingFrame:GetChildren() do
    if v:IsA("Frame") then
      if v.Name~="PetTemplate" then
        if v.Main.PET_TYPE.Text == "Blood Hedgehog" then
          local petpart = v
          game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
          task.wait(0.1)
          game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("EquipPet", petpart.Name, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
      end
    end
  end
end
