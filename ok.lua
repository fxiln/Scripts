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
G2L["2"]["Size"] = UDim2.new(0, 230, 0, 196);
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
G2L["3"]["Size"] = UDim2.new(1, 0, -0.1, 246);
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
G2L["8"]["Name"] = [[Template2]];
G2L["8"]["LayoutOrder"] = 2;
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
G2L["9"]["Text"] = [[ Instant Win (World 2)]];
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
G2L["a"]["Name"] = [[Button2]];
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

G2L["d"] = Instance.new("Frame", G2L["3"]);
G2L["d"]["ZIndex"] = 3;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[Template]];
G2L["d"]["LayoutOrder"] = 5;
G2L["d"]["BackgroundTransparency"] = 1;

G2L["e"] = Instance.new("TextLabel", G2L["d"]);
G2L["e"]["Interactable"] = false;
G2L["e"]["ZIndex"] = 5;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 17;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Anti Lag]];
G2L["e"]["Name"] = [[DescriptionLabel]];
G2L["e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["f"] = Instance.new("TextButton", G2L["d"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextSize"] = 14;
G2L["f"]["AutoButtonColor"] = false;
G2L["f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["ZIndex"] = 4;
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["Size"] = UDim2.new(0, 220, 0, 25);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[]];
G2L["f"]["Name"] = [[Button]];
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["10"] = Instance.new("UICorner", G2L["f"]);
G2L["10"]["CornerRadius"] = UDim.new(0.1, 0);

G2L["11"] = Instance.new("LocalScript", G2L["f"]);

G2L["12"] = Instance.new("UIScale", G2L["f"]);

