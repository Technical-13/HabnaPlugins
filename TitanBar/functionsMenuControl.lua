-- functionsMenuControl.lua
-- Written By Habna


--**v Functions for the menu of control v**
--**v Unload control v**
function UnloadControl( value )
	if value == "ctr" then
		if ShowWallet then ShowHideWallet(); end
		if ShowMoney then _G.MIWhere = 3; ShowHideMoney(); end
		if ShowDestinyPoints then _G.DPWhere = 3; ShowHideDestinyPoints(); end
		if ShowShards then _G.SPWhere = 3; ShowHideShards(); end
		if ShowSkirmishMarks then _G.SMWhere = 3; ShowHideSkirmishMarks(); end
		if ShowMithrilCoins then _G.MCWhere = 3; ShowHideMithrilCoins(); end
--		if ShowYuleTokens then _G.YTWhere = 3; ShowHideYuleTokens(); end
		if ShowHytboldTokens then _G.HTWhere = 3; ShowHideHytboldTokens(); end
		if ShowMedallions then _G.MPWhere = 3; ShowHideMedallions(); end
		if ShowSeals then _G.SLWhere = 3; ShowHideSeals(); end
		if ShowCommendations then _G.CPWhere = 3; ShowHideCommendations(); end
		if ShowBagInfos then ShowHideBackpackInfos(); opt_BI:SetChecked( false ); end
		if ShowPlayerInfos then ShowHidePlayerInfos(); opt_PI:SetChecked( false ); end
		if ShowEquipInfos then ShowHideEquipInfos(); opt_EI:SetChecked( false ); end
		if ShowDurabilityInfos then ShowHideDurabilityInfos(); opt_DI:SetChecked( false ); end
		if ShowTrackItems then ShowHideTrackItems(); opt_TI:SetChecked( false ); end
		if ShowInfamy then ShowHideInfamy(); opt_IF:SetChecked( false ); end
		if ShowVault then ShowHideVault(); opt_VT:SetChecked( false ); end
		if ShowSharedStorage then ShowHideSharedStorage(); opt_SS:SetChecked( false ); end
		--if ShowBank then ShowHideBank(); opt_BK:SetChecked( false ); end
		if ShowDayNight then ShowHideDayNight(); opt_DN:SetChecked( false ); end
		if ShowReputation then ShowHideReputation(); opt_RP:SetChecked( false ); end
		if ShowLOTROPoints then _G.LPWhere = 3; ShowHideLOTROPoints(); end
		if ShowPlayerLoc then ShowHidePlayerLoc(); opt_PL:SetChecked( false ); end
		if ShowGameTime then ShowHideGameTime(); opt_GT:SetChecked( false ); end
	    -- AU3 MARKER 1 - DO NOT REMOVE
		if ShowAmrothSilverPiece then _G.ASPWhere = 3; ShowHideAmrothSilverPiece(); end
	   	if ShowStarsofMerit then _G.SOMWhere = 3; ShowHideStarsofMerit(); end
	   	if ShowCentralGondorSilverPiece then _G.CGSPWhere = 3; ShowHideCentralGondorSilverPiece(); end
	   	if ShowGiftgiversBrand then _G.GGBWhere = 3; ShowHideGiftgiversBrand(); end
	   	if ShowAshOfGorgoroth then _G.AOGWhere = 3; ShowHideAshOfGorgoroth(); end
	   	-- AU3 MARKER 1 END
		elseif value == "this" then
		if _G.sFromCtr == "WI" then	ShowHideWallet();
		elseif _G.sFromCtr == "Money" then _G.MIWhere = 3; ShowHideMoney();
		elseif _G.sFromCtr == "DP" then	_G.DPWhere = 3; ShowHideDestinyPoints();
		elseif _G.sFromCtr == "SP" then	_G.SPWhere = 3; ShowHideShards();
		elseif _G.sFromCtr == "SM" then	_G.SMWhere = 3; ShowHideSkirmishMarks();
		elseif _G.sFromCtr == "MC" then	_G.MCWhere = 3; ShowHideMithrilCoins();
