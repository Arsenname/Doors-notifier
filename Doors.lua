local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
local button = Instance.new("TextButton")

-- Настройка интерфейса
screenGui.Parent = player.PlayerGui
screenGui.Name = "RushAmbushGUI"

button.Parent = screenGui
button.Size = UDim2.new(0, 200, 0, 50)  -- Размер кнопки
button.Position = UDim2.new(0.5, -100, 0.8, -25)  -- Позиция кнопки в центре экрана
button.Text = "Проверить Rush/Ambush"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(0, 0, 255)

-- Функция для отображения уведомлений
local function Notify(msg)
    StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = msg,
        Color = Color3.new(1, 0, 0),
        Font = Enum.Font.SourceSansBold,
        FontSize = Enum.FontSize.Size24
    })
end

-- Обработчик для кнопки
button.MouseButton1Click:Connect(function()
    local Workspace = game:GetService("Workspace")
    -- Обработчик для Rush и Ambush
    Workspace.ChildAdded:Connect(function(child)
        if child.Name == "RushMoving" then
            Notify("⚠️ Rush приближается!")
        elseif child.Name == "AmbushMoving" then
            Notify("⚠️ Ambush обнаружен!")
        end
    end)
end)
