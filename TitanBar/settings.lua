-- settings.lua
-- Written by Habna


-- **v Load / update / set default settings v**
function LoadSettings()
	if GLocale == "de" then
		settings = Turbine.PluginData.Load( Turbine.DataScope.Character, "TitanBarSettingsDE" );
		pwShard, pwMark, pwMedallion, pwSeal, pwCommendation, pwMithril,--[[ pwYule, ]]pwHytbold = "Scherbe", "Zeichen", "Medaillon", "Siegel", "Anerkennung", "Mithril-M\195\188nze",--[[ "Yule Token", ]]"M\195\188nze von Hytbold";
		-- AU3 MARKER 1 - DO NOT REMOVE
		pwAmrothSilverPiece = "Amroth-Silberstck"
		pwStarsofMerit = "Stern des Verdienst"
		pwCentralGondorSilverPiece = "Zentralgondorisches Silberst\195\188ck"
		pwGiftgiversBrand = "Zeichen des Schenkenden"
		pwAshOfGorgoroth = "Asche von Gorgoroth"
		-- AU3 MARKER 1 END
	elseif GLocale == "en" then
		settings = Turbine.PluginData.Load( Turbine.DataScope.Character, "TitanBarSettingsEN" );
		pwShard, pwMark, pwMedallion, pwSeal, pwCommendation, pwMithril,--[[ pwYule, ]]pwHytbold = "Shard", "Mark", "Medallion", "Seal", "Commendation", "Mithril Coin",--[[ "Yule Token", ]]"Token of Hytbold";
		-- AU3 MARKER 2 - DO NOT REMOVE
		pwAmrothSilverPiece = "Amroth Silver Piece"
		pwStarsofMerit = "Star of Merit"
		pwCentralGondorSilverPiece = "Central Gondor Silver Piece"
		pwGiftgiversBrand = "Gift-giver's Brand"
		pwAshOfGorgoroth = "Ash of Gorgoroth"
		-- AU3 MARKER 2 END
	elseif GLocale == "fr" then
		settings = Turbine.PluginData.Load( Turbine.DataScope.Character, "TitanBarSettingsFR" );
		pwShard, pwMark, pwMedallion, pwSeal, pwCommendation, pwMithril,--[[ pwYule, ]]pwHytbold = "Eclat", "Marque", "M\195\169daillon", "Sceau", "Citation", "Pi\195\168ce de mithril",--[[ "Yule Token", ]]"Jeton d'Hytbold";
		-- AU3 MARKER 3 - DO NOT REMOVE
		pwAmrothSilverPiece = "Pice d'argent d'Amroth"
		pwStarsofMerit = "Star of Merit"
		pwCentralGondorSilverPiece = "Central Gondor Silver Piece"
		pwGiftgiversBrand = "Gift-giver's Brand"
		pwAshOfGorgoroth = "Ash of Gorgoroth"
		-- AU3 MARKER 3 END
	end
	
	tA, tR, tG, tB, tX, tY, tW = 0.3, 0.3, 0.3, 0.3, 0, 0, 3; --Default alpha, red, green, blue, X, Y pos of control, Show where
	tL, tT = 100, 100; --Default position of control window

	if settings == nil then	settings = {}; end

	if settings.TitanBar == nil then settings.TitanBar = {}; end
	if settings.TitanBar.A == nil then settings.TitanBar.A = string.format("%.3f", tA); end --Default Alpha color value
	if settings.TitanBar.R == nil then settings.TitanBar.R = string.format("%.3f", tR); end --Default Red color value
	if settings.TitanBar.G == nil then settings.TitanBar.G = string.format("%.3f", tG); end --Default Green color value
	if settings.TitanBar.B == nil then settings.TitanBar.B = string.format("%.3f", tB); end --Default Blue color value
	if settings.TitanBar.W == nil then settings.TitanBar.W = string.format("%.0f", screenWidth); end -- Default TitanBar Width
	if settings.TitanBar.L == nil then settings.TitanBar.L = GLocale; end -- Default TitanBar Language
	if settings.TitanBar.H == nil then settings.TitanBar.H = string.format("%.0f", 30); end -- Default TitanBar Height
	if settings.TitanBar.F == nil then settings.TitanBar.F = string.format("%.0f", 1107296268); end -- Default TitanBar Font type #
	if settings.TitanBar.T == nil then settings.TitanBar.T = "TrajanPro14"; end -- Default TitanBar Font name
	if settings.TitanBar.D == nil then settings.TitanBar.D = true; end -- True ->TitanBar set to Top of the screen
	if settings.TitanBar.Z == nil then settings.TitanBar.Z = false; end -- TitanBar was reloaded
	--if settings.TitanBar.ZT == nil then settings.TitanBar.ZT = "TB"; end -- TitanBar was reloaded (text)
	bcAlpha = tonumber(settings.TitanBar.A);
	bcRed = tonumber(settings.TitanBar.R);
	bcGreen = tonumber(settings.TitanBar.G);
	bcBlue = tonumber(settings.TitanBar.B);
	TBWidth = tonumber(settings.TitanBar.W);
	TBLocale = settings.TitanBar.L;
	import (AppLocaleD..TBLocale);
	TBHeight = tonumber(settings.TitanBar.H);
	_G.TBFont = tonumber(settings.TitanBar.F);
	TBFontT = settings.TitanBar.T;
	--if TBFontT == "Undefined" then TBFontT = "TrajanPro14"; end --Override previous default font. Remove after Oct, 20th 2012
	local tStrS = tonumber(string.sub( TBFontT, string.len(TBFontT) - 1, string.len(TBFontT) )); --Get Font Size
	--write(tStrS);
	if TBHeight > 30 and tStrS <= 16 then 
		CTRHeight = 30;
	elseif TBHeight > 30 and tStrS > 16 then
		CTRHeight = 2*tStrS;
	else 
		CTRHeight = TBHeight; 
	end
	--write(CTRHeight);
	tStr = string.sub( TBFontT, 1, string.len(TBFontT) - 2 ); --Get Font name
	--write(tStr);
	if tStrS == nil then tStrS = 0; end
	NM = _G.FontN[tStr][tStrS]; --Number multiplier
	TM = _G.FontT[tStr][tStrS]; --Text multiplier
	TBTop = settings.TitanBar.D;
	TBReloaded = settings.TitanBar.Z;
	TBReloadedText = settings.TitanBar.ZT;


	settings.Language = nil; --Remove after Oct, 15th 2013
	--if settings.Language.C = nil then settings.Language.C = false; end --Language as change --Remove after Oct, 15th 2013
	--LangChange = settings.Language.C; --Remove after Oct, 15th 2013


	if settings.Options == nil then settings.Options = {}; end
	settings.Options.V = nil; --Remove after oct, 15th 2013
	if settings.Options.L == nil then settings.Options.L = string.format("%.0f", tL); end --X position of options window
	if settings.Options.T == nil then settings.Options.T = string.format("%.0f", tT); end --Y position of options window
	if settings.Options.H == nil then settings.Options.H = L["OPAHC"]; end --Auto hide option (Default is: Only in combat)
	if settings.Options.I == nil then settings.Options.I = string.format("%.0f", 32); end --Icon size (Default is: 32)
	OPWLeft = tonumber(settings.Options.L);
	OPWTop = tonumber(settings.Options.T);
	
	TBAutoHide = settings.Options.H;
	-- If user change language, Auto hide option not showing in proper language. Fix: Re-input correct word in variable.
	if TBAutoHide == "Disabled" or TBAutoHide == "D\195\169sactiver" or TBAutoHide == "niemals" then TBAutoHide = L["OPAHD"]; end
	if TBAutoHide == "Always" or TBAutoHide == "Toujours" or TBAutoHide == "immer" then TBAutoHide = L["OPAHE"]; end
	if TBAutoHide == "Only in combat" or TBAutoHide == "Seulement en combat" or TBAutoHide == "Nur in der Schlacht" then TBAutoHide = L["OPAHC"]; end

	TBIconSize = settings.Options.I;
	-- If user change language, icon dissappear. Fix: Re-input correct word in variable.
	if TBIconSize == "Small (16x16)" or TBIconSize == "Petit (16x16)" or TBIconSize == "klein (16x16)" then TBIconSize = L["OPISS"];
	elseif TBIconSize == "Large (32x32)" or TBIconSize == "Grand (32x32)" or TBIconSize == "Breit (32x32)" then TBIconSize = L["OPISL"]; end
	

	if settings.Profile == nil then settings.Profile = {}; end
	settings.Profile.V = nil; --Remove after oct, 15th 2013
	if settings.Profile.L == nil then settings.Profile.L = string.format("%.0f", tL); end
	if settings.Profile.T == nil then settings.Profile.T = string.format("%.0f", tT); end
	PPWLeft = tonumber(settings.Profile.L);
	PPWTop = tonumber(settings.Profile.T);


	if settings.Shell == nil then settings.Shell = {}; end
	if settings.Shell.L == nil then settings.Shell.L = string.format("%.0f", tL); end --X position of Shell commands window
	if settings.Shell.T == nil then settings.Shell.T = string.format("%.0f", tT); end --Y position of Shell commands window
	SCWLeft = tonumber(settings.Shell.L);
	SCWTop = tonumber(settings.Shell.T);


	if settings.Background == nil then settings.Background = {}; end
	if settings.Background.L == nil then settings.Background.L = string.format("%.0f", tL); end --X position of Background window
	if settings.Background.T == nil then settings.Background.T = string.format("%.0f", tT); end --Y position of Background window
	if settings.Background.A == nil then settings.Background.A = false; end --ToAll option
	BGWLeft = tonumber(settings.Background.L);
	BGWTop = tonumber(settings.Background.T);
	BGWToAll = settings.Background.A;


	if settings.Wallet == nil then settings.Wallet = {}; end
	if settings.Wallet.V == nil then settings.Wallet.V = false; end
	if settings.Wallet.A == nil then settings.Wallet.A = string.format("%.3f", tA); end
	if settings.Wallet.R == nil then settings.Wallet.R = string.format("%.3f", tR); end
	if settings.Wallet.G == nil then settings.Wallet.G = string.format("%.3f", tG); end
	if settings.Wallet.B == nil then settings.Wallet.B = string.format("%.3f", tB); end
	if settings.Wallet.X == nil then settings.Wallet.X = string.format("%.0f", tX); end
	if settings.Wallet.Y == nil then settings.Wallet.Y = string.format("%.0f", tY); end
	if settings.Wallet.L == nil then settings.Wallet.L = string.format("%.0f", tL); end --X position of Wallet window
	if settings.Wallet.T == nil then settings.Wallet.T = string.format("%.0f", tT); end --Y position of Wallet window
	ShowWallet = settings.Wallet.V;
	WIbcAlpha = tonumber(settings.Wallet.A);
	WIbcRed = tonumber(settings.Wallet.R);
	WIbcGreen = tonumber(settings.Wallet.G);
	WIbcBlue = tonumber(settings.Wallet.B);
	_G.WILocX = tonumber(settings.Wallet.X);
	_G.WILocY = tonumber(settings.Wallet.Y);
	WIWLeft = tonumber(settings.Wallet.L);
	WIWTop = tonumber(settings.Wallet.T);


	if settings.Money == nil then settings.Money = {}; end
	if settings.Money.V == nil then settings.Money.V = true; end
	if settings.Money.A == nil then settings.Money.A = string.format("%.3f", tA); end --Alpha color
	if settings.Money.R == nil then settings.Money.R = string.format("%.3f", tR); end --Red color
	if settings.Money.G == nil then settings.Money.G = string.format("%.3f", tG); end --Green color
	if settings.Money.B == nil then settings.Money.B = string.format("%.3f", tB); end --Blue color
	if settings.Money.X == nil then settings.Money.X = string.format("%.0f", 400); end --X position on TitanBar
	if settings.Money.Y == nil then settings.Money.Y = string.format("%.0f", tY); end --Y position on TitanBar
	if settings.Money.S == nil then settings.Money.S = false; end --Show Total Money of all character on TitanBar Money control.
	if settings.Money.SS == nil then settings.Money.SS = true; end --Show sessions statistics
	if settings.Money.TS == nil then settings.Money.TS = true; end --Show today statistics
	if settings.Money.L == nil then settings.Money.L = string.format("%.0f", tL); end -- X position on screen for money window
	if settings.Money.T == nil then settings.Money.T = string.format("%.0f", tT); end -- Y position on screen for money window
	if settings.Money.W == nil then settings.Money.W = string.format("%.0f", 1); end --Show where? on TitanBar or in the wallet Tooltip. Default is in wallet Tooltip
	ShowMoney = settings.Money.V;
	MIbcAlpha = tonumber(settings.Money.A);
	MIbcRed = tonumber(settings.Money.R);
	MIbcGreen = tonumber(settings.Money.G);
	MIbcBlue = tonumber(settings.Money.B);
	_G.MILocX = tonumber(settings.Money.X);
	_G.MILocY = tonumber(settings.Money.Y);
	_G.STM = settings.Money.S;
	_G.SSS = settings.Money.SS;
	_G.STS = settings.Money.TS;
	MIWLeft = tonumber(settings.Money.L);
	MIWTop = tonumber(settings.Money.T);
	_G.MIWhere = tonumber(settings.Money.W);
	if _G.MIWhere == 3 and ShowMoney then _G.MIWhere = 1; settings.Money.W = string.format("%.0f", _G.MIWhere); end --Remove after Oct, 15th 2013


	if settings.DestinyPoints == nil then settings.DestinyPoints = {}; end
	if settings.DestinyPoints.V == nil then settings.DestinyPoints.V = false; end
	if settings.DestinyPoints.A == nil then settings.DestinyPoints.A = string.format("%.3f", tA); end
	if settings.DestinyPoints.R == nil then settings.DestinyPoints.R = string.format("%.3f", tR); end
	if settings.DestinyPoints.G == nil then settings.DestinyPoints.G = string.format("%.3f", tG); end
	if settings.DestinyPoints.B == nil then settings.DestinyPoints.B = string.format("%.3f", tB); end
	if settings.DestinyPoints.X == nil then settings.DestinyPoints.X = string.format("%.0f", tX); end
	if settings.DestinyPoints.Y == nil then settings.DestinyPoints.Y = string.format("%.0f", tY); end
	if settings.DestinyPoints.W == nil then settings.DestinyPoints.W = string.format("%.0f", tW); end
	ShowDestinyPoints = settings.DestinyPoints.V;
	DPbcAlpha = tonumber(settings.DestinyPoints.A);
	DPbcRed = tonumber(settings.DestinyPoints.R);
	DPbcGreen = tonumber(settings.DestinyPoints.G);
	DPbcBlue = tonumber(settings.DestinyPoints.B);
	_G.DPLocX = tonumber(settings.DestinyPoints.X);
	_G.DPLocY = tonumber(settings.DestinyPoints.Y);
	_G.DPWhere = tonumber(settings.DestinyPoints.W);
	if _G.DPWhere == 3 and ShowDestinyPoints then _G.DPWhere = 1; settings.DestinyPoints.W = string.format("%.0f", _G.DPWhere); end --Remove after Oct, 15th 2013


	if settings.Shards == nil then settings.Shards = {}; end
	if settings.Shards.V == nil then settings.Shards.V = false; end
	if settings.Shards.A == nil then settings.Shards.A = string.format("%.3f", tA); end
	if settings.Shards.R == nil then settings.Shards.R = string.format("%.3f", tR); end
	if settings.Shards.G == nil then settings.Shards.G = string.format("%.3f", tG); end
	if settings.Shards.B == nil then settings.Shards.B = string.format("%.3f", tB); end
	if settings.Shards.X == nil then settings.Shards.X = string.format("%.0f", tX); end
	if settings.Shards.Y == nil then settings.Shards.Y = string.format("%.0f", tY); end
	if settings.Shards.W == nil then settings.Shards.W = string.format("%.0f", tW); end
	ShowShards = settings.Shards.V;
	SPbcAlpha = tonumber(settings.Shards.A);
	SPbcRed = tonumber(settings.Shards.R);
	SPbcGreen = tonumber(settings.Shards.G);
	SPbcBlue = tonumber(settings.Shards.B);
	_G.SPLocX = tonumber(settings.Shards.X);
	_G.SPLocY = tonumber(settings.Shards.Y);
	_G.SPWhere = tonumber(settings.Shards.W);
	if _G.SPWhere == 3 and ShowShards then _G.SPWhere = 1; settings.Shards.W = string.format("%.0f", _G.SPWhere); end --Remove after Oct, 15th 2013
	

	if settings.SkirmishMarks == nil then settings.SkirmishMarks = {}; end
	if settings.SkirmishMarks.V == nil then settings.SkirmishMarks.V = false; end
	if settings.SkirmishMarks.A == nil then settings.SkirmishMarks.A = string.format("%.3f", tA); end
	if settings.SkirmishMarks.R == nil then settings.SkirmishMarks.R = string.format("%.3f", tR); end
	if settings.SkirmishMarks.G == nil then settings.SkirmishMarks.G = string.format("%.3f", tG); end
	if settings.SkirmishMarks.B == nil then settings.SkirmishMarks.B = string.format("%.3f", tB); end
	if settings.SkirmishMarks.X == nil then settings.SkirmishMarks.X = string.format("%.0f", tX); end
	if settings.SkirmishMarks.Y == nil then settings.SkirmishMarks.Y = string.format("%.0f", tY); end
	if settings.SkirmishMarks.W == nil then settings.SkirmishMarks.W = string.format("%.0f", tW); end
	ShowSkirmishMarks = settings.SkirmishMarks.V;
	SMbcAlpha = tonumber(settings.SkirmishMarks.A);
	SMbcRed = tonumber(settings.SkirmishMarks.R);
	SMbcGreen = tonumber(settings.SkirmishMarks.G);
	SMbcBlue = tonumber(settings.SkirmishMarks.B);
	_G.SMLocX = tonumber(settings.SkirmishMarks.X);
	_G.SMLocY = tonumber(settings.SkirmishMarks.Y);
	_G.SMWhere = tonumber(settings.SkirmishMarks.W);
	if _G.SMWhere == 3 and ShowSkirmishMarks then _G.SMWhere = 1; settings.SkirmishMarks.W = string.format("%.0f", _G.SMWhere); end --Remove after Oct, 15th 2013
	
	
	if settings.MithrilCoins == nil then settings.MithrilCoins = {}; end
	if settings.MithrilCoins.V == nil then settings.MithrilCoins.V = false; end
	if settings.MithrilCoins.A == nil then settings.MithrilCoins.A = string.format("%.3f", tA); end
	if settings.MithrilCoins.R == nil then settings.MithrilCoins.R = string.format("%.3f", tR); end
	if settings.MithrilCoins.G == nil then settings.MithrilCoins.G = string.format("%.3f", tG); end
	if settings.MithrilCoins.B == nil then settings.MithrilCoins.B = string.format("%.3f", tB); end
	if settings.MithrilCoins.X == nil then settings.MithrilCoins.X = string.format("%.0f", tX); end
	if settings.MithrilCoins.Y == nil then settings.MithrilCoins.Y = string.format("%.0f", tY); end
	if settings.MithrilCoins.W == nil then settings.MithrilCoins.W = string.format("%.0f", tW); end
	ShowMithrilCoins = settings.MithrilCoins.V;
	MCbcAlpha = tonumber(settings.MithrilCoins.A);
	MCbcRed = tonumber(settings.MithrilCoins.R);
	MCbcGreen = tonumber(settings.MithrilCoins.G);
	MCbcBlue = tonumber(settings.MithrilCoins.B);
	_G.MCLocX = tonumber(settings.MithrilCoins.X);
	_G.MCLocY = tonumber(settings.MithrilCoins.Y);
	_G.MCWhere = tonumber(settings.MithrilCoins.W);
	if _G.MCWhere == 3 and ShowMithrilCoins then _G.MCWhere = 1; settings.MithrilCoins.W = string.format("%.0f", _G.MCWhere); end --Remove after Oct, 15th 2013
	
