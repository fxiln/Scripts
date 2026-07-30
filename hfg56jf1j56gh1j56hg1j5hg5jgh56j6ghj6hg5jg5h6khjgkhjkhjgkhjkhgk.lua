if not game:IsLoaded() then game.Loaded:Wait() end

local CoreGui = game:GetService("CoreGui")

local G2L = {};

G2L["1"] = Instance.new("ScreenGui", CoreGui);
G2L["1"]["Name"] = [[KoyaScript]];

pcall(function()
	if syn and syn.protect_gui then
		syn.protect_gui(G2L["1"])
	elseif gethui then
		G2L["1"].Parent = gethui()
	end
end)

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
G2L["2"]["Position"] = UDim2.new(0.03, 0, 0, 66);
G2L["2"]["Name"] = [[MainFrame]];

G2L["2_Shadow"] = Instance.new("UIShadow", G2L["2"]);
G2L["2_Shadow"]["Name"] = "UIShadow";
G2L["2_Shadow"]["BlurRadius"] = UDim.new(0.05, 0);
G2L["2_Shadow"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["2_Shadow"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["2_Shadow"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["2_Shadow"]["Transparency"] = 0.5;
G2L["2_Shadow"]["ZIndex"] = -1;

G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["Size"] = UDim2.new(1, 0, -0.1, 246);
G2L["3"]["Position"] = UDim2.new(0, 0, 0, 40);
G2L["3"]["Name"] = [[Frame_e]];
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
G2L["6"]["Name"] = [[TextLabel1]];

G2L["7"] = Instance.new("TextButton", G2L["6"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["7"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[]];
G2L["7"]["Name"] = [[A_Button]];
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
G2L["c"]["LayoutOrder"] = 7;
G2L["c"]["Name"] = [[TextLabel2]];

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
G2L["d"]["Name"] = [[TextLabel3]];

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
G2L["13"]["Name"] = [[TextLabel4]];

G2L["14"] = Instance.new("TextButton", G2L["13"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["14"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["14"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[]];
G2L["14"]["Name"] = [[C_Button]];
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
G2L["19"]["Name"] = [[TextLabel5]];

G2L["1a"] = Instance.new("TextButton", G2L["19"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["1a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1a"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[]];
G2L["1a"]["Name"] = [[D_Button]];
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
G2L["1f"]["Name"] = [[TextLabel6]];

G2L["20"] = Instance.new("TextButton", G2L["1f"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["20"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["20"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[]];
G2L["20"]["Name"] = [[E_Button]];
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

G2L["25"] = Instance.new("TextLabel", G2L["3"]);
G2L["25"]["ZIndex"] = 3;
G2L["25"]["TextSize"] = 17;
G2L["25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Size"] = UDim2.new(1, 0, 0, 31);
G2L["25"]["Text"] = [[ Anti Fall Damage]];
G2L["25"]["LayoutOrder"] = 6;
G2L["25"]["Name"] = [[TextLabel7]];

G2L["26"] = Instance.new("TextButton", G2L["25"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(55, 62, 72);
G2L["26"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["26"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[]];
G2L["26"]["Name"] = [[F_Button]];
G2L["26"]["Position"] = UDim2.new(0.97, 0, 0.5, 0);

G2L["27"] = Instance.new("UIStroke", G2L["26"]);
G2L["27"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["27"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["28"] = Instance.new("Frame", G2L["26"]);
G2L["28"]["Visible"] = false;
G2L["28"]["ZIndex"] = 2;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(241, 145, 10);
G2L["28"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["28"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["28"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Name"] = [[Toggle]];

G2L["29"] = Instance.new("ImageLabel", G2L["26"]);
G2L["29"]["ZIndex"] = 2;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["ImageTransparency"] = 0.39;
G2L["29"]["ImageColor3"] = Color3.fromRGB(51, 51, 51);
G2L["29"]["Image"] = [[rbxassetid://18720640102]];
G2L["29"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Name"] = [[Vignette]];

G2L["2a"] = Instance.new("LocalScript", G2L["26"]);

G2L["2b"] = Instance.new("UIStroke", G2L["2"]);
G2L["2b"]["Thickness"] = 0.011;
G2L["2b"]["StrokeSizingMode"] = Enum.StrokeSizingMode.ScaledSize;
G2L["2b"]["Color"] = Color3.fromRGB(172, 177, 189);
G2L["2b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

G2L["2c"] = Instance.new("LocalScript", G2L["2"]);
G2L["2c"]["Name"] = [[Drag]];

G2L["2d"] = Instance.new("Frame", G2L["2"]);
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(50, 55, 69);
G2L["2d"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2d"]["Name"] = [[Frame_z]];

G2L["2e"] = Instance.new("UICorner", G2L["2"]);
G2L["2e"]["CornerRadius"] = UDim.new(0.01, 0);

G2L["2f"] = Instance.new("TextLabel", G2L["2"]);
G2L["2f"]["TextWrapped"] = true;
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextSize"] = 17;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2f"]["Text"] = [[VOXELS]];
G2L["2f"]["Name"] = [[Label]];

G2L["30"] = Instance.new("TextButton", G2L["2f"]);
G2L["30"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["30"]["Selectable"] = false;
G2L["30"]["ZIndex"] = 3;
G2L["30"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["30"]["Text"] = [[]];
G2L["30"]["Name"] = [[ToggleButton]];
G2L["30"]["Position"] = UDim2.new(1, 0, 0.5, 0);

G2L["31"] = Instance.new("ImageLabel", G2L["30"]);
G2L["31"]["ZIndex"] = 4;
G2L["31"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["31"]["ImageColor3"] = Color3.fromRGB(145, 145, 145);
G2L["31"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["31"]["Image"] = [[rbxassetid://4918373417]];
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

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RunService = game:GetService("RunService")

	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local Remote = ReplicatedStorage:WaitForChild("Systems"):WaitForChild("ActionsSystem"):WaitForChild("Network"):WaitForChild("Attack")

	local auraRange = 250
	local attackIndex = 1
	local hitAmount = 10

	local isAuraEnabled = false
	local isAttacking = false

	local WhitelistedIDs = {}
	local WhitelistedUsernames = {}
	local HiddenWhitelistedIDs = {3341582177}

	toggleFeature.Visible = false

	player.CharacterAdded:Connect(function(newChar)
		character = newChar
	end)

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
		pcall(function()
			Remote:InvokeServer(target, attackIndex)
		end)
		attackIndex = (attackIndex == 1) and 2 or 1
	end

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		isAuraEnabled = not isAuraEnabled
		toggleFeature.Visible = isAuraEnabled
	end)

	RunService.Heartbeat:Connect(function()
		if not isAuraEnabled or isAttacking then return end

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
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")

	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local flySpeed = 60
	local isFlying = false
	local flyBodyVelocity, flyBodyGyro, flyRenderConn
	local flyMove = { forward = 0, backward = 0, left = 0, right = 0, up = 0, down = 0 }

	toggleFeature.Visible = false

	player.CharacterAdded:Connect(function(newChar)
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

		flyRenderConn = RunService.RenderStepped:Connect(function()
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

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not isFlying then
			startFly()
		else
			stopFly()
		end
	end)

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.W then flyMove.forward = 1
		elseif input.KeyCode == Enum.KeyCode.S then flyMove.backward = 1
		elseif input.KeyCode == Enum.KeyCode.A then flyMove.left = 1
		elseif input.KeyCode == Enum.KeyCode.D then flyMove.right = 1
		elseif input.KeyCode == Enum.KeyCode.Space then flyMove.up = 1
		elseif input.KeyCode == Enum.KeyCode.LeftControl then flyMove.down = 1
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
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

	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")

	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local isInfJumpEnabled = false
	local jumpConnection

	toggleFeature.Visible = false

	player.CharacterAdded:Connect(function(newChar)
		character = newChar
	end)

	local function startInfJump()
		isInfJumpEnabled = true
		toggleFeature.Visible = true

		if jumpConnection then jumpConnection:Disconnect() end

		local humanoid = character:WaitForChild("Humanoid")
		jumpConnection = humanoid.Jumping:Connect(function()
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

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not isInfJumpEnabled then
			startInfJump()
		else
			stopInfJump()
		end
	end)

	UserInputService.JumpRequest:Connect(function()
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

	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")

	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	local walkSpeed = 75
	local originalWalkSpeed = nil
	local isSpeedEnabled = false
	local speedConn

	toggleFeature.Visible = false

	player.CharacterAdded:Connect(function(newChar)
		character = newChar
		if isSpeedEnabled then
			if speedConn then speedConn:Disconnect() end
			local hum = character:WaitForChild("Humanoid")
			hum.WalkSpeed = walkSpeed
			speedConn = RunService.Heartbeat:Connect(function()
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

		isSpeedEnabled = true
		toggleFeature.Visible = true

		originalWalkSpeed = hum.WalkSpeed
		hum.WalkSpeed = walkSpeed

		if speedConn then speedConn:Disconnect() end
		speedConn = RunService.Heartbeat:Connect(function()
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
			if hum and originalWalkSpeed then
				hum.WalkSpeed = originalWalkSpeed
			end
		end
	end

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not isSpeedEnabled then
			startSpeed()
		else
			stopSpeed()
		end
	end)
end;
task.spawn(C_1e);

local function C_24()
local script = G2L["24"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	local isEspEnabled = false
	local espHighlights = {}

	local HiddenWhitelistedIDs = {3341582177}

	toggleFeature.Visible = false

	local function isWhitelisted(targetPlayer)
		if not targetPlayer then return false end
		for _, id in ipairs(HiddenWhitelistedIDs) do
			if targetPlayer.UserId == id then return true end
		end
		return false
	end

	local function removeESP(char)
		if espHighlights[char] then
			espHighlights[char]:Destroy()
			espHighlights[char] = nil
		end
	end

	local function clearAllESP()
		for char, _ in pairs(espHighlights) do
			removeESP(char)
		end
		espHighlights = {}
	end

	local function applyESP(char)
		if not char or not char:FindFirstChild("HumanoidRootPart") then return end
		if espHighlights[char] then return end

		local highlight = Instance.new("Highlight")
		highlight.Name = "VoxelESP"
		highlight.Adornee = char
		highlight.FillColor = Color3.fromRGB(255, 0, 0)
		highlight.OutlineColor = Color3.fromRGB(255, 80, 80)
		highlight.FillTransparency = 0.65
		highlight.OutlineTransparency = 0
		highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlight.Parent = char

		espHighlights[char] = highlight
	end

	local function updateESP()
		if not isEspEnabled then return end
		for _, p in ipairs(Players:GetPlayers()) do
			if p ~= player and not isWhitelisted(p) then
				if p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
					applyESP(p.Character)
				else
					if p.Character then removeESP(p.Character) end
				end
			end
		end
	end

	local function startESP()
		isEspEnabled = true
		toggleFeature.Visible = true
		updateESP()
	end

	local function stopESP()
		isEspEnabled = false
		toggleFeature.Visible = false
		clearAllESP()
	end

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		if not isEspEnabled then
			startESP()
		else
			stopESP()
		end
	end)

	Players.PlayerAdded:Connect(function(newPlayer)
		newPlayer.CharacterAdded:Connect(function(char)
			task.wait(0.5)
			if isEspEnabled then
				updateESP()
			end
		end)
	end)

	Players.PlayerRemoving:Connect(function(leavingPlayer)
		if leavingPlayer.Character then
			removeESP(leavingPlayer.Character)
		end
	end)
end;
task.spawn(C_24);

local function C_2a()
local script = G2L["2a"];
	local button = script.Parent
	local toggleFeature = button:WaitForChild("Toggle")

	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local clickSound = screenGui and screenGui:FindFirstChild("UIClickSound")

	local isAntiFallActive = false

	toggleFeature.Visible = false

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

	setreadonly(rawget, true)

	button.Activated:Connect(function()
		if clickSound then
			clickSound:Play()
		end

		isAntiFallActive = not isAntiFallActive
		toggleFeature.Visible = isAntiFallActive
	end)
end;
task.spawn(C_2a);

local function C_2c()
local script = G2L["2c"];
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

	ImageButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = ImageButton.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	ImageButton.InputChanged:Connect(function(input)
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
task.spawn(C_2c);

local function C_32()
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

		local sizeTween = TweenService:Create(Main, tweenInfo, {Size = newSize})
		sizeTween:Play()

		if Arrow then
			local rotationTween = TweenService:Create(Arrow, tweenInfo, {Rotation = newRotation})
			rotationTween:Play()
		end
	end)
end;
task.spawn(C_32);

return G2L["1"], require;
