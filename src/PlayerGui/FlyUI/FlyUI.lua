local FlyUI = Instance.new("ScreenGui")
FlyUI.Name = "FlyUI"
FlyUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local FlyButton = Instance.new("TextButton")
FlyButton.Name = "FlyButton"
FlyButton.Size = UDim2.new(0, 100, 0, 50)
FlyButton.Position = UDim2.new(0.5, -50, 0.5, -25)
FlyButton.Text = "Fly"
FlyButton.Parent = FlyUI

local function toggleFly()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    if humanoid:GetAttribute("Flying") then
        humanoid:SetAttribute("Flying", false)
        humanoid.PlatformStand = false
    else
        humanoid:SetAttribute("Flying", true)
        humanoid.PlatformStand = true
    end
end

FlyButton.MouseButton1Click:Connect(toggleFly)

return FlyUI