G2L["13"] = Instance.new("Frame", G2L["3"]);
G2L["13"]["ZIndex"] = 3;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["13"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Name"] = [[Template1]];
G2L["13"]["LayoutOrder"] = 1;
G2L["13"]["BackgroundTransparency"] = 1;

G2L["14"] = Instance.new("TextLabel", G2L["13"]);
G2L["14"]["Interactable"] = false;
G2L["14"]["ZIndex"] = 4;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 17;
G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["14"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[ Instant Win (World 1)]];
G2L["14"]["Name"] = [[DescriptionLabel]];
G2L["14"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["15"] = Instance.new("TextButton", G2L["13"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 14;
G2L["15"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15"]["ZIndex"] = 4;
G2L["15"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["15"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[]];
G2L["15"]["Name"] = [[Button1]];
G2L["15"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["16"] = Instance.new("Frame", G2L["15"]);
G2L["16"]["Visible"] = false;
G2L["16"]["Interactable"] = false;
G2L["16"]["ZIndex"] = 5;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[ToggleFrame]];

G2L["17"] = Instance.new("UIStroke", G2L["15"]);
G2L["17"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["17"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["18"] = Instance.new("Frame", G2L["3"]);
G2L["18"]["ZIndex"] = 3;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["18"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["18"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Name"] = [[Template]];
G2L["18"]["LayoutOrder"] = 4;
G2L["18"]["BackgroundTransparency"] = 1;

G2L["19"] = Instance.new("TextLabel", G2L["18"]);
G2L["19"]["Interactable"] = false;
G2L["19"]["ZIndex"] = 4;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextSize"] = 17;
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["19"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[ Infinite Jump]];
G2L["19"]["Name"] = [[DescriptionLabel]];
G2L["19"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["1a"] = Instance.new("TextButton", G2L["18"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["ZIndex"] = 4;
G2L["1a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1a"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[]];
G2L["1a"]["Name"] = [[Button]];
G2L["1a"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["1b"] = Instance.new("Frame", G2L["1a"]);
G2L["1b"]["Visible"] = false;
G2L["1b"]["Interactable"] = false;
G2L["1b"]["ZIndex"] = 5;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["1b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1b"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["1b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[ToggleFrame]];

G2L["1c"] = Instance.new("UIStroke", G2L["1a"]);
G2L["1c"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["1c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["1d"] = Instance.new("LocalScript", G2L["1a"]);

G2L["1e"] = Instance.new("LocalScript", G2L["3"]);

G2L["1f"] = Instance.new("LocalScript", G2L["2"]);
G2L["1f"]["Name"] = [[Drag]];

G2L["20"] = Instance.new("Frame", G2L["2"]);
G2L["20"]["ZIndex"] = 2;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(50, 55, 69);
G2L["20"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["20"]["Name"] = [[Decor]];

G2L["21"] = Instance.new("TextLabel", G2L["2"]);
G2L["21"]["TextWrapped"] = true;
G2L["21"]["ZIndex"] = 3;
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 17;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["21"]["Text"] = [[AGE OF TITANS]];
G2L["21"]["Name"] = [[GameName]];

G2L["22"] = Instance.new("TextButton", G2L["2"]);
G2L["22"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["22"]["Selectable"] = false;
G2L["22"]["ZIndex"] = 4;
G2L["22"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["22"]["BackgroundTransparency"] = 1;
G2L["22"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["22"]["Text"] = [[]];
G2L["22"]["Name"] = [[ToggleButton]];
G2L["22"]["Position"] = UDim2.new(1, 0, 0, 0);

G2L["23"] = Instance.new("LocalScript", G2L["22"]);
G2L["23"]["Name"] = [[ToggleUI]];

G2L["24"] = Instance.new("ImageLabel", G2L["22"]);
G2L["24"]["ZIndex"] = 5;
G2L["24"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["24"]["ImageColor3"] = Color3.fromRGB(173, 173, 173);
G2L["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["24"]["Image"] = [[rbxassetid://4918373417]];
G2L["24"]["Size"] = UDim2.new(0, 11, 0, 11);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Rotation"] = 90;
G2L["24"]["Name"] = [[Arrow]];
G2L["24"]["Position"] = UDim2.new(0.6, 0, 0.5, 0);

G2L["25"] = Instance.new("UIStroke", G2L["2"]);
G2L["25"]["Thickness"] = 2;
G2L["25"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["25"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

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

local function C_11()
	local script = G2L["11"];
	local Players = game:GetService("Players")
	local MaterialService = game:GetService("MaterialService")
	local Lighting = game:GetService("Lighting")
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
	local hasExecuted = false
	local descendantAddedConn
	local childAddedConn
	local lightingChildAddedConn

	local function isEffect(item)
		return item:IsA("ParticleEmitter") or item:IsA("Fire") or item:IsA("Smoke") or
			item:IsA("Sparkles") or item:IsA("Trail") or item:IsA("Beam") or
			item:IsA("Explosion") or item:IsA("Highlight")
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

		if hasExecuted then return end
		hasExecuted = true

		local function cleanAndPlasticMap()
			Lighting.GlobalShadows = false

			for _, child in ipairs(Lighting:GetChildren()) do
				child:Destroy()
			end

			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant:IsA("BasePart") then
					descendant.Material = Enum.Material.SmoothPlastic
				elseif descendant:IsA("Texture") or descendant:IsA("Decal") or descendant:IsA("SurfaceAppearance") or isEffect(descendant) then
					descendant:Destroy()
				end
			end

			for _, child in ipairs(MaterialService:GetChildren()) do
				child:Destroy()
			end
		end

		cleanAndPlasticMap()

		descendantAddedConn = workspace.DescendantAdded:Connect(function(descendant)
			if descendant:IsA("BasePart") then
				descendant.Material = Enum.Material.SmoothPlastic
			elseif descendant:IsA("Texture") or descendant:IsA("Decal") or descendant:IsA("SurfaceAppearance") or isEffect(descendant) then
				descendant:Destroy()
			end
		end)

		childAddedConn = MaterialService.ChildAdded:Connect(function(child)
			child:Destroy()
		end)

		lightingChildAddedConn = Lighting.ChildAdded:Connect(function(child)
			child:Destroy()
		end)
	end)
end;
task.spawn(C_11);

local function C_1d()
	local script = G2L["1d"];
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local LocalPlayer = Players.LocalPlayer

	local button = script.Parent
	local toggleFrame = button:WaitForChild("ToggleFrame")

	local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local isRunning = false
	local jumpConnection

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not LocalPlayer then return end

		toggleFrame.Visible = not toggleFrame.Visible
		isRunning = toggleFrame.Visible

		if isRunning then
			jumpConnection = UserInputService.JumpRequest:Connect(function()
				local character = LocalPlayer.Character
				if character then
					local humanoid = character:FindFirstChildOfClass("Humanoid")
					if humanoid then
						humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end
			end)
		else
			if jumpConnection then
				jumpConnection:Disconnect()
				jumpConnection = nil
			end
		end
	end)
end;
task.spawn(C_1d);

local function C_1e()
	local script = G2L["1e"];
	local Players = game:GetService("Players")
	local Workspace = game:GetService("Workspace")
	local LocalPlayer = Players.LocalPlayer

	local container = script.Parent

	local worlds = {
		[container:WaitForChild("Template1"):WaitForChild("Button1")] = {
			targetPosition = Vector3.new(-6510.713, 266.673, -15756.59),
			folderPath = {"Worlds", "World1", "GiveWins", "Stage20"}
		},
		[container:WaitForChild("Template2"):WaitForChild("Button2")] = {
			targetPosition = Vector3.new(-32654.949, -1762.656, 50201.469),
			folderPath = {"Worlds", "World2", "GiveWins", "Stage20"}
		}
	}

	local activeButton = nil
	local activeThread = nil
	local activeParts = {}

	local function resetParts(parts)
		for _, part in ipairs(parts) do
			if part and part.Parent then
				part.CanCollide = true
			end
		end
	end

	local function getTargetParts(pathTable)
		local parts = {}
		pcall(function()
			local current = Workspace
			for _, name in ipairs(pathTable) do
				current = current:FindFirstChild(name)
				if not current then return end
			end

			for _, child in ipairs(current:GetChildren()) do
				if child:IsA("BasePart") then
					table.insert(parts, child)
				end
			end
		end)
		return parts
	end

	local function teleportCharacter(targetPos)
		local character = LocalPlayer.Character
		if character then
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			local hrp = character:FindFirstChild("HumanoidRootPart")

			if humanoid and humanoid.Health > 0 and hrp then
				local offset = math.sin(tick() * 60) * 0.3
				hrp.CFrame = CFrame.new(targetPos + Vector3.new(0, offset, 0))
			end
		end
	end

	for button, data in pairs(worlds) do
		local toggleFrame = button:WaitForChild("ToggleFrame")
		local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
		local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

		button.Activated:Connect(function()
			if clickSound then
				clickSound:Play()
			end

			if activeButton == button then
				activeButton = nil
				toggleFrame.Visible = false
				if activeThread then
					task.cancel(activeThread)
					activeThread = nil
				end
				resetParts(activeParts)
				activeParts = {}
				return
			end

			if activeButton then
				local oldToggle = activeButton:FindFirstChild("ToggleFrame")
				if oldToggle then oldToggle.Visible = false end
				resetParts(activeParts)
			end

			activeButton = button
			toggleFrame.Visible = true

			teleportCharacter(data.targetPosition)

			activeParts = getTargetParts(data.folderPath)
			for _, part in ipairs(activeParts) do
				part.CanCollide = false
			end

			if activeThread then
				task.cancel(activeThread)
				activeThread = nil
			end

			activeThread = task.spawn(function()
				local updateCounter = 0

				while activeButton == button do
					pcall(function()
						teleportCharacter(data.targetPosition)

						updateCounter = updateCounter + 1
						if updateCounter >= 50 then
							updateCounter = 0
							activeParts = getTargetParts(data.folderPath)
							for _, part in ipairs(activeParts) do
								part.CanCollide = false
							end
						end
					end)
					task.wait(0.01)
				end
			end)
		end)
	end
end;
task.spawn(C_1e);

local function C_1f()
	local script = G2L["1f"];
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
task.spawn(C_1f);

local function C_23()
	local script = G2L["23"];
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
task.spawn(C_23);

return G2L["1"], require;