--		elseif _G.sFromCtr == "YT" then	_G.YTWhere = 3; ShowHideYuleTokens();
		elseif _G.sFromCtr == "HT" then	_G.HTWhere = 3; ShowHideHytboldTokens();
		elseif _G.sFromCtr == "MP" then	_G.MPWhere = 3; ShowHideMedallions();
		elseif _G.sFromCtr == "SL" then	_G.SLWhere = 3; ShowHideSeals();
		elseif _G.sFromCtr == "CP" then	_G.CPWhere = 3; ShowHideCommendations();
		elseif _G.sFromCtr == "BI" then	ShowHideBackpackInfos(); opt_BI:SetChecked( false );
		elseif _G.sFromCtr == "PI" then	ShowHidePlayerInfos(); opt_PI:SetChecked( false );
		elseif _G.sFromCtr == "EI" then	ShowHideEquipInfos(); opt_EI:SetChecked( false );
		elseif _G.sFromCtr == "DI" then	ShowHideDurabilityInfos(); opt_DI:SetChecked( false );
		elseif _G.sFromCtr == "TI" then	ShowHideTrackItems(); opt_TI:SetChecked( false );
		elseif _G.sFromCtr == "IF" then	ShowHideInfamy(); opt_IF:SetChecked( false );
		elseif _G.sFromCtr == "VT" then	ShowHideVault(); opt_VT:SetChecked( false );
		elseif _G.sFromCtr == "SS" then	ShowHideSharedStorage(); opt_SS:SetChecked( false );
		--elseif _G.sFromCtr == "BK" then ShowHideBank(); opt_BK:SetChecked( false );
		elseif _G.sFromCtr == "DN" then	ShowHideDayNight(); opt_DN:SetChecked( false );
		elseif _G.sFromCtr == "RP" then	ShowHideReputation(); opt_RP:SetChecked( false );
		elseif _G.sFromCtr == "LP" then	_G.LPWhere = 3; ShowHideLOTROPoints();
		elseif _G.sFromCtr == "PL" then	ShowHidePlayerLoc(); opt_PL:SetChecked( false );
		elseif _G.sFromCtr == "GT" then	ShowHideGameTime(); opt_GT:SetChecked( false );
		-- AU3 MARKER 2 - DO NOT REMOVE
		elseif _G.sFromCtr == "ASP" then	_G.ASPWhere = 3; ShowHideAmrothSilverPiece();
	   	elseif _G.sFromCtr == "SOM" then	_G.SOMWhere = 3; ShowHideStarsofMerit();
	   	elseif _G.sFromCtr == "CGSP" then	_G.CGSPWhere = 3; ShowHideCentralGondorSilverPiece();
	   	elseif _G.sFromCtr == "GGB" then	_G.GGBWhere = 3; ShowHideGiftgiversBrand();
	   	elseif _G.sFromCtr == "AOG" then	_G.AOGWhere = 3; ShowHideAshOfGorgoroth();
	   	-- AU3 MARKER 2 END
		end
	end

	TB["win"].MouseLeave();
end
--**^

--**v Match/Reset/Apply back color v**
function BGColor( cmd, value )
	if cmd == "reset" then
		if GLocale == "en" then tA, tR, tG, tB = 0.3, 0.3, 0.3, 0.3;
		else tA, tR, tG, tB = tonumber("0,3"), tonumber("0,3"), tonumber("0,3"), tonumber("0,3"); end
	elseif cmd == "match" then
		tA, tR, tG, tB = bcAlpha, bcRed, bcGreen, bcBlue;
	elseif cmd == "apply" then
		if _G.sFromCtr == "WI" then tA, tR, tG, tB = WIbcAlpha, WIbcRed, WIbcGreen, WIbcBlue;
		elseif _G.sFromCtr == "Money" then tA, tR, tG, tB = MIbcAlpha, MIbcRed, MIbcGreen, MIbcBlue;
		elseif _G.sFromCtr == "DP" then tA, tR, tG, tB = DPbcAlpha, DPbcRed, DPbcGreen, DPbcBlue;
		elseif _G.sFromCtr == "SP" then tA, tR, tG, tB = SPbcAlpha, SPbcRed, SPbcGreen, SPbcBlue;
		elseif _G.sFromCtr == "SM" then tA, tR, tG, tB = SMbcAlpha, SMbcRed, SMbcGreen, SMbcBlue;
		elseif _G.sFromCtr == "MC" then tA, tR, tG, tB = MCbcAlpha, MCbcRed, MCbcGreen, MCbcBlue;
