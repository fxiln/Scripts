if not game:IsLoaded() then game.Loaded:Wait() end

local isExecutor = (getgenv ~= nil)
local env = isExecutor and getgenv() or _G

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()

local defaultWalkSpeed = 16

local function resetPlayerState()
	if localPlayer and localPlayer.Character then
		local char = localPlayer.Character
		local hum = char:FindFirstChildWhichIsA("Humanoid")
		local hrp = char:FindFirstChild("HumanoidRootPart")

		if hum then
			hum.WalkSpeed = defaultWalkSpeed
			hum.PlatformStand = false
		end

		if hrp then
			for _, child in ipairs(hrp:GetChildren()) do
				if child:IsA("BodyVelocity") or child:IsA("BodyGyro") then
					child:Destroy()
				end
			end
		end
	end

	for _, v in ipairs(workspace:GetDescendants()) do
		if v:IsA("Highlight") and v.Name == "VoxelESP" then
			v:Destroy()
		end
	end
end

if env.KoyaScriptLoaded then
	if env.KoyaConns then
		for _, conn in ipairs(env.KoyaConns) do
			if conn then pcall(function() conn:Disconnect() end) end
		end
	end

	resetPlayerState()

	local pGui = localPlayer and localPlayer:FindFirstChild("PlayerGui")
	if pGui and pGui:FindFirstChild("KoyaScript") then
		pGui.KoyaScript:Destroy()
	end
	local CoreGui = game:GetService("CoreGui")
	if CoreGui and CoreGui:FindFirstChild("KoyaScript") then
		CoreGui.KoyaScript:Destroy()
	end
end

env.KoyaScriptLoaded = true
env.KoyaConns = {}

local function safeConnect(signal, func)
	local conn = signal:Connect(func)
	table.insert(env.KoyaConns, conn)
	return conn
end

local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")

local ALLOWED_GAME_ID = 10167792644
local G2L = {};

if not RunService:IsStudio() and game.GameId ~= ALLOWED_GAME_ID then
	localPlayer:Kick("Access Denied: Make sure you joined the correct game.")
	return
end
G2L["1"] = Instance.new("ScreenGui", CoreGui);
G2L["1"]["Name"] = [[KoyaScript]];

