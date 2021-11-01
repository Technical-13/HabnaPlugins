-- frmOptions.lua
-- written by Habna
-- rewritten by many


local WalletControls = { };
if WI ~= nil then WalletControls[ "WI" ] = { ShowHide = ShowWallet, Control = WI[ "Ctr" ] }; end
if MI ~= nil then WalletControls[ "MI" ] = { ShowHide = ShowMoney, Control = MI[ "Ctr" ] }; end
if DP ~= nil then WalletControls[ "DP" ] = { ShowHide = ShowDestinyPoints, Control = DP[ "Ctr" ] }; end
if SP ~= nil then WalletControls[ "SP" ] = { ShowHide = ShowShards, Control = SP[ "Ctr" ] }; end
if SM ~= nil then WalletControls[ "SM" ] = { ShowHide = ShowSkirmishMarks, Control = SM[ "Ctr" ] }; end
if MC ~= nil then WalletControls[ "MC" ] = { ShowHide = ShowMithrilCoins, Control = MC[ "Ctr" ] }; end
if YT ~= nil then WalletControls[ "YT" ] = { ShowHide = ShowYuleToken, Control = YT[ "Ctr" ] }; end
if HT ~= nil then WalletControls[ "HT" ] = { ShowHide = ShowHytboldTokens, Control = HT[ "Ctr" ] }; end
if MP ~= nil then WalletControls[ "MP" ] = { ShowHide = ShowMedallions, Control = MP[ "Ctr" ] }; end
if SL ~= nil then WalletControls[ "SL" ] = { ShowHide = ShowSeals, Control = SL[ "Ctr" ] }; end
if CP ~= nil then WalletControls[ "CP" ] = { ShowHide = ShowCommendations, Control = CP[ "Ctr" ] }; end
if BI ~= nil then WalletControls[ "BI" ] = { ShowHide = ShowBagInfos, Control = BI[ "Ctr" ] }; end
if PI ~= nil then WalletControls[ "PI" ] = { ShowHide = ShowPlayerInfos, Control = PI[ "Ctr" ] }; end
if EI ~= nil then WalletControls[ "EI" ] = { ShowHide = ShowEquipInfos, Control = EI[ "Ctr" ] }; end
if DI ~= nil then WalletControls[ "DI" ] = { ShowHide = ShowDurabilityInfos, Control = DI[ "Ctr" ] };end
if TI ~= nil then WalletControls[ "TI" ] = { ShowHide = ShowTrackItems, Control = TI[ "Ctr" ] }; end
if IF ~= nil then WalletControls[ "IF" ] = { ShowHide = ShowInfamy, Control = IF[ "Ctr" ] }; end
if VT ~= nil then WalletControls[ "VT" ] = { ShowHide = ShowVault, Control = VT[ "Ctr" ] }; end
if SS ~= nil then WalletControls[ "SS" ] = { ShowHide = ShowSharedStorage, Control = SS[ "Ctr" ] }; end
--if BK ~= nil then WalletControls[ "BK" ] = { ShowHide = ShowBank, Control = BK[ "Ctr" ] }; end
if DN ~= nil then WalletControls[ "DN" ] = { ShowHide = ShowDayNight, Control = DN[ "Ctr" ] }; end
if RP ~= nil then WalletControls[ "RP" ] = { ShowHide = ShowReputation, Control = RP[ "Ctr" ] }; end
if LP ~= nil then WalletControls[ "LP" ] = { ShowHide = ShowLOTROPoints, Control = LP[ "Ctr" ] }; end
if ASP ~= nil then WalletControls[ "ASP" ] = { ShowHide = ShowAmrothSilverPiece, Control = ASP[ "Ctr" ] }; end
if SOM ~= nil then WalletControls[ "SOM" ] = { ShowHide = ShowStarsofMerit, Control = SOM[ "Ctr" ] }; end
if CGSP ~= nil then WalletControls[ "CGSP" ] = { ShowHide = ShowCentralGondorSilverPiece, Control = CGSP[ "Ctr" ] }; end
if GGB ~= nil then WalletControls[ "GGB" ] = { ShowHide = ShowGiftgiversBrand, Control = GGB[ "Ctr" ] }; end
if BB ~= nil then WalletControls[ "BB" ] = { ShowHide = ShowBingoBadge, Control = BB[ "Ctr" ] }; end
if LAT ~= nil then WalletControls[ "LAT" ] = { ShowHide = ShowAnniversaryToken, Control = LAT[ "Ctr" ] }; end
if MOE ~= nil then WalletControls[ "MOE" ] = { ShowHide = ShowMotesOfEnchantment, Control = MOE[ "Ctr" ] }; end
if EOE ~= nil then WalletControls[ "EOE" ] = { ShowHide = ShowEmbersOfEnchantment, Control = EOE[ "Ctr" ] }; end
if FOS ~= nil then WalletControls[ "FOS" ] = { ShowHide = ShowFigmentsOfSplendour, Control = FOS[ "Ctr" ] }; end
if FFT ~= nil then WalletControls[ "FFT" ] = { ShowHide = ShowFallFestivalToken, Control = FFT[ "Ctr" ] }; end
if FFAT ~= nil then WalletControls[ "FFAT" ] = { ShowHide = ShowFarmersFaireToken, Control = FFAT[ "Ctr" ] }; end
if SPL ~= nil then WalletControls[ "SPL" ] = { ShowHide = ShowSpringLeaf, Control = SPL[ "Ctr" ] }; end
if MST ~= nil then WalletControls[ "MST" ] = { ShowHide = ShowMidsummerToken, Control = MST[ "Ctr" ] }; end
if AS ~= nil then WalletControls[ "AS" ] = { ShowHide = ShowAncientScript, Control = AS[ "Ctr" ] }; end
if BOT ~= nil then WalletControls[ "BOT" ] = { ShowHide = ShowBadgeOfTaste, Control = BOT[ "Ctr" ] }; end
if BOD ~= nil then WalletControls[ "BOD" ] = { ShowHide = ShowBadgeOfDishonour, Control = BOD[ "Ctr" ] }; end