--[[
	if settings.YuleTokens == nil then settings.YuleTokens = {}; end
	if settings.YuleTokens.V == nil then settings.YuleTokens.V = false; end
	if settings.YuleTokens.A == nil then settings.YuleTokens.A = string.format("%.3f", tA); end
	if settings.YuleTokens.R == nil then settings.YuleTokens.R = string.format("%.3f", tR); end
	if settings.YuleTokens.G == nil then settings.YuleTokens.G = string.format("%.3f", tG); end
	if settings.YuleTokens.B == nil then settings.YuleTokens.B = string.format("%.3f", tB); end
	if settings.YuleTokens.X == nil then settings.YuleTokens.X = string.format("%.0f", tX); end
	if settings.YuleTokens.Y == nil then settings.YuleTokens.Y = string.format("%.0f", tY); end
	if settings.YuleTokens.W == nil then settings.YuleTokens.W = string.format("%.0f", tW); end
	ShowMithrilCoins = settings.YuleTokens.V;
	YTbcAlpha = tonumber(settings.YuleTokens.A);
	YTbcRed = tonumber(settings.YuleTokens.R);
	YTbcGreen = tonumber(settings.YuleTokens.G);
	YTbcBlue = tonumber(settings.YuleTokens.B);
	_G.YTLocX = tonumber(settings.YuleTokens.X);
	_G.YTLocY = tonumber(settings.YuleTokens.Y);
	_G.YTWhere = tonumber(settings.YuleTokens.W);
	if _G.YTWhere == 3 and ShowYuleTokens then _G.YTWhere = 1; settings.YuleTokens.W = string.format("%.0f", _G.YTWhere); end
--]]
	
	if settings.HytboldTokens == nil then settings.HytboldTokens = {}; end
	if settings.HytboldTokens.V == nil then settings.HytboldTokens.V = false; end
	if settings.HytboldTokens.A == nil then settings.HytboldTokens.A = string.format("%.3f", tA); end
	if settings.HytboldTokens.R == nil then settings.HytboldTokens.R = string.format("%.3f", tR); end
	if settings.HytboldTokens.G == nil then settings.HytboldTokens.G = string.format("%.3f", tG); end
	if settings.HytboldTokens.B == nil then settings.HytboldTokens.B = string.format("%.3f", tB); end
	if settings.HytboldTokens.X == nil then settings.HytboldTokens.X = string.format("%.0f", tX); end
	if settings.HytboldTokens.Y == nil then settings.HytboldTokens.Y = string.format("%.0f", tY); end
	if settings.HytboldTokens.W == nil then settings.HytboldTokens.W = string.format("%.0f", tW); end
	ShowHytboldTokens = settings.HytboldTokens.V;
	HTbcAlpha = tonumber(settings.HytboldTokens.A);
	HTbcRed = tonumber(settings.HytboldTokens.R);
	HTbcGreen = tonumber(settings.HytboldTokens.G);
	HTbcBlue = tonumber(settings.HytboldTokens.B);
	_G.HTLocX = tonumber(settings.HytboldTokens.X);
	_G.HTLocY = tonumber(settings.HytboldTokens.Y);
	_G.HTWhere = tonumber(settings.HytboldTokens.W);
	if _G.HTWhere == 3 and ShowHytboldTokens then _G.HTWhere = 1; settings.HytboldTokens.W = string.format("%.0f", _G.HTWhere); end --Remove after Oct, 15th 2013

	
	if settings.Medallions == nil then settings.Medallions = {}; end
	if settings.Medallions.V == nil then settings.Medallions.V = false; end
	if settings.Medallions.A == nil then settings.Medallions.A = string.format("%.3f", tA); end
	if settings.Medallions.R == nil then settings.Medallions.R = string.format("%.3f", tR); end
	if settings.Medallions.G == nil then settings.Medallions.G = string.format("%.3f", tG); end
	if settings.Medallions.B == nil then settings.Medallions.B = string.format("%.3f", tB); end
	if settings.Medallions.X == nil then settings.Medallions.X = string.format("%.0f", tX); end
	if settings.Medallions.Y == nil then settings.Medallions.Y = string.format("%.0f", tY); end
	if settings.Medallions.W == nil then settings.Medallions.W = string.format("%.0f", tW); end
	ShowMedallions = settings.Medallions.V;
	MPbcAlpha = tonumber(settings.Medallions.A);
	MPbcRed = tonumber(settings.Medallions.R);
	MPbcGreen = tonumber(settings.Medallions.G);
	MPbcBlue = tonumber(settings.Medallions.B);
	_G.MPLocX = tonumber(settings.Medallions.X);
	_G.MPLocY = tonumber(settings.Medallions.Y);
	_G.MPWhere = tonumber(settings.Medallions.W);
	if _G.MPWhere == 3 and ShowMedallions then _G.MPWhere = 1; settings.Medallions.W = string.format("%.0f", _G.MPWhere); end --Remove after Oct, 15th 2013


	if settings.Seals == nil then settings.Seals = {}; end
	if settings.Seals.V == nil then settings.Seals.V = false; end
	if settings.Seals.A == nil then settings.Seals.A = string.format("%.3f", tA); end
	if settings.Seals.R == nil then settings.Seals.R = string.format("%.3f", tR); end
	if settings.Seals.G == nil then settings.Seals.G = string.format("%.3f", tG); end
	if settings.Seals.B == nil then settings.Seals.B = string.format("%.3f", tB); end
	if settings.Seals.X == nil then settings.Seals.X = string.format("%.0f", tX); end
	if settings.Seals.Y == nil then settings.Seals.Y = string.format("%.0f", tY); end
	if settings.Seals.W == nil then settings.Seals.W = string.format("%.0f", tW); end
	ShowSeals = settings.Seals.V;
	SLbcAlpha = tonumber(settings.Seals.A);
	SLbcRed = tonumber(settings.Seals.R);
	SLbcGreen = tonumber(settings.Seals.G);
	SLbcBlue = tonumber(settings.Seals.B);
	_G.SLLocX = tonumber(settings.Seals.X);
	_G.SLLocY = tonumber(settings.Seals.Y);
	_G.SLWhere = tonumber(settings.Seals.W);
	if _G.SLWhere == 3 and ShowSeals then _G.SLWhere = 1; settings.Seals.W = string.format("%.0f", _G.SLWhere); end --Remove after Oct, 15th 2013


	if settings.Commendations == nil then settings.Commendations = {}; end
	if settings.Commendations.V == nil then settings.Commendations.V = false; end
	if settings.Commendations.A == nil then settings.Commendations.A = string.format("%.3f", tA); end
	if settings.Commendations.R == nil then settings.Commendations.R = string.format("%.3f", tR); end
	if settings.Commendations.G == nil then settings.Commendations.G = string.format("%.3f", tG); end
	if settings.Commendations.B == nil then settings.Commendations.B = string.format("%.3f", tB); end
	if settings.Commendations.X == nil then settings.Commendations.X = string.format("%.0f", tX); end
	if settings.Commendations.Y == nil then settings.Commendations.Y = string.format("%.0f", tY); end
	if settings.Commendations.W == nil then settings.Commendations.W = string.format("%.0f", tW); end
	ShowCommendations = settings.Commendations.V;
	CPbcAlpha = tonumber(settings.Commendations.A);
	CPbcRed = tonumber(settings.Commendations.R);
	CPbcGreen = tonumber(settings.Commendations.G);
	CPbcBlue = tonumber(settings.Commendations.B);
	_G.CPLocX = tonumber(settings.Commendations.X);
	_G.CPLocY = tonumber(settings.Commendations.Y);
	_G.CPWhere = tonumber(settings.Commendations.W);
	if _G.CPWhere == 3 and ShowCommendations then _G.CPWhere = 1; settings.Commendations.W = string.format("%.0f", _G.CPWhere); end --Remove after Oct, 15th 2013


	if settings.LOTROPoints == nil then settings.LOTROPoints = {}; end
	if settings.LOTROPoints.V == nil then settings.LOTROPoints.V = false; end
	if settings.LOTROPoints.A == nil then settings.LOTROPoints.A = string.format("%.3f", tA); end
	if settings.LOTROPoints.R == nil then settings.LOTROPoints.R = string.format("%.3f", tR); end
	if settings.LOTROPoints.G == nil then settings.LOTROPoints.G = string.format("%.3f", tG); end
	if settings.LOTROPoints.B == nil then settings.LOTROPoints.B = string.format("%.3f", tB); end
	if settings.LOTROPoints.X == nil then settings.LOTROPoints.X = string.format("%.0f", tX); end
	if settings.LOTROPoints.Y == nil then settings.LOTROPoints.Y = string.format("%.0f", tY); end
	if settings.LOTROPoints.L == nil then settings.LOTROPoints.L = string.format("%.0f", tL); end
	if settings.LOTROPoints.T == nil then settings.LOTROPoints.T = string.format("%.0f", tT); end
	if settings.LOTROPoints.W == nil then settings.LOTROPoints.W = string.format("%.0f", tW); end
	ShowLOTROPoints = settings.LOTROPoints.V;
	LPbcAlpha = tonumber(settings.LOTROPoints.A);
	LPbcRed = tonumber(settings.LOTROPoints.R);
	LPbcGreen = tonumber(settings.LOTROPoints.G);
	LPbcBlue = tonumber(settings.LOTROPoints.B);
	_G.LPLocX = tonumber(settings.LOTROPoints.X);
	_G.LPLocY = tonumber(settings.LOTROPoints.Y);
	LPWLeft = tonumber(settings.LOTROPoints.L);
	LPWTop = tonumber(settings.LOTROPoints.T);
	_G.LPWhere = tonumber(settings.LOTROPoints.W);
