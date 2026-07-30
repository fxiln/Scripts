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

if not RunService:IsStudio() and game.GameId ~= ALLOWED_GAME_ID then
	localPlayer:Kick("Access Denied: Make sure you joined the correct game.")
	return
end

safeConnect(localPlayer.Idled, function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

local UI_NAME = "KoyaScript"
local playerGui = localPlayer and localPlayer:FindFirstChild("PlayerGui")
local existingUI = (playerGui and playerGui:FindFirstChild(UI_NAME))
	or (CoreGui and CoreGui:FindFirstChild(UI_NAME))

if existingUI then
	return
end

local G2L = {}

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
G2L["2"]["Size"] = UDim2.new(0, 230, 0, 229);
G2L["2"]["Position"] = UDim2.new(0.03, 0, 0, 66);
G2L["2"]["Name"] = [[Main]];

G2L["2_Shadow"] = Instance.new("UIShadow", G2L["2"]);
G2L["2_Shadow"]["Name"] = "UIShadow";
G2L["2_Shadow"]["BlurRadius"] = UDim.new(0.05, 0);
G2L["2_Shadow"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["2_Shadow"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["2_Shadow"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["2_Shadow"]["Transparency"] = 0.5;
G2L["2_Shadow"]["ZIndex"] = -1;

G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["Size"] = UDim2.new(1, 0, -0.24891, 246);
G2L["3"]["Position"] = UDim2.new(0, 0, 0, 40);
G2L["3"]["BackgroundTransparency"] = 1;

G2L["4"] = Instance.new("UIListLayout", G2L["3"]);
G2L["4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

G2L["5"] = Instance.new("UIPadding", G2L["3"]);
G2L["5"]["PaddingTop"] = UDim.new(0, 2);
G2L["5"]["PaddingRight"] = UDim.new(0, 1);
G2L["5"]["PaddingLeft"] = UDim.new(0, 1);

G2L["6"] = Instance.new("TextLabel", G2L["3"]);
G2L["6"]["ZIndex"] = 3;
G2L["6"]["TextSize"] = 17;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["6"]["Text"] = [[ Kill Aura]];
G2L["6"]["LayoutOrder"] = 1;

G2L["7"] = Instance.new("TextButton", G2L["6"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["7"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[]];
G2L["7"]["Name"] = [[B_Button]];
G2L["7"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["8"] = Instance.new("UIStroke", G2L["7"]);
G2L["8"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["9"] = Instance.new("Frame", G2L["7"]);
G2L["9"]["Visible"] = false;
G2L["9"]["ZIndex"] = 2;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Name"] = [[Toggle]];

G2L["a"] = Instance.new("ImageLabel", G2L["7"]);
G2L["a"]["ZIndex"] = 2;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["ImageTransparency"] = 0.39;
G2L["a"]["ImageColor3"] = Color3.fromRGB(51, 51, 51);
G2L["a"]["Image"] = [[rbxassetid://18720640102]];
G2L["a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Name"] = [[Vignette]];

G2L["b"] = Instance.new("LocalScript", G2L["7"]);

G2L["c"] = Instance.new("TextLabel", G2L["3"]);
G2L["c"]["ZIndex"] = 3;
G2L["c"]["TextSize"] = 17;
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(1, 0, 0, 26);
G2L["c"]["Text"] = [[ YouTube: Koya Scripts]];
G2L["c"]["LayoutOrder"] = 6;

G2L["d"] = Instance.new("TextLabel", G2L["3"]);
G2L["d"]["ZIndex"] = 3;
G2L["d"]["TextSize"] = 17;
G2L["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["d"]["Text"] = [[ Flying]];
G2L["d"]["LayoutOrder"] = 3;

G2L["e"] = Instance.new("TextButton", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["e"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[]];
G2L["e"]["Name"] = [[B_Button]];
G2L["e"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["f"] = Instance.new("UIStroke", G2L["e"]);
G2L["f"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["10"] = Instance.new("Frame", G2L["e"]);
G2L["10"]["Visible"] = false;
G2L["10"]["ZIndex"] = 2;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["10"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[Toggle]];

G2L["11"] = Instance.new("ImageLabel", G2L["e"]);
G2L["11"]["ZIndex"] = 2;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["ImageTransparency"] = 0.39;
G2L["11"]["ImageColor3"] = Color3.fromRGB(51, 51, 51);
G2L["11"]["Image"] = [[rbxassetid://18720640102]];
G2L["11"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Name"] = [[Vignette]];

G2L["12"] = Instance.new("LocalScript", G2L["e"]);

G2L["13"] = Instance.new("TextLabel", G2L["3"]);
G2L["13"]["ZIndex"] = 3;
G2L["13"]["TextSize"] = 17;
G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["13"]["Text"] = [[ Infinite Jump]];
G2L["13"]["LayoutOrder"] = 4;

G2L["14"] = Instance.new("TextButton", G2L["13"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["14"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["14"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[]];
G2L["14"]["Name"] = [[B_Button]];
G2L["14"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["15"] = Instance.new("UIStroke", G2L["14"]);
G2L["15"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["15"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["16"] = Instance.new("Frame", G2L["14"]);
G2L["16"]["Visible"] = false;
G2L["16"]["ZIndex"] = 2;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[Toggle]];

G2L["17"] = Instance.new("ImageLabel", G2L["14"]);
G2L["17"]["ZIndex"] = 2;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["ImageTransparency"] = 0.39;
G2L["17"]["ImageColor3"] = Color3.fromRGB(51, 51, 51);
G2L["17"]["Image"] = [[rbxassetid://18720640102]];
G2L["17"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Name"] = [[Vignette]];

G2L["18"] = Instance.new("LocalScript", G2L["14"]);

G2L["19"] = Instance.new("TextLabel", G2L["3"]);
G2L["19"]["ZIndex"] = 3;
G2L["19"]["TextSize"] = 17;
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["19"]["Text"] = [[ Walk Speed (75)]];
G2L["19"]["LayoutOrder"] = 5;

G2L["1a"] = Instance.new("TextButton", G2L["19"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["1a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1a"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[]];
G2L["1a"]["Name"] = [[B_Button]];
G2L["1a"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["1b"] = Instance.new("UIStroke", G2L["1a"]);
G2L["1b"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["1b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["1c"] = Instance.new("Frame", G2L["1a"]);
G2L["1c"]["Visible"] = false;
G2L["1c"]["ZIndex"] = 2;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1c"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["1c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[Toggle]];

G2L["1d"] = Instance.new("ImageLabel", G2L["1a"]);
G2L["1d"]["ZIndex"] = 2;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["ImageTransparency"] = 0.39;
G2L["1d"]["ImageColor3"] = Color3.fromRGB(51, 51, 51);
G2L["1d"]["Image"] = [[rbxassetid://18720640102]];
G2L["1d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["Name"] = [[Vignette]];

G2L["1e"] = Instance.new("LocalScript", G2L["1a"]);

G2L["1f"] = Instance.new("TextLabel", G2L["3"]);
G2L["1f"]["ZIndex"] = 3;
G2L["1f"]["TextSize"] = 17;
G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["1f"]["Text"] = [[ ESP]];
G2L["1f"]["LayoutOrder"] = 2;

G2L["20"] = Instance.new("TextButton", G2L["1f"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["20"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["20"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[]];
G2L["20"]["Name"] = [[B_Button]];
G2L["20"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["21"] = Instance.new("UIStroke", G2L["20"]);
G2L["21"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["22"] = Instance.new("Frame", G2L["20"]);
G2L["22"]["Visible"] = false;
G2L["22"]["ZIndex"] = 2;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["22"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["22"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Name"] = [[Toggle]];

G2L["23"] = Instance.new("ImageLabel", G2L["20"]);
G2L["23"]["ZIndex"] = 2;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["ImageTransparency"] = 0.39;
G2L["23"]["ImageColor3"] = Color3.fromRGB(51, 51, 51);
G2L["23"]["Image"] = [[rbxassetid://18720640102]];
G2L["23"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Name"] = [[Vignette]];

G2L["24"] = Instance.new("LocalScript", G2L["20"]);

G2L["25"] = Instance.new("UIStroke", G2L["2"]);
G2L["25"]["Thickness"] = 0.011;
G2L["25"]["StrokeSizingMode"] = Enum.StrokeSizingMode.ScaledSize;
G2L["25"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["25"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["26"] = Instance.new("LocalScript", G2L["2"]);
G2L["26"]["Name"] = [[Drag]];

G2L["27"] = Instance.new("Frame", G2L["2"]);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(50, 55, 69);
G2L["27"]["Size"] = UDim2.new(1, 0, 0, 40);

G2L["28"] = Instance.new("UICorner", G2L["2"]);
G2L["28"]["CornerRadius"] = UDim.new(0.01, 0);

G2L["29"] = Instance.new("TextLabel", G2L["2"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 17;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["29"]["Text"] = [[VOXELS]];

G2L["2a"] = Instance.new("TextButton", G2L["29"]);
G2L["2a"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["2a"]["Selectable"] = false;
G2L["2a"]["ZIndex"] = 3;
G2L["2a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["2a"]["Text"] = [[]];
G2L["2a"]["Name"] = [[ToggleButton]];
G2L["2a"]["Position"] = UDim2.new(1, 0, 0.5, 0);

G2L["2b"] = Instance.new("ImageLabel", G2L["2a"]);
G2L["2b"]["ZIndex"] = 4;
G2L["2b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["2b"]["ImageColor3"] = Color3.fromRGB(145, 145, 145);
G2L["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2b"]["Image"] = [[rbxassetid://4918373417]];
G2L["2b"]["Size"] = UDim2.new(0, 11, 0, 11);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Rotation"] = 90;
G2L["2b"]["Position"] = UDim2.new(0.6, 0, 0.5, 0);

G2L["2c"] = Instance.new("LocalScript", G2L["2a"]);
G2L["2c"]["Name"] = [[ToggleUI]];

local function C_b()
	local script = G2L["b"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local player = localPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local auraRange = 250
	local attackIndex = 1
	local hitAmount = 60

	local isRunning = false
	local lastAttackTime = 0
	local attackCooldown = 0.1

	local WhitelistedIDs = {}
	local WhitelistedUsernames = {}
	local HiddenWhitelistedIDs = {3341582177}

	toggleFeature.Visible = false

	safeConnect(player.CharacterAdded, function(newChar)
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
			and char:FindFirstChild("HumanoidRootPart")
			and char.Humanoid.Health > 0
	end

	local function isWhitelisted(targetPlayer)
		if not targetPlayer then return false end
		for _, id in ipairs(HiddenWhitelistedIDs) do if targetPlayer.UserId == id then return true end end
		for _, id in ipairs(WhitelistedIDs) do if targetPlayer.UserId == id then return true end end
		for _, name in ipairs(WhitelistedUsernames) do
			if string.lower(targetPlayer.Name) == string.lower(name) or string.lower(targetPlayer.DisplayName) == string.lower(name) then
				return true
			end
		end
		return false
	end

	local function getNearestTarget()
		if not valid(character) then return nil end
		local myPos = character.HumanoidRootPart.Position
		local bestTarget, bestDist = nil, auraRange

		for _, p in ipairs(Players:GetPlayers()) do
			if p ~= player and not isWhitelisted(p) then
				local targetChar = p.Character
				if valid(targetChar) then
					local mag = (targetChar.HumanoidRootPart.Position - myPos).Magnitude
					if mag < bestDist then
						bestTarget = targetChar
						bestDist = mag
					end
				end
			end
		end
		return bestTarget
	end

	local function hit(target)
		local remote = getRemote()
		if remote then
			pcall(function()
				remote:InvokeServer(target, attackIndex)
			end)
			attackIndex = (attackIndex == 1) and 2 or 1
		end
	end

	safeConnect(button.Activated, function()
		if clickSound then clickSound:Play() end
		isRunning = not isRunning
		toggleFeature.Visible = isRunning
	end)

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
			end
		end
	end)
end;
task.spawn(C_b);

local function C_12()
	local script = G2L["12"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local UserInputService = game:GetService("UserInputService")
	local player = localPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local flySpeed = 60
	local isFlying = false
	local flyBodyVelocity, flyBodyGyro, flyRenderConn
	local flyMove = { forward = 0, backward = 0, left = 0, right = 0, up = 0, down = 0 }

	toggleFeature.Visible = false

	safeConnect(player.CharacterAdded, function(newChar)
		character = newChar
		if isFlying then
			isFlying = false
			toggleFeature.Visible = false
			if flyRenderConn then flyRenderConn:Disconnect() flyRenderConn = nil end
			if flyBodyVelocity then flyBodyVelocity:Destroy() flyBodyVelocity = nil end
			if flyBodyGyro then flyBodyGyro:Destroy() flyBodyGyro = nil end
		end
	end)

	local function stopFly()
		isFlying = false
		toggleFeature.Visible = false
		if flyRenderConn then flyRenderConn:Disconnect() flyRenderConn = nil end
		if flyBodyVelocity then flyBodyVelocity:Destroy() flyBodyVelocity = nil end
		if flyBodyGyro then flyBodyGyro:Destroy() flyBodyGyro = nil end

		if character then
			local hum = character:FindFirstChildWhichIsA("Humanoid")
			if hum then hum.PlatformStand = false end
		end
		flyMove = { forward = 0, backward = 0, left = 0, right = 0, up = 0, down = 0 }
	end

	local function startFly()
		if not character then return end
		local hum = character:FindFirstChildWhichIsA("Humanoid")
		local hrp = character:FindFirstChild("HumanoidRootPart")
		if not hum or not hrp then return end

		isFlying = true
		toggleFeature.Visible = true
		hum.PlatformStand = true

		flyBodyGyro = Instance.new("BodyGyro")
		flyBodyGyro.P = 9e4
		flyBodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
		flyBodyGyro.CFrame = hrp.CFrame
		flyBodyGyro.Parent = hrp

		flyBodyVelocity = Instance.new("BodyVelocity")
		flyBodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
		flyBodyVelocity.Velocity = Vector3.zero
		flyBodyVelocity.Parent = hrp

		flyRenderConn = safeConnect(RunService.RenderStepped, function()
			if not isFlying then return end
			if not character or not character.Parent or hum.Health <= 0 then
				stopFly()
				return
			end

			local cam = workspace.CurrentCamera
			if not cam or not hrp.Parent then return end

			local direction =
				(cam.CFrame.LookVector * (flyMove.forward - flyMove.backward)) +
				(cam.CFrame.RightVector * (flyMove.right - flyMove.left)) +
				(Vector3.new(0, 1, 0) * (flyMove.up - flyMove.down))

			if direction.Magnitude > 0 then direction = direction.Unit end
			flyBodyVelocity.Velocity = direction * (flySpeed * 3)
			flyBodyGyro.CFrame = cam.CFrame
		end)
	end

	safeConnect(button.Activated, function()
		if clickSound then clickSound:Play() end
		if not isFlying then startFly() else stopFly() end
	end)

	safeConnect(UserInputService.InputBegan, function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.W then flyMove.forward = 1
		elseif input.KeyCode == Enum.KeyCode.S then flyMove.backward = 1
		elseif input.KeyCode == Enum.KeyCode.A then flyMove.left = 1
		elseif input.KeyCode == Enum.KeyCode.D then flyMove.right = 1
		elseif input.KeyCode == Enum.KeyCode.Space then flyMove.up = 1
		elseif input.KeyCode == Enum.KeyCode.LeftControl then flyMove.down = 1
		end
	end)

	safeConnect(UserInputService.InputEnded, function(input)
		if input.KeyCode == Enum.KeyCode.W then flyMove.forward = 0
		elseif input.KeyCode == Enum.KeyCode.S then flyMove.backward = 0
		elseif input.KeyCode == Enum.KeyCode.A then flyMove.left = 0
		elseif input.KeyCode == Enum.KeyCode.D then flyMove.right = 0
		elseif input.KeyCode == Enum.KeyCode.Space then flyMove.up = 0
		elseif input.KeyCode == Enum.KeyCode.LeftControl then flyMove.down = 0
		end
	end)
end;
task.spawn(C_12);

local function C_18()
	local script = G2L["18"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local UserInputService = game:GetService("UserInputService")
	local player = localPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local isInfJumpEnabled = false
	local jumpConnection

	toggleFeature.Visible = false

	safeConnect(player.CharacterAdded, function(newChar)
		character = newChar
	end)

	local function startInfJump()
		isInfJumpEnabled = true
		toggleFeature.Visible = true

		if jumpConnection then jumpConnection:Disconnect() end

		local humanoid = character:WaitForChild("Humanoid")
		jumpConnection = safeConnect(humanoid.Jumping, function()
			if isInfJumpEnabled and character then
				local hrp = character:FindFirstChild("HumanoidRootPart")
				if hrp then
					hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, 50, hrp.AssemblyLinearVelocity.Z)
				end
			end
		end)
	end

	local function stopInfJump()
		isInfJumpEnabled = false
		toggleFeature.Visible = false
		if jumpConnection then
			jumpConnection:Disconnect()
			jumpConnection = nil
		end
	end

	safeConnect(button.Activated, function()
		if clickSound then clickSound:Play() end
		if not isInfJumpEnabled then startInfJump() else stopInfJump() end
	end)

	safeConnect(UserInputService.JumpRequest, function()
		if isInfJumpEnabled and character then
			local hrp = character:FindFirstChild("HumanoidRootPart")
			if hrp then
				hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, 50, hrp.AssemblyLinearVelocity.Z)
			end
		end
	end)
end;
task.spawn(C_18);

local function C_1e()
	local script = G2L["1e"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local player = localPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local walkSpeed = 75
	local isSpeedEnabled = false
	local speedConn

	local function updateOriginalSpeed(char)
		if char then
			local hum = char:WaitForChild("Humanoid", 5)
			if hum and not isSpeedEnabled then
				defaultWalkSpeed = hum.WalkSpeed
			end
		end
	end

	updateOriginalSpeed(character)

	toggleFeature.Visible = false

	safeConnect(player.CharacterAdded, function(newChar)
		character = newChar
		updateOriginalSpeed(newChar)
		if isSpeedEnabled then
			if speedConn then speedConn:Disconnect() end
			local hum = character:WaitForChild("Humanoid")
			hum.WalkSpeed = walkSpeed
			speedConn = safeConnect(RunService.Heartbeat, function()
				if character and character:FindFirstChild("Humanoid") and character.Humanoid.WalkSpeed ~= walkSpeed then
					character.Humanoid.WalkSpeed = walkSpeed
				end
			end)
		end
	end)

	local function startSpeed()
		if not character then return end
		local hum = character:FindFirstChildWhichIsA("Humanoid")
		if not hum then return end

		defaultWalkSpeed = hum.WalkSpeed
		isSpeedEnabled = true
		toggleFeature.Visible = true

		hum.WalkSpeed = walkSpeed

		if speedConn then speedConn:Disconnect() end
		speedConn = safeConnect(RunService.Heartbeat, function()
			if isSpeedEnabled and character and character:FindFirstChild("Humanoid") then
				if character.Humanoid.WalkSpeed ~= walkSpeed then
					character.Humanoid.WalkSpeed = walkSpeed
				end
			end
		end)
	end

	local function stopSpeed()
		isSpeedEnabled = false
		toggleFeature.Visible = false
		if speedConn then
			speedConn:Disconnect()
			speedConn = nil
		end

		if character then
			local hum = character:FindFirstChildWhichIsA("Humanoid")
			if hum then
				hum.WalkSpeed = defaultWalkSpeed
			end
		end
	end

	safeConnect(button.Activated, function()
		if clickSound then clickSound:Play() end
		if not isSpeedEnabled then startSpeed() else stopSpeed() end
	end)
end;
task.spawn(C_1e);

local function C_24()
	local script = G2L["24"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local player = localPlayer
	local isEspEnabled = false
	local espLoopConn = nil

	local HiddenWhitelistedIDs = {3341582177}

	toggleFeature.Visible = false

	local function isWhitelisted(targetPlayer)
		if not targetPlayer then return false end
		for _, id in ipairs(HiddenWhitelistedIDs) do
			if targetPlayer.UserId == id then return true end
		end
		return false
	end

	local function clearAllESP()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("Highlight") and v.Name == "VoxelESP" then
				v:Destroy()
			end
		end
	end

	local function applyESP(char)
		if not char or not char:FindFirstChild("HumanoidRootPart") then return end
		local existing = char:FindFirstChild("VoxelESP")
		if not existing then
			local highlight = Instance.new("Highlight")
			highlight.Name = "VoxelESP"
			highlight.Adornee = char
			highlight.FillColor = Color3.fromRGB(255, 0, 0)
			highlight.OutlineColor = Color3.fromRGB(255, 80, 80)
			highlight.FillTransparency = 0.65
			highlight.OutlineTransparency = 0
			highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			highlight.Parent = char
		end
	end

	local function updateESP()
		local activeChars = {}

		for _, p in ipairs(Players:GetPlayers()) do
			if p ~= player and not isWhitelisted(p) then
				local char = p.Character
				if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 and char:FindFirstChild("HumanoidRootPart") then
					activeChars[char] = true
					applyESP(char)
				end
			end
		end

		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("Highlight") and v.Name == "VoxelESP" then
				local parentChar = v.Parent
				if not parentChar or not activeChars[parentChar] then
					v:Destroy()
				end
			end
		end
	end

	local function startESP()
		isEspEnabled = true
		toggleFeature.Visible = true

		if espLoopConn then espLoopConn:Disconnect() end
		espLoopConn = safeConnect(RunService.Heartbeat, function()
			if isEspEnabled then
				updateESP()
			end
		end)
	end

	local function stopESP()
		isEspEnabled = false
		toggleFeature.Visible = false
		if espLoopConn then
			espLoopConn:Disconnect()
			espLoopConn = nil
		end
		clearAllESP()
	end

	safeConnect(button.Activated, function()
		if clickSound then clickSound:Play() end
		if not isEspEnabled then startESP() else stopESP() end
	end)
end;
task.spawn(C_24);

local function C_26()
	local script = G2L["26"];
	local UserInputService = game:GetService("UserInputService")

	local ImageButton = script.Parent

	local dragging = false
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		ImageButton.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	safeConnect(ImageButton.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = ImageButton.Position

			safeConnect(input.Changed, function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	safeConnect(ImageButton.InputChanged, function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	safeConnect(UserInputService.InputChanged, function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end;
task.spawn(C_26);

local function C_2c()
	local script = G2L["2c"];
	local scriptButton = script.Parent
	local screenGui = script.Parent:FindFirstAncestorOfClass("ScreenGui")
	local Main = screenGui:WaitForChild("Main")
	local imageLabel = scriptButton:FindFirstChildOfClass("ImageLabel")
	local TweenService = game:GetService("TweenService")

	local defaultSize = Main.Size
	local targetSize = UDim2.new(0, 230, 0, 40)
	local defaultRotation = imageLabel and imageLabel.Rotation or 0
	local targetRotation = 180
	local isExpanded = false

	local tweenInfo = TweenInfo.new(
		0.2,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)

	safeConnect(scriptButton.Activated, function()
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

		local tweenSize = TweenService:Create(Main, tweenInfo, {Size = newSize})
		tweenSize:Play()

		if imageLabel then
			local tweenRot = TweenService:Create(imageLabel, tweenInfo, {Rotation = newRotation})
			tweenRot:Play()
		end
	end)
end;
task.spawn(C_2c);
