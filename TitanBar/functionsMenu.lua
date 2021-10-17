-- functionsMenu.lua
-- Written By Habna


--**v Functions for the menu v**

-- **v Show/Hide Wallet v**
function ShowHideWallet()
	ShowWallet = not ShowWallet;
	settings.Wallet.V = ShowWallet;
	SaveSettings( false );
	if ShowWallet then
		--write( "TitanBar: Showing wallet control");
		ImportCtr( "WI" );
		WI[ "Ctr" ]:SetBackColor( Turbine.UI.Color( WIbcAlpha, WIbcRed, WIbcGreen, WIbcBlue ) );
	else
		--write( "TitanBar: Hiding wallet control");
		if _G.frmWI then wWI:Close(); end
	end
	WI[ "Ctr" ]:SetVisible( ShowWallet );
	opt_WI:SetChecked( ShowWallet );
end
-- **^
-- **v Show/Hide Money v**
function ShowHideMoney()
	ShowMoney = not ShowMoney;
	settings.Money.V = ShowMoney;
	settings.Money.W = string.format("%.0f", _G.MIWhere);
	SaveSettings( false );
	ImportCtr( "MI" );
	if ShowMoney then
		--write( "TitanBar: Showing money");
		--ImportCtr( "MI" );
		MI[ "Ctr" ]:SetBackColor( Turbine.UI.Color( MIbcAlpha, MIbcRed, MIbcGreen, MIbcBlue ) );
	else
		--write( "TitanBar: Hiding money");
		if _G.frmMI then wMI:Close(); end
	end
	MI[ "Ctr" ]:SetVisible( ShowMoney );
end
-- **^
-- **v Show/Hide Destiny Points v**
function ShowHideDestinyPoints()
	ShowDestinyPoints = not ShowDestinyPoints;
	settings.DestinyPoints.V = ShowDestinyPoints;
	settings.DestinyPoints.W = string.format("%.0f", _G.DPWhere);
	SaveSettings( false );
	ImportCtr( "DP" );
	if ShowDestinyPoints then
		DP[ "Ctr" ]:SetBackColor( Turbine.UI.Color( DPbcAlpha, DPbcRed, DPbcGreen, DPbcBlue ) );
	end
	DP[ "Ctr" ]:SetVisible( ShowDestinyPoints );
end
-- **^
-- **v Show/Hide Shards v**
function ShowHideShards()
	ShowShards = not ShowShards;
	settings.Shards.V = ShowShards;
	settings.Shards.W = string.format("%.0f", _G.SPWhere);
	SaveSettings( false );
	ImportCtr( "SP" );
	if ShowShards then
		SP[ "Ctr" ]:SetBackColor( Turbine.UI.Color( SPbcAlpha, SPbcRed, SPbcGreen, SPbcBlue ) );
	end
	SP[ "Ctr" ]:SetVisible( ShowShards );
end
-- **^
-- **v Show/Hide Skirmish marks v**
function ShowHideSkirmishMarks()
	ShowSkirmishMarks = not ShowSkirmishMarks;
	settings.SkirmishMarks.V = ShowSkirmishMarks;
	settings.SkirmishMarks.W = string.format("%.0f", _G.SMWhere);
	SaveSettings( false );
	ImportCtr( "SM" );
	if ShowSkirmishMarks then
		SM[ "Ctr" ]:SetBackColor( Turbine.UI.Color( SMbcAlpha, SMbcRed, SMbcGreen, SMbcBlue ) );
	end
	SM[ "Ctr" ]:SetVisible( ShowSkirmishMarks );
end
-- **^
-- **v Show/Hide Mithril Coins v**
function ShowHideMithrilCoins()
	ShowMithrilCoins = not ShowMithrilCoins;
	settings.MithrilCoins.V = ShowMithrilCoins;
	settings.MithrilCoins.W = string.format("%.0f", _G.MCWhere);
	SaveSettings( false );
	ImportCtr( "MC" );
	if ShowMithrilCoins then
		MC[ "Ctr" ]:SetBackColor( Turbine.UI.Color( MCbcAlpha, MCbcRed, MCbcGreen, MCbcBlue ) );
	end
	MC[ "Ctr" ]:SetVisible( ShowMithrilCoins );
