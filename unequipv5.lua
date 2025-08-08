for i=1,10 do
  for b,v in game.Players.LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.ScrollingFrame:GetChildren() do
    if v:IsA("Frame") then
      if v.Name=="PetTemplate" then break end
      local petpart = v
      print(petpart.Name)
      game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
    end
  end
  task.wait(0.01)
end