tFonts = { "Arial12", "TrajanPro13", "TrajanPro14", "TrajanPro15", "TrajanPro16", "TrajanPro18", "TrajanPro19", "TrajanPro20", "TrajanPro21",
			"TrajanPro23", "TrajanPro24", "TrajanPro25", "TrajanPro26", "TrajanPro28", "TrajanProBold16", "TrajanProBold22", "TrajanProBold24",
			"TrajanProBold25", "TrajanProBold30", "TrajanProBold36", "Verdana10", "Verdana12", "Verdana14", "Verdana16",
			"Verdana18", "Verdana20", "Verdana22", "Verdana23" };

tFontsF = { "1107296297", "1107296258", "1107296268", "1107296263", "1107296267", "1107296265", "1107296309", "1107296256", "1107296266", "1107296269",
			"1107296277", "1107296326", "1107296293", "1107296294", "1107296298", "1107296275",	"1107296292", "1107296274", "1107296273", "1107296276",
			"1107296279", "1107296264", "1107296257", "1107296280", "1107296281", "1107296278", "1107296282", "1107296283" };

aAutoHide = { L[ "OPAHD" ], L[ "OPAHE" ], L[ "OPAHC" ] };

aIconSize = { L[ "OPISS" ], L[ "OPISL" ] }; --Small & Large
--aIconSize = { L[ "OPISS" ], L[ "OPISM" ], L[ "OPISL" ] }; --Small, Medium & Large