end
-- **^
-- **v Show/Hide Yule Tokens v**
function ShowHideYuleToken()
	ShowYuleToken = not ShowYuleToken;
	settings.YuleToken.V = ShowYuleToken;
	settings.YuleToken.W = string.format("%.0f", _G.YTWhere);
	SaveSettings( false );
	ImportCtr( "YT" );
	if ShowYuleToken then
		YT[ "Ctr" ]:SetBackColor( Turbine.UI.Color( YTbcAlpha, YTbcRed, YTbcGreen, YTbcBlue ) );
	end
	YT[ "Ctr" ]:SetVisible( ShowYuleToken );
end
-- **^
-- **v Show/Hide Tokens of Hytbold v**
function ShowHideHytboldTokens()
	ShowHytboldTokens = not ShowHytboldTokens;
	settings.HytboldTokens.V = ShowHytboldTokens;
	settings.HytboldTokens.W = string.format("%.0f", _G.HTWhere);
	SaveSettings( false );
	ImportCtr( "HT" );
	if ShowHytboldTokens then
		HT[ "Ctr" ]:SetBackColor( Turbine.UI.Color( HTbcAlpha, HTbcRed, HTbcGreen, HTbcBlue ) );
	end
	HT[ "Ctr" ]:SetVisible( ShowHytboldTokens );
end
-- **^
-- **v Show/Hide Medallions v**
function ShowHideMedallions()
	ShowMedallions = not ShowMedallions;
	settings.Medallions.V = ShowMedallions;
	settings.Medallions.W = string.format("%.0f", _G.MPWhere);
	SaveSettings( false );
	ImportCtr( "MP" );
	if ShowMedallions then
		MP[ "Ctr" ]:SetBackColor( Turbine.UI.Color( MPbcAlpha, MPbcRed, MPbcGreen, MPbcBlue ) );
	end
	MP[ "Ctr" ]:SetVisible( ShowMedallions );
end
-- **^
-- **v Show/Hide Seals v**
function ShowHideSeals()
	ShowSeals = not ShowSeals;
	settings.Seals.V = ShowSeals;
	settings.Seals.W = string.format("%.0f", _G.SLWhere);
	SaveSettings( false );
	ImportCtr( "SL" );
	if ShowSeals then
		SL[ "Ctr" ]:SetBackColor( Turbine.UI.Color( SLbcAlpha, SLbcRed, SLbcGreen, SLbcBlue ) );
	end
	SL[ "Ctr" ]:SetVisible( ShowSeals );
end
-- **^
-- **v Show/Hide Commendations v**
function ShowHideCommendations()
	ShowCommendations = not ShowCommendations;
	settings.Commendations.V = ShowCommendations;
	settings.Commendations.W = string.format("%.0f", _G.CPWhere);
	SaveSettings( false );
	ImportCtr( "CP" );
	if ShowCommendations then
		CP[ "Ctr" ]:SetBackColor( Turbine.UI.Color( CPbcAlpha, CPbcRed, CPbcGreen, CPbcBlue ) );
	end
	CP[ "Ctr" ]:SetVisible( ShowCommendations );
end
-- **^
-- **v Show/Hide LOTRO Points v**
function ShowHideLOTROPoints()
	ShowLOTROPoints = not ShowLOTROPoints;
	settings.LOTROPoints.V = ShowLOTROPoints;
	settings.LOTROPoints.W = string.format("%.0f", _G.LPWhere);
	SaveSettings( false );
	ImportCtr( "LP" );
	if ShowLOTROPoints then
		LP[ "Ctr" ]:SetBackColor( Turbine.UI.Color( LPbcAlpha, LPbcRed, LPbcGreen, LPbcBlue ) );
	else
		if _G.frmLP then wLP:Close(); end
	end
	LP[ "Ctr" ]:SetVisible( ShowLOTROPoints );
end
-- **^
-- **v Show/Hide backpack Infos v**
function ShowHideBackpackInfos()
	ShowBagInfos = not ShowBagInfos;
	settings.BagInfos.V = ShowBagInfos;
	SaveSettings( false );
	if ShowBagInfos then
		ImportCtr( "BI" );
		BI[ "Ctr" ]:SetBackColor( Turbine.UI.Color( BIbcAlpha, BIbcRed, BIbcGreen, BIbcBlue ) );
	else
		RemoveCallback(backpack, "ItemAdded");
		RemoveCallback(backpack, "ItemRemoved");
		if _G.frmBI then wBI:Close(); end
	end
	BI[ "Ctr" ]:SetVisible( ShowBagInfos );
	opt_BI:SetChecked( ShowBagInfos );
