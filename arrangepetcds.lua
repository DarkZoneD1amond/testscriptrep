for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.ScrollingFrame:GetChildren() do
    print("test")
    if v:IsA("Frame") then
      print(v.Name)
      if v.Name~="PetTemplate" then
        local petpart = v
        print(petpart.Name)
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
        task.wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("EquipPet", petpart.Name, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
      end
    end
  end