--	if _G.LPWhere == 3 and ShowLOTROPoints then _G.LPWhere = 1; settings.LOTROPoints.W = string.format("%.0f", _G.LPWhere); end --Removed 2017-02-07 (after 2013-10-15)
	

	if settings.BagInfos == nil then settings.BagInfos = {}; end
	if settings.BagInfos.V == nil then settings.BagInfos.V = true; end
	if settings.BagInfos.A == nil then settings.BagInfos.A = string.format("%.3f", tA); end
	if settings.BagInfos.R == nil then settings.BagInfos.R = string.format("%.3f", tR); end
	if settings.BagInfos.G == nil then settings.BagInfos.G = string.format("%.3f", tG); end
	if settings.BagInfos.B == nil then settings.BagInfos.B = string.format("%.3f", tB); end
	if settings.BagInfos.X == nil then settings.BagInfos.X = string.format("%.0f", tX); end
	if settings.BagInfos.Y == nil then settings.BagInfos.Y = string.format("%.0f", tY); end
	if settings.BagInfos.L == nil then settings.BagInfos.L = string.format("%.0f", tL); end
	if settings.BagInfos.T == nil then settings.BagInfos.T = string.format("%.0f", tT); end
	if settings.BagInfos.U == nil then settings.BagInfos.U = true; end --Show used slots info? False will show free slots infos
	if settings.BagInfos.M == nil then settings.BagInfos.M = true; end --Show max slots info?
	ShowBagInfos = settings.BagInfos.V;
	BIbcAlpha = tonumber(settings.BagInfos.A);
	BIbcRed = tonumber(settings.BagInfos.R);
	BIbcGreen = tonumber(settings.BagInfos.G);
	BIbcBlue = tonumber(settings.BagInfos.B);
	_G.BILocX = tonumber(settings.BagInfos.X);
	_G.BILocY = tonumber(settings.BagInfos.Y);
	BIWLeft = tonumber(settings.BagInfos.L);
	BIWTop = tonumber(settings.BagInfos.T);
	_G.BIUsed = settings.BagInfos.U;
	_G.BIMax = settings.BagInfos.M;


	if settings.BagInfosList == nil then settings.BagInfosList = {}; end
	if settings.BagInfosList.L == nil then settings.BagInfosList.L = string.format("%.0f", tL); end
	if settings.BagInfosList.T == nil then settings.BagInfosList.T = string.format("%.0f", tT); end
	BLWLeft = tonumber(settings.BagInfosList.L);
	BLWTop = tonumber(settings.BagInfosList.T);


	if settings.PlayerInfos == nil then settings.PlayerInfos = {}; end
	if settings.PlayerInfos.V == nil then settings.PlayerInfos.V = false; end
	if settings.PlayerInfos.A == nil then settings.PlayerInfos.A = string.format("%.3f", tA); end
	if settings.PlayerInfos.R == nil then settings.PlayerInfos.R = string.format("%.3f", tR); end
	if settings.PlayerInfos.G == nil then settings.PlayerInfos.G = string.format("%.3f", tG); end
	if settings.PlayerInfos.B == nil then settings.PlayerInfos.B = string.format("%.3f", tB); end
	if settings.PlayerInfos.X == nil then settings.PlayerInfos.X = string.format("%.0f", 210); end
	if settings.PlayerInfos.Y == nil then settings.PlayerInfos.Y = string.format("%.0f", tY); end
	if settings.PlayerInfos.XP == nil then settings.PlayerInfos.XP = string.format("%.0f", 0); end --Experience points
	if settings.PlayerInfos.Layout == nil then settings.PlayerInfos.Layout = false; end
	ShowPlayerInfos = settings.PlayerInfos.V;
	PIbcAlpha = tonumber(settings.PlayerInfos.A);
	PIbcRed = tonumber(settings.PlayerInfos.R);
	PIbcGreen = tonumber(settings.PlayerInfos.G);
	PIbcBlue = tonumber(settings.PlayerInfos.B);
	_G.PILocX = tonumber(settings.PlayerInfos.X);
	_G.PILocY = tonumber(settings.PlayerInfos.Y);
	ExpPTS = settings.PlayerInfos.XP;
	PILayout = settings.PlayerInfos.Layout;
	if not PILayout then
		_G.AlignLbl = Turbine.UI.ContentAlignment.MiddleLeft;
		_G.AlignVal = Turbine.UI.ContentAlignment.MiddleRight;
		_G.AlignOff = 0;
		_G.AlignOffP = 5;
	--  _G.AlignHead = Turbine.UI.ContentAlignment.MiddleLeft;
	elseif PILayout then
		_G.AlignLbl = Turbine.UI.ContentAlignment.MiddleRight;
		_G.AlignVal = Turbine.UI.ContentAlignment.MiddleLeft;
		_G.AlignOff = 5;
		_G.AlignOffP = 0;
	--	_G.AlignHead = Turbine.UI.ContentAlignment.MiddleCenter;
	end

	if settings.EquipInfos == nil then settings.EquipInfos = {}; end
	if settings.EquipInfos.V == nil then settings.EquipInfos.V = true; end
	if settings.EquipInfos.A == nil then settings.EquipInfos.A = string.format("%.3f", tA); end
	if settings.EquipInfos.R == nil then settings.EquipInfos.R = string.format("%.3f", tR); end
	if settings.EquipInfos.G == nil then settings.EquipInfos.G = string.format("%.3f", tG); end
	if settings.EquipInfos.B == nil then settings.EquipInfos.B = string.format("%.3f", tB); end
	if settings.EquipInfos.X == nil then settings.EquipInfos.X = string.format("%.0f", 75); end
	if settings.EquipInfos.Y == nil then settings.EquipInfos.Y = string.format("%.0f", tY); end
	ShowEquipInfos = settings.EquipInfos.V;
	EIbcAlpha = tonumber(settings.EquipInfos.A);
	EIbcRed = tonumber(settings.EquipInfos.R);
	EIbcGreen = tonumber(settings.EquipInfos.G);
	EIbcBlue = tonumber(settings.EquipInfos.B);
	_G.EILocX = tonumber(settings.EquipInfos.X);
	_G.EILocY = tonumber(settings.EquipInfos.Y);


	if settings.DurabilityInfos == nil then settings.DurabilityInfos = {}; end
	if settings.DurabilityInfos.V == nil then settings.DurabilityInfos.V = true; end
	if settings.DurabilityInfos.A == nil then settings.DurabilityInfos.A = string.format("%.3f", tA); end
	if settings.DurabilityInfos.R == nil then settings.DurabilityInfos.R = string.format("%.3f", tR); end
	if settings.DurabilityInfos.G == nil then settings.DurabilityInfos.G = string.format("%.3f", tG); end
	if settings.DurabilityInfos.B == nil then settings.DurabilityInfos.B = string.format("%.3f", tB); end
	if settings.DurabilityInfos.X == nil then settings.DurabilityInfos.X = string.format("%.0f", 145); end
	if settings.DurabilityInfos.Y == nil then settings.DurabilityInfos.Y = string.format("%.0f", tY); end
	if settings.DurabilityInfos.L == nil then settings.DurabilityInfos.L = string.format("%.0f", tL); end
	if settings.DurabilityInfos.T == nil then settings.DurabilityInfos.T = string.format("%.0f", tT); end
	if settings.DurabilityInfos.I == nil then settings.DurabilityInfos.I = true; end
	if settings.DurabilityInfos.N == nil then settings.DurabilityInfos.N = true; end
	ShowDurabilityInfos = settings.DurabilityInfos.V;
	DIbcAlpha = tonumber(settings.DurabilityInfos.A);
	DIbcRed = tonumber(settings.DurabilityInfos.R);
	DIbcGreen = tonumber(settings.DurabilityInfos.G);
	DIbcBlue = tonumber(settings.DurabilityInfos.B);
	_G.DILocX = tonumber(settings.DurabilityInfos.X);
	_G.DILocY = tonumber(settings.DurabilityInfos.Y);
	DIWLeft = tonumber(settings.DurabilityInfos.L);
	DIWTop = tonumber(settings.DurabilityInfos.T);
	DIIcon = settings.DurabilityInfos.I;
	DIText = settings.DurabilityInfos.N;


	if settings.PlayerLoc == nil then settings.PlayerLoc = {}; end
	if settings.PlayerLoc.V == nil then settings.PlayerLoc.V = true; end
	if settings.PlayerLoc.A == nil then settings.PlayerLoc.A = string.format("%.3f", tA); end
	if settings.PlayerLoc.R == nil then settings.PlayerLoc.R = string.format("%.3f", tR); end
	if settings.PlayerLoc.G == nil then settings.PlayerLoc.G = string.format("%.3f", tG); end
	if settings.PlayerLoc.B == nil then settings.PlayerLoc.B = string.format("%.3f", tB); end
	if settings.PlayerLoc.L == nil then settings.PlayerLoc.L = string.format( L["PLMsg"] ); end
	if settings.PlayerLoc.X == nil then settings.PlayerLoc.X = string.format("%.0f", screenWidth - 205); end
	if settings.PlayerLoc.Y == nil then settings.PlayerLoc.Y = string.format("%.0f", tY); end
	ShowPlayerLoc = settings.PlayerLoc.V;
	PLbcAlpha = tonumber(settings.PlayerLoc.A);
	PLbcRed = tonumber(settings.PlayerLoc.R);
	PLbcGreen = tonumber(settings.PlayerLoc.G);
	PLbcBlue = tonumber(settings.PlayerLoc.B);
	pLLoc = settings.PlayerLoc.L;
	_G.PLLocX = tonumber(settings.PlayerLoc.X);
	_G.PLLocY = tonumber(settings.PlayerLoc.Y);


	if settings.TrackItems == nil then settings.TrackItems = {}; end
	if settings.TrackItems.V == nil then settings.TrackItems.V = false; end
	if settings.TrackItems.A == nil then settings.TrackItems.A = string.format("%.3f", tA); end
	if settings.TrackItems.R == nil then settings.TrackItems.R = string.format("%.3f", tR); end
	if settings.TrackItems.G == nil then settings.TrackItems.G = string.format("%.3f", tG); end
	if settings.TrackItems.B == nil then settings.TrackItems.B = string.format("%.3f", tB); end
	if settings.TrackItems.X == nil then settings.TrackItems.X = string.format("%.0f", tX); end
	if settings.TrackItems.Y == nil then settings.TrackItems.Y = string.format("%.0f", tY); end
	if settings.TrackItems.L == nil then settings.TrackItems.L = string.format("%.0f", tL); end
	if settings.TrackItems.T == nil then settings.TrackItems.T = string.format("%.0f", tT); end
	ShowTrackItems = settings.TrackItems.V;
	TIbcAlpha = tonumber(settings.TrackItems.A);
	TIbcRed = tonumber(settings.TrackItems.R);
	TIbcGreen = tonumber(settings.TrackItems.G);
	TIbcBlue = tonumber(settings.TrackItems.B);
	_G.TILocX = tonumber(settings.TrackItems.X);
	_G.TILocY = tonumber(settings.TrackItems.Y);
	TIWLeft = tonumber(settings.TrackItems.L);
	TIWTop = tonumber(settings.TrackItems.T);


	if settings.Infamy == nil then settings.Infamy = {}; end
	if settings.Infamy.V == nil then settings.Infamy.V = false; end
	if settings.Infamy.A == nil then settings.Infamy.A = string.format("%.3f", tA); end
	if settings.Infamy.R == nil then settings.Infamy.R = string.format("%.3f", tR); end
	if settings.Infamy.G == nil then settings.Infamy.G = string.format("%.3f", tG); end
	if settings.Infamy.B == nil then settings.Infamy.B = string.format("%.3f", tB); end
	if settings.Infamy.P == nil then settings.Infamy.P = string.format("%.0f", 0); end --Infamy points
	if settings.Infamy.K == nil then settings.Infamy.K = string.format("%.0f", 0); end --Infamy rank
	if settings.Infamy.X == nil then settings.Infamy.X = string.format("%.0f", tX); end
	if settings.Infamy.Y == nil then settings.Infamy.Y = string.format("%.0f", tY); end
	if settings.Infamy.L == nil then settings.Infamy.L = string.format("%.0f", tL); end
	if settings.Infamy.T == nil then settings.Infamy.T = string.format("%.0f", tT); end
	ShowInfamy = settings.Infamy.V;
	IFbcAlpha = tonumber(settings.Infamy.A);
	IFbcRed = tonumber(settings.Infamy.R);
	IFbcGreen = tonumber(settings.Infamy.G);
	IFbcBlue = tonumber(settings.Infamy.B);
	SetInfamy = settings.Infamy.F;
	_G.IFLocX = tonumber(settings.Infamy.X);
	_G.IFLocY = tonumber(settings.Infamy.Y);
	IFWLeft = tonumber(settings.Infamy.L);
	IFWTop = tonumber(settings.Infamy.T);
	InfamyPTS = settings.Infamy.P;
	InfamyRank = settings.Infamy.K;


	if settings.Vault == nil then settings.Vault = {}; end
	if settings.Vault.V == nil then settings.Vault.V = false; end
	if settings.Vault.A == nil then settings.Vault.A = string.format("%.3f", tA); end
	if settings.Vault.R == nil then settings.Vault.R = string.format("%.3f", tR); end
	if settings.Vault.G == nil then settings.Vault.G = string.format("%.3f", tG); end
	if settings.Vault.B == nil then settings.Vault.B = string.format("%.3f", tB); end
	if settings.Vault.X == nil then settings.Vault.X = string.format("%.0f", tX); end
	if settings.Vault.Y == nil then settings.Vault.Y = string.format("%.0f", tY); end
	if settings.Vault.L == nil then settings.Vault.L = string.format("%.0f", tL); end
	if settings.Vault.T == nil then settings.Vault.T = string.format("%.0f", tT); end
	ShowVault = settings.Vault.V;
	VTbcAlpha = tonumber(settings.Vault.A);
	VTbcRed = tonumber(settings.Vault.R);
	VTbcGreen = tonumber(settings.Vault.G);
	VTbcBlue = tonumber(settings.Vault.B);
	_G.VTLocX = tonumber(settings.Vault.X);
	_G.VTLocY = tonumber(settings.Vault.Y);
	VTWLeft = tonumber(settings.Vault.L);
	VTWTop = tonumber(settings.Vault.T);


	if settings.SharedStorage == nil then settings.SharedStorage = {}; end
	if settings.SharedStorage.V == nil then settings.SharedStorage.V = false; end
	if settings.SharedStorage.A == nil then settings.SharedStorage.A = string.format("%.3f", tA); end
	if settings.SharedStorage.R == nil then settings.SharedStorage.R = string.format("%.3f", tR); end
	if settings.SharedStorage.G == nil then settings.SharedStorage.G = string.format("%.3f", tG); end
	if settings.SharedStorage.B == nil then settings.SharedStorage.B = string.format("%.3f", tB); end
	if settings.SharedStorage.X == nil then settings.SharedStorage.X = string.format("%.0f", tX); end
	if settings.SharedStorage.Y == nil then settings.SharedStorage.Y = string.format("%.0f", tY); end
	if settings.SharedStorage.L == nil then settings.SharedStorage.L = string.format("%.0f", tL); end
	if settings.SharedStorage.T == nil then settings.SharedStorage.T = string.format("%.0f", tT); end
	ShowSharedStorage = settings.SharedStorage.V;
	SSbcAlpha = tonumber(settings.SharedStorage.A);
	SSbcRed = tonumber(settings.SharedStorage.R);
	SSbcGreen = tonumber(settings.SharedStorage.G);
	SSbcBlue = tonumber(settings.SharedStorage.B);
	_G.SSLocX = tonumber(settings.SharedStorage.X);
	_G.SSLocY = tonumber(settings.SharedStorage.Y);
	SSWLeft = tonumber(settings.SharedStorage.L);
	SSWTop = tonumber(settings.SharedStorage.T);

	--[[
	if settings.Bank == nil then settings.Bank = {}; end
	if settings.Bank.V == nil then settings.Bank.V = false; end
	if settings.Bank.A == nil then settings.Bank.A = string.format("%.3f", tA); end
	if settings.Bank.R == nil then settings.Bank.R = string.format("%.3f", tR); end
	if settings.Bank.G == nil then settings.Bank.G = string.format("%.3f", tG); end
	if settings.Bank.B == nil then settings.Bank.B = string.format("%.3f", tB); end
	if settings.Bank.X == nil then settings.Bank.X = string.format("%.0f", tX); end
	if settings.Bank.Y == nil then settings.Bank.Y = string.format("%.0f", tY); end
	if settings.Bank.L == nil then settings.Bank.L = string.format("%.0f", tL); end
	if settings.Bank.T == nil then settings.Bank.T = string.format("%.0f", tT); end
	ShowBank = settings.Bank.V;
	BKbcAlpha = tonumber(settings.Bank.A);
	BKbcRed = tonumber(settings.Bank.R);
	BKbcGreen = tonumber(settings.Bank.G);
	BKbcBlue = tonumber(settings.Bank.B);
	_G.BKLocX = tonumber(settings.Bank.X);
	_G.BKLocY = tonumber(settings.Bank.Y);
	BKWLeft = tonumber(settings.Bank.L);
	BKWTop = tonumber(settings.Bank.T);
	]]

	if settings.DayNight == nil then settings.DayNight = {}; end
	if settings.DayNight.V == nil then settings.DayNight.V = false; end
	if settings.DayNight.A == nil then settings.DayNight.A = string.format("%.3f", tA); end
	if settings.DayNight.R == nil then settings.DayNight.R = string.format("%.3f", tR); end
	if settings.DayNight.G == nil then settings.DayNight.G = string.format("%.3f", tG); end
	if settings.DayNight.B == nil then settings.DayNight.B = string.format("%.3f", tB); end
	if settings.DayNight.X == nil then settings.DayNight.X = string.format("%.0f", tX); end
	if settings.DayNight.Y == nil then settings.DayNight.Y = string.format("%.0f", tY); end
	if settings.DayNight.L == nil then settings.DayNight.L = string.format("%.0f", tL); end
	if settings.DayNight.T == nil then settings.DayNight.T = string.format("%.0f", tT); end
	if settings.DayNight.N == nil then settings.DayNight.N = true; end -- True = Show next day & night time
	if settings.DayNight.S == nil then settings.DayNight.S = string.format("%.0f", 10350); end -- Timer seed
	ShowDayNight = settings.DayNight.V;
	DNbcAlpha = tonumber(settings.DayNight.A);
	DNbcRed = tonumber(settings.DayNight.R);
	DNbcGreen = tonumber(settings.DayNight.G);
	DNbcBlue = tonumber(settings.DayNight.B);
	_G.DNLocX = tonumber(settings.DayNight.X);
	_G.DNLocY = tonumber(settings.DayNight.Y);
	DNWLeft = tonumber(settings.DayNight.L);
	DNWTop = tonumber(settings.DayNight.T);
	_G.DNNextT = settings.DayNight.N;
	_G.TS = tonumber(settings.DayNight.S);


	if settings.Reputation == nil then settings.Reputation = {}; end
	if settings.Reputation.V == nil then settings.Reputation.V = false; end
	if settings.Reputation.H == nil then settings.Reputation.H = false; end-- Hide max reputations in tooltip
	if settings.Reputation.A == nil then settings.Reputation.A = string.format( "%.3f", tA ); end-- Color alpha
	if settings.Reputation.R == nil then settings.Reputation.R = string.format( "%.3f", tR ); end-- Color red
	if settings.Reputation.G == nil then settings.Reputation.G = string.format( "%.3f", tG ); end-- Color green
	if settings.Reputation.B == nil then settings.Reputation.B = string.format( "%.3f", tB ); end-- Color blue
	if settings.Reputation.X == nil then settings.Reputation.X = string.format( "%.0f", tX ); end-- X coord
	if settings.Reputation.Y == nil then settings.Reputation.Y = string.format( "%.0f", tY ); end-- X coord
	if settings.Reputation.L == nil then settings.Reputation.L = string.format( "%.0f", tL ); end-- Left coord
	if settings.Reputation.T == nil then settings.Reputation.T = string.format( "%.0f", tT ); end-- Top coord
	ShowReputation = settings.Reputation.V;
	HideMaxReps = settings.Reputation.H
	RPbcAlpha = tonumber( settings.Reputation.A );
	RPbcRed = tonumber( settings.Reputation.R );
	RPbcGreen = tonumber( settings.Reputation.G );
	RPbcBlue = tonumber( settings.Reputation.B );
	_G.RPLocX = tonumber( settings.Reputation.X );
	_G.RPLocY = tonumber( settings.Reputation.Y );
	RPWLeft = tonumber( settings.Reputation.L );
	RPWTop = tonumber( settings.Reputation.T )


	if settings.GameTime == nil then settings.GameTime = {}; end
	if settings.GameTime.V == nil then settings.GameTime.V = true; end
	if settings.GameTime.A == nil then settings.GameTime.A = string.format("%.3f", tA); end
	if settings.GameTime.R == nil then settings.GameTime.R = string.format("%.3f", tR); end
	if settings.GameTime.G == nil then settings.GameTime.G = string.format("%.3f", tG); end
	if settings.GameTime.B == nil then settings.GameTime.B = string.format("%.3f", tB); end
	if settings.GameTime.X == nil then settings.GameTime.X = string.format("%.0f", screenWidth - 60); end
	if settings.GameTime.Y == nil then settings.GameTime.Y = string.format("%.0f", tY); end
	if settings.GameTime.H == nil then settings.GameTime.H = false; end -- True = Show clock in 24h format
	if settings.GameTime.S == nil then settings.GameTime.S = false; end -- True = Show server time
	if settings.GameTime.O == nil then settings.GameTime.O = false; end -- True = Show both time (Server & Real)
	if settings.GameTime.M == nil then settings.GameTime.M = string.format("%.0f", 0); end -- User defined GMT
	if settings.GameTime.L == nil then settings.GameTime.L = string.format("%.0f", tL); end
	if settings.GameTime.T == nil then settings.GameTime.T = string.format("%.0f", tT); end
	ShowGameTime = settings.GameTime.V;
	GTbcAlpha = tonumber(settings.GameTime.A);
	GTbcRed = tonumber(settings.GameTime.R);
	GTbcGreen = tonumber(settings.GameTime.G);
	GTbcBlue = tonumber(settings.GameTime.B);
	_G.GTLocX = tonumber(settings.GameTime.X);
	_G.GTLocY = tonumber(settings.GameTime.Y);
	_G.Clock24h = settings.GameTime.H;
	_G.ShowST = settings.GameTime.S;
	_G.ShowBT = settings.GameTime.O;
	_G.UserGMT = settings.GameTime.M;
	GTWLeft = tonumber(settings.GameTime.L);
	GTWTop = tonumber(settings.GameTime.T);
	
	-- AU3 MARKER 4 - DO NOT REMOVE
	if settings.AmrothSilverPiece == nil then settings.AmrothSilverPiece = {}; end
	if settings.AmrothSilverPiece.V == nil then settings.AmrothSilverPiece.V = false; end
	if settings.AmrothSilverPiece.A == nil then settings.AmrothSilverPiece.A = string.format("%.3f", tA); end
	if settings.AmrothSilverPiece.R == nil then settings.AmrothSilverPiece.R = string.format("%.3f", tR); end
	if settings.AmrothSilverPiece.G == nil then settings.AmrothSilverPiece.G = string.format("%.3f", tG); end
	if settings.AmrothSilverPiece.B == nil then settings.AmrothSilverPiece.B = string.format("%.3f", tB); end
	if settings.AmrothSilverPiece.X == nil then settings.AmrothSilverPiece.X = string.format("%.0f", tX); end
	if settings.AmrothSilverPiece.Y == nil then settings.AmrothSilverPiece.Y = string.format("%.0f", tY); end
	if settings.AmrothSilverPiece.W == nil then settings.AmrothSilverPiece.W = string.format("%.0f", tW); end
	ShowAmrothSilverPiece = settings.AmrothSilverPiece.V;
	ASPbcAlpha = tonumber(settings.AmrothSilverPiece.A);
	ASPbcRed = tonumber(settings.AmrothSilverPiece.R);
	ASPbcGreen = tonumber(settings.AmrothSilverPiece.G);
	ASPbcBlue = tonumber(settings.AmrothSilverPiece.B);
	_G.ASPLocX = tonumber(settings.AmrothSilverPiece.X);
	_G.ASPLocY = tonumber(settings.AmrothSilverPiece.Y);
	_G.ASPWhere = tonumber(settings.AmrothSilverPiece.W);
	if _G.ASPWhere == 3 and ShowAmrothSilverPiece then _G.ASPWhere = 1; settings.AmrothSilverPiece.W = string.format("%.0f", _G.ASPWhere); end --Remove after Oct, 15th 2013
	if settings.StarsofMerit == nil then settings.StarsofMerit = {}; end
	if settings.StarsofMerit.V == nil then settings.StarsofMerit.V = false; end
	if settings.StarsofMerit.A == nil then settings.StarsofMerit.A = string.format("%.3f", tA); end
	if settings.StarsofMerit.R == nil then settings.StarsofMerit.R = string.format("%.3f", tR); end
	if settings.StarsofMerit.G == nil then settings.StarsofMerit.G = string.format("%.3f", tG); end
	if settings.StarsofMerit.B == nil then settings.StarsofMerit.B = string.format("%.3f", tB); end
	if settings.StarsofMerit.X == nil then settings.StarsofMerit.X = string.format("%.0f", tX); end
	if settings.StarsofMerit.Y == nil then settings.StarsofMerit.Y = string.format("%.0f", tY); end
	if settings.StarsofMerit.W == nil then settings.StarsofMerit.W = string.format("%.0f", tW); end
	ShowStarsofMerit = settings.StarsofMerit.V;
	SOMbcAlpha = tonumber(settings.StarsofMerit.A);
	SOMbcRed = tonumber(settings.StarsofMerit.R);
	SOMbcGreen = tonumber(settings.StarsofMerit.G);
	SOMbcBlue = tonumber(settings.StarsofMerit.B);
	_G.SOMLocX = tonumber(settings.StarsofMerit.X);
	_G.SOMLocY = tonumber(settings.StarsofMerit.Y);
	_G.SOMWhere = tonumber(settings.StarsofMerit.W);
	if _G.SOMWhere == 3 and ShowStarsofMerit then _G.SOMWhere = 1; settings.StarsofMerit.W = string.format("%.0f", _G.SOMWhere); end --Remove after Oct, 15th 2013
	if settings.CentralGondorSilverPiece == nil then settings.CentralGondorSilverPiece = {}; end
	if settings.CentralGondorSilverPiece.V == nil then settings.CentralGondorSilverPiece.V = false; end
	if settings.CentralGondorSilverPiece.A == nil then settings.CentralGondorSilverPiece.A = string.format("%.3f", tA); end
	if settings.CentralGondorSilverPiece.R == nil then settings.CentralGondorSilverPiece.R = string.format("%.3f", tR); end
	if settings.CentralGondorSilverPiece.G == nil then settings.CentralGondorSilverPiece.G = string.format("%.3f", tG); end
	if settings.CentralGondorSilverPiece.B == nil then settings.CentralGondorSilverPiece.B = string.format("%.3f", tB); end
	if settings.CentralGondorSilverPiece.X == nil then settings.CentralGondorSilverPiece.X = string.format("%.0f", tX); end
	if settings.CentralGondorSilverPiece.Y == nil then settings.CentralGondorSilverPiece.Y = string.format("%.0f", tY); end
	if settings.CentralGondorSilverPiece.W == nil then settings.CentralGondorSilverPiece.W = string.format("%.0f", tW); end
	ShowCentralGondorSilverPiece = settings.CentralGondorSilverPiece.V;
	CGSPbcAlpha = tonumber(settings.CentralGondorSilverPiece.A);
	CGSPbcRed = tonumber(settings.CentralGondorSilverPiece.R);
	CGSPbcGreen = tonumber(settings.CentralGondorSilverPiece.G);
	CGSPbcBlue = tonumber(settings.CentralGondorSilverPiece.B);
	_G.CGSPLocX = tonumber(settings.CentralGondorSilverPiece.X);
	_G.CGSPLocY = tonumber(settings.CentralGondorSilverPiece.Y);
	_G.CGSPWhere = tonumber(settings.CentralGondorSilverPiece.W);
	if _G.CGSPWhere == 3 and ShowCentralGondorSilverPiece then _G.CGSPWhere = 1; settings.CentralGondorSilverPiece.W = string.format("%.0f", _G.CGSPWhere); end --Remove after Oct, 15th 2013
	if settings.GiftgiversBrand == nil then settings.GiftgiversBrand = {}; end
	if settings.GiftgiversBrand.V == nil then settings.GiftgiversBrand.V = false; end
	if settings.GiftgiversBrand.A == nil then settings.GiftgiversBrand.A = string.format("%.3f", tA); end
	if settings.GiftgiversBrand.R == nil then settings.GiftgiversBrand.R = string.format("%.3f", tR); end
	if settings.GiftgiversBrand.G == nil then settings.GiftgiversBrand.G = string.format("%.3f", tG); end
	if settings.GiftgiversBrand.B == nil then settings.GiftgiversBrand.B = string.format("%.3f", tB); end
	if settings.GiftgiversBrand.X == nil then settings.GiftgiversBrand.X = string.format("%.0f", tX); end
	if settings.GiftgiversBrand.Y == nil then settings.GiftgiversBrand.Y = string.format("%.0f", tY); end
	if settings.GiftgiversBrand.W == nil then settings.GiftgiversBrand.W = string.format("%.0f", tW); end
	ShowGiftgiversBrand = settings.GiftgiversBrand.V;
	GGBbcAlpha = tonumber(settings.GiftgiversBrand.A);
	GGBbcRed = tonumber(settings.GiftgiversBrand.R);
	GGBbcGreen = tonumber(settings.GiftgiversBrand.G);
	GGBbcBlue = tonumber(settings.GiftgiversBrand.B);
	_G.GGBLocX = tonumber(settings.GiftgiversBrand.X);
	_G.GGBLocY = tonumber(settings.GiftgiversBrand.Y);
	_G.GGBWhere = tonumber(settings.GiftgiversBrand.W);
	if _G.GGBWhere == 3 and ShowGiftgiversBrand then _G.GGBWhere = 1; settings.GiftgiversBrand.W = string.format("%.0f", _G.GGBWhere); end --Remove after Oct, 15th 2013

	if settings.AshOfGorgoroth == nil then settings.AshOfGorgoroth = {}; end
	if settings.AshOfGorgoroth.V == nil then settings.AshOfGorgoroth.V = false; end
	if settings.AshOfGorgoroth.A == nil then settings.AshOfGorgoroth.A = string.format("%.3f", tA); end
	if settings.AshOfGorgoroth.R == nil then settings.AshOfGorgoroth.R = string.format("%.3f", tR); end
	if settings.AshOfGorgoroth.G == nil then settings.AshOfGorgoroth.G = string.format("%.3f", tG); end
	if settings.AshOfGorgoroth.B == nil then settings.AshOfGorgoroth.B = string.format("%.3f", tB); end
	if settings.AshOfGorgoroth.X == nil then settings.AshOfGorgoroth.X = string.format("%.0f", tX); end
	if settings.AshOfGorgoroth.Y == nil then settings.AshOfGorgoroth.Y = string.format("%.0f", tY); end
	if settings.AshOfGorgoroth.W == nil then settings.AshOfGorgoroth.W = string.format("%.0f", tW); end
	ShowAshOfGorgoroth = settings.AshOfGorgoroth.V;
	AOGbcAlpha = tonumber(settings.AshOfGorgoroth.A);
	AOGbcRed = tonumber(settings.AshOfGorgoroth.R);
	AOGbcGreen = tonumber(settings.AshOfGorgoroth.G);
	AOGbcBlue = tonumber(settings.AshOfGorgoroth.B);
	_G.AOGLocX = tonumber(settings.AshOfGorgoroth.X);
	_G.AOGLocY = tonumber(settings.AshOfGorgoroth.Y);
	_G.AOGWhere = tonumber(settings.AshOfGorgoroth.W);
	if _G.AOGWhere == 3 and ShowAshOfGorgoroth then _G.AOGWhere = 1; settings.AshOfGorgoroth.W = string.format("%.0f", _G.AOGWhere); end --Remove after Oct, 15th 2013
	
	if settings.BingoBadge == nil then settings.BingoBadge = {}; end
	if settings.BingoBadge.V == nil then settings.BingoBadge.V = false; end
	if settings.BingoBadge.A == nil then settings.BingoBadge.A = string.format("%.3f", tA); end
	if settings.BingoBadge.R == nil then settings.BingoBadge.R = string.format("%.3f", tR); end
	if settings.BingoBadge.G == nil then settings.BingoBadge.G = string.format("%.3f", tG); end
	if settings.BingoBadge.B == nil then settings.BingoBadge.B = string.format("%.3f", tB); end
	if settings.BingoBadge.X == nil then settings.BingoBadge.X = string.format("%.0f", tX); end
	if settings.BingoBadge.Y == nil then settings.BingoBadge.Y = string.format("%.0f", tY); end
	if settings.BingoBadge.W == nil then settings.BingoBadge.W = string.format("%.0f", tW); end
	ShowAshOfGorgoroth = settings.BingoBadge.V;
	AOGbcAlpha = tonumber(settings.BingoBadge.A);
	AOGbcRed = tonumber(settings.BingoBadge.R);
	AOGbcGreen = tonumber(settings.BingoBadge.G);
	AOGbcBlue = tonumber(settings.BingoBadge.B);
	_G.AOGLocX = tonumber(settings.BingoBadge.X);
	_G.AOGLocY = tonumber(settings.BingoBadge.Y);
	_G.AOGWhere = tonumber(settings.BingoBadge.W);
	if _G.BBWhere == 3 and ShowBingoBadge then _G.BBWhere = 1; settings.BingoBadge.W = string.format("%.0f", _G.BBWhere); end --Remove after Oct, 15th 2013
	-- AU3 MARKER 4 END
	
	SaveSettings( false );
	
	--if settings.TitanBar.W ~= screenWidth then ReplaceCtr(); end --Replace control if screenwidth as changed
