for i=1,10 do
  for b,v in game.workspace.PetsPhysical:getChildren() do
    local petpart = v:FindFirstChildWhichIsA("Part")
    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("EquipPet", petpart.Name, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
  end
  task.wait(0.01)
end
