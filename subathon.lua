-- سكريبت سابثون لـ lion king - خلفيات متحركة مضمونة
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("SubathonMasterGUI") then
    playerGui.SubathonMasterGUI:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SubathonMasterGUI"
screenGui.Parent = playerGui
screenGui.ResetOnSpawn = false

-- ==================== 1. نافذة تسجيل الدخول ====================
local loginFrame = Instance.new("Frame")
loginFrame.Size = UDim2.new(0, 300, 0, 220)
loginFrame.Position = UDim2.new(0.5, -150, 0.35, 0)
loginFrame.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
loginFrame.BorderSizePixel = 0
loginFrame.Parent = screenGui

Instance.new("UICorner", loginFrame).CornerRadius = UDim.new(0, 14)
local loginStroke = Instance.new("UIStroke", loginFrame)
loginStroke.Color = Color3.fromRGB(0, 255, 204)
loginStroke.Thickness = 2

local loginTitle = Instance.new("TextLabel")
loginTitle.Size = UDim2.new(1, 0, 0, 40)
loginTitle.Position = UDim2.new(0, 0, 0, 15)
loginTitle.BackgroundTransparency = 1
loginTitle.Text = "🚀 مرحباً بك في السابثون"
loginTitle.TextColor3 = Color3.fromRGB(0, 255, 204)
loginTitle.TextSize = 16
loginTitle.Font = Enum.Font.GothamBold
loginTitle.Parent = loginFrame

local nameInput = Instance.new("TextBox")
nameInput.Size = UDim2.new(0.85, 0, 0, 40)
nameInput.Position = UDim2.new(0.075, 0, 0, 65)
nameInput.BackgroundColor3 = Color3.fromRGB(22, 25, 38)
nameInput.PlaceholderText = "اكتب اسم حسابك هنا..."
nameInput.Text = ""
nameInput.TextColor3 = Color3.fromRGB(255, 255, 255)
nameInput.TextSize = 14
nameInput.Font = Enum.Font.Gotham
nameInput.Parent = loginFrame
Instance.new("UICorner", nameInput).CornerRadius = UDim.new(0, 8)

local startBtn = Instance.new("TextButton")
startBtn.Size = UDim2.new(0.85, 0, 0, 40)
startBtn.Position = UDim2.new(0.075, 0, 0, 120)
startBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 204)
startBtn.Text = "ابدء ⚡"
startBtn.TextColor3 = Color3.fromRGB(15, 17, 26)
startBtn.TextSize = 16
startBtn.Font = Enum.Font.GothamBold
startBtn.Parent = loginFrame
Instance.new("UICorner", startBtn).CornerRadius = UDim.new(0, 8)

local loginFooter = Instance.new("TextLabel")
loginFooter.Size = UDim2.new(1, 0, 0, 20)
loginFooter.Position = UDim2.new(0, 0, 0, 185)
loginFooter.BackgroundTransparency = 1
loginFooter.Text = "سكريبت خاص بـ lion king"
loginFooter.TextColor3 = Color3.fromRGB(255, 170, 0)
loginFooter.TextSize = 11
loginFooter.Font = Enum.Font.GothamBold
loginFooter.Parent = loginFrame


-- ==================== 2. الواجهة الرئيسية للسابثون ====================
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 420)
mainFrame.Position = UDim2.new(0.5, -160, 0.18, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- لازم تكون بيضاء حتى يظهر تدرج الألوان بوضوح
mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 14)
local mainStroke = Instance.new("UIStroke", mainFrame)
mainStroke.Color = Color3.fromRGB(0, 255, 204)
mainStroke.Thickness = 2.5

-- تدرج الخلفية المتحركة (مفعل 100%)
local uiGradient = Instance.new("UIGradient", mainFrame)
uiGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 120, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 220, 180)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 90))
})

-- حركة تدوير الألوان بشكل مستمر وسلس
task.spawn(function()
    while true do
        for i = 0, 360, 5 do
            uiGradient.Rotation = i
            task.wait(0.03)
        end
    end
end)

-- زر الإعدادات (فوق على اليسار)
local settingsBtn = Instance.new("TextButton")
settingsBtn.Size = UDim2.new(0, 30, 0, 30)
settingsBtn.Position = UDim2.new(0, 10, 0, 8)
settingsBtn.BackgroundColor3 = Color3.fromRGB(30, 35, 50)
settingsBtn.Text = "⚙️"
settingsBtn.TextSize = 15
settingsBtn.Parent = mainFrame
Instance.new("UICorner", settingsBtn).CornerRadius = UDim.new(0, 6)