end
-- **^
-- **v Save settings v**
function SaveSettings(str)
	if str then --True: get all variable and save settings
		settings = {};
		
		settings.TitanBar = {};
		settings.TitanBar.A = string.format("%.3f", bcAlpha);
		settings.TitanBar.R = string.format("%.3f", bcRed);
		settings.TitanBar.G = string.format("%.3f", bcGreen);
		settings.TitanBar.B = string.format("%.3f", bcBlue);
		settings.TitanBar.W = string.format("%.0f", screenWidth);
		settings.TitanBar.L = TBLocale;
		settings.TitanBar.H = string.format("%.0f", TBHeight);
		settings.TitanBar.F = string.format("%.0f", _G.TBFont);
		settings.TitanBar.T = TBFontT;
		settings.TitanBar.D = TBTop;
		settings.TitanBar.Z = TBReloaded;
		settings.TitanBar.ZT = TBReloadedText;
		
		settings.Options = {};
		settings.Options.L = string.format("%.0f", OPWLeft);
		settings.Options.T = string.format("%.0f", OPWTop);
		settings.Options.H = TBAutoHide;
		settings.Options.I = string.format("%.0f", TBIconSize);

		settings.Profile = {};
		settings.Profile.L = string.format("%.0f", PPWLeft);
		settings.Profile.T = string.format("%.0f", PPWTop);

		settings.Shell = {};
		settings.Shell.L = string.format("%.0f", SCWLeft);
		settings.Shell.T = string.format("%.0f", SCWTop);

		settings.Background = {};
		settings.Background.L = string.format("%.0f", BGWLeft);
		settings.Background.T = string.format("%.0f", BGWTop);
		settings.Background.A = BGWToAll;

		settings.Wallet = {};
		settings.Wallet.V = ShowWallet;
		settings.Wallet.A = string.format("%.3f", WIbcAlpha);
		settings.Wallet.R = string.format("%.3f", WIbcRed);
		settings.Wallet.G = string.format("%.3f", WIbcGreen);
		settings.Wallet.B = string.format("%.3f", WIbcBlue);
		settings.Wallet.X = string.format("%.0f", _G.WILocX);
		settings.Wallet.Y = string.format("%.0f", _G.WILocY);
		settings.Wallet.L = string.format("%.0f", WIWLeft);
		settings.Wallet.T = string.format("%.0f", WIWTop);

		settings.Money = {};
		settings.Money.V = ShowMoney;
		settings.Money.A = string.format("%.3f", MIbcAlpha);
		settings.Money.R = string.format("%.3f", MIbcRed);
		settings.Money.G = string.format("%.3f", MIbcGreen);
		settings.Money.B = string.format("%.3f", MIbcBlue);
		settings.Money.X = string.format("%.0f", _G.MILocX);
		settings.Money.Y = string.format("%.0f", _G.MILocY);
		settings.Money.W = string.format("%.0f", _G.MIWhere);
		settings.Money.S = _G.STM; --Show Total Money of all character on TitanBar Money control.
		settings.Money.SS = _G.SSS; --Show sessions statistics in money tooltip.
		settings.Money.TS = _G.STS; --Show today statistics in money tooltip
		if PlayerAlign == 1 then settings.Money.L = string.format("%.0f", MIWLeft); end
		if PlayerAlign == 1 then settings.Money.T = string.format("%.0f", MIWTop); end

		settings.DestinyPoints = {};
		settings.DestinyPoints.V = ShowDestinyPoints;
		settings.DestinyPoints.A = string.format("%.3f", DPbcAlpha);
		settings.DestinyPoints.R = string.format("%.3f", DPbcRed);
		settings.DestinyPoints.G = string.format("%.3f", DPbcGreen);
		settings.DestinyPoints.B = string.format("%.3f", DPbcBlue);
		settings.DestinyPoints.X = string.format("%.0f", _G.DPLocX);
		settings.DestinyPoints.Y = string.format("%.0f", _G.DPLocY);
		settings.DestinyPoints.W = string.format("%.0f", _G.DPWhere);

		settings.Shards = {};
		settings.Shards.V = ShowShards;
		settings.Shards.A = string.format("%.3f", SPbcAlpha);
		settings.Shards.R = string.format("%.3f", SPbcRed);
		settings.Shards.G = string.format("%.3f", SPbcGreen);
		settings.Shards.B = string.format("%.3f", SPbcBlue);
		settings.Shards.X = string.format("%.0f", _G.SPLocX);
		settings.Shards.Y = string.format("%.0f", _G.SPLocY);
		settings.Shards.W = string.format("%.0f", _G.SPWhere);

		settings.SkirmishMarks = {};
		settings.SkirmishMarks.V = ShowSkirmishMarks;
		settings.SkirmishMarks.A = string.format("%.3f", SMbcAlpha);
		settings.SkirmishMarks.R = string.format("%.3f", SMbcRed);
		settings.SkirmishMarks.G = string.format("%.3f", SMbcGreen);
		settings.SkirmishMarks.B = string.format("%.3f", SMbcBlue);
		settings.SkirmishMarks.X = string.format("%.0f", _G.SMLocX);
		settings.SkirmishMarks.Y = string.format("%.0f", _G.SMLocY);
		settings.SkirmishMarks.W = string.format("%.0f", _G.SMWhere);

		settings.MithrilCoins = {};
		settings.MithrilCoins.V = ShowMithrilCoins;
		settings.MithrilCoins.A = string.format("%.3f", MCbcAlpha);
		settings.MithrilCoins.R = string.format("%.3f", MCbcRed);
		settings.MithrilCoins.G = string.format("%.3f", MCbcGreen);
		settings.MithrilCoins.B = string.format("%.3f", MCbcBlue);
		settings.MithrilCoins.X = string.format("%.0f", _G.MCLocX);
		settings.MithrilCoins.Y = string.format("%.0f", _G.MCLocY);
		settings.MithrilCoins.W = string.format("%.0f", _G.MCWhere);