end
--**^
-- **v Show/Hide backpack Infos v**
function ShowHidePlayerInfos()
	ShowPlayerInfos = not ShowPlayerInfos;
	settings.PlayerInfos.V = ShowPlayerInfos;
	SaveSettings( false );
	if ShowPlayerInfos then
		ImportCtr( "PI" );
		PI[ "Ctr" ]:SetBackColor( Turbine.UI.Color( PIbcAlpha, PIbcRed, PIbcGreen, PIbcBlue ) );
	else
		RemoveCallback(Player, "LevelChanged");
		RemoveCallback(Player, "NameChanged");
		RemoveCallback(Turbine.Chat, "Received", XPcb);
	end
	PI[ "Ctr" ]:SetVisible( ShowPlayerInfos );
	opt_PI:SetChecked( ShowPlayerInfos );
end
--**^
-- **v Show/Hide equipment Infos v**
function ShowHideEquipInfos()
	ShowEquipInfos = not ShowEquipInfos;
	settings.EquipInfos.V = ShowEquipInfos;
	SaveSettings( false );
	if ShowEquipInfos then
		GetEquipmentInfos();
		AddCallback(PlayerEquipment, "ItemEquipped", function(sender, args) if ShowEquipInfos then GetEquipmentInfos(); UpdateEquipsInfos(); end end);
		AddCallback(PlayerEquipment, "ItemUnequipped", function(sender, args) ItemUnEquippedTimer:SetWantsUpdates( true ); end); --Workaround
		ImportCtr( "EI" );
		EI[ "Ctr" ]:SetBackColor( Turbine.UI.Color( EIbcAlpha, EIbcRed, EIbcGreen, EIbcBlue ) );
	else
		RemoveCallback(PlayerEquipment, "ItemEquipped");
		RemoveCallback(PlayerEquipment, "ItemUnequipped");
		if _G.frmEI then wEI:Close(); end
	end
	EI[ "Ctr" ]:SetVisible( ShowEquipInfos );
	opt_EI:SetChecked( ShowEquipInfos );
end
--**^
-- **v Show/Hide durability Infos v**
function ShowHideDurabilityInfos()
	ShowDurabilityInfos = not ShowDurabilityInfos;
	settings.DurabilityInfos.V = ShowDurabilityInfos;
	SaveSettings( false );
	if ShowDurabilityInfos then
		GetEquipmentInfos();
		AddCallback(PlayerEquipment, "ItemEquipped", function(sender, args) if ShowEquipInfos then GetEquipmentInfos(); UpdateEquipsInfos(); end if ShowDurabilityInfos then GetEquipmentInfos(); UpdateDurabilityInfos(); end end);
		AddCallback(PlayerEquipment, "ItemUnequipped", function(sender, args) ItemUnEquippedTimer:SetWantsUpdates( true ); end); --Workaround
		ImportCtr( "DI" );
		DI[ "Ctr" ]:SetBackColor( Turbine.UI.Color( DIbcAlpha, DIbcRed, DIbcGreen, DIbcBlue ) );
	else
		RemoveCallback(PlayerEquipment, "ItemEquipped");
		RemoveCallback(PlayerEquipment, "ItemUnequipped");
		if _G.frmDI then wDI:Close(); end
	end
	DI[ "Ctr" ]:SetVisible( ShowDurabilityInfos );
	opt_DI:SetChecked( ShowDurabilityInfos );
end
--**^
-- **v Show/Hide Tracked Items Infos v**
function ShowHideTrackItems()
	ShowTrackItems = not ShowTrackItems;
	settings.TrackItems.V = ShowTrackItems;
	SaveSettings( false );
	if ShowTrackItems then
		ImportCtr( "TI" );
		TI[ "Ctr" ]:SetBackColor( Turbine.UI.Color( TIbcAlpha, TIbcRed, TIbcGreen, TIbcBlue ) );
	else
		if _G.frmTI then wTI:Close(); end
	end
	TI[ "Ctr" ]:SetVisible( ShowTrackItems );
	opt_TI:SetChecked( ShowTrackItems );
