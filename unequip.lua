for i=1,10 do
  for b,v in game.workspace.PetsPhysical:getChildren() do
    if v:FindFirstChildWhichIsA("Part") then
      local petpart = v:FindFirstChildWhichIsA("Part")
      game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer("UnequipPet", petpart.Name)
    end
  end
  task.wait(0.01)
end