-- ==================== 3. نافذة الإعدادات المنفصلة (على اليمين) ====================
local settingsPanel = Instance.new("Frame")
settingsPanel.Size = UDim2.new(0, 220, 0, 240)
settingsPanel.Position = UDim2.new(1, 10, 0, 0)
settingsPanel.BackgroundColor3 = Color3.fromRGB(18, 20, 30)
settingsPanel.Visible = false
settingsPanel.Active = true
settingsPanel.Draggable = true
settingsPanel.Parent = mainFrame

Instance.new("UICorner", settingsPanel).CornerRadius = UDim.new(0, 12)
local sStroke = Instance.new("UIStroke", settingsPanel)
sStroke.Color = Color3.fromRGB(255, 170, 0)
sStroke.Thickness = 2

local sTitle = Instance.new("TextLabel", settingsPanel)
sTitle.Size = UDim2.new(1, 0, 0, 35)
sTitle.Text = "⚙️ لوحة الإعدادات"
sTitle.TextColor3 = Color3.fromRGB(255, 170, 0)
sTitle.TextSize, sTitle.Font, sTitle.BackgroundTransparency = 13, Enum.Font.GothamBold, 1

-- زر تغيير الخلفية المتحركة
local bgThemeBtn = Instance.new("TextButton", settingsPanel)
bgThemeBtn.Size = UDim2.new(0.9, 0, 0, 40)
bgThemeBtn.Position = UDim2.new(0.05, 0, 0.20, 0)
bgThemeBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
bgThemeBtn.Text = "تغيير الخلفية 🌌"
bgThemeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
bgThemeBtn.TextSize, bgThemeBtn.Font = 12, Enum.Font.GothamBold
Instance.new("UICorner", bgThemeBtn).CornerRadius = UDim.new(0, 6)

-- زر تكبير الواجهة (+)
local enlargeBtn = Instance.new("TextButton", settingsPanel)
enlargeBtn.Size = UDim2.new(0.42, 0, 0, 38)
enlargeBtn.Position = UDim2.new(0.05, 0, 0.45, 0)
enlargeBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 100)
enlargeBtn.Text = "تكبير ➕"
enlargeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
enlargeBtn.TextSize, enlargeBtn.Font = 11, Enum.Font.GothamBold
Instance.new("UICorner", enlargeBtn).CornerRadius = UDim.new(0, 6)

-- زر تصغير الواجهة (-)
local shrinkBtn = Instance.new("TextButton", settingsPanel)
shrinkBtn.Size = UDim2.new(0.42, 0, 0, 38)
shrinkBtn.Position = UDim2.new(0.53, 0, 0.45, 0)
shrinkBtn.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
shrinkBtn.Text = "تصغير ➖"
shrinkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
shrinkBtn.TextSize, shrinkBtn.Font = 11, Enum.Font.GothamBold
Instance.new("UICorner", shrinkBtn).CornerRadius = UDim.new(0, 6)

-- زر إغلاق الإعدادات (✖)
local closeSettingsBtn = Instance.new("TextButton", settingsPanel)
closeSettingsBtn.Size = UDim2.new(0.9, 0, 0, 38)
closeSettingsBtn.Position = UDim2.new(0.05, 0, 0.72, 0)
closeSettingsBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 75)
closeSettingsBtn.Text = "إغلاق الإعدادات ✖"
closeSettingsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeSettingsBtn.TextSize, closeSettingsBtn.Font = 12, Enum.Font.GothamBold
Instance.new("UICorner", closeSettingsBtn).CornerRadius = UDim.new(0, 6)


-- ==================== 4. محتويات الواجهة الرئيسية ====================
local pythonTitle = Instance.new("TextLabel")
pythonTitle.Size = UDim2.new(1, -50, 0, 30)
pythonTitle.Position = UDim2.new(0, 45, 0, 8)
pythonTitle.BackgroundTransparency = 1
pythonTitle.Text = "🐍 بايثون خاص بـ "
pythonTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
pythonTitle.TextSize = 12
pythonTitle.Font = Enum.Font.GothamBold
pythonTitle.Parent = mainFrame

local timerDisplay = Instance.new("TextLabel")
timerDisplay.Size = UDim2.new(1, -20, 0, 42)
timerDisplay.Position = UDim2.new(0, 10, 0, 45)
timerDisplay.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
timerDisplay.Text = "00:00:00"
timerDisplay.TextColor3 = Color3.fromRGB(0, 255, 204)
timerDisplay.TextSize = 24
timerDisplay.Font = Enum.Font.GothamBold
timerDisplay.Parent = mainFrame
Instance.new("UICorner", timerDisplay).CornerRadius = UDim.new(0, 8)

