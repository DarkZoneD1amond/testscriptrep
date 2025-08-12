local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

while true do
  for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.PetDisplay.ScrollingFrame:GetChildren() do
    if v:IsA("Frame") then
      if v.Name~="PetTemplate" then
        if v.Main.PET_TYPE.Text ~= "Blood Hedgehog" then return end
        local petpart = v
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
        task.wait(0.02)
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("EquipPet", petpart.Name, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
      end
    end
  end
  task.wait(14.98)
end
