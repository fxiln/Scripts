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

local clickSound = Instance.new("Sound", G2L["1"])
clickSound.Name = "UIClickSound"
clickSound.SoundId = "rbxassetid://93927627634818"
clickSound.Volume = 0.5

G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Active"] = true;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(35, 39, 48);
G2L["2"]["Selectable"] = true;
G2L["2"]["ClipsDescendants"] = true;
G2L["2"]["Size"] = UDim2.new(0, 230, 0, 260);
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
G2L["6"]["Size"] = UDim2.new(1, 0, 0, 26);
G2L["6"]["Text"] = [[<font color="#FF0000"> YouTube:</font> <font color="#FFFFFF">Koya Scripts</font>]];
G2L["6"]["LayoutOrder"] = 7;
G2L["6"]["Name"] = [[YoutubeName]];

G2L["7"] = Instance.new("Frame", G2L["3"]);
G2L["7"]["ZIndex"] = 3;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[Template]];
G2L["7"]["LayoutOrder"] = 2;
G2L["7"]["BackgroundTransparency"] = 1;

G2L["8"] = Instance.new("TextLabel", G2L["7"]);
G2L["8"]["Interactable"] = false;
G2L["8"]["ZIndex"] = 4;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 17;
G2L["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[ Infinite EXP Boost]];
G2L["8"]["Name"] = [[DescriptionLabel]];
G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["9"] = Instance.new("TextButton", G2L["7"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["ZIndex"] = 4;
G2L["9"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["9"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[]];
G2L["9"]["Name"] = [[Button]];
G2L["9"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["a"] = Instance.new("Frame", G2L["9"]);
G2L["a"]["Visible"] = false;
G2L["a"]["Interactable"] = false;
G2L["a"]["ZIndex"] = 5;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["a"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Name"] = [[ToggleFrame]];

G2L["b"] = Instance.new("UIStroke", G2L["9"]);
G2L["b"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["c"] = Instance.new("LocalScript", G2L["9"]);

G2L["d"] = Instance.new("Frame", G2L["3"]);
G2L["d"]["ZIndex"] = 3;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["Size"] = UDim2.new(1, 0, 0, 31);
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
G2L["e"]["Text"] = [[ Unlock All Titans]];
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

G2L["12"] = Instance.new("Frame", G2L["3"]);
G2L["12"]["ZIndex"] = 3;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Template]];
G2L["12"]["LayoutOrder"] = 6;
G2L["12"]["BackgroundTransparency"] = 1;

G2L["13"] = Instance.new("TextLabel", G2L["12"]);
G2L["13"]["Interactable"] = false;
G2L["13"]["ZIndex"] = 5;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextSize"] = 17;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[ Unlock All Skins]];
G2L["13"]["Name"] = [[DescriptionLabel]];
G2L["13"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["14"] = Instance.new("TextButton", G2L["12"]);
G2L["14"]["Interactable"] = false;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["ZIndex"] = 4;
G2L["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["14"]["Size"] = UDim2.new(0, 220, 0, 25);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[]];
G2L["14"]["Name"] = [[Button]];
G2L["14"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["15"] = Instance.new("UICorner", G2L["14"]);
G2L["15"]["CornerRadius"] = UDim.new(0.1, 0);

G2L["16"] = Instance.new("LocalScript", G2L["14"]);

G2L["17"] = Instance.new("Frame", G2L["3"]);
G2L["17"]["ZIndex"] = 3;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[Template]];
G2L["17"]["LayoutOrder"] = 1;
G2L["17"]["BackgroundTransparency"] = 1;

G2L["18"] = Instance.new("TextLabel", G2L["17"]);
G2L["18"]["Interactable"] = false;
G2L["18"]["ZIndex"] = 4;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 17;
G2L["18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["18"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[ Infinite Shards]];
G2L["18"]["Name"] = [[DescriptionLabel]];
G2L["18"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["19"] = Instance.new("TextButton", G2L["17"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextSize"] = 14;
G2L["19"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["ZIndex"] = 4;
G2L["19"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["19"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[]];
G2L["19"]["Name"] = [[Button]];
G2L["19"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["1a"] = Instance.new("Frame", G2L["19"]);
G2L["1a"]["Visible"] = false;
G2L["1a"]["Interactable"] = false;
G2L["1a"]["ZIndex"] = 5;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1a"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["1a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Name"] = [[ToggleFrame]];

G2L["1b"] = Instance.new("UIStroke", G2L["19"]);
G2L["1b"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["1b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["1c"] = Instance.new("LocalScript", G2L["19"]);

G2L["1d"] = Instance.new("Frame", G2L["3"]);
G2L["1d"]["ZIndex"] = 3;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Name"] = [[Template]];
G2L["1d"]["LayoutOrder"] = 4;
G2L["1d"]["BackgroundTransparency"] = 1;

G2L["1e"] = Instance.new("TextLabel", G2L["1d"]);
G2L["1e"]["Interactable"] = false;
G2L["1e"]["ZIndex"] = 4;
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["TextSize"] = 17;
G2L["1e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[ Spam Roar 1 (fast ult)]];
G2L["1e"]["Name"] = [[DescriptionLabel]];
G2L["1e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["1f"] = Instance.new("TextButton", G2L["1d"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["ZIndex"] = 4;
G2L["1f"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1f"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[]];
G2L["1f"]["Name"] = [[Button]];
G2L["1f"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["20"] = Instance.new("Frame", G2L["1f"]);
G2L["20"]["Visible"] = false;
G2L["20"]["Interactable"] = false;
G2L["20"]["ZIndex"] = 5;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["20"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["20"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["20"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[ToggleFrame]];

G2L["21"] = Instance.new("UIStroke", G2L["1f"]);
G2L["21"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["22"] = Instance.new("LocalScript", G2L["1f"]);

G2L["23"] = Instance.new("Frame", G2L["3"]);
G2L["23"]["ZIndex"] = 3;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[Template]];
G2L["23"]["LayoutOrder"] = 2;
G2L["23"]["BackgroundTransparency"] = 1;

G2L["24"] = Instance.new("TextLabel", G2L["23"]);
G2L["24"]["Interactable"] = false;
G2L["24"]["ZIndex"] = 4;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 17;
G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["24"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[ Spam Roar 2 (fast ult)]];
G2L["24"]["Name"] = [[DescriptionLabel]];
G2L["24"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["25"] = Instance.new("TextButton", G2L["23"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextSize"] = 14;
G2L["25"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["ZIndex"] = 4;
G2L["25"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["25"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Text"] = [[]];
G2L["25"]["Name"] = [[Button]];
G2L["25"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["26"] = Instance.new("Frame", G2L["25"]);
G2L["26"]["Visible"] = false;
G2L["26"]["Interactable"] = false;
G2L["26"]["ZIndex"] = 5;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["26"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["26"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["26"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Name"] = [[ToggleFrame]];

G2L["27"] = Instance.new("UIStroke", G2L["25"]);
G2L["27"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["27"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["28"] = Instance.new("LocalScript", G2L["25"]);

G2L["29"] = Instance.new("LocalScript", G2L["2"]);
G2L["29"]["Name"] = [[Drag]];

G2L["2a"] = Instance.new("Frame", G2L["2"]);
G2L["2a"]["ZIndex"] = 2;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(50, 55, 69);
G2L["2a"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2a"]["Name"] = [[Decor]];

G2L["2b"] = Instance.new("TextLabel", G2L["2"]);
G2L["2b"]["TextWrapped"] = true;
G2L["2b"]["ZIndex"] = 3;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextSize"] = 17;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2b"]["Text"] = [[AGE OF TITANS]];
G2L["2b"]["Name"] = [[GameName]];

G2L["2c"] = Instance.new("TextButton", G2L["2"]);
G2L["2c"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["2c"]["Selectable"] = false;
G2L["2c"]["ZIndex"] = 4;
G2L["2c"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["2c"]["BackgroundTransparency"] = 1;
G2L["2c"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["2c"]["Text"] = [[]];
G2L["2c"]["Name"] = [[ToggleButton]];
G2L["2c"]["Position"] = UDim2.new(1, 0, 0, 0);

G2L["2d"] = Instance.new("LocalScript", G2L["2c"]);
G2L["2d"]["Name"] = [[ToggleUI]];

G2L["2e"] = Instance.new("ImageLabel", G2L["2c"]);
G2L["2e"]["ZIndex"] = 5;
G2L["2e"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["2e"]["ImageColor3"] = Color3.fromRGB(173, 173, 173);
G2L["2e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2e"]["Image"] = [[rbxassetid://4918373417]];
G2L["2e"]["Size"] = UDim2.new(0, 11, 0, 11);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Rotation"] = 90;
G2L["2e"]["Name"] = [[Arrow]];
G2L["2e"]["Position"] = UDim2.new(0.6, 0, 0.5, 0);

G2L["2f"] = Instance.new("UIStroke", G2L["2"]);
G2L["2f"]["Thickness"] = 2;
G2L["2f"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["2f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

local function C_c()
local script = G2L["c"];
	local MarketplaceService = game:GetService("MarketplaceService")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local button = script.Parent
	local toggleFrame = button:WaitForChild("ToggleFrame")

	local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local targetProductId = 3442717108
	local isRunning = false

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		toggleFrame.Visible = not toggleFrame.Visible

		isRunning = toggleFrame.Visible

		if isRunning then
			task.spawn(function()
				while isRunning do
					pcall(function()
						MarketplaceService:SignalPromptProductPurchaseFinished(LocalPlayer.UserId, targetProductId, true)
					end)

					task.wait(0.1)
				end
			end)
		end
	end)
end;
task.spawn(C_c);

local function C_11()
local script = G2L["11"];
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local button = script.Parent

	local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not LocalPlayer then return end

		local kaijusFolder = LocalPlayer:FindFirstChild("Kaijus")

		if kaijusFolder then
			for _, item in ipairs(kaijusFolder:GetChildren()) do
				if item:IsA("BoolValue") then
					if not item.Value then
						item.Value = true
					end
				end
			end
		end
	end)
end;
task.spawn(C_11);

local function C_16()
local script = G2L["16"];
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local button = script.Parent

	local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not LocalPlayer then return end

		local kaijusFolder = LocalPlayer:FindFirstChild("Kaijus")
		if kaijusFolder then
			for _, kaiju in ipairs(kaijusFolder:GetChildren()) do
				if kaiju:IsA("BoolValue") then
					local skinsFolder = kaiju:FindFirstChild("Skins")
					if skinsFolder then
						for _, skin in ipairs(skinsFolder:GetChildren()) do
							if skin:IsA("BoolValue") then
								if not skin.Value then
									skin.Value = true
								end
							end
						end
					end
				end
			end
		end
	end)
end;
task.spawn(C_16);

local function C_1c()
local script = G2L["1c"];
	local MarketplaceService = game:GetService("MarketplaceService")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local button = script.Parent
	local toggleFrame = button:WaitForChild("ToggleFrame")

	local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local targetProductId = 3539271502
	local isRunning = false

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		toggleFrame.Visible = not toggleFrame.Visible

		isRunning = toggleFrame.Visible

		if isRunning then
			task.spawn(function()
				while isRunning do
					pcall(function()
						MarketplaceService:SignalPromptProductPurchaseFinished(LocalPlayer.UserId, targetProductId, true)
					end)

					task.wait(0.1)
				end
			end)
		end
	end)
end;
task.spawn(C_1c);

local function C_22()
local script = G2L["22"];
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local button = script.Parent
	local toggleFrame = button:WaitForChild("ToggleFrame")

	local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local isRunning = false

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not LocalPlayer then return end

		toggleFrame.Visible = not toggleFrame.Visible
		isRunning = toggleFrame.Visible

		if isRunning then
			task.spawn(function()
				while isRunning do
					local character = LocalPlayer.Character
					if character then
						local remoteEvent = character:FindFirstChild("RemoteEvent")
						if remoteEvent then
							pcall(function()
								remoteEvent:FireServer("Roar1", 5)
							end)
						end
					end
					task.wait(0.1)
				end
			end)
		end
	end)
end;
task.spawn(C_22);

local function C_28()
local script = G2L["28"];
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local button = script.Parent
	local toggleFrame = button:WaitForChild("ToggleFrame")

	local screenGui = button:FindFirstAncestorWhichIsA("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local isRunning = false

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not LocalPlayer then return end

		toggleFrame.Visible = not toggleFrame.Visible
		isRunning = toggleFrame.Visible

		if isRunning then
			task.spawn(function()
				while isRunning do
					local character = LocalPlayer.Character
					if character then
						local remoteEvent = character:FindFirstChild("RemoteEvent")
						if remoteEvent then
							pcall(function()
								remoteEvent:FireServer("Roar2", 3.6666667461395)
							end)
						end
					end
					task.wait(0.1)
				end
			end)
		end
	end)
end;
task.spawn(C_28);

local function C_29()
local script = G2L["29"];
	local UserInputService = game:GetService("UserInputService")

	local MainFrame = script.Parent

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

	MainFrame.InputBegan:Connect(function(input)
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

	MainFrame.InputChanged:Connect(function(input)
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
task.spawn(C_29);

local function C_2d()
local script = G2L["2d"];
	local scriptButton = script.Parent
	local Main = scriptButton.Parent
	local Arrow = scriptButton:FindFirstChild("Arrow")
	local TweenService = game:GetService("TweenService")

	local defaultSize = Main.Size
	local targetSize = UDim2.new(0, 230, 0, 40)
	local defaultRotation = Arrow and Arrow.Rotation or 0
	local targetRotation = 90
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
task.spawn(C_2d);

return G2L["1"], require;