local minuteInput = Instance.new("TextBox")
minuteInput.Size = UDim2.new(0.62, -5, 0, 30)
minuteInput.Position = UDim2.new(0, 10, 0, 93)
minuteInput.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
minuteInput.PlaceholderText = "دقائق البداية (مثال: 30)"
minuteInput.Text = ""
minuteInput.TextColor3 = Color3.fromRGB(255, 255, 255)
minuteInput.TextSize, minuteInput.Font = 11, Enum.Font.Gotham
minuteInput.Parent = mainFrame
Instance.new("UICorner", minuteInput).CornerRadius = UDim.new(0, 6)

local setBtn = Instance.new("TextButton")
setBtn.Size = UDim2.new(0.38, -15, 0, 30)
setBtn.Position = UDim2.new(0.62, 10, 0, 93)
setBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 204)
setBtn.Text = "تعيين ⏱️"
setBtn.TextColor3 = Color3.fromRGB(15, 17, 26)
setBtn.TextSize, setBtn.Font = 12, Enum.Font.GothamBold
setBtn.Parent = mainFrame
Instance.new("UICorner", setBtn).CornerRadius = UDim.new(0, 6)

local plus5Btn = Instance.new("TextButton")
plus5Btn.Size = UDim2.new(0.48, -5, 0, 30)
plus5Btn.Position = UDim2.new(0, 10, 0, 129)
plus5Btn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
plus5Btn.Text = "+5 ثواني ⚡"
plus5Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
plus5Btn.TextSize, plus5Btn.Font = 11, Enum.Font.GothamBold
plus5Btn.Parent = mainFrame
Instance.new("UICorner", plus5Btn).CornerRadius = UDim.new(0, 6)

local minus5Btn = Instance.new("TextButton")
minus5Btn.Size = UDim2.new(0.48, -5, 0, 30)
minus5Btn.Position = UDim2.new(0.52, 5, 0, 129)
minus5Btn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
minus5Btn.Text = "-5 ثواني 🔻"
minus5Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
minus5Btn.TextSize, minus5Btn.Font = 11, Enum.Font.GothamBold
minus5Btn.Parent = mainFrame
Instance.new("UICorner", minus5Btn).CornerRadius = UDim.new(0, 6)

local plusRoseBtn = Instance.new("TextButton")
plusRoseBtn.Size = UDim2.new(0.48, -5, 0, 32)
plusRoseBtn.Position = UDim2.new(0, 10, 0, 165)
plusRoseBtn.BackgroundColor3 = Color3.fromRGB(255, 100, 150)
plusRoseBtn.Text = "🌹 ورده (+دقيقتين)"
plusRoseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
plusRoseBtn.TextSize, plusRoseBtn.Font = 11, Enum.Font.GothamBold
plusRoseBtn.Parent = mainFrame
Instance.new("UICorner", plusRoseBtn).CornerRadius = UDim.new(0, 6)

local minusRoseBtn = Instance.new("TextButton")
minusRoseBtn.Size = UDim2.new(0.48, -5, 0, 32)
minusRoseBtn.Position = UDim2.new(0.52, 5, 0, 165)
minusRoseBtn.BackgroundColor3 = Color3.fromRGB(180, 50, 90)
minusRoseBtn.Text = "🌹 ورده (-دقيقتين)"
minusRoseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minusRoseBtn.TextSize, minusRoseBtn.Font = 11, Enum.Font.GothamBold
minusRoseBtn.Parent = mainFrame
Instance.new("UICorner", minusRoseBtn).CornerRadius = UDim.new(0, 6)

local coin100Btn = Instance.new("TextButton")
coin100Btn.Size = UDim2.new(1, -20, 0, 35)
coin100Btn.Position = UDim2.new(0, 10, 0, 203)
coin100Btn.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
coin100Btn.Text = "🪙 100 عمله (+2 ساعتين)"
coin100Btn.TextColor3 = Color3.fromRGB(15, 17, 26)
coin100Btn.TextSize, coin100Btn.Font = 12, Enum.Font.GothamBold
coin100Btn.Parent = mainFrame
Instance.new("UICorner", coin100Btn).CornerRadius = UDim.new(0, 6)

