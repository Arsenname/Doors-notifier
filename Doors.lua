local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")

local function Notify(msg)
    StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = msg,
        Color = Color3.new(1, 0, 0),
        Font = Enum.Font.SourceSansBold,
        FontSize = Enum.FontSize.Size24
    })
end

Workspace.ChildAdded:Connect(function(child)
    if child.Name == "RushMoving" then
        Notify("⚠️ Rush приближается!")
    elseif child.Name == "AmbushMoving" then
        Notify("⚠️ Ambush обнаружен!")
    end
end)
