local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
print("initialising")

while true do
  local counter = 0
  for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.PetDisplay.ScrollingFrame:GetChildren() do
    if v:IsA("Frame") then
      if v.Name~="PetTemplate" then
        if v.Main.PET_TYPE.Text == "Blood Hedgehog" then
          counter+=1
          local petpart = v
          game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
          task.wait(0.5)
          game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("EquipPet", petpart.Name, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
      end
    end
  end
  task.wait(15-(counter/2))
  counter = 0
end