--[[
		settings.YuleTokens = {};
		settings.YuleTokens.V = ShowYuleTokens;
		settings.YuleTokens.A = string.format("%.3f", YTbcAlpha);
		settings.YuleTokens.R = string.format("%.3f", YTbcRed);
		settings.YuleTokens.G = string.format("%.3f", YTbcGreen);
		settings.YuleTokens.B = string.format("%.3f", YTbcBlue);
		settings.YuleTokens.X = string.format("%.0f", _G.YTLocX);
		settings.YuleTokens.Y = string.format("%.0f", _G.YTLocY);
		settings.YuleTokens.W = string.format("%.0f", _G.YTWhere);--]]
		
		settings.HytboldTokens = {};
		settings.HytboldTokens.V = ShowHytboldTokens;
		settings.HytboldTokens.A = string.format("%.3f", HTbcAlpha);
		settings.HytboldTokens.R = string.format("%.3f", HTbcRed);
		settings.HytboldTokens.G = string.format("%.3f", HTbcGreen);
		settings.HytboldTokens.B = string.format("%.3f", HTbcBlue);
		settings.HytboldTokens.X = string.format("%.0f", _G.HTLocX);
		settings.HytboldTokens.Y = string.format("%.0f", _G.HTLocY);
		settings.HytboldTokens.W = string.format("%.0f", _G.HTWhere);
		
		settings.Medallions = {};
		settings.Medallions.V = ShowMedallions;
		settings.Medallions.A = string.format("%.3f", MPbcAlpha);
		settings.Medallions.R = string.format("%.3f", MPbcRed);
		settings.Medallions.G = string.format("%.3f", MPbcGreen);
		settings.Medallions.B = string.format("%.3f", MPbcBlue);
		settings.Medallions.X = string.format("%.0f", _G.MPLocX);
		settings.Medallions.Y = string.format("%.0f", _G.MPLocY);
		settings.Medallions.W = string.format("%.0f", _G.MPWhere);

		settings.Seals = {};
		settings.Seals.V = ShowSeals;
		settings.Seals.A = string.format("%.3f", SLbcAlpha);
		settings.Seals.R = string.format("%.3f", SLbcRed);
		settings.Seals.G = string.format("%.3f", SLbcGreen);
		settings.Seals.B = string.format("%.3f", SLbcBlue);
		settings.Seals.X = string.format("%.0f", _G.SLLocX);
		settings.Seals.Y = string.format("%.0f", _G.SLLocY);
		settings.Seals.W = string.format("%.0f", _G.SLWhere);

		settings.Commendations = {};
		settings.Commendations.V = ShowCommendations;
		settings.Commendations.A = string.format("%.3f", CPbcAlpha);
		settings.Commendations.R = string.format("%.3f", CPbcRed);
		settings.Commendations.G = string.format("%.3f", CPbcGreen);
		settings.Commendations.B = string.format("%.3f", CPbcBlue);
		settings.Commendations.X = string.format("%.0f", _G.CPLocX);
		settings.Commendations.Y = string.format("%.0f", _G.CPLocY);
		settings.Commendations.W = string.format("%.0f", _G.CPWhere);

		settings.LOTROPoints = {};
		settings.LOTROPoints.V = ShowLOTROPoints;
		settings.LOTROPoints.A = string.format("%.3f", LPbcAlpha);
		settings.LOTROPoints.R = string.format("%.3f", LPbcRed);
		settings.LOTROPoints.G = string.format("%.3f", LPbcGreen);
		settings.LOTROPoints.B = string.format("%.3f", LPbcBlue);
		settings.LOTROPoints.X = string.format("%.0f", _G.LPLocX);
		settings.LOTROPoints.Y = string.format("%.0f", _G.LPLocY);
		settings.LOTROPoints.L = string.format("%.0f", LPWLeft);
		settings.LOTROPoints.T = string.format("%.0f", LPWTop);
		settings.LOTROPoints.W = string.format("%.0f", _G.LPWhere);

		settings.BagInfos = {};
		settings.BagInfos.V = ShowBagInfos;
		settings.BagInfos.A = string.format("%.3f", BIbcAlpha);
		settings.BagInfos.R = string.format("%.3f", BIbcRed);
		settings.BagInfos.G = string.format("%.3f", BIbcGreen);
		settings.BagInfos.B = string.format("%.3f", BIbcBlue);
		settings.BagInfos.X = string.format("%.0f", _G.BILocX);
		settings.BagInfos.Y = string.format("%.0f", _G.BILocY);
		settings.BagInfos.L = string.format("%.0f", BIWLeft);
		settings.BagInfos.T = string.format("%.0f", BIWTop);
		settings.BagInfos.U = _G.BIUsed;
		settings.BagInfos.M = _G.BIMax;

		settings.BagInfosList = {};
		settings.BagInfosList.L = string.format("%.0f", BLWLeft);
		settings.BagInfosList.T = string.format("%.0f", BLWTop);

		settings.PlayerInfos = {};
		settings.PlayerInfos.V = ShowPlayerInfos;
		settings.PlayerInfos.A = string.format("%.3f", PIbcAlpha);
		settings.PlayerInfos.R = string.format("%.3f", PIbcRed);
		settings.PlayerInfos.G = string.format("%.3f", PIbcGreen);
		settings.PlayerInfos.B = string.format("%.3f", PIbcBlue);
		settings.PlayerInfos.X = string.format("%.0f", _G.PILocX);
		settings.PlayerInfos.Y = string.format("%.0f", _G.PILocY);
		settings.PlayerInfos.XP = ExpPTS;
		settings.PlayerInfos.Layout = PILayout;

		settings.EquipInfos = {};
		settings.EquipInfos.V = ShowEquipInfos;
		settings.EquipInfos.A = string.format("%.3f", EIbcAlpha);
		settings.EquipInfos.R = string.format("%.3f", EIbcRed);
		settings.EquipInfos.G = string.format("%.3f", EIbcGreen);
		settings.EquipInfos.B = string.format("%.3f", EIbcBlue);
		settings.EquipInfos.X = string.format("%.0f", _G.EILocX);
		settings.EquipInfos.Y = string.format("%.0f", _G.EILocY);
	
		settings.DurabilityInfos = {};
		settings.DurabilityInfos.V = ShowDurabilityInfos;
		settings.DurabilityInfos.A = string.format("%.3f", DIbcAlpha);
		settings.DurabilityInfos.R = string.format("%.3f", DIbcRed);
		settings.DurabilityInfos.G = string.format("%.3f", DIbcGreen);
		settings.DurabilityInfos.B = string.format("%.3f", DIbcBlue);
		settings.DurabilityInfos.X = string.format("%.0f", _G.DILocX);
		settings.DurabilityInfos.Y = string.format("%.0f", _G.DILocY);
		settings.DurabilityInfos.L = string.format("%.0f", DIWLeft);
		settings.DurabilityInfos.T = string.format("%.0f", DIWTop);
		settings.DurabilityInfos.I = DIIcon;
		settings.DurabilityInfos.N = DIText;
	
		settings.PlayerLoc = {};
		settings.PlayerLoc.V = ShowPlayerLoc;
		settings.PlayerLoc.A = string.format("%.3f", PLbcAlpha);
		settings.PlayerLoc.R = string.format("%.3f", PLbcRed);
		settings.PlayerLoc.G = string.format("%.3f", PLbcGreen);
		settings.PlayerLoc.B = string.format("%.3f", PLbcBlue);
		settings.PlayerLoc.L = string.format( pLLoc );
		settings.PlayerLoc.X = string.format("%.0f", _G.PLLocX);
		settings.PlayerLoc.Y = string.format("%.0f", _G.PLLocY);

		settings.TrackItems = {};
		settings.TrackItems.V = ShowTrackItems;
		settings.TrackItems.A = string.format("%.3f", TIbcAlpha);
		settings.TrackItems.R = string.format("%.3f", TIbcRed);
		settings.TrackItems.G = string.format("%.3f", TIbcGreen);
		settings.TrackItems.B = string.format("%.3f", TIbcBlue);
		settings.TrackItems.X = string.format("%.0f", _G.TILocX);
		settings.TrackItems.Y = string.format("%.0f", _G.TILocY);
		settings.TrackItems.L = string.format("%.0f", TIWLeft);
		settings.TrackItems.T = string.format("%.0f", TIWTop);

		settings.Infamy = {};
		settings.Infamy.V = ShowInfamy;
		settings.Infamy.P = string.format("%.0f", InfamyPTS);
		settings.Infamy.K = string.format("%.0f", InfamyRank);
		settings.Infamy.A = string.format("%.3f", IFbcAlpha);
		settings.Infamy.R = string.format("%.3f", IFbcRed);
		settings.Infamy.G = string.format("%.3f", IFbcGreen);
		settings.Infamy.B = string.format("%.3f", IFbcBlue);
		settings.Infamy.X = string.format("%.0f", _G.IFLocX);
		settings.Infamy.Y = string.format("%.0f", _G.IFLocY);
		settings.Infamy.L = string.format("%.0f", IFWLeft);
		settings.Infamy.T = string.format("%.0f", IFWTop);

		settings.Vault = {};
		settings.Vault.V = ShowVault;
		settings.Vault.A = string.format("%.3f", VTbcAlpha);
		settings.Vault.R = string.format("%.3f", VTbcRed);
		settings.Vault.G = string.format("%.3f", VTbcGreen);
		settings.Vault.B = string.format("%.3f", VTbcBlue);
		settings.Vault.X = string.format("%.0f", _G.VTLocX);
		settings.Vault.Y = string.format("%.0f", _G.VTLocY);
		settings.Vault.L = string.format("%.0f", VTWLeft);
		settings.Vault.T = string.format("%.0f", VTWTop);

		settings.SharedStorage = {};
		settings.SharedStorage.V = ShowSharedStorage;
		settings.SharedStorage.A = string.format("%.3f", SSbcAlpha);
		settings.SharedStorage.R = string.format("%.3f", SSbcRed);
		settings.SharedStorage.G = string.format("%.3f", SSbcGreen);
		settings.SharedStorage.B = string.format("%.3f", SSbcBlue);
		settings.SharedStorage.X = string.format("%.0f", _G.SSLocX);
		settings.SharedStorage.Y = string.format("%.0f", _G.SSLocY);
		settings.SharedStorage.L = string.format("%.0f", SSWLeft);
		settings.SharedStorage.T = string.format("%.0f", SSWTop);
		--[[
		settings.Bank = {};
		settings.Bank.V = ShowBank;
		settings.Bank.A = string.format("%.3f", BKbcAlpha);
		settings.Bank.R = string.format("%.3f", BKbcRed);
		settings.Bank.G = string.format("%.3f", BKbcGreen);
		settings.Bank.B = string.format("%.3f", BKbcBlue);
		settings.Bank.X = string.format("%.0f", _G.BKLocX);
		settings.Bank.Y = string.format("%.0f", _G.BKLocY);
		settings.Bank.L = string.format("%.0f", BKWLeft);
		settings.Bank.T = string.format("%.0f", BKWTop);
		]]
		settings.DayNight = {};
		settings.DayNight.V = ShowDayNight;
		settings.DayNight.A = string.format("%.3f", DNbcAlpha);
		settings.DayNight.R = string.format("%.3f", DNbcRed);
		settings.DayNight.G = string.format("%.3f", DNbcGreen);
		settings.DayNight.B = string.format("%.3f", DNbcBlue);
		settings.DayNight.X = string.format("%.0f", _G.DNLocX);
		settings.DayNight.Y = string.format("%.0f", _G.DNLocY);
		settings.DayNight.L = string.format("%.0f", DNWLeft);
		settings.DayNight.T = string.format("%.0f", DNWTop);
		settings.DayNight.N = _G.DNNextT;
		settings.DayNight.S = string.format("%.0f", _G.TS);

		settings.Reputation = {};
		settings.Reputation.V = ShowReputation;
		settings.Reputation.H = HideMaxReps;
		settings.Reputation.A = string.format("%.3f", RPbcAlpha);
		settings.Reputation.R = string.format("%.3f", RPbcRed);
		settings.Reputation.G = string.format("%.3f", RPbcGreen);
		settings.Reputation.B = string.format("%.3f", RPbcBlue);
		settings.Reputation.X = string.format("%.0f", _G.RPLocX);
		settings.Reputation.Y = string.format("%.0f", _G.RPLocY);
		settings.Reputation.L = string.format("%.0f", RPWLeft);
		settings.Reputation.T = string.format("%.0f", RPWTop);

		settings.GameTime = {};
		settings.GameTime.V = ShowGameTime;
		settings.GameTime.A = string.format("%.3f", GTbcAlpha);
		settings.GameTime.R = string.format("%.3f", GTbcRed);
		settings.GameTime.G = string.format("%.3f", GTbcGreen);
		settings.GameTime.B = string.format("%.3f", GTbcBlue);
		settings.GameTime.X = string.format("%.0f", _G.GTLocX);
		settings.GameTime.Y = string.format("%.0f", _G.GTLocY);
		settings.GameTime.H = _G.Clock24h;
		settings.GameTime.S = _G.ShowST;
		settings.GameTime.O = _G.ShowBT;
		settings.GameTime.M = string.format("%.0f", _G.UserGMT);
		if PlayerAlign == 1 then settings.GameTime.L = string.format("%.0f", GTWLeft); end
		if PlayerAlign == 1 then  settings.GameTime.T = string.format("%.0f", GTWTop); end
		-- AU3 MARKER 5 - DO NOT REMOVE
		settings.AmrothSilverPiece = {};
		settings.AmrothSilverPiece.V = ShowAmrothSilverPiece;
		settings.AmrothSilverPiece.A = string.format("%.3f", ASPbcAlpha);
		settings.AmrothSilverPiece.R = string.format("%.3f", ASPbcRed);
		settings.AmrothSilverPiece.G = string.format("%.3f", ASPbcGreen);
		settings.AmrothSilverPiece.B = string.format("%.3f", ASPbcBlue);
		settings.AmrothSilverPiece.X = string.format("%.0f", _G.ASPLocX);
		settings.AmrothSilverPiece.Y = string.format("%.0f", _G.ASPLocY);
		settings.AmrothSilverPiece.W = string.format("%.0f", _G.ASPWhere);
		settings.StarsofMerit = {};
		settings.StarsofMerit.V = ShowStarsofMerit;
		settings.StarsofMerit.A = string.format("%.3f", SOMbcAlpha);
		settings.StarsofMerit.R = string.format("%.3f", SOMbcRed);
		settings.StarsofMerit.G = string.format("%.3f", SOMbcGreen);
		settings.StarsofMerit.B = string.format("%.3f", SOMbcBlue);
		settings.StarsofMerit.X = string.format("%.0f", _G.SOMLocX);
		settings.StarsofMerit.Y = string.format("%.0f", _G.SOMLocY);
		settings.StarsofMerit.W = string.format("%.0f", _G.SOMWhere);
		settings.CentralGondorSilverPiece = {};
		settings.CentralGondorSilverPiece.V = ShowCentralGondorSilverPiece;
		settings.CentralGondorSilverPiece.A = string.format("%.3f", CGSPbcAlpha);
		settings.CentralGondorSilverPiece.R = string.format("%.3f", CGSPbcRed);
		settings.CentralGondorSilverPiece.G = string.format("%.3f", CGSPbcGreen);
		settings.CentralGondorSilverPiece.B = string.format("%.3f", CGSPbcBlue);
		settings.CentralGondorSilverPiece.X = string.format("%.0f", _G.CGSPLocX);
		settings.CentralGondorSilverPiece.Y = string.format("%.0f", _G.CGSPLocY);
		settings.CentralGondorSilverPiece.W = string.format("%.0f", _G.CGSPWhere);
		settings.GiftgiversBrand = {};
		settings.GiftgiversBrand.V = ShowGiftgiversBrand;
		settings.GiftgiversBrand.A = string.format("%.3f", GGBbcAlpha);
		settings.GiftgiversBrand.R = string.format("%.3f", GGBbcRed);
		settings.GiftgiversBrand.G = string.format("%.3f", GGBbcGreen);
		settings.GiftgiversBrand.B = string.format("%.3f", GGBbcBlue);
		settings.GiftgiversBrand.X = string.format("%.0f", _G.GGBLocX);
		settings.GiftgiversBrand.Y = string.format("%.0f", _G.GGBLocY);
		settings.GiftgiversBrand.W = string.format("%.0f", _G.GGBWhere);
		settings.AshOfGorgoroth = {};
		settings.AshOfGorgoroth.V = ShowAshOfGorgoroth;
		settings.AshOfGorgoroth.A = string.format("%.3f", AOGbcAlpha);
		settings.AshOfGorgoroth.R = string.format("%.3f", AOGbcRed);
		settings.AshOfGorgoroth.G = string.format("%.3f", AOGbcGreen);
		settings.AshOfGorgoroth.B = string.format("%.3f", AOGbcBlue);
		settings.AshOfGorgoroth.X = string.format("%.0f", _G.AOGLocX);
		settings.AshOfGorgoroth.Y = string.format("%.0f", _G.AOGLocY);
		settings.AshOfGorgoroth.W = string.format("%.0f", _G.AOGWhere);
		settings.BingoBadge = {};
		settings.BingoBadge.V = ShowBingoBadge;
		settings.BingoBadge.A = string.format("%.3f", BBbcAlpha);
		settings.BingoBadge.R = string.format("%.3f", BBbcRed);
		settings.BingoBadge.G = string.format("%.3f", BBbcGreen);
		settings.BingoBadge.B = string.format("%.3f", BBbcBlue);
		settings.BingoBadge.X = string.format("%.0f", _G.BBLocX);
		settings.BingoBadge.Y = string.format("%.0f", _G.BBLocY);
		settings.BingoBadge.W = string.format("%.0f", _G.BBWhere);
		-- AU3 MARKER 5 END
	end
	
	if GLocale == "de" then Turbine.PluginData.Save( Turbine.DataScope.Character, "TitanBarSettingsDE", settings ); end
	if GLocale == "en" then Turbine.PluginData.Save( Turbine.DataScope.Character, "TitanBarSettingsEN", settings ); end
	if GLocale == "fr" then Turbine.PluginData.Save( Turbine.DataScope.Character, "TitanBarSettingsFR", settings ); end