local coin1000Btn = Instance.new("TextButton")
coin1000Btn.Size = UDim2.new(1, -20, 0, 35)
coin1000Btn.Position = UDim2.new(0, 10, 0, 243)
coin1000Btn.BackgroundColor3 = Color3.fromRGB(150, 50, 255)
coin1000Btn.Text = "💎 1000 عمله (+10 ساعات)"
coin1000Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
coin1000Btn.TextSize, coin1000Btn.Font = 12, Enum.Font.GothamBold
coin1000Btn.Parent = mainFrame
Instance.new("UICorner", coin1000Btn).CornerRadius = UDim.new(0, 6)

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(1, -20, 0, 26)
closeBtn.Position = UDim2.new(0, 10, 0, 283)
closeBtn.BackgroundColor3 = Color3.fromRGB(35, 37, 48)
closeBtn.Text = "إخفاء الواجهة 👁️‍🗨️"
closeBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
closeBtn.TextSize, closeBtn.Font = 11, Enum.Font.Gotham
closeBtn.Parent = mainFrame
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)

local footerLabel = Instance.new("TextLabel")
footerLabel.Size = UDim2.new(1, 0, 0, 22)
footerLabel.Position = UDim2.new(0, 0, 0, 390)
footerLabel.BackgroundTransparency = 1
footerLabel.Text = "🔥 سكريبت خاص بـ lion king 🔥"
footerLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
footerLabel.TextSize = 11
footerLabel.Font = Enum.Font.GothamBold
footerLabel.Parent = mainFrame


-- ==================== 5. البرمجة والربط ====================
local totalSeconds = 0
local isRunning = false

startBtn.MouseButton1Click:Connect(function()
    local enteredName = nameInput.Text
    if enteredName == "" then enteredName = "المتألق" end
    pythonTitle.Text = "🐍 بايثون خاص بـ " .. enteredName
    
    loginFrame.Visible = false
    mainFrame.Visible = true
end)

settingsBtn.MouseButton1Click:Connect(function()
    settingsPanel.Visible = not settingsPanel.Visible
end)

closeSettingsBtn.MouseButton1Click:Connect(function()
    settingsPanel.Visible = false
end)

-- الخلفيات المتحركة (ألوان متدرجة وفخمة تتغير بنقرة زر)
local animatedThemes = {
    {Color3.fromRGB(0, 120, 255), Color3.fromRGB(0, 220, 180), Color3.fromRGB(20, 40, 90)},
    {Color3.fromRGB(160, 0, 255), Color3.fromRGB(255, 0, 128), Color3.fromRGB(40, 10, 50)},
    {Color3.fromRGB(255, 80, 0), Color3.fromRGB(255, 200, 0), Color3.fromRGB(60, 20, 10)},
    {Color3.fromRGB(0, 200, 100), Color3.fromRGB(0, 255, 255), Color3.fromRGB(10, 40, 40)}
}
local currentBgIndex = 1
bgThemeBtn.MouseButton1Click:Connect(function()
    currentBgIndex = currentBgIndex % #animatedThemes + 1
    local th = animatedThemes[currentBgIndex]
    uiGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, th[1]),
        ColorSequenceKeypoint.new(0.5, th[2]),
        ColorSequenceKeypoint.new(1, th[3])
    })
end)

enlargeBtn.MouseButton1Click:Connect(function()
    if mainFrame.Size.X.Offset < 380 then
        mainFrame.Size = mainFrame.Size + UDim2.new(0, 20, 0, 25)
    end
end)

shrinkBtn.MouseButton1Click:Connect(function()
    if mainFrame.Size.X.Offset > 240 then
        mainFrame.Size = mainFrame.Size - UDim2.new(0, 20, 0, 25)
    end
end)

local function formatTime(secs)
    if secs < 0 then secs = 0 end
    local h = math.floor(secs / 3600)
    local m = math.floor((secs % 3600) / 60)
    local s = secs % 60
    return string.format("%02d:%02d:%02d", h, m, s)
end

setBtn.MouseButton1Click:Connect(function5 or function()
    local mins = tonumber(minuteInput.Text)
    if mins then
        totalSeconds = mins * 60
        isRunning = true
    end
end)

plus5Btn.MouseButton1Click:Connect(function() totalSeconds = totalSeconds + 5 end)
minus5Btn.MouseButton1Click:Connect(function() totalSeconds = totalSeconds - 5 end)
plusRoseBtn.MouseButton1Click:Connect(function() totalSeconds = totalSeconds + 120 end)
minusRoseBtn.MouseButton1Click:Connect(function() totalSeconds = totalSeconds - 120 end)

coin100Btn.MouseButton1Click:Connect(function()
    totalSeconds = totalSeconds + 7200
end)

coin1000Btn.MouseButton1Click:Connect(function()
    totalSeconds = totalSeconds + 36000
end)

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

task.spawn(function()
    while true do
        task.wait(1)
        if isRunning and totalSeconds > 0 then
            totalSeconds = totalSeconds - 1
        end
        timerDisplay.Text = formatTime(totalSeconds)
    end
end)