end
--**^
-- **v Show/Hide Infamy v**
function ShowHideInfamy()
	ShowInfamy = not ShowInfamy;
	settings.Infamy.V = ShowInfamy;
	SaveSettings( false );
	if ShowInfamy then
		ImportCtr( "IF" );
		IF[ "Ctr" ]:SetBackColor( Turbine.UI.Color( IFbcAlpha, IFbcRed, IFbcGreen, IFbcBlue ) );
	else
		RemoveCallback(Turbine.Chat, "Received", IFcb);
		if _G.frmIF then wIF:Close(); end
	end
	IF[ "Ctr" ]:SetVisible( ShowInfamy );
	opt_IF:SetChecked( ShowInfamy );
end
-- **^
-- **v Show/Hide Vault v**
function ShowHideVault()
	ShowVault = not ShowVault;
	settings.Vault.V = ShowVault;
	SaveSettings( false );
	if ShowVault then
		ImportCtr( "VT" );
		VT[ "Ctr" ]:SetBackColor( Turbine.UI.Color( VTbcAlpha, VTbcRed, VTbcGreen, VTbcBlue ) );
	else
		RemoveCallback(vaultpack, "CountChanged");
		if _G.frmVT then wVT:Close(); end
	end
	VT[ "Ctr" ]:SetVisible( ShowVault );
	opt_VT:SetChecked( ShowVault );
end
-- **^
-- **v Show/Hide SharedStorage v**
function ShowHideSharedStorage()
	ShowSharedStorage = not ShowSharedStorage;
	settings.SharedStorage.V = ShowSharedStorage;
	SaveSettings( false );
	if ShowSharedStorage then
		ImportCtr( "SS" );
		SS[ "Ctr" ]:SetBackColor( Turbine.UI.Color( SSbcAlpha, SSbcRed, SSbcGreen, SSbcBlue ) );
	else
		RemoveCallback(sspack, "CountChanged");
		if _G.frmSS then wSS:Close(); end
	end
	SS[ "Ctr" ]:SetVisible( ShowSharedStorage );
	opt_SS:SetChecked( ShowSharedStorage );
end
-- **^
-- **v Show/Hide Bank v**
function ShowHideBank()
	ShowBank = not ShowBank;
	settings.Bank.V = ShowBank;
	SaveSettings( false );
	if ShowBank then
		ImportCtr( "BK" );
		BK[ "Ctr" ]:SetBackColor( Turbine.UI.Color( BKbcAlpha, BKbcRed, BKbcGreen, BKbcBlue ) );
	else
	end
	BK[ "Ctr" ]:SetVisible( ShowBank );
	opt_BK:SetChecked( ShowBank );
end
-- **^
-- **v Show/Hide Day & Night time v**
function ShowHideDayNight()
	ShowDayNight = not ShowDayNight;
	settings.DayNight.V = ShowDayNight;
	SaveSettings( false );
	if ShowDayNight then
		ImportCtr( "DN" );
		DN[ "Ctr" ]:SetBackColor( Turbine.UI.Color( DNbcAlpha, DNbcRed, DNbcGreen, DNbcBlue ) );
	else
		if _G.frmDN then wDN:Close(); end
	end
	DN[ "Ctr" ]:SetVisible( ShowDayNight );
	opt_DN:SetChecked( ShowDayNight );
end
-- **^
-- **v Show/Hide Reputation v**
function ShowHideReputation()
	ShowReputation = not ShowReputation;
	settings.Reputation.V = ShowReputation;
	SaveSettings( false );
	if ShowReputation then
		ImportCtr( "RP" );
		RP[ "Ctr" ]:SetBackColor( Turbine.UI.Color( RPbcAlpha, RPbcRed, RPbcGreen, RPbcBlue ) );
	else
		RemoveCallback(Turbine.Chat, "Received", RPcb);
		if _G.frmRP then wRP:Close(); end
	end
	RP[ "Ctr" ]:SetVisible( ShowReputation );
	opt_RP:SetChecked( ShowReputation );
end
-- **^