end
-- **^
-- **v Reset All Settings v**
function ResetSettings()
	write( L["TBR"] );
	TBLocale = "en";
	
	if GLocale == "en" then tA, tR, tG, tB, tX, tY, tW = 0.3, 0.3, 0.3, 0.3, 0, 0, 3;
	else tA, tR, tG, tB, tX, tY, tW = "0,3", "0,3", "0,3", "0,3", "0", "0", "3"; end
	tL, tT = 100, 100;
	
	TBHeight, _G.TBFont, TBFontT, TBTop, TBAutoHide, TBIconSize, bcAlpha, bcRed, bcGreen, bcBlue = 30, 1107296268, "TrajanPro14", true, L["OPAHC"], 32, tA, tR, tG, tB; --Backcolor & default X Location for TitanBar
	ShowWallet, WIbcAlpha, WIbcRed, WIbcGreen, WIbcBlue, _G.WILocX, _G.WILocY = false, tA, tR, tG, tB, tX, tY; --for Wallet Control
	ShowMoney, _G.STM, _G.SSS, _G.STS, MIbcAlpha, MIbcRed, MIbcGreen, MIbcBlue, _G.MILocX, _G.MILocY, _G.MIWhere = true, false, true, true, tA, tR, tG, tB, 400, tY, 1; --for Money Control
	ShowDestinyPoints, DPbcAlpha, DPbcRed, DPbcGreen, DPbcBlue, _G.DPLocX, _G.DPLocY, _G.DPWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Destiny points Control
	ShowShards, SPbcAlpha, SPbcRed, SPbcGreen, SPbcBlue, _G.SPLocX, _G.SPLocY, _G.SPWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Shards Control
	ShowSkirmishMarks, SMbcAlpha, SMbcRed, SMbcGreen, SMbcBlue, _G.SMLocX, _G.SMLocY, _G.SMWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Skirmish marks Control
	ShowMithrilCoins, MCbcAlpha, MCbcRed, MCbcGreen, MCbcBlue, _G.MCLocX, _G.MCLocY, _G.MCWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Mithril Coins Control