--		elseif _G.sFromCtr == "YT" then tA, tR, tG, tB = YTbcAlpha, YTbcRed, YTbcGreen, YTbcBlue;
		elseif _G.sFromCtr == "HT" then tA, tR, tG, tB = HTbcAlpha, HTbcRed, HTbcGreen, HTbcBlue;
		elseif _G.sFromCtr == "MP" then tA, tR, tG, tB = MPbcAlpha, MPbcRed, MPbcGreen, MPbcBlue;
		elseif _G.sFromCtr == "SL" then tA, tR, tG, tB = SLbcAlpha, SLbcRed, SLbcGreen, SLbcBlue;
		elseif _G.sFromCtr == "CP" then tA, tR, tG, tB = CPbcAlpha, CPbcRed, CPbcGreen, CPbcBlue;
		elseif _G.sFromCtr == "BI" then tA, tR, tG, tB = BIbcAlpha, BIbcRed, BIbcGreen, BIbcBlue;
		elseif _G.sFromCtr == "PI" then tA, tR, tG, tB = PIbcAlpha, PIbcRed, PIbcGreen, PIbcBlue;
		elseif _G.sFromCtr == "EI" then tA, tR, tG, tB = EIbcAlpha, EIbcRed, EIbcGreen, EIbcBlue;
		elseif _G.sFromCtr == "DI" then tA, tR, tG, tB = DIbcAlpha, DIbcRed, DIbcGreen, DIbcBlue;
		elseif _G.sFromCtr == "TI" then tA, tR, tG, tB = TIbcAlpha, TIbcRed, TIbcGreen, TIbcBlue;
		elseif _G.sFromCtr == "IF" then tA, tR, tG, tB = IFbcAlpha, IFbcRed, IFbcGreen, IFbcBlue;
		elseif _G.sFromCtr == "VT" then tA, tR, tG, tB = VTbcAlpha, VTbcRed, VTbcGreen, VTbcBlue;
		elseif _G.sFromCtr == "SS" then tA, tR, tG, tB = SSbcAlpha, SSbcRed, SSbcGreen, SSbcBlue;
