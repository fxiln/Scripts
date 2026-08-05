if not game:IsLoaded() then game.Loaded:Wait() end

if game:GetService("CoreGui"):FindFirstChild("KoyaScript") then
	return
end

task.spawn(function()
	local Players = game:GetService("Players")
	local VirtualUser = game:GetService("VirtualUser")
	local localPlayer = Players.LocalPlayer

	localPlayer.Idled:Connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)
end)

local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[KoyaScript]];
G2L["1"]["ResetOnSpawn"] = false;

local clickSound = Instance.new("Sound", G2L["1"])
clickSound.Name = "UIClickSound"
clickSound.SoundId = "rbxassetid://93927627634818"
clickSound.Volume = 0.5

G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Active"] = true;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(35, 39, 48);
G2L["2"]["Selectable"] = true;
G2L["2"]["ClipsDescendants"] = true;
G2L["2"]["Size"] = UDim2.new(0, 230, 0, 104);
G2L["2"]["Position"] = UDim2.new(0.03, -12, 0, 6);
G2L["2"]["BorderColor3"] = Color3.fromRGB(35, 39, 48);
G2L["2"]["Name"] = [[MainFrame]];

G2L["2_Shadow"] = Instance.new("UIShadow", G2L["2"]);
G2L["2_Shadow"]["Name"] = "UIShadow";
G2L["2_Shadow"]["BlurRadius"] = UDim.new(0.05, 0);
G2L["2_Shadow"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["2_Shadow"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["2_Shadow"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["2_Shadow"]["Transparency"] = 0.6;
G2L["2_Shadow"]["ZIndex"] = 0;

G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["ZIndex"] = 2;
G2L["3"]["Size"] = UDim2.new(1, 0, -1.75, 246);
G2L["3"]["Position"] = UDim2.new(0, 0, 0, 40);
G2L["3"]["Name"] = [[Container]];
G2L["3"]["BackgroundTransparency"] = 1;

G2L["4"] = Instance.new("UIListLayout", G2L["3"]);
G2L["4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

G2L["5"] = Instance.new("UIPadding", G2L["3"]);
G2L["5"]["PaddingTop"] = UDim.new(0, 2);
G2L["5"]["PaddingRight"] = UDim.new(0, 1);
G2L["5"]["PaddingLeft"] = UDim.new(0, 1);

G2L["6"] = Instance.new("TextLabel", G2L["3"]);
G2L["6"]["ZIndex"] = 4;
G2L["6"]["TextSize"] = 17;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["RichText"] = true;
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6"]["Size"] = UDim2.new(1, 0, 0, 26);
G2L["6"]["Text"] = [[<font color="#FF0000"> YouTube:</font> <font color="#FFFFFF">Koya Scripts</font>]];
G2L["6"]["LayoutOrder"] = 7;
G2L["6"]["Name"] = [[YoutubeName]];
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["7"] = Instance.new("LocalScript", G2L["6"]);

G2L["8"] = Instance.new("Frame", G2L["3"]);
G2L["8"]["ZIndex"] = 3;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Name"] = [[Template]];
G2L["8"]["LayoutOrder"] = 1;
G2L["8"]["BackgroundTransparency"] = 1;

G2L["9"] = Instance.new("TextLabel", G2L["8"]);
G2L["9"]["Interactable"] = false;
G2L["9"]["ZIndex"] = 4;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 17;
G2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[ Auto Collect Cubes]];
G2L["9"]["Name"] = [[DescriptionLabel]];
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["a"] = Instance.new("TextButton", G2L["8"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["ZIndex"] = 4;
G2L["a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["a"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[]];
G2L["a"]["Name"] = [[Button]];
G2L["a"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["b"] = Instance.new("Frame", G2L["a"]);
G2L["b"]["Visible"] = false;
G2L["b"]["Interactable"] = false;
G2L["b"]["ZIndex"] = 5;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["b"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[ToggleFrame]];

G2L["c"] = Instance.new("UIStroke", G2L["a"]);
G2L["c"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["d"] = Instance.new("LocalScript", G2L["a"]);

G2L["e"] = Instance.new("LocalScript", G2L["2"]);
G2L["e"]["Name"] = [[Drag]];

G2L["f"] = Instance.new("Frame", G2L["2"]);
G2L["f"]["Active"] = true;
G2L["f"]["ZIndex"] = 2;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(50, 55, 69);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["f"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["f"]["Name"] = [[Decor]];

G2L["10"] = Instance.new("TextLabel", G2L["2"]);
G2L["10"]["TextWrapped"] = true;
G2L["10"]["ZIndex"] = 3;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextSize"] = 17;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["10"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["10"]["Text"] = [[THE BLOCK]];
G2L["10"]["Name"] = [[GameName]];
G2L["10"]["Position"] = UDim2.new(0.5, 0, 0, 0);

G2L["11"] = Instance.new("TextButton", G2L["2"]);
G2L["11"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["11"]["Selectable"] = false;
G2L["11"]["ZIndex"] = 4;
G2L["11"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["11"]["Text"] = [[]];
G2L["11"]["Name"] = [[ToggleButton]];
G2L["11"]["Position"] = UDim2.new(1, 0, 0, 0);

G2L["12"] = Instance.new("LocalScript", G2L["11"]);
G2L["12"]["Name"] = [[ToggleUI]];

G2L["13"] = Instance.new("ImageLabel", G2L["11"]);
G2L["13"]["ZIndex"] = 5;
G2L["13"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["13"]["ImageColor3"] = Color3.fromRGB(173, 173, 173);
G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13"]["Image"] = [[rbxassetid://4918373417]];
G2L["13"]["Size"] = UDim2.new(0, 11, 0, 11);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Rotation"] = 90;
G2L["13"]["Name"] = [[Arrow]];
G2L["13"]["Position"] = UDim2.new(0.6, 0, 0.5, 0);

G2L["14"] = Instance.new("UIStroke", G2L["2"]);
G2L["14"]["Thickness"] = 2;
G2L["14"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

local function C_7()
local script = G2L["7"];
	local TweenService = game:GetService("TweenService")
	local textLabel = script.Parent

	textLabel.RichText = true

	local YOUTUBE_TEXT = '<font color="#FF0000"> YouTube:</font> <font color="#FFFFFF">Koya Scripts</font>'
	local DISCORD_TEXT = '<font color="#5865F2"> Discord:</font> <font color="#FFFFFF">gg/ZNTxrpnPV</font>'

	local fadeInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

	local fadeOut = TweenService:Create(textLabel, fadeInfo, {TextTransparency = 1})
	local fadeIn = TweenService:Create(textLabel, fadeInfo, {TextTransparency = 0})

	local function changeTextSmoothly(newText)
		fadeOut:Play()
		fadeOut.Completed:Wait()

		textLabel.Text = newText

		fadeIn:Play()
	end

	task.spawn(function()
		while true do
			task.wait(15)

			changeTextSmoothly(DISCORD_TEXT)
			task.wait(15)

			changeTextSmoothly(YOUTUBE_TEXT)
		end
	end)
end;
task.spawn(C_7);

local function C_d()
local script = G2L["d"];
	local Players = game:GetService("Players")
	local Workspace = game:GetService("Workspace")
	local TweenService = game:GetService("TweenService")

	local LocalPlayer = Players.LocalPlayer
	local button = script.Parent

	local uiScale = button:FindFirstChildOfClass("UIScale")

	local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local originalColor = button.BackgroundColor3
	local originalScale = uiScale and uiScale.Scale or 1

	local tweenInfo = TweenInfo.new(
		0.05,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)

	local pressColorTween = TweenService:Create(button, tweenInfo, {BackgroundColor3 = Color3.fromRGB(74, 83, 97)})
	local releaseColorTween = TweenService:Create(button, tweenInfo, {BackgroundColor3 = originalColor})

	local pressScaleTween
	local releaseScaleTween

	if uiScale then
		pressScaleTween = TweenService:Create(uiScale, tweenInfo, {Scale = originalScale * 0.98})
		releaseScaleTween = TweenService:Create(uiScale, tweenInfo, {Scale = originalScale})
	end

	local isClicking = false

	local isRunning = false
	local finalDestination = Vector3.new(0.506, 361.858, 212.844)

	local moveTweenTime = 1.5
	local moveTweenInfo = TweenInfo.new(
		moveTweenTime,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.InOut
	)

	local function getScavengerCubes()
		local cubes = {}
		for _, child in ipairs(Workspace:GetChildren()) do
			if child:IsA("Model") and child.Name == "Scavenger_Cube" then
				local targetPart = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
				if targetPart then
					table.insert(cubes, targetPart)
				end
			end
		end
		return cubes
	end

	button.Activated:Connect(function()

		if clickSound then
			clickSound:Play()
		end

		if not isClicking then
			isClicking = true

			pressColorTween:Play()
			if pressScaleTween then pressScaleTween:Play() end

			task.wait(tweenInfo.Time)

			releaseColorTween:Play()
			if releaseScaleTween then releaseScaleTween:Play() end

			task.wait(tweenInfo.Time)
			isClicking = false
		end

		if not LocalPlayer then return end

		isRunning = not isRunning

		if isRunning then
			task.spawn(function()
				pcall(function()
					local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
					local humanoid = character:WaitForChild("Humanoid")
					local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

					humanoid.PlatformStand = true
					humanoidRootPart.Anchored = true

					local originalCollisions = {}
					for _, part in ipairs(character:GetDescendants()) do
						if part:IsA("BasePart") then
							originalCollisions[part] = part.CanCollide
							part.CanCollide = false
						end
					end

					while isRunning do
						local cubes = getScavengerCubes()

						if #cubes > 0 then

							for _, targetPart in ipairs(cubes) do
								if not isRunning then break end

								if targetPart and targetPart.Parent then
									local targetPos = targetPart.Position + Vector3.new(0, 3, 0)

									local currentRotation = humanoidRootPart.CFrame - humanoidRootPart.Position
									local targetCFrame = CFrame.new(targetPos) * currentRotation.Rotation

									local tween = TweenService:Create(humanoidRootPart, moveTweenInfo, {CFrame = targetCFrame})

									tween:Play()
									tween.Completed:Wait()

									task.wait(0.05)
								end
							end
						else

							local currentRotation = humanoidRootPart.CFrame - humanoidRootPart.Position
							local finalCFrame = CFrame.new(finalDestination) * currentRotation.Rotation
							local finalTween = TweenService:Create(humanoidRootPart, moveTweenInfo, {CFrame = finalCFrame})
							finalTween:Play()
							finalTween.Completed:Wait()

							while isRunning and #getScavengerCubes() == 0 do
								task.wait(0.5)
							end
						end
					end

					humanoidRootPart.Anchored = false

					for part, canCollide in pairs(originalCollisions) do
						if part and part.Parent then
							part.CanCollide = canCollide
						end
					end

					humanoid.PlatformStand = false
				end)
			end)
		end
	end)
end;
task.spawn(C_d);

local function C_e()
local script = G2L["e"];
	local UserInputService = game:GetService("UserInputService")

	local MainFrame = script.Parent

	local Decor = MainFrame:WaitForChild("Decor")

	local dragging = false
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart

		MainFrame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	Decor.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = MainFrame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	Decor.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end;
task.spawn(C_e);

local function C_12()
local script = G2L["12"];
	local scriptButton = script.Parent
	local Main = scriptButton.Parent
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

		local sizeTween = TweenService:Create(Main, tweenInfo, {Size = newSize})
		sizeTween:Play()

		if Arrow then
			local rotationTween = TweenService:Create(Arrow, tweenInfo, {Rotation = newRotation})
			rotationTween:Play()
		end
	end)
end;
task.spawn(C_12);

return G2L["1"], require;