--	ShowYuleTokens, YTbcAlpha, YTbcRed, YTbcGreen, YTbcBlue, _G.TLocX, _G.YTLocY, _G.YTWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Yule Tokens Control
	ShowHytboldTokens, HTbcAlpha, HTbcRed, HTbcGreen, HTbcBlue, _G.HTLocX, _G.HTLocY, _G.HTWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Tokens of Hytbold Control
	ShowMedallions, MPbcAlpha, MPbcRed, MPbcGreen, MPbcBlue, _G.MPLocX, _G.MPLocY, _G.MPWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Medallions Control
	ShowCommendations, CPbcAlpha, CPbcRed, CPbcGreen, CPbcBlue, _G.CPLocX, _G.CPLocY, _G.CPWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Commendations Control
	ShowSeals, SLbcAlpha, SLbcRed, SLbcGreen, SLbcBlue, _G.SLLocX, _G.SLLocY, _G.SLWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Seal Control
	ShowBagInfos, _G.BIUsed, _G.BIMax, BIbcAlpha, BIbcRed, BIbcGreen, BIbcBlue, _G.BILocX, _G.BILocY = true, true, true, tA, tR, tG, tB, tX, tY; --for Bag info Control
	ShowEquipInfos, EIbcAlpha, EIbcRed, EIbcGreen, EIbcBlue, _G.EILocX, _G.EILocY = true, tA, tR, tG, tB, 75, tY; --for Equipement infos Control
	ShowDurabilityInfos, DIIcon, DIText, DIbcAlpha, DIbcRed, DIbcGreen, DIbcBlue, _G.DILocX, _G.DILocY = true, true, true, tA, tR, tG, tB, 145, tY; --for Durability infos Control
	ShowPlayerInfos, PIbcAlpha, PIbcRed, PIbcGreen, PIbcBlue, _G.PILocX, _G.PILocY = false, tA, tR, tG, tB, 210, tY; --for Player infos Control
	ShowTrackItems, TIbcAlpha, TIbcRed, TIbcGreen, TIbcBlue, _G.TILocX, _G.TILocY = false, tA, tR, tG, tB, tX, tY; --for Track Items Control
	ShowInfamy, IFbcAlpha, IFbcRed, IFbcGreen, IFbcBlue, _G.IFLocX, _G.IFLocX = false, tA, tR, tG, tB, tX, tY --for Infamy Control
	ShowVault, VTbcAlpha, VTbcRed, VTbcGreen, VTbcBlue, _G.VTLocX, _G.VTLocX = false, tA, tR, tG, tB, tX, tY --for Vault Control
	ShowSharedStorage, SSbcAlpha, SSbcRed, SSbcGreen, SSbcBlue, _G.SSLocX, _G.SSLocX = false, tA, tR, tG, tB, tX, tY --for SharedStorage Control
	--ShowBank, BKbcAlpha, BKbcRed, BKbcGreen, BKbcBlue, _G.BKLocX, _G.BKLocX = false, tA, tR, tG, tB, tX, tY --for Bank Control
	ShowDayNight, _G.DNNextT, DNbcAlpha, DNbcRed, DNbcGreen, DNbcBlue, _G.DNLocX, _G.DNLocX = false, true, tA, tR, tG, tB, tX, tY --for DayNight Control
	ShowReputation, RPbcAlpha, RPbcRed, RPbcGreen, RPbcBlue, _G.RPLocX, _G.RPLocX = false, tA, tR, tG, tB, tX, tY --for Reputation Control
	ShowLOTROPoints, LPbcAlpha, LPbcRed, LPbcGreen, LPbcBlue, _G.LPLocX, _G.LPLocY, _G.LPWhere = false, tA, tR, tG, tB, tX, tY, tW; --for LOTRO points Control
	
	ShowPlayerLoc, PLbcAlpha, PLbcRed, PLbcGreen, PLbcBlue, _G.PLLocX, _G.PLLocX = true, tA, tR, tG, tB, screenWidth - 205, tY; --for Player Location Control
	ShowGameTime, _G.Clock24h, _G.ShowST, _G.ShowBT, GTbcAlpha, GTbcRed, GTbcGreen, GTbcBlue, _G.GTLocX, _G.GTLocX = true, false, false, false, tA, tR, tG, tB, screenWidth - 60, tY --for Game time Control
	
	-- AU3 MARKER 6 - DO NOT REMOVE
	AmrothSilverPiece, ASPbcAlpha, ASPbcRed, ASPbcGreen, ASPbcBlue, _G.ASPLocX, _G.ASPLocY, _G.ASPWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Amroth Silver Piece Control
	StarsofMerit, SOMbcAlpha, SOMbcRed, SOMbcGreen, SOMbcBlue, _G.SOMLocX, _G.SOMLocY, _G.SOMWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Stars of Merit Control
	CentralGondorSilverPiece, CGSPbcAlpha, CGSPbcRed, CGSPbcGreen, CGSPbcBlue, _G.CGSPLocX, _G.CGSPLocY, _G.CGSPWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Central Gondor Silver Piece Control
	GiftgiversBrand, GGBbcAlpha, GGBbcRed, GGBbcGreen, GGBbcBlue, _G.GGBLocX, _G.GGBLocY, _G.GGBWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Gift giver's Brand Control
	AshOfGorgoroth, AOGbcAlpha, AOGbcRed, AOGbcGreen, AOGbcBlue, _G.AOGLocX, _G.AOGLocY, _G.AOGWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Ash of Gorgoroth Control
	BingoBadge, BBbcAlpha, BBbcRed, BBbcGreen, BBbcBlue, _G.BBLocX, _G.BBLocY, _G.BBWhere = false, tA, tR, tG, tB, tX, tY, tW; --for Bingo Badge Control
	-- AU3 MARKER 6 END
		
	SaveSettings( true ); --True: Get & save all settings table to file. / False: only save settings table to file.
	ReloadTitanBar();
