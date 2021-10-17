-- WalletWindow.lua
-- Written by Habna
-- Rewritten by Many


function frmWalletWindow()
	wcur = nil;
	import (AppClassD.."ComboBox");
	WIDD = HabnaPlugins.TitanBar.Class.ComboBox();

	-- **v Set some window stuff v**
	_G.wWI = Turbine.UI.Lotro.Window();
	if GLocale == "de" then w = 300; else w = 280; end
	_G.wWI:SetSize( w, 640 ); --280x260
    _G.wWI:SetPosition( WIWLeft, WIWTop );
	_G.wWI:SetText( L["MBag"] );
	_G.wWI:SetVisible( true );
	_G.wWI:SetWantsKeyEvents( true );
	--_G.wWI:SetZOrder( 2 );
	_G.wWI:Activate();

	_G.wWI.KeyDown = function( sender, args )
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			_G.wWI:Close();
		elseif ( args.Action == 268435635 ) or ( args.Action == 268435579 ) then -- Hide if F12 key or 'ctrl + \' is press
			_G.wWI:SetVisible( not _G.wWI:IsVisible() );
		elseif ( args.Action == 162 ) then --Enter key was pressed
			WIbutSave.Click( sender, args );
		end
	end

	_G.wWI.MouseDown = function( sender, args )
		if ( args.Button == Turbine.UI.MouseButton.Left ) then dragging = true; end
	end

	_G.wWI.MouseMove = function( sender, args )
		if dragging then if WIDD.dropped then WIDD:CloseDropDown(); end end
	end

	_G.wWI.MouseUp = function( sender, args )
		dragging = false;
		settings.Wallet.L = string.format("%.0f", _G.wWI:GetLeft());
		settings.Wallet.T = string.format("%.0f", _G.wWI:GetTop());
		WIWLeft, WIWTop = _G.wWI:GetPosition();
		SaveSettings( false );
	end

	_G.wWI.Closing = function( sender, args )
		WIDD.dropDownWindow:SetVisible(false);
		_G.wWI:SetWantsKeyEvents( false );
		_G.wWI = nil;
		_G.frmWI = nil;
	end
	-- **^
	
	local WIlbltext = Turbine.UI.Label();
	WIlbltext:SetParent( _G.wWI );
	WIlbltext:SetText( L["WIt"] );
	WIlbltext:SetPosition( 20, 35);
	WIlbltext:SetSize( _G.wWI:GetWidth()-40 , 35 );
	WIlbltext:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	WIlbltext:SetForeColor( Color["green"] );

   local WIFilterlbl = Turbine.UI.Label();
    WIFilterlbl:SetParent(_G.wWI);
    WIFilterlbl:SetSize(60,20);
    WIFilterlbl:SetPosition(20,75);
    WIFilterlbl:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    WIFilterlbl:SetText("Search:");
    local WIFiltertxt = Turbine.UI.Lotro.TextBox();
    WIFiltertxt:SetParent(_G.wWI);
    WIFiltertxt:SetFont(Turbine.UI.Lotro.Font.Verdana16);
    WIFiltertxt:SetMultiline(false);
    WIFiltertxt:SetPosition(80,75);
    WIFiltertxt:SetSize(_G.wWI:GetWidth() - 120, 20);
    WIFiltertxt.Text = "";
    WIFiltertxt.TextChanged = function()
        if WIFiltertxt.Text ~= WIFiltertxt:GetText() then
            WIFiltertxt.Text = WIFiltertxt:GetText();
            WIFilter(WIFiltertxt.Text);
        end
    end

   function WIFilter()
        filterText = string.lower(WIFiltertxt.Text);
        for i=1,WIListBox:GetItemCount() do
            local row = WIListBox:GetItem(i);
            if string.find(string.lower(row.curLbl:GetText()),filterText) == nil then
                row:SetHeight(0);
            else
                row:SetHeight(20);
            end
        end
    end

	-- **v Set the Wallet listbox v**
	WIListBox = Turbine.UI.ListBox();
	WIListBox:SetParent( _G.wWI );
	WIListBox:SetZOrder( 1 );
	WIListBox:SetPosition( 20, 115 );
	--WIListBox:SetPosition( 20, WIlbltext:GetTop()+WIlbltext:GetHeight()+5 );
	WIListBox:SetSize( _G.wWI:GetWidth()-40, _G.wWI:GetHeight()-95 );
	WIListBox:SetMaxItemsPerLine( 1 );
	WIListBox:SetOrientation( Turbine.UI.Orientation.Horizontal );
	--WIListBox:SetBackColor( Color["red"] ); --debug purpose
	-- **^
	-- **v Set the listbox scrollbar v**
	WIListBoxScrollBar = Turbine.UI.Lotro.ScrollBar();
	WIListBoxScrollBar:SetParent( WIListBox );
	WIListBoxScrollBar:SetZOrder( 1 );
	WIListBoxScrollBar:SetOrientation( Turbine.UI.Orientation.Vertical );
	WIListBox:SetVerticalScrollBar( WIListBoxScrollBar );
	WIListBoxScrollBar:SetPosition( WIListBox:GetWidth() - 10, 0 );
	WIListBoxScrollBar:SetSize( 12, WIListBox:GetHeight() );
	-- **^

	WIWCtr = Turbine.UI.Control();
	WIWCtr:SetParent( _G.wWI );
	WIWCtr:SetPosition( WIListBox:GetLeft(), WIListBox:GetTop() );
	WIWCtr:SetSize( WIListBox:GetWidth(), WIListBox:GetHeight() );
	WIWCtr:SetZOrder( 0 );
	WIWCtr:SetVisible( false );
	WIWCtr:SetBlendMode( 5 );
	WIWCtr:SetBackground( resources.WalletWindow );

	WIWCtr.MouseClick = function( sender, args )
		if ( args.Button == Turbine.UI.MouseButton.Right ) then
			WIDD.Cleanup();
			WIWCtr:SetVisible( false );
			WIWCtr:SetZOrder( 0 );
		end
	end
	
	WIlblFN = Turbine.UI.Label();
	WIlblFN:SetParent( WIWCtr );
	WIlblFN:SetPosition( 0 , WIWCtr:GetHeight()/2 - 40 );
	WIlblFN:SetSize( WIWCtr:GetWidth() , 15 );
	WIlblFN:SetFont( Turbine.UI.Lotro.Font.TrajanPro16 );
	WIlblFN:SetFontStyle( Turbine.UI.FontStyle.Outline );
	WIlblFN:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	WIlblFN:SetForeColor( Color["rustedgold"] );

	WICBO = { L["WIot"], L["WIiw"], L["WIds"] } --Combobox options
	
	-- **v Create drop down box v**
	WIDD:SetParent( WIWCtr );
	WIDD:SetSize( 170, 19 );
	WIDD:SetPosition( WIWCtr:GetWidth()/2 - WIDD:GetWidth()/2, WIlblFN:GetTop()+WIlblFN:GetHeight()+10 );

	WIDD.dropDownWindow:SetParent( WIWCtr );
	WIDD.dropDownWindow:SetPosition(WIDD:GetLeft(), WIDD:GetTop() + WIDD:GetHeight()+2);
	-- **^
	
	for k,v in pairs(WICBO) do WIDD:AddItem(v, k); end

	--** LOTRO Point box
	LPWCtr = Turbine.UI.Control();
	LPWCtr:SetParent( WIWCtr );
	LPWCtr:SetPosition( WIListBox:GetLeft(), WIDD:GetTop()+WIDD:GetHeight()+10 );
	LPWCtr:SetZOrder( 2 );
	--LPWCtr:SetBackColor( Color["red"] ); -- debug purpose

	local WIlblLOTROPTS = Turbine.UI.Label();
	WIlblLOTROPTS:SetParent( LPWCtr );
	--WIlblLOTROPTS:SetFont( Turbine.UI.Lotro.Font.TrajanPro14 );
	WIlblLOTROPTS:SetText( L["MLP"] );
	WIlblLOTROPTS:SetPosition( 0, 2 );
	WIlblLOTROPTS:SetSize( WIlblLOTROPTS:GetTextLength() * 7.5, 15 ); --Auto size with text lenght
	WIlblLOTROPTS:SetForeColor( Color["rustedgold"] );
	WIlblLOTROPTS:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
	--WIlblLOTROPTS:SetBackColor( Color["red"] ); -- debug purpose

	WItxtLOTROPTS = Turbine.UI.Lotro.TextBox();
	WItxtLOTROPTS:SetParent( LPWCtr );
	WItxtLOTROPTS:SetFont( Turbine.UI.Lotro.Font.TrajanPro14 );
	--WItxtLOTROPTS:SetText( _G.LOTROPTS );
	WItxtLOTROPTS:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
	WItxtLOTROPTS:SetPosition( WIlblLOTROPTS:GetLeft()+WIlblLOTROPTS:GetWidth()+5, WIlblLOTROPTS:GetTop()-2 );
	WItxtLOTROPTS:SetSize( 80, 20 );
	WItxtLOTROPTS:SetMultiline( false );
	if PlayerAlign == 2 then WItxtLOTROPTS:SetBackColor( Color["red"] ); end

	WItxtLOTROPTS.FocusGained = function( sender, args )
		WItxtLOTROPTS:SelectAll();
		WItxtLOTROPTS:SetWantsUpdates( true );
	end

	WItxtLOTROPTS.FocusLost = function( sender, args )
		WItxtLOTROPTS:SetWantsUpdates( false );
	end

	WItxtLOTROPTS.Update = function( sender, args )
		local parsed_text = WItxtLOTROPTS:GetText();

		if tonumber(parsed_text) == nil or string.find(parsed_text,"%.") ~= nil then
			WItxtLOTROPTS:SetText( string.sub( parsed_text, 1, string.len(parsed_text)-1 ) );
			return
		elseif string.len(parsed_text) > 1 and string.sub(parsed_text,1,1) == "0" then
			WItxtLOTROPTS:SetText( string.sub( parsed_text, 2 ) );
			return
		end
	end

	LPWCtr:SetSize( WIListBox:GetWidth(), 20 );
	--**

	WIbutSave = Turbine.UI.Lotro.Button();
	WIbutSave:SetParent( WIWCtr );
	WIbutSave:SetText( L["PWSave"] );
	WIbutSave:SetSize( WIbutSave:GetTextLength() * 10, 15 ); --Auto size with text length
	--WIbutSave:SetEnabled( true );

	WIbutSave.Click = function( sender, args )
		WIWCtr:SetVisible( false );
		WIWCtr:SetZOrder( 0 );

		SelIndex = WIDD:GetSelection();
		--Where-> 1: On TitanBar / 2: In wallet control tooltip / 3: Don't show
		if wcur == L["MGSC"] then
			_G.MIWhere = SelIndex; settings.Money.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowMoney then ShowHideMoney(); end
			else if ShowMoney then ShowHideMoney(); end end
		elseif wcur == L["MDP"] then
			_G.DPWhere = SelIndex; settings.DestinyPoints.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowDestinyPoints then ShowHideDestinyPoints(); end
			else if ShowDestinyPoints then ShowHideDestinyPoints(); end end
		elseif wcur == L["MSP"] then
			_G.SPWhere = SelIndex; settings.Shards.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowShards then ShowHideShards(); end
			else if ShowShards then ShowHideShards(); end end
		elseif wcur == L["MSM"] then
			_G.SMWhere = SelIndex; settings.SkirmishMarks.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowSkirmishMarks then ShowHideSkirmishMarks(); end
			else if ShowSkirmishMarks then ShowHideSkirmishMarks(); end end
		elseif wcur == L["MMC"] then
			_G.MCWhere = SelIndex; settings.MithrilCoins.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowMithrilCoins then ShowHideMithrilCoins(); end
			else if ShowMithrilCoins then ShowHideMithrilCoins(); end end
		elseif wcur == L["MYT"] then
			_G.YTWhere = SelIndex; settings.YuleToken.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowYuleToken then ShowHideYuleToken(); end
			else if ShowYuleToken then ShowHideYuleToken(); end end
		elseif wcur == L["MHT"] then
			_G.HTWhere = SelIndex; settings.HytboldTokens.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowHytboldTokens then ShowHideHytboldTokens(); end
			else if ShowHytboldTokens then ShowHideHytboldTokens(); end end
		elseif wcur == L["MMP"] then
			_G.MPWhere = SelIndex; settings.Medallions.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowMedallions then ShowHideMedallions(); end
			else if ShowMedallions then ShowHideMedallions(); end end
		elseif wcur == L["MSL"] then
			_G.SLWhere = SelIndex; settings.Seals.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowSeals then ShowHideSeals(); end
			else if ShowSeals then ShowHideSeals(); end end
		elseif wcur == L["MCP"] then
			_G.CPWhere = SelIndex; settings.Commendations.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowCommendations then ShowHideCommendations(); end
			else if ShowCommendations then ShowHideCommendations(); end end
		elseif wcur == L["MASP"] then
			_G.ASPWhere = SelIndex; settings.AmrothSilverPiece.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowAmrothSilverPiece then ShowHideAmrothSilverPiece(); end
			else if ShowAmrothSilverPiece then ShowHideAmrothSilverPiece(); end end
		elseif wcur == L["MSOM"] then
			_G.SOMWhere = SelIndex; settings.StarsofMerit.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowStarsofMerit then ShowHideStarsofMerit(); end
			else if ShowStarsofMerit then ShowHideStarsofMerit(); end end
		elseif wcur == L["MCGSP"] then
			_G.CGSPWhere = SelIndex; settings.CentralGondorSilverPiece.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowCentralGondorSilverPiece then ShowHideCentralGondorSilverPiece(); end
			else if ShowCentralGondorSilverPiece then ShowHideCentralGondorSilverPiece(); end end
		elseif wcur == L["MGGB"] then
			_G.GGBWhere = SelIndex; settings.GiftgiversBrand.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowGiftgiversBrand then ShowHideGiftgiversBrand(); end
			else if ShowGiftgiversBrand then ShowHideGiftgiversBrand(); end end
		elseif wcur == L["MBB"] then
			_G.BBWhere = SelIndex; settings.BingoBadge.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowBingoBadge then ShowHideBingoBadge(); end
			else if ShowBingoBadge then ShowHideBingoBadge(); end end
		elseif wcur == L["MLAT"] then
			_G.LATWhere = SelIndex; settings.AnniversaryToken.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowAnniversaryToken then ShowHideAnniversaryToken(); end
			else if ShowAnniversaryToken then ShowHideAnniversaryToken(); end end
		elseif wcur == L["MMOE"] then
			_G.MOEWhere = SelIndex; settings.MotesOfEnchantment.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowMotesOfEnchantment then ShowHideMotesOfEnchantment(); end
			else if ShowMotesOfEnchantment then ShowHideMotesOfEnchantment(); end end
		elseif wcur == L["MEOE"] then
			_G.EOEWhere = SelIndex; settings.EmbersOfEnchantment.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowEmbersOfEnchantment then ShowHideEmbersOfEnchantment(); end
			else if ShowEmbersOfEnchantment then ShowHideEmbersOfEnchantment(); end end
		elseif wcur == L["MFOS"] then
			_G.FOSWhere = SelIndex; settings.FigmentsOfSplendour.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowFigmentsOfSplendour then ShowHideFigmentsOfSplendour(); end
			else if ShowFigmentsOfSplendour then ShowHideFigmentsOfSplendour(); end end
		elseif wcur == L["MFFT"] then
			_G.FFTWhere = SelIndex; settings.FallFestivalToken.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowFallFestivalToken then ShowHideFallFestivalToken(); end
			else if ShowFallFestivalToken then ShowHideFallFestivalToken(); end end
		elseif wcur == L["MFFAT"] then
			_G.FFATWhere = SelIndex; settings.FarmersFaireToken.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowFarmersFaireToken then ShowHideFarmersFaireToken(); end
			else if ShowFarmersFaireToken then ShowHideFarmersFaireToken(); end end	
		elseif wcur == L["MSPL"] then
			_G.SPLWhere = SelIndex; settings.SpringLeaf.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowSpringLeaf then ShowHideSpringLeaf(); end
			else if ShowSpringLeaf then ShowHideSpringLeaf(); end end
		elseif wcur == L["MMST"] then
			_G.MSTWhere = SelIndex; settings.MidsummerToken.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowMidsummerToken then ShowHideMidsummerToken(); end
			else if ShowMidsummerToken then ShowHideMidsummerToken(); end end
		elseif wcur == L["MAS"] then
			_G.ASWhere = SelIndex; settings.AncientScript.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowAncientScript then ShowHideAncientScript(); end
			else if ShowAncientScript then ShowHideAncientScript(); end end		
		elseif wcur == L["MLP"] then
			_G.LPWhere = SelIndex; settings.LOTROPoints.W = string.format("%.0f", SelIndex);
			if SelIndex == 1 then if not ShowLOTROPoints then ShowHideLOTROPoints(); end
			else if ShowLOTROPoints then ShowHideLOTROPoints(); end end

			local parsed_text = WItxtLOTROPTS:GetText();

			if parsed_text == "" then
				WItxtLOTROPTS:SetText( "0" );
				WItxtLOTROPTS:Focus();
				return
			elseif parsed_text == _G.LOTROPTS then
				WItxtLOTROPTS:Focus();
				return
			end
			
			_G.LOTROPTS = WItxtLOTROPTS:GetText();
			if _G.LPWhere == 1 then UpdateLOTROPoints(); end
			SavePlayerLOTROPoints();
		end

		SaveSettings( false );
	end

	RefreshWIListBox();