function frmOptions()
	TB["win"].MouseLeave();
	--itValue, tValue = 32, TBHeight;

	import ( AppClassD .. "ComboBox" );
	FontDD = HabnaPlugins.TitanBar.Class.ComboBox();

	-- **v Set some window stuff v**
	wOptions = Turbine.UI.Lotro.Window()
	wOptions:SetSize( 275, 275 );
	wOptions:SetPosition( OPWLeft, OPWTop );
	wOptions:SetText( L[ "OPWTitle" ] );
	wOptions:SetWantsKeyEvents( true );
	wOptions:SetVisible( true );
	--wOptions:SetZOrder( 2 );
	--wOptions:Activate();

	wOptions.KeyDown = function( sender, args )
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			wOptions:Close();
		elseif ( args.Action == 268435635 ) or ( args.Action == 268435579 ) then -- Hide if F12 key is press or reposition UI
			wOptions:SetVisible( not wOptions:IsVisible() );
		end
	end

	wOptions.MouseDown = function( sender, args )
		if ( args.Button == Turbine.UI.MouseButton.Left ) then dragging = true; end
	end

	wOptions.MouseMove = function( sender, args )
		if dragging then
			if FontDD.dropped then FontDD:CloseDropDown(); end
			if AutoDD.dropped then AutoDD:CloseDropDown(); end
		end
	end

	wOptions.MouseUp = function( sender, args )
		dragging = false;
		settings.Options.L = string.format( "%.0f", wOptions:GetLeft() );
		settings.Options.T = string.format( "%.0f", wOptions:GetTop() );
		OPWLeft, OPWTop = wOptions:GetPosition();
		SaveSettings( false );
	end

	wOptions.Closing = function( sender, args ) -- Function for the Upper right X icon
		FontDD.dropDownWindow:SetVisible( false );
		AutoDD.dropDownWindow:SetVisible( false );
		wOptions:SetWantsKeyEvents( false );
		if TBAutoHide == L[ "OPAHE" ] then windowOpen = true; TB[ "win" ].MouseLeave(); end
		wOptions = nil;
		opt_options:SetEnabled( true );
	end
	-- **^
	
	-- **v TitanBar Height - label v**
	local lblHeight = Turbine.UI.Label();
	lblHeight:SetParent( wOptions );
	lblHeight:SetPosition( 25, 40 );
	lblHeight:SetText( L[ "OPHText" ] );
	lblHeight:SetSize( wOptions:GetWidth() - 25, 15 );
	lblHeight:SetForeColor( Color[ "rustedgold" ] );
	-- **^
	-- **v Set the scrollbar v**
	wScrollBar = Turbine.UI.Lotro.ScrollBar();
	wScrollBar:SetParent( wOptions );
	wScrollBar:SetPosition( lblHeight:GetLeft(), lblHeight:GetTop() + 15 );
	wScrollBar:SetSize( wOptions:GetWidth() - 75, 10 );
	wScrollBar:SetOrientation( Turbine.UI.Orientation.Horizontal );
	wScrollBar:SetMinimum( 10 );
	wScrollBar:SetMaximum( 100 );
	wScrollBar:SetValue( TBHeight );

	wScrollBar.ValueChanged = function( sender, args )
		local tValue = wScrollBar:GetValue();
		TB[ "win" ]:SetHeight( tValue );
		lblHeightV:SetText( tValue );
		TBHeight = tValue;
		settings.TitanBar.H = string.format( "%.0f", tValue );
		SaveSettings( false );

		--Size Control if height is less 30px & stop at 30px if more 30px
		ResizeControls();
	end
	-- **^
	-- **v TitanBar Height Value - label v**
	lblHeightV = Turbine.UI.Label();
	lblHeightV:SetParent( wOptions );
	lblHeightV:SetPosition( wScrollBar:GetLeft() + wScrollBar:GetWidth() + 5, wScrollBar:GetTop() );
	lblHeightV:SetText( wScrollBar:GetValue() );
	lblHeightV:SetSize( 20, 15 );
	lblHeightV:SetForeColor( Color["rustedgold"] );
	-- **^

	-- **v TitanBar Font - label & DropDown box v**
	lblFont = Turbine.UI.Label();
	lblFont:SetParent( wOptions );
	lblFont:SetPosition( 25, wScrollBar:GetTop() + 20 );
	lblFont:SetText( L[ "OPFText" ] );
	lblFont:SetSize( wOptions:GetWidth() - 25, 15 );
	lblFont:SetForeColor( Color[ "rustedgold" ] );
	
	FontDD:SetParent( wOptions );
	FontDD:SetSize( 159, 19 );
	FontDD:SetPosition( 25, lblFont:GetTop() + 15 );
	FontDD.label:SetText( TBFontT );

	FontDD.dropDownWindow:SetParent( wOptions );
	FontDD.dropDownWindow:SetPosition( FontDD:GetLeft(), FontDD:GetTop() + FontDD:GetHeight() + 2 );

	for k,v in pairs( tFonts ) do
		FontDD:AddItem( v, k );
		if v == TBFontT then FontDD:SetSelection( k ); end
	end

	FontDD.ItemChanged = function( sender, args ) -- The event that's executed when a menu item is clicked.
		settings.TitanBar.ZT = "Font";
		settings.TitanBar.F = tFontsF[ args.selection ];
		settings.TitanBar.T = FontDD.label:GetText();
		SaveSettings( false );
		ReloadTitanBar();
	end
	-- **^

	-- **v TitanBar Auto hide - label & DropDown box v**
	lblAuto = Turbine.UI.Label();
	lblAuto:SetParent( wOptions );
	lblAuto:SetPosition( 25, FontDD:GetTop() + 30 );
	lblAuto:SetText( L[ "OPAText" ] );
	lblAuto:SetSize( wOptions:GetWidth() - 25, 15 );
	lblAuto:SetForeColor( Color[ "rustedgold" ] );
	
	AutoDD = HabnaPlugins.TitanBar.Class.ComboBox();
	AutoDD:SetParent( wOptions );
	AutoDD:SetSize( 159, 19 );
	AutoDD:SetPosition( 25, lblAuto:GetTop() + 15 );
	AutoDD.label:SetText( TBFontT );

	AutoDD.dropDownWindow:SetParent( wOptions );
	AutoDD.dropDownWindow:SetPosition( AutoDD:GetLeft(), AutoDD:GetTop() + AutoDD:GetHeight() + 2 );

	for k,v in pairs( aAutoHide ) do
		AutoDD:AddItem( v, k );
		if v == TBAutoHide then AutoDD:SetSelection( k ); end
	end

	AutoDD.ItemChanged = function( sender, args ) -- The event that's executed when a menu item is clicked.
		TBAutoHide = AutoDD.label:GetText();
		settings.Options.H = TBAutoHide;
		if TBAutoHide == L[ "OPAHE" ] then windowOpen = true; AutoHideCtr:SetWantsUpdates( true );
		elseif TBAutoHide == L[ "OPAHD" ] or TBAutoHide == L[ "OPAHC" ] then windowOpen = false; AutoHideCtr:SetWantsUpdates( true ); end
		SaveSettings( false );
	end
	-- **^
	-- **v TitanBar Icon Size - label & DropDown box v**
	lblIconSize = Turbine.UI.Label();
	lblIconSize:SetParent( wOptions );
	lblIconSize:SetPosition( 25, AutoDD:GetTop() + 30 );
	lblIconSize:SetText( L[ "OPIText" ] );
	lblIconSize:SetSize( wOptions:GetWidth() - 25, 15 );
	lblIconSize:SetForeColor( Color[ "rustedgold" ] );
	
	wIconScrollBar = Turbine.UI.Lotro.ScrollBar();
	wIconScrollBar:SetParent( wOptions );
	wIconScrollBar:SetPosition( lblIconSize:GetLeft(), lblIconSize:GetTop() + 15 );
	wIconScrollBar:SetSize( wOptions:GetWidth() - 75, 10 );
	wIconScrollBar:SetOrientation( Turbine.UI.Orientation.Horizontal );
	wIconScrollBar:SetMinimum( 16 );
	wIconScrollBar:SetMaximum( 32 );
	wIconScrollBar:SetValue( TBIconSize );

	wIconScrollBar.ValueChanged = function( sender, args )
		local itValue = wIconScrollBar:GetValue();
		lblIconSizeV:SetText( itValue );
		TBIconSize = itValue;
		settings.Options.I = string.format( "%.0f", itValue );
		SaveSettings( false );
		ResizeIcon();
	end
	-- **^
	-- **v TitanBar Icon Size Value - label v**
	lblIconSizeV = Turbine.UI.Label();
	lblIconSizeV:SetParent( wOptions );
	lblIconSizeV:SetPosition( wIconScrollBar:GetLeft() + wIconScrollBar:GetWidth() + 5, wIconScrollBar:GetTop() );
	lblIconSizeV:SetText( wIconScrollBar:GetValue() );
	lblIconSizeV:SetSize( 20, 15 );
	lblIconSizeV:SetForeColor( Color[ "rustedgold" ] );
	-- **^
	-- **v Set TitanBar at Top of screen - Check box v**
	local TBTopCB = Turbine.UI.Lotro.CheckBox();
	TBTopCB:SetParent( wOptions );
	TBTopCB:SetPosition( wIconScrollBar:GetLeft(), wIconScrollBar:GetTop() + 20 );
	TBTopCB:SetText( L["OPTBTop"] );
	TBTopCB:SetSize( TBTopCB:GetTextLength() * 8.5, 20 );
	--TBTopCB:SetVisible( true );
	--TBTopCB:SetEnabled( false );
	TBTopCB:SetChecked( TBTop );
	TBTopCB:SetForeColor( Color[ "rustedgold" ] );

	TBTopCB.CheckedChanged = function( sender, args )
		TBTop = TBTopCB:IsChecked();
		settings.TitanBar.D = TBTop;
		SaveSettings( false );
		if TBTop then TB[ "win" ]:SetTop( 0 );
		else TB[ "win" ]:SetTop( screenHeight - TBHeight ); end
		if TBAutoHide == L[ "OPAHE" ] then windowOpen = true; AutoHideCtr:SetWantsUpdates( true );
		elseif TBAutoHide == L[ "OPAHD" ] or TBAutoHide == L[ "OPAHC" ] then windowOpen = false; AutoHideCtr:SetWantsUpdates( true ); end
	end
	-- **^
	
	local PILayoutCB = Turbine.UI.Lotro.CheckBox();
	PILayoutCB:SetParent( wOptions );
	PILayoutCB:SetText( L[ "Layout" ] );
	PILayoutCB:SetPosition(TBTopCB:GetLeft(), TBTopCB:GetTop()+20);
	PILayoutCB:SetSize( PILayoutCB:GetTextLength() * 8.5, 30 ); --Auto size with text length
	PILayoutCB:SetChecked( PILayout );
	PILayoutCB:SetForeColor( Color[ "rustedgold" ] );
	
	PILayoutCB.CheckedChanged = function( sender, args )
		PILayout = PILayoutCB:IsChecked();
		settings.PlayerInfos.Layout = PILayout;
		SaveSettings( false );
		ReloadTitanBar();
	end
end

function ResizeControls()
	--Resize control height if control is visible
	CTRHeight = TBHeight;

	if TBHeight > 30 then CTRHeight = 30; end--Set control maximum height
	
	for ItemID, ShowItem in pairs( WalletControls ) do
		if ShowItem.ShowHide then ShowItem.Control:SetHeight( CTRHeight ); end
		AjustIcon( ItemID );
	end 

	if ShowPlayerLoc then PL[ "Ctr" ]:SetHeight( CTRHeight ); PL[ "Lbl" ]:SetHeight( CTRHeight ); end
	if ShowGameTime  then GT[ "Ctr" ]:SetHeight( CTRHeight );	GT[ "Lbl" ]:SetHeight( CTRHeight ); end
end

function ResizeIcon()
	for ItemID, ShowItem in pairs( WalletControls ) do
		if ShowItem.ShowHide then AjustIcon( ItemID ); end
	end
end