-- **v Show/Hide Player Location v**
function ShowHidePlayerLoc()
	ShowPlayerLoc = not ShowPlayerLoc;
	settings.PlayerLoc.V = ShowPlayerLoc;
	SaveSettings( false );
	if ShowPlayerLoc then
		ImportCtr( "PL" );
		PL[ "Ctr" ]:SetBackColor( Turbine.UI.Color( PLbcAlpha, PLbcRed, PLbcGreen, PLbcBlue ) );
	else
		RemoveCallback(Turbine.Chat, "Received", PLcb);
	end
	PL[ "Ctr" ]:SetVisible( ShowPlayerLoc );
	opt_PL:SetChecked( ShowPlayerLoc );
end
--**^
-- **v Show/Hide Time v**
function ShowHideGameTime()
	ShowGameTime = not ShowGameTime;
	settings.GameTime.V = ShowGameTime;
	SaveSettings( false );
	if ShowGameTime then
		ImportCtr( "GT" );
		GT[ "Ctr" ]:SetBackColor( Turbine.UI.Color( GTbcAlpha, GTbcRed, GTbcGreen, GTbcBlue ) );
	else
		if _G.frmGT then wGT:Close(); end
	end
	GT[ "Ctr" ]:SetVisible( ShowGameTime );
	opt_GT:SetChecked( ShowGameTime );
end
--**^
-- **v Profile load/Save v**
function LoadPlayerProfile()
	PProfile = Turbine.PluginData.Load( Turbine.DataScope.Account, "TitanBarPlayerProfile" );
	if PProfile == nil then PProfile = {}; end
end

function SavePlayerProfile()
	-- The table key is saved with "," in DE & FR clients. Ex. [1,000000]. This causes a parse error.
	-- If you change [1,000000] to [1.000000] error is not there any more. [1] would be easier! Why all those zeroes!
	-- So LOTRO saves the table key in the client language, but lua is unable to read it since "," is a special character.
	-- LOTRO just has to save the key in English and the value in the client language.

	-- So I'm converting the key [1,000000] into a string like this ["1"]
	-- That's VindarPatch's doing, it converts the whole table into string (key and value)
	-- Now I only need to convert the key since the values are already in the correct language format.
	local newt = {};
	for i, v in pairs(PProfile) do newt[tostring(i)] = v; end
	PProfile = newt;

	Turbine.PluginData.Save( Turbine.DataScope.Account, "TitanBarPlayerProfile", PProfile );
end
--**^
-- **v Show Shell Command window v**
function HelpInfo()
	if frmSC then
		wShellCmd:Close();
	else
		import(AppDirD.."shellcmd"); -- LUA shell command file
		frmShellCmd();
	end
end
-- **^
--**v Unload TitanBar v**
function UnloadTitanBar()
	Turbine.PluginManager.LoadPlugin( 'TitanBar Unloader' ); --workaround
end
--**^
--**v Reload TitanBar v**
function ReloadTitanBar()
	settings.TitanBar.Z = true;
	SaveSettings( false );
	Turbine.PluginManager.LoadPlugin( 'TitanBar Reloader' ); --workaround
end
--**^
--**v About TitanBar v**
function AboutTitanBar()
	--write( "TitanBar: About!" );
	--Turbine.PluginManager.ShowAbouts(Plugins.TitanBar); -- Add this when About is available
	--Turbine.PluginManager.ShowOptions(Plugins.TitanBar); --This will open plugin manager and show TitanBar options (THIS IS AN EXAMLPE)
end
--**^
function ShowHideAmrothSilverPiece()
	ShowAmrothSilverPiece = not ShowAmrothSilverPiece;
	settings.AmrothSilverPiece.V = ShowAmrothSilverPiece;
	settings.AmrothSilverPiece.W = string.format("%.0f", _G.ASPWhere);
	SaveSettings( false );
	ImportCtr( "ASP" );
	if ShowAmrothSilverPiece then
		ASP[ "Ctr" ]:SetBackColor( Turbine.UI.Color( ASPbcAlpha, ASPbcRed, ASPbcGreen, ASPbcBlue ) );
	end
	ASP[ "Ctr" ]:SetVisible( ShowAmrothSilverPiece );