end

function RefreshWIListBox()
	WIListBox:ClearItems();
	
	for i = 1, #MenuItem do		
		--**v Control of all data v**
		local WICtr = Turbine.UI.Control();
		WICtr:SetParent( WIListBox );
		WICtr:SetSize( WIListBox:GetWidth(), 20 );
		--**^
		
		-- Wallet currency name
		local curLbl = Turbine.UI.Label();
		WICtr.curLbl = curLbl;
		curLbl:SetParent( WICtr );
		curLbl:SetText( MenuItem[WalletOrder[i]] );
		curLbl:SetSize( WIListBox:GetWidth(), 20 );
		curLbl:SetPosition( 0, 0 );
		curLbl:SetFont( Turbine.UI.Lotro.Font.TrajanPro16 );
		curLbl:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
		curLbl:SetForeColor( Color["nicegold"] );
		--curLbl:SetBackColor( Color["blue"] ); --debug purpose

		curLbl.MouseClick = function( sender, args )
			if ( args.Button == Turbine.UI.MouseButton.Right ) then
				wcur = MenuItem[WalletOrder[i]];
				WIlblFN:SetText( wcur );
				LPWCtr:SetVisible( false );
				WIbutSave:SetPosition( WIWCtr:GetWidth()/2 - WIbutSave:GetWidth()/2, WIDD:GetTop()+WIDD:GetHeight()+10 );

				if wcur == L["MGSC"] then tw = _G.MIWhere; -- 
				elseif wcur == L["MDP"] then tw = _G.DPWhere; -- Destiny Points
				elseif wcur == L["MSP"] then tw = _G.SPWhere; -- Shards
				elseif wcur == L["MSM"] then tw = _G.SMWhere; -- Skirmish marks
				elseif wcur == L["MMC"] then tw = _G.MCWhere; -- Mithril Coins
				elseif wcur == L["MYT"] then tw = _G.YTWhere; -- Yule Tokens
				elseif wcur == L["MHT"] then tw = _G.HTWhere; -- Tokens of Hytbold
				elseif wcur == L["MMP"] then tw = _G.MPWhere; -- Medallions
				elseif wcur == L["MSL"] then tw = _G.SLWhere; -- Seals
				elseif wcur == L["MCP"] then tw = _G.CPWhere; -- Commendations
				elseif wcur == L["MLP"] then tw = _G.LPWhere; -- LOTRO Points
				LPWCtr:SetVisible( true ); -- LOTRO Points
				WItxtLOTROPTS:SetText( _G.LOTROPTS ); -- LOTRO Points
				WItxtLOTROPTS:Focus(); -- LOTRO Points
				WIbutSave:SetPosition( WIWCtr:GetWidth()/2 - WIbutSave:GetWidth()/2, LPWCtr:GetTop()+LPWCtr:GetHeight()+10); -- LOTRO Points
				elseif wcur == L["MASP"] then tw = _G.ASPWhere; -- Amroth Silver Piece
				elseif wcur == L["MSOM"] then tw = _G.SOMWhere; -- Stars of Merit
				elseif wcur == L["MCGSP"] then tw = _G.CGSPWhere; -- Central Gondor Silver Piece
				elseif wcur == L["MGGB"] then tw = _G.GGBWhere; -- Gift Giver's Brand
				elseif wcur == L["MBB"] then tw = _G.BBWhere; -- Bingo Badges
				elseif wcur == L["MLAT"] then tw = _G.LATWhere; -- Anniversary Tokens
				elseif wcur == L["MMOE"] then tw = _G.MOEWhere; -- Motes of Enchantment
				elseif wcur == L["MEOE"] then tw = _G.EOEWhere; -- Embers of Enchantment
				elseif wcur == L["MFOS"] then tw = _G.FOSWhere; -- Figments of Splendour
				elseif wcur == L["MFFT"] then tw = _G.FFTWhere; -- Fall Festival Token
				elseif wcur == L["MFFAT"] then tw = _G.FFATWhere; -- Farmers Faire Token
				elseif wcur == L["MSPL"] then tw = _G.SPLWhere; -- Spring Leaf
				elseif wcur == L["MMST"] then tw = _G.MSTWhere; -- Midsummer Token
				elseif wcur == L["MAS"] then tw = _G.ASWhere; -- Ancient Script
				end
				for k, v in pairs(WICBO) do if k == tonumber(tw) then WIDD:SetSelection(k); end end

				WIWCtr:SetVisible( true );
				WIWCtr:SetZOrder( 2 );
				WIWCtr:SetBackground( resources.WalletWindowRefresh );
			end
		end

		WIListBox:AddItem( WICtr );
	end
	WIFilter();
end