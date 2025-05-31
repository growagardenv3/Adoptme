local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

-- Main GUI
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.ResetOnSpawn = false

-- Loading Screen
local LoadingFrame = Instance.new("Frame", ScreenGui)
LoadingFrame.Size = UDim2.new(1, 0, 1, 0)
LoadingFrame.BackgroundColor3 = Color3.new(0, 0, 0)

local LoadingImage = Instance.new("ImageLabel", LoadingFrame)
LoadingImage.Size = UDim2.new(1, 0, 1, 0)
LoadingImage.Image = "rbxassetid://16013882014"
LoadingImage.ScaleType = Enum.ScaleType.Stretch

local LoadingText = Instance.new("TextLabel", LoadingFrame)
LoadingText.Size = UDim2.new(1, 0, 0.1, 0)
LoadingText.Position = UDim2.new(0, 0, 0.8, 0)
LoadingText.BackgroundTransparency = 1
LoadingText.Text = "Loading... 0%"
LoadingText.Font = Enum.Font.GothamBlack
LoadingText.TextSize = 30
LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Loading animation
for i = 1, 100, 2 do
    LoadingText.Text = "Loading... " .. i .. "%"
    task.wait(0.14) -- Total wait time ~7 seconds
end
task.wait(0.2)
LoadingFrame:Destroy()

-- Main Frame
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 350, 0, 230)
Frame.Position = UDim2.new(0.5, -175, 0.5, -115)
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 3
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)

-- Background Image
local Background = Instance.new("ImageLabel", Frame)
Background.Size = UDim2.new(1, 0, 1, 0)
Background.Position = UDim2.new(0, 0, 0, 0)
Background.Image = "rbxassetid://16013882014"
Background.ScaleType = Enum.ScaleType.Stretch
Background.BackgroundTransparency = 1

-- Title
local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Text = "ZENEVEROUX HUB ADOPT ME"
Title.Font = Enum.Font.GothamBlack
Title.TextSize = 20
Title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Subtitle
local Subtitle = Instance.new("TextLabel", Frame)
Subtitle.Size = UDim2.new(1, 0, 0, 20)
Subtitle.Position = UDim2.new(0, 0, 0, 30)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "- TRADE SCAM SCRIPT V.3 -"
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextSize = 16
Subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)

-- ON Button
local OnButton = Instance.new("TextButton", Frame)
OnButton.Size = UDim2.new(0, 120, 0, 50)
OnButton.Position = UDim2.new(0, 30, 0, 60)
OnButton.BackgroundColor3 = Color3.fromRGB(120, 50, 200)
OnButton.Text = "ON"
OnButton.Font = Enum.Font.GothamBold
OnButton.TextSize = 20
OnButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- OFF Button
local OffButton = OnButton:Clone()
OffButton.Parent = Frame
OffButton.Position = UDim2.new(0, 200, 0, 60)
OffButton.Text = "OFF"

-- BYPASS ANTICHEAT Button
local BypassButton = Instance.new("TextButton", Frame)
BypassButton.Size = UDim2.new(0, 280, 0, 55)
BypassButton.Position = UDim2.new(0, 35, 0, 130)
BypassButton.BackgroundColor3 = Color3.fromRGB(120, 50, 200)
BypassButton.Text = "BYPASS ANTICHEAT"
BypassButton.Font = Enum.Font.GothamBold
BypassButton.TextSize = 20
BypassButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Footer Text
local Footer = Instance.new("TextLabel", Frame)
Footer.Size = UDim2.new(1, 0, 0, 20)
Footer.Position = UDim2.new(0, 0, 0, 190)
Footer.BackgroundTransparency = 1
Footer.Text = "Made By Zeneveroux"
Footer.Font = Enum.Font.Gotham
Footer.TextSize = 16
Footer.TextColor3 = Color3.fromRGB(200, 200, 200)

-- Notification function
local function ShowNotification(message)
    local Notification = Instance.new("TextLabel", ScreenGui)
    Notification.Size = UDim2.new(0, 300, 0, 50)
    Notification.Position = UDim2.new(0.5, -150, 0.1, 0)
    Notification.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Notification.TextColor3 = Color3.fromRGB(255, 255, 255)
    Notification.Font = Enum.Font.GothamBold
    Notification.TextSize = 20
    Notification.Text = message
    Notification.Parent = ScreenGui

    task.wait(3) -- Show for 3 seconds
    Notification:Destroy()
end

-- Button Functionality
OnButton.MouseButton1Click:Connect(function()
    ShowNotification("✅ TRADE SCAM ENABLED")
end)

OffButton.MouseButton1Click:Connect(function()
    ShowNotification("❌ TRADE SCAM IS DISABLED")
end)

BypassButton.MouseButton1Click:Connect(function()
    ShowNotification("PLEASE WAIT...")

    if LocalPlayer.Name == "change to ur user" or LocalPlayer.Name == "this gives you only 5 seconds loading time while ur victim gets 3 minutes, so they will stay for long" then
        task.wait(5) -- Wait 5 seconds
        ShowNotification("✅ ANTI CHEAT BYPASSED")
    else
        task.wait(180) -- Wait 3 minutes
    end
end)

local UIS = game:GetService("UserInputService")
local Dragging, DragInput, StartPos, StartMousePos

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        Dragging = true
        StartMousePos = input.Position
        StartPos = Frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                Dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        DragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == DragInput and Dragging then
        local Delta = input.Position - StartMousePos
        Frame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
    end
end)