end
function ShowHideStarsofMerit()
	ShowStarsofMerit = not ShowStarsofMerit;
	settings.StarsofMerit.V = ShowStarsofMerit;
	settings.StarsofMerit.W = string.format("%.0f", _G.SOMWhere);
	SaveSettings( false );
	ImportCtr( "SOM" );
	if ShowStarsofMerit then
		SOM[ "Ctr" ]:SetBackColor( Turbine.UI.Color( SOMbcAlpha, SOMbcRed, SOMbcGreen, SOMbcBlue ) );
	end
	SOM[ "Ctr" ]:SetVisible( ShowStarsofMerit );
end
function ShowHideCentralGondorSilverPiece()
	ShowCentralGondorSilverPiece = not ShowCentralGondorSilverPiece;
	settings.CentralGondorSilverPiece.V = ShowCentralGondorSilverPiece;
	settings.CentralGondorSilverPiece.W = string.format("%.0f", _G.CGSPWhere);
	SaveSettings( false );
	ImportCtr( "CGSP" );
	if ShowCentralGondorSilverPiece then
		CGSP[ "Ctr" ]:SetBackColor( Turbine.UI.Color( CGSPbcAlpha, CGSPbcRed, CGSPbcGreen, CGSPbcBlue ) );
	end
	CGSP[ "Ctr" ]:SetVisible( ShowCentralGondorSilverPiece );
end
function ShowHideGiftgiversBrand()
	ShowGiftgiversBrand = not ShowGiftgiversBrand;
	settings.GiftgiversBrand.V = ShowGiftgiversBrand;
	settings.GiftgiversBrand.W = string.format("%.0f", _G.GGBWhere);
	SaveSettings( false );
	ImportCtr( "GGB" );
	if ShowGiftgiversBrand then
		GGB[ "Ctr" ]:SetBackColor( Turbine.UI.Color( GGBbcAlpha, GGBbcRed, GGBbcGreen, GGBbcBlue ) );
	end
	GGB[ "Ctr" ]:SetVisible( ShowGiftgiversBrand );
end
-- **^
-- **v Show/Hide Bingo Badges v**
function ShowHideBingoBadge()
	ShowBingoBadge = not ShowBingoBadge;
	settings.BingoBadge.V = ShowBingoBadge;
	settings.BingoBadge.W = string.format("%.0f", _G.BBWhere);
	SaveSettings( false );
	ImportCtr( "BB" );
	if ShowBingoBadge then
		BB[ "Ctr" ]:SetBackColor( Turbine.UI.Color( BBbcAlpha, BBbcRed, BBbcGreen, BBbcBlue ) );
	end
	BB[ "Ctr" ]:SetVisible( ShowBingoBadge );
end
function ShowHideAnniversaryToken()
	ShowAnniversaryToken = not ShowAnniversaryToken;
	settings.AnniversaryToken.V = ShowAnniversaryToken;
	settings.AnniversaryToken.W = string.format( "%.0f", _G.LATWhere );
	SaveSettings( false );
	ImportCtr( "LAT" );
	if ShowAnniversaryToken then
		LAT[ "Ctr" ]:SetBackColor( Turbine.UI.Color( LATbcAlpha, LATbcRed, LATbcGreen, LATbcBlue ) );
	end
	LAT[ "Ctr" ]:SetVisible( ShowAnniversaryToken );
end
function ShowHideMotesOfEnchantment()
	ShowMotesOfEnchantment = not ShowMotesOfEnchantment;
	settings.MotesOfEnchantment.V = ShowMotesOfEnchantment;
	settings.MotesOfEnchantment.W = string.format( "%.0f", _G.MOEWhere );
	SaveSettings( false );
	ImportCtr( "MOE" );
	if ShowMotesOfEnchantment then
		MOE[ "Ctr" ]:SetBackColor( Turbine.UI.Color( MOEbcAlpha, MOEbcRed, MOEbcGreen, MOEbcBlue ) );
	end
	MOE[ "Ctr" ]:SetVisible( ShowMotesOfEnchantment );