--		elseif _G.sFromCtr == "BK" then tA, tR, tG, tB = BKbcAlpha, BKbcRed, BKbcGreen, BKbcBlue;
		elseif _G.sFromCtr == "DN" then tA, tR, tG, tB = DNbcAlpha, DNbcRed, DNbcGreen, DNbcBlue;
		elseif _G.sFromCtr == "RP" then tA, tR, tG, tB = RPbcAlpha, RPbcRed, RPbcGreen, RPbcBlue;
		elseif _G.sFromCtr == "LP" then tA, tR, tG, tB = LPbcAlpha, LPbcRed, LPbcGreen, LPbcBlue;
		elseif _G.sFromCtr == "PL" then tA, tR, tG, tB = PLbcAlpha, PLbcRed, PLbcGreen, PLbcBlue;
		elseif _G.sFromCtr == "GT" then tA, tR, tG, tB = GTbcAlpha, GTbcRed, GTbcGreen, GTbcBlue;
		-- AU3 MARKER 3 - DO NOT REMOVE
		elseif _G.sFromCtr == "ASP" then tA, tR, tG, tB = ASPbcAlpha, ASPbcRed, ASPbcGreen, ASPbcBlue;
		elseif _G.sFromCtr == "SOM" then tA, tR, tG, tB = SOMbcAlpha, SOMbcRed, SOMbcGreen, SOMbcBlue;
		elseif _G.sFromCtr == "CGSP" then tA, tR, tG, tB = CGSPbcAlpha, CGSPbcRed, CGSPbcGreen, CGSPbcBlue;
		elseif _G.sFromCtr == "GGB" then tA, tR, tG, tB = GGBbcAlpha, GGBbcRed, GGBbcGreen, GGBbcBlue;
		elseif _G.sFromCtr == "AOG" then tA, tR, tG, tB = AOGbcAlpha, AOGbcRed, AOGbcGreen, AOGbcBlue;
		-- AU3 MARKER 3 END
		end
	end
	
	if value == "ctr" then
		WIbcAlpha, WIbcRed, WIbcGreen, WIbcBlue = tA, tR, tG, tB;
		if ShowWallet then WI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		MIbcAlpha, MIbcRed, MIbcGreen, MIbcBlue = tA, tR, tG, tB;
		if ShowMoney then MI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		DPbcAlpha, DPbcRed, DPbcGreen, DPbcBlue = tA, tR, tG, tB;
		if ShowDestinyPoints then DP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		SPbcAlpha, SPbcRed, SPbcGreen, SPbcBlue = tA, tR, tG, tB;
		if ShowShards then SP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		SMbcAlpha, SMbcRed, SMbcGreen, SMbcBlue = tA, tR, tG, tB;
		if ShowSkirmishMarks then SM["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		MCbcAlpha, MCbcRed, MCbcGreen, MCbcBlue = tA, tR, tG, tB;
		if ShowMithrilCoins then MC["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
--[[		YTbcAlpha, YTbcRed, YTbcGreen, YTbcBlue = tA, tR, tG, tB;
		if ShowYuleTokens then YT["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end--]]
		HTbcAlpha, HTbcRed, HTbcGreen, HTbcBlue = tA, tR, tG, tB;
		if ShowHytboldTokens then HT["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		MPbcAlpha, MPbcRed, MPbcGreen, MPbcBlue = tA, tR, tG, tB;
		if ShowMedallions then MP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		SLbcAlpha, SLbcRed, SLbcGreen, SLbcBlue = tA, tR, tG, tB;
		if ShowSeals then SL["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		CPbcAlpha, CPbcRed, CPbcGreen, CPbcBlue = tA, tR, tG, tB;
		if ShowCommendations then CP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		BIbcAlpha, BIbcRed, BIbcGreen, BIbcBlue = tA, tR, tG, tB;
		if ShowBagInfos then BI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		PIbcAlpha, PIbcRed, PIbcGreen, PIbcBlue = tA, tR, tG, tB;
		if ShowPlayerInfos then PI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		EIbcAlpha, EIbcRed, EIbcGreen, EIbcBlue = tA, tR, tG, tB;
		if ShowEquipInfos then EI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		DIbcAlpha, DIbcRed, DIbcGreen, DIbcBlue = tA, tR, tG, tB;
		if ShowDurabilityInfos then DI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		TIbcAlpha, TIbcRed, TIbcGreen, TIbcBlue = tA, tR, tG, tB;
		if ShowTrackItems then TI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		IFbcAlpha, IFbcRed, IFbcGreen, IFbcBlue = tA, tR, tG, tB;
		if ShowInfamy then IF["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		VTbcAlpha, VTbcRed, VTbcGreen, VTbcBlue = tA, tR, tG, tB;
		if ShowVault then VT["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		SSbcAlpha, SSbcRed, SSbcGreen, SSbcBlue = tA, tR, tG, tB;
		if ShowSharedStorage then SS["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
--		BKbcAlpha, BKbcRed, BKbcGreen, BKbcBlue = tA, tR, tG, tB;
--		if ShowBank then BK["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		DNbcAlpha, DNbcRed, DNbcGreen, DNbcBlue = tA, tR, tG, tB;
		if ShowDayNight then DN["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		RPbcAlpha, RPbcRed, RPbcGreen, RPbcBlue = tA, tR, tG, tB;
		if ShowReputation then RP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		LPbcAlpha, LPbcRed, LPbcGreen, LPbcBlue = tA, tR, tG, tB;
		if ShowLOTROPoints then LP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end

		PLbcAlpha, PLbcRed, PLbcGreen, PLbcBlue = tA, tR, tG, tB;
		if ShowPlayerLoc then PL["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		GTbcAlpha, GTbcRed, GTbcGreen, GTbcBlue = tA, tR, tG, tB;
		if ShowGameTime then GT["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );	end
		-- AU3 MARKER 4 - DO NOT REMOVE
		ASPbcAlpha, ASPbcRed, ASPbcGreen, ASPbcBlue = tA, tR, tG, tB;
		if AmrothSilverPiece then ASP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		SOMbcAlpha, SOMbcRed, SOMbcGreen, SOMbcBlue = tA, tR, tG, tB;
		if StarsofMerit then SOM["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		CGSPbcAlpha, CGSPbcRed, CGSPbcGreen, CGSPbcBlue = tA, tR, tG, tB;
		if CentralGondorSilverPiece then CGSP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		GGBbcAlpha, GGBbcRed, GGBbcGreen, GGBbcBlue = tA, tR, tG, tB;
		if GiftgiversBrand then GGB["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		AOGbcAlpha, AOGbcRed, AOGbcGreen, AOGbcBlue = tA, tR, tG, tB;
		if AshOfGorgoroth then AOG["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) ); end
		-- AU3 MARKER 4 END
	elseif value == "all" then
		BGColor( cmd, "ctr" );
		BGColor( cmd, "TitanBar" );
	elseif value == "this" then
		if _G.sFromCtr == "WI" then
			WI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "Money" then
			MIbcAlpha, MIbcRed, MIbcGreen, MIbcBlue = tA, tR, tG, tB;
			MI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "DP" then
			DPbcAlpha, DPbcRed, DPbcGreen, DPbcBlue = tA, tR, tG, tB;
			DP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "SP" then
			SPbcAlpha, SPbcRed, SPbcGreen, SPbcBlue = tA, tR, tG, tB;
			SP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "SM" then
			SMbcAlpha, SMbcRed, SMbcGreen, SMbcBlue = tA, tR, tG, tB;
			SM["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "MC" then
			MCbcAlpha, MCbcRed, MCbcGreen, MCbcBlue = tA, tR, tG, tB;
			MC["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
--[[		elseif _G.sFromCtr == "YT" then
			YTbcAlpha, YTbcRed, YTbcGreen, YTbcBlue = tA, tR, tG, tB;
			YT["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );--]]
		elseif _G.sFromCtr == "HT" then
			HTbcAlpha, HTbcRed, HTbcGreen, HTbcBlue = tA, tR, tG, tB;
			HT["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "MP" then
			MPbcAlpha, MPbcRed, MPbcGreen, MPbcBlue = tA, tR, tG, tB;
			MP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "SL" then
			SLbcAlpha, SLbcRed, SLbcGreen, SLbcBlue = tA, tR, tG, tB;
			SL["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "CP" then
			CPbcAlpha, CPbcRed, CPbcGreen, CPbcBlue = tA, tR, tG, tB;
			CP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "BI" then
			BIbcAlpha, BIbcRed, BIbcGreen, BIbcBlue = tA, tR, tG, tB;
			BI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "PI" then
			PIbcAlpha, PIbcRed, PIbcGreen, PIbcBlue = tA, tR, tG, tB;
			PI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "EI" then
			EIbcAlpha, EIbcRed, EIbcGreen, EIbcBlue = tA, tR, tG, tB;
			EI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "DI" then
			DIbcAlpha, DIbcRed, DIbcGreen, DIbcBlue = tA, tR, tG, tB;
			DI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "TI" then
			TIbcAlpha, TIbcRed, TIbcGreen, TIbcBlue = tA, tR, tG, tB;
			TI["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "IF" then
			IFbcAlpha, IFbcRed, IFbcGreen, IFbcBlue = tA, tR, tG, tB;
			IF["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "VT" then
			VTbcAlpha, VTbcRed, VTbcGreen, VTbcBlue = tA, tR, tG, tB;
			VT["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "SS" then
			SSbcAlpha, SSbcRed, SSbcGreen, SSbcBlue = tA, tR, tG, tB;
			SS["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
--[[		elseif _G.sFromCtr == "BK" then
			BKbcAlpha, BKbcRed, BKbcGreen, BKbcBlue = tA, tR, tG, tB;
			BK["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );]]
		elseif _G.sFromCtr == "DN" then
			DNbcAlpha, DNbcRed, DNbcGreen, DNbcBlue = tA, tR, tG, tB;
			DN["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "RP" then
			RPbcAlpha, RPbcRed, RPbcGreen, RPbcBlue = tA, tR, tG, tB;
			RP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "LP" then
			LPbcAlpha, LPbcRed, LPbcGreen, LPbcBlue = tA, tR, tG, tB;
			LP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );

		elseif _G.sFromCtr == "PL" then
			PLbcAlpha, PLbcRed, PLbcGreen, PLbcBlue = tA, tR, tG, tB;
			PL["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "GT" then
			GTbcAlpha, GTbcRed, GTbcGreen, GTbcBlue = tA, tR, tG, tB;
			GT["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		-- AU3 MARKER 5 - DO NOT REMOVE
		elseif _G.sFromCtr == "ASP" then
			ASPbcAlpha, ASPbcRed, ASPbcGreen, ASPbcBlue = tA, tR, tG, tB;
			ASP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "SOM" then
			SOMbcAlpha, SOMbcRed, SOMbcGreen, SOMbcBlue = tA, tR, tG, tB;
			SOM["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "CGSP" then
			CGSPbcAlpha, CGSPbcRed, CGSPbcGreen, CGSPbcBlue = tA, tR, tG, tB;
			CGSP["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "GGB" then
			GGBbcAlpha, GGBbcRed, GGBbcGreen, GGBbcBlue = tA, tR, tG, tB;
			GGB["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		elseif _G.sFromCtr == "AOG" then
			AOGbcAlpha, AOGbcRed, AOGbcGreen, AOGbcBlue = tA, tR, tG, tB;
			AOG["Ctr"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
		-- AU3 MARKER 5 END
		end
	elseif value == "TitanBar" then
		bcAlpha, bcRed, bcGreen, bcBlue = tA, tR, tG, tB;
		TB["win"]:SetBackColor( Turbine.UI.Color( tA, tR, tG, tB ) );
	end

	SaveSettings( true );
	TB["win"].MouseLeave();
end
--**^