end
-- **^

function ReplaceCtr()
	write( L["TBSSCS"] );
	TB["win"]:SetSize( screenWidth, TBHeight );
	local oldScreenWidth = settings.TitanBar.W;
	TBWidth = screenWidth;
	settings.TitanBar.W = string.format("%.0f", screenWidth);
	
	local oldLocX = settings.Wallet.X / oldScreenWidth;
	_G.WILocX = oldLocX * screenWidth;
	settings.Wallet.X = string.format("%.0f", _G.WILocX);
	if ShowWallet then WI["Ctr"]:SetPosition( _G.WILocX, _G.WILocY ); end

	oldLocX = settings.Money.X / oldScreenWidth;
	_G.MILocX = oldLocX * screenWidth;
	settings.Money.X = string.format("%.0f", _G.MILocX);
	if ShowMoney and _G.MIWhere == 1 then MI["Ctr"]:SetPosition( _G.MILocX, _G.MILocY ); end
	
	oldLocX = settings.DestinyPoints.X / oldScreenWidth;
	_G.DPLocX = oldLocX * screenWidth;
	settings.DestinyPoints.X = string.format("%.0f", _G.DPLocX);
	if ShowDestinyPoints and _G.DPWhere == 1 then DP["Ctr"]:SetPosition( _G.DPLocX, _G.DPLocY ); end

	oldLocX = settings.Shards.X / oldScreenWidth;
	_G.SPLocX = oldLocX * screenWidth;
	settings.Shards.X = string.format("%.0f", _G.SPLocX);
	if ShowShards and _G.SPWhere == 1 then SP["Ctr"]:SetPosition( _G.SPLocX, _G.SPLocY ); end

	oldLocX = settings.SkirmishMarks.X / oldScreenWidth;
	_G.SMLocX = oldLocX * screenWidth;
	settings.SkirmishMarks.X = string.format("%.0f", _G.SMLocX);
	if ShowSkirmishMarks and _G.SMWhere == 1 then SM["Ctr"]:SetPosition( _G.SMLocX, _G.SMLocY ); end
	
	oldLocX = settings.MithrilCoins.X / oldScreenWidth;
	_G.MCLocX = oldLocX * screenWidth;
	settings.MithrilCoins.X = string.format("%.0f", _G.MCLocX);
	if ShowMithrilCoins and _G.MCWhere == 1 then MC["Ctr"]:SetPosition( _G.MCLocX, _G.MCLocY ); end
	
--[[
	oldLocX = settings.YuleTokens.X / oldScreenWidth;
	_G.YTLocX = oldLocX * screenWidth;
	settings.YuleTokens.X = string.format("%.0f", _G.YTLocX);
	if ShowYuleTokens and _G.YTWhere == 1 then YT["Ctr"]:SetPosition( _G.YTLocX, _G.YTLocY ); end
--]]

	ldLocX = settings.HytboldTokens.X / oldScreenWidth;
	_G.HTLocX = oldLocX * screenWidth;
	settings.HytboldTokens.X = string.format("%.0f", _G.HTLocX);
	if ShowHytboldTokens and _G.HTWhere == 1 then HT["Ctr"]:SetPosition( _G.HTLocX, _G.HTLocY ); end
	
	oldLocX = settings.Medallions.X / oldScreenWidth;
	_G.MPLocX = oldLocX * screenWidth;
	settings.Medallions.X = string.format("%.0f", _G.MPLocX);
	if ShowMedallions and _G.MPWhere == 1 then MP["Ctr"]:SetPosition( _G.MPLocX, _G.MPLocY ); end

	oldLocX = settings.Seals.X / oldScreenWidth;
	_G.SLLocX = oldLocX * screenWidth;
	settings.Seals.X = string.format("%.0f", _G.SLLocX);
	if ShowSeals and _G.SLWhere == 1 then SL["Ctr"]:SetPosition( _G.SLLocX, _G.SLLocY ); end

	oldLocX = settings.Commendations.X / oldScreenWidth;
	_G.CPLocX = oldLocX * screenWidth;
	settings.Commendations.X = string.format("%.0f", _G.CPLocX);
	if ShowCommendations and _G.CPWhere == 1 then CP["Ctr"]:SetPosition( _G.CPLocX, _G.CPLocY ); end

	oldLocX = settings.BagInfos.X / oldScreenWidth;
	_G.BILocX = oldLocX * screenWidth;
	settings.BagInfos.X = string.format("%.0f", _G.BILocX);
	if ShowBagInfos then BI["Ctr"]:SetPosition( _G.BILocX, _G.BILocY ); end

	oldLocX = settings.PlayerInfos.X / oldScreenWidth;
	_G.PILocX = oldLocX * screenWidth;
	settings.PlayerInfos.X = string.format("%.0f", _G.PILocX);
	if ShowPlayerInfos then PI["Ctr"]:SetPosition( _G.PILocX, _G.PILocY ); end

	oldLocX = settings.EquipInfos.X / oldScreenWidth;
	_G.EILocX = oldLocX * screenWidth;
	settings.EquipInfos.X = string.format("%.0f", _G.EILocX);
	if ShowEquipInfos then EI["Ctr"]:SetPosition( _G.EILocX, _G.EILocY ); end

	oldLocX = settings.DurabilityInfos.X / oldScreenWidth;
	_G.DILocX = oldLocX * screenWidth;
	settings.DurabilityInfos.X = string.format("%.0f", _G.DILocX);
	if ShowDurabilityInfos then DI["Ctr"]:SetPosition( _G.DILocX, _G.DILocY ); end

	oldLocX = settings.PlayerLoc.X / oldScreenWidth;
	_G.PLLocX = oldLocX * screenWidth;
	settings.PlayerLoc.X = string.format("%.0f", _G.PLLocX);
	if ShowPlayerLoc then PL["Ctr"]:SetPosition( _G.PLLocX, _G.PLLocY ); end

	oldLocX = settings.TrackItems.X / oldScreenWidth;
	_G.TILocX = oldLocX * screenWidth;
	settings.TrackItems.X = string.format("%.0f", _G.TILocX);
	if ShowTrackItems then TI["Ctr"]:SetPosition( _G.TILocX, _G.TILocY ); end

	oldLocX = settings.Infamy.X / oldScreenWidth;
	_G.IFLocX = oldLocX * screenWidth;
	settings.Infamy.X = string.format("%.0f", _G.IFLocX);
	if ShowInfamy then IF["Ctr"]:SetPosition( _G.IFLocX, _G.IFLocY ); end

	oldLocX = settings.Vault.X / oldScreenWidth;
	_G.VTLocX = oldLocX * screenWidth;
	settings.Vault.X = string.format("%.0f", _G.VTLocX);
	if ShowVault then VT["Ctr"]:SetPosition( _G.VTLocX, _G.VTLocY ); end

	oldLocX = settings.SharedStorage.X / oldScreenWidth;
	_G.SSLocX = oldLocX * screenWidth;
	settings.SharedStorage.X = string.format("%.0f", _G.SSLocX);
	if ShowSharedStorage then SS["Ctr"]:SetPosition( _G.SSLocX, _G.SSLocY ); end

	--oldLocX = settings.Bank.X / oldScreenWidth;
	--_G.BKLocX = oldLocX * screenWidth;
	--settings.Bank.X = string.format("%.0f", _G.BKLocX);
	--if ShowBank then BK["Ctr"]:SetPosition( _G.BKLocX, _G.BKLocY ); end

	oldLocX = settings.DayNight.X / oldScreenWidth;
	_G.DNLocX = oldLocX * screenWidth;
	settings.DayNight.X = string.format("%.0f", _G.DNLocX);
	if ShowDayNight then DN["Ctr"]:SetPosition( _G.DNLocX, _G.DNLocY ); end

	oldLocX = settings.Reputation.X / oldScreenWidth;
	_G.RPLocX = oldLocX * screenWidth;
	settings.Reputation.X = string.format("%.0f", _G.RPLocX);
	if ShowReputation then RP["Ctr"]:SetPosition( _G.RPLocX, _G.RPLocY ); end

	oldLocX = settings.LOTROPoints.X / oldScreenWidth;
	_G.LPLocX = oldLocX * screenWidth;
	settings.LOTROPoints.X = string.format("%.0f", _G.LPLocX);
	if ShowLOTROPoints and _G.LPWhere == 1 then LP["Ctr"]:SetPosition( _G.LPLocX, _G.LPLocY ); end

	oldLocX = settings.GameTime.X / oldScreenWidth;
	_G.GTLocX = oldLocX * screenWidth;
	settings.GameTime.X = string.format("%.0f", _G.GTLocX);
	if ShowGameTime then GT["Ctr"]:SetPosition( _G.GTLocX, _G.GTLocY ); end
	
	-- AU3 MARKER 7 - DO NOT REMOVE
	oldLocX = settings.AmrothSilverPiece.X / oldScreenWidth;
	_G.ASPLocX = oldLocX * screenWidth;
	settings.AmrothSilverPiece.X = string.format("%.0f", _G.ASPLocX);
	if ShowAmrothSilverPiece and _G.ASPWhere == 1 then ASP["Ctr"]:SetPosition( _G.ASPLocX, _G.ASPLocY ); end
	oldLocX = settings.StarsofMerit.X / oldScreenWidth;
	_G.SOMLocX = oldLocX * screenWidth;
	settings.StarsofMerit.X = string.format("%.0f", _G.SOMLocX);
	if ShowStarsofMerit and _G.SOMWhere == 1 then SOM["Ctr"]:SetPosition( _G.SOMLocX, _G.SOMLocY ); end
	oldLocX = settings.CentralGondorSilverPiece.X / oldScreenWidth;
	_G.CGSPLocX = oldLocX * screenWidth;
	settings.CentralGondorSilverPiece.X = string.format("%.0f", _G.CGSPLocX);
	if ShowCentralGondorSilverPiece and _G.CGSPWhere == 1 then CGSP["Ctr"]:SetPosition( _G.CGSPLocX, _G.CGSPLocY ); end
	oldLocX = settings.GiftgiversBrand.X / oldScreenWidth;
	_G.GGBLocX = oldLocX * screenWidth;
	settings.GiftgiversBrand.X = string.format("%.0f", _G.GGBLocX);
	if ShowGiftgiversBrand and _G.GGBWhere == 1 then GGB["Ctr"]:SetPosition( _G.GGBLocX, _G.GGBLocY ); end
	oldLocX = settings.AshOfGorgoroth.X / oldScreenWidth;
	_G.AOGLocX = oldLocX * screenWidth;
	settings.AshOfGorgoroth.X = string.format("%.0f", _G.AOGLocX);
	if ShowAshOfGorgoroth and _G.AOGWhere == 1 then AOG["Ctr"]:SetPosition( _G.AOGLocX, _G.AOGLocY ); end
	oldLocX = settings.BingoBadge.X / oldScreenWidth;
	_G.BBLocX = oldLocX * screenWidth;
	settings.BingoBadge.X = string.format("%.0f", _G.AOGLocX);
	if ShowBingoBadge and _G.BBWhere == 1 then BB["Ctr"]:SetPosition( _G.BBLocX, _G.BBLocY ); end
	-- AU3 MARKER 7 END
	
	SaveSettings( false );
	write( L["TBSSCD"] );
end