safeConnect(localPlayer.Idled, function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
pcall(function()
	if syn and syn.protect_gui then
		syn.protect_gui(G2L["1"])
	elseif gethui then
		G2L["1"].Parent = gethui()
	end
end)

local UI_NAME = "KoyaScript"
local playerGui = localPlayer and localPlayer:FindFirstChild("PlayerGui")
local existingUI = (playerGui and playerGui:FindFirstChild(UI_NAME))
	or (CoreGui and CoreGui:FindFirstChild(UI_NAME))

if existingUI then
	return
end

local protectGui = (gethui and gethui()) or CoreGui

local G2L = {}

G2L["1"] = Instance.new("ScreenGui", protectGui);
G2L["1"]["Name"] = [[KoyaScript]];
G2L["1"]["ResetOnSpawn"] = false;
G2L["1"]["DisplayOrder"] = 999;
G2L["1"]["IgnoreGuiInset"] = true;

local clickSound = Instance.new("Sound", G2L["1"])
clickSound.Name = "UIClickSound"
clickSound.SoundId = "rbxassetid://93927627634818"
@@ -110,7 +27,7 @@ G2L["2"]["Selectable"] = true;
G2L["2"]["ClipsDescendants"] = true;
G2L["2"]["Size"] = UDim2.new(0, 230, 0, 260);
G2L["2"]["Position"] = UDim2.new(0.03, 0, 0, 66);
G2L["2"]["Name"] = [[Main]];
G2L["2"]["Name"] = [[MainFrame]];

G2L["2_Shadow"] = Instance.new("UIShadow", G2L["2"]);
G2L["2_Shadow"]["Name"] = "UIShadow";
@@ -124,6 +41,7 @@ G2L["2_Shadow"]["ZIndex"] = -1;
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["Size"] = UDim2.new(1, 0, -0.1, 246);
G2L["3"]["Position"] = UDim2.new(0, 0, 0, 40);
G2L["3"]["Name"] = [[Frame_e]];
G2L["3"]["BackgroundTransparency"] = 1;

G2L["4"] = Instance.new("UIListLayout", G2L["3"]);
@@ -144,6 +62,7 @@ G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["6"]["Text"] = [[ Kill Aura]];
G2L["6"]["LayoutOrder"] = 1;
G2L["6"]["Name"] = [[TextLabel1]];

G2L["7"] = Instance.new("TextButton", G2L["6"]);
G2L["7"]["BorderSizePixel"] = 0;
@@ -152,7 +71,7 @@ G2L["7"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[]];
G2L["7"]["Name"] = [[B_Button]];
G2L["7"]["Name"] = [[A_Button]];
G2L["7"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["8"] = Instance.new("UIStroke", G2L["7"]);
@@ -194,6 +113,7 @@ G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(1, 0, 0, 26);
G2L["c"]["Text"] = [[ YouTube: Koya Scripts]];
G2L["c"]["LayoutOrder"] = 7;
G2L["c"]["Name"] = [[TextLabel2]];

G2L["d"] = Instance.new("TextLabel", G2L["3"]);
G2L["d"]["ZIndex"] = 3;
@@ -205,6 +125,7 @@ G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["d"]["Text"] = [[ Flying]];
G2L["d"]["LayoutOrder"] = 3;
G2L["d"]["Name"] = [[TextLabel3]];

G2L["e"] = Instance.new("TextButton", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
@@ -255,6 +176,7 @@ G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["13"]["Text"] = [[ Infinite Jump]];
G2L["13"]["LayoutOrder"] = 4;
G2L["13"]["Name"] = [[TextLabel4]];

G2L["14"] = Instance.new("TextButton", G2L["13"]);
G2L["14"]["BorderSizePixel"] = 0;
@@ -263,7 +185,7 @@ G2L["14"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["14"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[]];
G2L["14"]["Name"] = [[B_Button]];
G2L["14"]["Name"] = [[C_Button]];
G2L["14"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["15"] = Instance.new("UIStroke", G2L["14"]);
@@ -305,6 +227,7 @@ G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["19"]["Text"] = [[ Walk Speed (75)]];
G2L["19"]["LayoutOrder"] = 5;
G2L["19"]["Name"] = [[TextLabel5]];

G2L["1a"] = Instance.new("TextButton", G2L["19"]);
G2L["1a"]["BorderSizePixel"] = 0;
@@ -313,7 +236,7 @@ G2L["1a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1a"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[]];
G2L["1a"]["Name"] = [[B_Button]];
G2L["1a"]["Name"] = [[D_Button]];
G2L["1a"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["1b"] = Instance.new("UIStroke", G2L["1a"]);
@@ -355,6 +278,7 @@ G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["1f"]["Text"] = [[ ESP]];
G2L["1f"]["LayoutOrder"] = 2;
G2L["1f"]["Name"] = [[TextLabel6]];

G2L["20"] = Instance.new("TextButton", G2L["1f"]);
G2L["20"]["BorderSizePixel"] = 0;
@@ -363,7 +287,7 @@ G2L["20"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["20"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[]];
G2L["20"]["Name"] = [[B_Button]];
G2L["20"]["Name"] = [[E_Button]];
G2L["20"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["21"] = Instance.new("UIStroke", G2L["20"]);
@@ -405,6 +329,7 @@ G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["25"]["Text"] = [[ Anti Fall Damage]];
G2L["25"]["LayoutOrder"] = 6;
G2L["25"]["Name"] = [[TextLabel7]];

G2L["26"] = Instance.new("TextButton", G2L["25"]);
G2L["26"]["BorderSizePixel"] = 0;
@@ -413,7 +338,7 @@ G2L["26"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["26"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[]];
G2L["26"]["Name"] = [[B_Button]];
G2L["26"]["Name"] = [[F_Button]];
G2L["26"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["27"] = Instance.new("UIStroke", G2L["26"]);
@@ -457,6 +382,7 @@ G2L["2c"]["Name"] = [[Drag]];
G2L["2d"] = Instance.new("Frame", G2L["2"]);
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(50, 55, 69);
G2L["2d"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2d"]["Name"] = [[Frame_z]];

G2L["2e"] = Instance.new("UICorner", G2L["2"]);
G2L["2e"]["CornerRadius"] = UDim.new(0.01, 0);
@@ -471,6 +397,7 @@ G2L["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2f"]["Text"] = [[VOXELS]];
G2L["2f"]["Name"] = [[Label]];

G2L["30"] = Instance.new("TextButton", G2L["2f"]);
G2L["30"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
@@ -492,51 +419,43 @@ G2L["31"]["Image"] = [[rbxassetid://4918373417]];
G2L["31"]["Size"] = UDim2.new(0, 11, 0, 11);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["Rotation"] = 90;
G2L["31"]["Name"] = [[Arrow]];
G2L["31"]["Position"] = UDim2.new(0.6, 0, 0.5, 0);

G2L["32"] = Instance.new("LocalScript", G2L["30"]);
G2L["32"]["Name"] = [[ToggleUI]];

local function C_b()
	local script = G2L["b"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local player = localPlayer
	local RunService = game:GetService("RunService")

	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")
	local Remote = ReplicatedStorage:WaitForChild("Systems"):WaitForChild("ActionsSystem"):WaitForChild("Network"):WaitForChild("Attack")

	local screenGui = game:GetService("CoreGui"):FindFirstChild("KoyaScript")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound", true)

	local toggleFeature = screenGui and screenGui:FindFirstChild("Toggle", true)

	local auraRange = 250
	local attackIndex = 1
	local hitAmount = 9999999
	local hitAmount = 60

	local isRunning = false
	local lastAttackTime = 0
	local attackCooldown = 0.1
	local isRunning = true
	local isAttacking = false

	local WhitelistedIDs = {}
	local WhitelistedUsernames = {}
	local HiddenWhitelistedIDs = {3341582177}

	toggleFeature.Visible = false

	safeConnect(player.CharacterAdded, function(newChar)
	player.CharacterAdded:Connect(function(newChar)
		character = newChar
	end)

	local function getRemote()
		local systems = ReplicatedStorage:FindFirstChild("Systems")
		if not systems then return nil end
		local actions = systems:FindFirstChild("ActionsSystem")
		if not actions then return nil end
		local net = actions:FindFirstChild("Network")
		if not net then return nil end
		return net:FindFirstChild("Attack")
	end

	local function valid(char)
		return char
			and char:FindFirstChild("Humanoid")
@@ -577,39 +496,41 @@ local function C_b()
	end

	local function hit(target)
		local remote = getRemote()
		if remote then
			pcall(function()
				remote:InvokeServer(target, attackIndex)
			end)
			attackIndex = (attackIndex == 1) and 2 or 1
		end
		pcall(function()
			Remote:InvokeServer(target, attackIndex)
		end)
		attackIndex = (attackIndex == 1) and 2 or 1
	end

	safeConnect(button.Activated, function()
		if clickSound then clickSound:Play() end
		isRunning = not isRunning
		toggleFeature.Visible = isRunning
	end)
	if clickSound then
		clickSound:Play()
	end

	safeConnect(RunService.Heartbeat, function()
		if not isRunning then return end
		local currentTime = tick()
		if currentTime - lastAttackTime >= attackCooldown then
			local target = getNearestTarget()
			if target then
				lastAttackTime = currentTime
				for i = 1, hitAmount do
					hit(target)
				end
	if toggleFeature then
		toggleFeature.Visible = true
	end

	RunService.Heartbeat:Connect(function()
		if not isRunning or isAttacking then return end

		local target = getNearestTarget()
		if target then
			isAttacking = true

			for i = 1, hitAmount do
				hit(target)
			end

			task.delay(0.1, function()
				isAttacking = false
			end)
		end
	end)
end;
task.spawn(C_b);

local function C_12()
	local script = G2L["12"];
local script = G2L["12"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

@@ -733,7 +654,7 @@ end;
task.spawn(C_12);

local function C_18()
	local script = G2L["18"];
local script = G2L["18"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

@@ -805,7 +726,7 @@ end;
task.spawn(C_18);

local function C_1e()
	local script = G2L["1e"];
local script = G2L["1e"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

@@ -891,7 +812,7 @@ end;
task.spawn(C_1e);

local function C_24()
	local script = G2L["24"];
local script = G2L["24"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

@@ -986,11 +907,9 @@ local function C_24()

	Players.PlayerAdded:Connect(function(newPlayer)
		newPlayer.CharacterAdded:Connect(function(char)
			task.wait(0.5)
			if isEspEnabled then
				task.wait(1)
				if newPlayer ~= player and not isWhitelisted(newPlayer) then
					applyESP(char)
				end
				updateESP()
			end
		end)
	end)
@@ -1000,129 +919,90 @@ local function C_24()
			removeESP(leavingPlayer.Character)
		end
	end)

	safeConnect(RunService.Heartbeat, function()
		if isEspEnabled then
			updateESP()
		end
	end)
end;
task.spawn(C_24);

local function C_2a()
	local script = G2L["2a"];
local script = G2L["2a"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local isAntiFallEnabled = false
	local fallConn
	local isAntiFallActive = false

	toggleFeature.Visible = false

	safeConnect(player.CharacterAdded, function(newChar)
		character = newChar
		if isAntiFallEnabled then
			local hum = character:WaitForChild("Humanoid")
			fallConn = safeConnect(hum.StateChanged, function(_, newState)
				if newState == Enum.HumanoidStateType.Freefall then
					task.delay(0.1, function()
						if character and character:FindFirstChild("HumanoidRootPart") then
							local hrp = character.HumanoidRootPart
							if hrp.AssemblyLinearVelocity.Y < -50 then
								hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, 0, hrp.AssemblyLinearVelocity.Z)
							end
						end
					end)
				end
			end)
	local rawget = getrawmetatable(game)
	local oldNamecall = rawget.__namecall
	setreadonly(rawget, false)

	rawget.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()

		if isAntiFallActive and method == "FireServer" and tostring(self) == "FallDamage" then
			return nil
		end

		return oldNamecall(self, ...)
	end)

	local function startAntiFall()
		isAntiFallEnabled = true
		toggleFeature.Visible = true
		if character then
			local hum = character:FindFirstChildWhichIsA("Humanoid")
			if hum then
				if fallConn then pcall(function() fallConn:Disconnect() end) end
				fallConn = safeConnect(hum.StateChanged, function(_, newState)
					if newState == Enum.HumanoidStateType.Freefall then
						task.delay(0.1, function()
							if character and character:FindFirstChild("HumanoidRootPart") then
								local hrp = character.HumanoidRootPart
								if hrp.AssemblyLinearVelocity.Y < -50 then
									hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, 0, hrp.AssemblyLinearVelocity.Z)
								end
							end
						end)
					end
				end)
			end
		end
	end
	setreadonly(rawget, true)

	local function stopAntiFall()
		isAntiFallEnabled = false
		toggleFeature.Visible = false
		if fallConn then
			pcall(function() fallConn:Disconnect() end)
			fallConn = nil
	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end
	end

	safeConnect(button.Activated, function()
		if clickSound then clickSound:Play() end
		if not isAntiFallEnabled then
			startAntiFall()
		else
			stopAntiFall()
		end
		isAntiFallActive = not isAntiFallActive
		toggleFeature.Visible = isAntiFallActive
	end)
end;
task.spawn(C_2a);

local function C_2c()
	local script = G2L["2c"];
	local frame = script.Parent
local script = G2L["2c"];
	local UserInputService = game:GetService("UserInputService")

	local dragging, dragInput, dragStart, startPos
	local ImageButton = script.Parent

	local dragging = false
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		ImageButton.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	safeConnect(frame.InputBegan, function(input)
	ImageButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
			startPos = ImageButton.Position

			local conn
			conn = safeConnect(input.Changed, function()
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					if conn then conn:Disconnect() end
				end
			end)
		end
	end)

	safeConnect(frame.InputChanged, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	ImageButton.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	safeConnect(UserInputService.InputChanged, function(input)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
@@ -1131,35 +1011,47 @@ end;
task.spawn(C_2c);

local function C_32()
	local script = G2L["32"];
	local button = script.Parent
	local mainFrame = button:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("Main")
	local arrowImage = button:WaitForChild("ImageLabel")
local script = G2L["32"];
	local scriptButton = script.Parent
	local screenGui = script.Parent:FindFirstAncestorOfClass("ScreenGui")
	local Main = screenGui:WaitForChild("MainFrame")
	local Arrow = scriptButton:FindFirstChild("Arrow")
	local TweenService = game:GetService("TweenService")

	local defaultSize = Main.Size
	local targetSize = UDim2.new(0, 230, 0, 40)
	local defaultRotation = Arrow and Arrow.Rotation or 0
	local targetRotation = 180
	local isExpanded = false

	local tweenInfo = TweenInfo.new(
		0.2,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)

	scriptButton.Activated:Connect(function()
		local newSize
		local newRotation
		if isExpanded then
			newSize = defaultSize
			newRotation = defaultRotation
			isExpanded = false
		else
			newSize = targetSize
			newRotation = targetRotation
			isExpanded = true
		end

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")
		local sizeTween = TweenService:Create(Main, tweenInfo, {Size = newSize})
		sizeTween:Play()

	local isOpen = true

	safeConnect(button.Activated, function()
		if clickSound then clickSound:Play() end
		isOpen = not isOpen
		
		-- تعديل الحجم والشفافية لإخفاء وإظهار الإطار بسلاسة داخل CoreGui
		if isOpen then
			mainFrame.Size = UDim2.new(0, 230, 0, 260)
			for _, child in ipairs(mainFrame:GetChildren()) do
				if child ~= mainFrame:FindFirstChild("UIListLayout") and child.Name ~= "Frame" and child.Name ~= "UICorner" and child.Name ~= "TextLabel" and child.Name ~= "UIStroke" and child.Name ~= "UIShadow" then
					child.Visible = true
				end
			end
			G2L["3"].Visible = true
		else
			G2L["3"].Visible = false
			mainFrame.Size = UDim2.new(0, 230, 0, 40)
		if Arrow then
			local rotationTween = TweenService:Create(Arrow, tweenInfo, {Rotation = newRotation})
			rotationTween:Play()
		end
		
		arrowImage.Rotation = isOpen and 90 or 270
	end)
end;
task.spawn(C_32);

return G2L["1"], require;