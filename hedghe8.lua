local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
print("initialising")

while true do
  for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.PetDisplay.ScrollingFrame:GetChildren() do
    print("startingeu")
    if v:IsA("Frame") then
      if v.Name~="PetTemplate" then
        print("work?")
        if v.Main.PET_TYPE.Text == "Blood Hedgehog" then
          print("type:bloodhedge")
          local petpart = v
          game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
          print("unequipping")
          task.wait(0.5)
          game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("EquipPet", petpart.Name, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          print("equipping")
        end
      end
    end
  end
  task.wait(14.5)
end