end
function ShowHideEmbersOfEnchantment()
	ShowEmbersOfEnchantment = not ShowEmbersOfEnchantment;
	settings.EmbersOfEnchantment.V = ShowEmbersOfEnchantment;
	settings.EmbersOfEnchantment.W = string.format( "%.0f", _G.EOEWhere );
	SaveSettings( false );
	ImportCtr( "EOE" );
	if ShowEmbersOfEnchantment then
		EOE[ "Ctr" ]:SetBackColor( Turbine.UI.Color( EOEbcAlpha, EOEbcRed, EOEbcGreen, EOEbcBlue ) );
	end
	EOE[ "Ctr" ]:SetVisible( ShowEmbersOfEnchantment );
end

function ShowHideFigmentsOfSplendour()
	ShowFigmentsOfSplendour = not ShowFigmentsOfSplendour;
	settings.FigmentsOfSplendour.V = ShowFigmentsOfSplendour;
	settings.FigmentsOfSplendour.W = string.format( "%.0f", _G.FOSWhere );
	SaveSettings( false );
	ImportCtr( "FOS" );
	if ShowFigmentsOfSplendour then
		FOS[ "Ctr" ]:SetBackColor( Turbine.UI.Color( FOSbcAlpha, FOSbcRed, FOSbcGreen, FOSbcBlue ) );
	end
	FOS[ "Ctr" ]:SetVisible( ShowFigmentsOfSplendour );
end

function ShowHideFallFestivalToken()
	ShowFallFestivalToken = not ShowFallFestivalToken;
	settings.FallFestivalToken.V = ShowFallFestivalToken;
	settings.FallFestivalToken.W = string.format( "%.0f", _G.FFTWhere );
	SaveSettings( false );
	ImportCtr( "FFT" );
	if ShowFallFestivalToken then
		FFT[ "Ctr" ]:SetBackColor( Turbine.UI.Color( FFTbcAlpha, FFTbcRed, FFTbcGreen, FFTbcBlue ) );
	end
	FFT[ "Ctr" ]:SetVisible( ShowFallFestivalToken );
end

function ShowHideFarmersFaireToken()
	ShowFarmersFaireToken = not ShowFarmersFaireToken;
	settings.FarmersFaireToken.V = ShowFarmersFaireToken;
	settings.FarmersFaireToken.W = string.format( "%.0f", _G.FFATWhere );
	SaveSettings( false );
	ImportCtr( "FFAT" );
	if ShowFarmersFaireToken then
		FFAT[ "Ctr" ]:SetBackColor( Turbine.UI.Color( FFATbcAlpha, FFATbcRed, FFATbcGreen, FFATbcBlue ) );
	end
	FFAT[ "Ctr" ]:SetVisible( ShowFarmersFaireToken);
end

function ShowHideSpringLeaf()
	ShowSpringLeaf = not ShowSpringLeaf;
	settings.SpringLeaf.V = ShowSpringLeaf;
	settings.SpringLeaf.W = string.format( "%.0f", _G.SPLWhere );
	SaveSettings( false );
	ImportCtr( "SPL" );
	if ShowSpringLeaf then
		SPL[ "Ctr" ]:SetBackColor( Turbine.UI.Color( SPLbcAlpha, SPLbcRed, SPLbcGreen, SPLbcBlue ) );
	end
	SPL[ "Ctr" ]:SetVisible( ShowSpringLeaf);
end

function ShowHideMidsummerToken()
	ShowMidsummerToken = not ShowMidsummerToken;
	settings.MidsummerToken.V = ShowMidsummerToken;
	settings.MidsummerToken.W = string.format( "%.0f", _G.MSTWhere );
	SaveSettings( false );
	ImportCtr( "MST" );
	if ShowMidsummerToken then
		MST[ "Ctr" ]:SetBackColor( Turbine.UI.Color( MSTbcAlpha, MSTbcRed, MSTbcGreen, MSTbcBlue ) );
	end
	MST[ "Ctr" ]:SetVisible( ShowMidsummerToken);
end

function ShowHideAncientScript()
	ShowAncientScript = not ShowAncientScript;
	settings.AncientScript.V = ShowAncientScript;
	settings.AncientScript.W = string.format( "%.0f", _G.ASWhere );
	SaveSettings( false );
	ImportCtr( "AS" );
	if ShowAncientScript then
		AS[ "Ctr" ]:SetBackColor( Turbine.UI.Color( ASbcAlpha, ASbcRed, ASbcGreen, ASbcBlue ) );
	end
	AS[ "Ctr" ]:SetVisible( ShowAncientScript);
end