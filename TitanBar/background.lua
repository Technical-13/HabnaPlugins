-- background.lua
-- Written by Habna
-- Rewritten by many


function frmBackground()
	sFrom = _G.sFromCtr;
	curColor = {};
	bClick = false;
	
	-- **v Set some window stuff v**
	wBackground = Turbine.UI.Lotro.Window();
	wBackground.Opacity = 1;
	wBackground:SetText( L["BWTitle"] );
	wBackground:SetSize( 400, 210 );
	wBackground:SetPosition( BGWLeft, BGWTop );
	wBackground:SetVisible( true );
	wBackground:SetWantsKeyEvents( true );
	--wBackground:SetZOrder( 2 );
	--wBackground:Activate();
	-- **^
	-- **v Check box - label v**
	local SetToAllCtr = Turbine.UI.Lotro.CheckBox();
	SetToAllCtr:SetParent( wBackground );
	SetToAllCtr:SetPosition( 40, wBackground:GetHeight() - 70 );
	SetToAllCtr:SetText( L["BWApply"] );
	SetToAllCtr:SetSize( SetToAllCtr:GetTextLength() * 8, 30 );
	SetToAllCtr:SetVisible( true );
	--SetToAllCtr:SetEnabled( false );
	SetToAllCtr:SetChecked( BGWToAll );
	SetToAllCtr:SetForeColor( Color["rustedgold"] );

	SetToAllCtr.CheckedChanged = function( sender, args )
		BGWToAll = SetToAllCtr:IsChecked();
		--if BGWToAll then ChangeColor(mColor); end
		settings.Background.A = BGWToAll;
		SaveSettings( false );
	end
	-- **^

	-- **v Currently set color - label v**
	local CurSetColorLbl = Turbine.UI.Label();
	CurSetColorLbl:SetParent( wBackground );
	CurSetColorLbl:SetPosition( 305, 35 );
	CurSetColorLbl:SetSize( 80, 30 );
	CurSetColorLbl:SetText( L["BWCurSetColor"] );
	CurSetColorLbl:SetVisible( true );
	CurSetColorLbl:SetForeColor( Color["rustedgold"] );
	-- **^
	-- **v Currently Selected color - box v**
	curSelColorBorder = Turbine.UI.Label();
	curSelColorBorder:SetParent( wBackground );
	curSelColorBorder:SetSize( 73, 73 );
	curSelColorBorder:SetPosition( 305, 60 );
	curSelColorBorder:SetBackColor( Color["white"] );

	curSelColor = Turbine.UI.Label();
	curSelColor:SetParent( curSelColorBorder );
	curSelColor:SetSize( 71, 71 );
	curSelColor:SetPosition( 1, 1 );
	
	-- Set backcolor window setting to currently control color
	if sFrom == "TitanBar" then curSelAlpha = bcAlpha; curSelRed = bcRed; curSelGreen = bcGreen; curSelBlue = bcBlue; end
	if sFrom == "WI" then curSelAlpha = WIbcAlpha; curSelRed = WIbcRed; curSelGreen = WIbcGreen; curSelBlue = WIbcBlue; end
	if sFrom == "Money" then curSelAlpha = MIbcAlpha; curSelRed = MIbcRed; curSelGreen = MIbcGreen; curSelBlue = MIbcBlue; end
	if sFrom == "DP" then curSelAlpha = DPbcAlpha; curSelRed = DPbcRed; curSelGreen = DPbcGreen; curSelBlue = DPbcBlue; end
	if sFrom == "SP" then curSelAlpha = SPbcAlpha; curSelRed = SPbcRed; curSelGreen = SPbcGreen; curSelBlue = SPbcBlue; end
	if sFrom == "SM" then curSelAlpha = SMbcAlpha; curSelRed = SMbcRed; curSelGreen = SMbcGreen; curSelBlue = SMbcBlue; end
	if sFrom == "MC" then curSelAlpha = MCbcAlpha; curSelRed = MCbcRed; curSelGreen = MCbcGreen; curSelBlue = MCbcBlue; end
	if sFrom == "YT" then curSelAlpha = YTbcAlpha; curSelRed = YTbcRed; curSelGreen = YTbcGreen; curSelBlue = YTbcBlue; end
	if sFrom == "HT" then curSelAlpha = HTbcAlpha; curSelRed = HTbcRed; curSelGreen = HTbcGreen; curSelBlue = HTbcBlue; end
	if sFrom == "MP" then curSelAlpha = MPbcAlpha; curSelRed = MPbcRed; curSelGreen = MPbcGreen; curSelBlue = MPbcBlue; end
	if sFrom == "SL" then curSelAlpha = SLbcAlpha; curSelRed = SLbcRed; curSelGreen = SLbcGreen; curSelBlue = SLbcBlue; end
	if sFrom == "CP" then curSelAlpha = CPbcAlpha; curSelRed = CPbcRed; curSelGreen = CPbcGreen; curSelBlue = CPbcBlue; end
	if sFrom == "BI" then curSelAlpha = BIbcAlpha; curSelRed = BIbcRed; curSelGreen = BIbcGreen; curSelBlue = BIbcBlue; end
	if sFrom == "PI" then curSelAlpha = PIbcAlpha; curSelRed = PIbcRed; curSelGreen = PIbcGreen; curSelBlue = PIbcBlue; end
	if sFrom == "EI" then curSelAlpha = EIbcAlpha; curSelRed = EIbcRed; curSelGreen = EIbcGreen; curSelBlue = EIbcBlue; end
	if sFrom == "DI" then curSelAlpha = DIbcAlpha; curSelRed = DIbcRed; curSelGreen = DIbcGreen; curSelBlue = DIbcBlue; end
	if sFrom == "TI" then curSelAlpha = TIbcAlpha; curSelRed = TIbcRed; curSelGreen = TIbcGreen; curSelBlue = TIbcBlue; end
	if sFrom == "IF" then curSelAlpha = IFbcAlpha; curSelRed = IFbcRed; curSelGreen = IFbcGreen; curSelBlue = IFbcBlue; end
	if sFrom == "VT" then curSelAlpha = VTbcAlpha; curSelRed = VTbcRed; curSelGreen = VTbcGreen; curSelBlue = VTbcBlue; end
	if sFrom == "SS" then curSelAlpha = SSbcAlpha; curSelRed = SSbcRed; curSelGreen = SSbcGreen; curSelBlue = SSbcBlue; end
	if sFrom == "BK" then curSelAlpha = BKbcAlpha; curSelRed = BKbcRed; curSelGreen = BKbcGreen; curSelBlue = BKbcBlue; end
	if sFrom == "DN" then curSelAlpha = DNbcAlpha; curSelRed = DNbcRed; curSelGreen = DNbcGreen; curSelBlue = DNbcBlue; end
	if sFrom == "RP" then curSelAlpha = RPbcAlpha; curSelRed = RPbcRed; curSelGreen = RPbcGreen; curSelBlue = RPbcBlue; end
	if sFrom == "LP" then curSelAlpha = LPbcAlpha; curSelRed = LPbcRed; curSelGreen = LPbcGreen; curSelBlue = LPbcBlue; end
	if sFrom == "PL" then curSelAlpha = PLbcAlpha; curSelRed = PLbcRed; curSelGreen = PLbcGreen; curSelBlue = PLbcBlue; end
	if sFrom == "GT" then curSelAlpha = GTbcAlpha; curSelRed = GTbcRed; curSelGreen = GTbcGreen; curSelBlue = GTbcBlue; end
	if sFrom == "ASP" then curSelAlpha =ASPbcAlpha; curSelRed = ASPbcRed; curSelGreen = ASPbcGreen; curSelBlue = ASPbcBlue; end
	if sFrom == "SOM" then curSelAlpha =SOMbcAlpha; curSelRed = SOMbcRed; curSelGreen = SOMbcGreen; curSelBlue = SOMbcBlue; end
	if sFrom == "CGSP" then curSelAlpha = CGSPbcAlpha; curSelRed = CGSPbcRed; curSelGreen = CGSPbcGreen; curSelBlue = CGSPbcBlue; end
	if sFrom == "GGB" then curSelAlpha = GGBbcAlpha; curSelRed = GGBbcRed; curSelGreen = GGBbcGreen; curSelBlue = GGBbcBlue; end
	if sFrom == "BB" then curSelAlpha = BBbcAlpha; curSelRed = BBbcRed; curSelGreen = BBbcGreen; curSelBlue = BBbcBlue; end
	if sFrom == "LAT" then curSelAlpha = LATbcAlpha; curSelRed = LATbcRed; curSelGreen = LATbcGreen; curSelBlue = LATbcBlue; end
	if sFrom == "MOE" then curSelAlpha = MOEbcAlpha; curSelRed = MOEbcRed; curSelGreen = MOEbcGreen; curSelBlue = MOEbcBlue; end
	if sFrom == "EOE" then curSelAlpha = EOEbcAlpha; curSelRed = EOEbcRed; curSelGreen = EOEbcGreen; curSelBlue = EOEbcBlue; end
	if sFrom == "FOS" then curSelAlpha = FOSbcAlpha; curSelRed = FOSbcRed; curSelGreen = FOSbcGreen; curSelBlue = FOSbcBlue; end
	if sFrom == "FFT" then curSelAlpha = FFTbcAlpha; curSelRed = FFTbcRed; curSelGreen = FFTbcGreen; curSelBlue = FFTbcBlue; end
	if sFrom == "FFAT" then curSelAlpha = FFATbcAlpha; curSelRed = FFATbcRed; curSelGreen = FFATbcGreen; curSelBlue = FFATbcBlue; end
	if sFrom == "SPL" then curSelAlpha = SPLbcAlpha; curSelRed = SPLbcRed; curSelGreen = SPLbcGreen; curSelBlue = SPLbcBlue; end
	if sFrom == "MST" then curSelAlpha = MSTbcAlpha; curSelRed = MSTbcRed; curSelGreen = MSTbcGreen; curSelBlue = MSTbcBlue; end
	if sFrom == "AS" then curSelAlpha = ASbcAlpha; curSelRed = ASbcRed; curSelGreen = ASbcGreen; curSelBlue = ASbcBlue; end
	curAlpha, curColor.R, curColor.G, curColor.B = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
	curSelColor:SetBackColor( Turbine.UI.Color( curSelAlpha, curSelRed, curSelGreen, curSelBlue ) );
	-- **^
	-- **v Save button v**
	local buttonSave = Turbine.UI.Lotro.Button();
	buttonSave:SetParent( wBackground );
	buttonSave:SetText( L["BWSave"] );
	buttonSave:SetSize( buttonSave:GetTextLength() * 10, 15 ); --Auto size with text length
	buttonSave:SetPosition( wBackground:GetWidth() - buttonSave:GetWidth() - 15 , wBackground:GetHeight() - 34 );
	buttonSave:SetVisible( true );

	buttonSave.Click = function( sender, args )
		BGWToAll = SetToAllCtr:IsChecked();
		
		UpdateBCvariable();
		
		ChangeColor(curSelColor:GetBackColor());
		SaveSettings( true );
	end
	-- **^
	-- Create alpha label and slider.
	local alphalabel = Turbine.UI.Label();
	alphalabel:SetParent( wBackground );
	alphalabel:SetText( L["BWAlpha"] .. " @ " .. ( curSelAlpha * 100 ) .. "%" );
	alphalabel:SetPosition( 40, 40 );
	alphalabel:SetSize( 242, 10 );
	alphalabel:SetBackColor( Color["black"] );
	alphalabel:SetTextAlignment( Turbine.UI.ContentAlignment.TopCenter );
	
	local alphaScrollBar = Turbine.UI.Lotro.ScrollBar();
	alphaScrollBar:SetParent( alphalabel );
	alphaScrollBar:SetPosition( 0, 0 );
	alphaScrollBar:SetSize( 242, 10 );
	alphaScrollBar:SetMinimum( 0 );
	alphaScrollBar:SetMaximum( 100 );
	alphaScrollBar:SetValue( curSelAlpha * 100);
	
	alphaScrollBar.ValueChanged = function(sender, args)
		curAlpha = alphaScrollBar:GetValue() / 100;
		alphalabel:SetText( L["BWAlpha"] .. " @ " .. ( curAlpha * 100 ) .. "%" );
		BGWToAll = SetToAllCtr:IsChecked();
		if bClick then ChangeColor(Turbine.UI.Color( curAlpha, curSelRed, curSelGreen, curSelBlue ));
		else ChangeColor(Turbine.UI.Color( curAlpha, curColor.R, curColor.G, curColor.B )); end
		curSelColor:SetBackColor( Turbine.UI.Color( curAlpha, curSelRed, curSelGreen, curSelBlue ) )
	end
	-- **^
	-- **v Default button v**
	local buttonDefault = Turbine.UI.Lotro.Button();
	buttonDefault:SetParent( wBackground );
	buttonDefault:SetPosition( 23, wBackground:GetHeight() - 34 );
	buttonDefault:SetText( L["BWDef"] );
	buttonDefault:SetSize( buttonDefault:GetTextLength() * 10, 15 ); --Auto size with text length
	buttonDefault:SetVisible( true );

	buttonDefault.Click = function(sender, args)
		BGWToAll = SetToAllCtr:IsChecked();
		alphaScrollBar:SetValue( 30 );
		curSelAlpha = ( 0.3 );
		curSelRed = ( 0.3 );
		curSelGreen = ( 0.3 );
		curSelBlue = ( 0.3 );
		curSelColor:SetBackColor( Turbine.UI.Color( curSelAlpha, curSelRed, curSelGreen, curSelBlue ) );
		ChangeColor(curSelColor:GetBackColor());
		bClick = true;
	end
	-- **^
	-- **v Black button v**
	local buttonBlack = Turbine.UI.Lotro.Button();
	buttonBlack:SetParent( wBackground );
	buttonBlack:SetPosition( buttonDefault:GetLeft() + buttonDefault:GetWidth() + 5, wBackground:GetHeight() - 34 );
	buttonBlack:SetText( L["BWBlack"] );
	buttonBlack:SetSize( buttonBlack:GetTextLength() * 10, 15 ); --Auto size with text length
	buttonBlack:SetVisible( true );

	buttonBlack.Click = function(sender, args)
		BGWToAll = SetToAllCtr:IsChecked();
		alphaScrollBar:SetValue ( 100 );
		curSelAlpha = ( 1 );
		curSelRed = ( 0 );
		curSelGreen = ( 0 );
		curSelBlue = ( 0 );
		curSelColor:SetBackColor( Turbine.UI.Color( curSelAlpha, curSelRed, curSelGreen, curSelBlue ) );
		ChangeColor(curSelColor:GetBackColor());
		bClick = true;
	end
	-- **^
	-- **v Transparent button v**
	local buttonTrans = Turbine.UI.Lotro.Button();
	buttonTrans:SetParent( wBackground );
	buttonTrans:SetPosition( buttonBlack:GetLeft() + buttonBlack:GetWidth() + 5, wBackground:GetHeight() - 34 );
	buttonTrans:SetText( L["BWTrans"] );
	buttonTrans:SetSize( buttonTrans:GetTextLength() * 10, 15 ); --Auto size with text length
	buttonTrans:SetVisible( true );

	buttonTrans.Click = function(sender, args)
		BGWToAll = SetToAllCtr:IsChecked();
		alphaScrollBar:SetValue ( 0 );
		curSelAlpha = ( 0 );
		curSelRed = ( 0 );
		curSelGreen = ( 0 );
		curSelBlue = ( 0 );
		curSelColor:SetBackColor( Turbine.UI.Color( curSelAlpha, curSelRed, curSelGreen, curSelBlue ) );
		ChangeColor(curSelColor:GetBackColor());
		bClick = true;
	end
	-- **^
	-- Create Colour Picker window/border.
	ColourPickerBorder = Turbine.UI.Label();
	ColourPickerBorder:SetParent( wBackground );
	ColourPickerBorder:SetPosition( 40, 60 );
	ColourPickerBorder:SetSize( 242, 73 );
	ColourPickerBorder:SetBackColor( Turbine.UI.Color( 1, .2, .2, .2  ) );
	ColourPickerBorder:SetVisible( true );
	
	-- Create Colour Picker.
	ColourPicker = Turbine.UI.Label();
	ColourPicker:SetParent( ColourPickerBorder );
	ColourPicker:SetPosition( 1, 1 );
	ColourPicker:SetSize( 240, 71 );
	ColourPicker:SetBackground( resources.Picker ); -- 0x41007e13 / resources.Picker.Background

	ColourPicker.GetColorFromCoord = function( sender, X, Y )
		-- Controls the visibility of the cursor window
		local blockXvalue = (round(ColourPicker:GetWidth()/3));
		local blockYvalue = (round(ColourPicker:GetHeight()/2));

		curColor = Turbine.UI.Color();
		--curColor.A = 1.0;
		local myX = X;
		local myY = Y;
		local curRed = 0;
		local curGreen = 0;
		local curBlue = 0;

		if (myX >= 0) and (myX < blockXvalue) then

			-- First color block = red to green
			curRed = 100-((100/blockXvalue)*myX);
			curGreen = (100/blockXvalue)*myX;
			curBlue = 0;

		elseif (myX >= blockXvalue) and (myX < (2*blockXvalue)) then

			-- Second color block = green to blue
			curRed = 0;
			curGreen = 100-((100/blockXvalue)*(myX - blockXvalue));
			curBlue = (100/blockXvalue)*(myX - blockXvalue);

		elseif (myX >= (2*blockXvalue)) then

			-- Third color block = blue to red
			curRed = (100/blockXvalue)*(myX - 2*blockXvalue);
			curGreen = 0;
			curBlue = 100-((100/blockXvalue)*(myX - 2*blockXvalue));

		end

		if myY <= blockYvalue then

			-- In the top block, so fade from black to full color
			curRed = curRed * (myY/blockYvalue);
			curGreen = curGreen * (myY/blockYvalue);
			curBlue = curBlue * (myY/blockYvalue);

		else

			-- In the bottom block, so fade from full color to white
			curRed = curRed + ((myY - blockYvalue) * ((100 - curRed)/(blockYvalue)));
			curGreen = curGreen + ((myY - blockYvalue) * ((100 - curGreen)/(blockYvalue)));
			curBlue = curBlue + ((myY - blockYvalue) * ((100 - curBlue)/(blockYvalue)));

		end

		curColor.A = curAlpha;
		curColor.R = (1/100) * curRed;
		curColor.G = (1/100) * curGreen;
		curColor.B = (1/100) * curBlue;

		return curColor;
	end

	ColourPicker.MouseMove = function( sender, args )
		mColor = ColourPicker:GetColorFromCoord( args.X, args.Y );
		BGWToAll = SetToAllCtr:IsChecked();
		ChangeColor(mColor);
	end
	
	ColourPicker.MouseClick = function( sender, args )
		curSelRed = curColor.R;
		curSelGreen = curColor.G;
		curSelBlue = curColor.B;
		curSelColor:SetBackColor( mColor );
		bClick = true;
	end
	
	wBackground.KeyDown = function( sender, args )
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			wBackground:Close();
		elseif ( args.Action == 268435635 ) or ( args.Action == 268435579 ) then -- Hide if F12 key is press or reposition UI
			wBackground:SetVisible( not wBackground:IsVisible() );
		end
	end

	wBackground.MouseUp = function( sender, args )
		settings.Background.L = string.format("%.0f", wBackground:GetLeft());
		settings.Background.T = string.format("%.0f", wBackground:GetTop());
		BGWLeft, BGWTop = wBackground:GetPosition();
		SaveSettings( false );
	end

	wBackground.Closing = function( sender, args )
		wBackground:SetWantsKeyEvents( false );
		TB["win"].MouseLeave();
		BGWToAll = SetToAllCtr:IsChecked();

		UpdateBCvariable();
		
		ChangeColor(curSelColor:GetBackColor());
		wBackground = nil;
		option_backcolor:SetEnabled( true );
	end
end

function UpdateBCvariable()
	curSelAlpha = curAlpha;
	if BGWToAll then
		bcAlpha, bcRed, bcGreen, bcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		WIbcAlpha, WIbcRed, WIbcGreen, WIbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		MIbcAlpha, MIbcRed, MIbcGreen, MIbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		DPbcAlpha, DPbcRed, DPbcGreen, DPbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		SPbcAlpha, SPbcRed, SPbcGreen, SPbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		SMbcAlpha, SMbcRed, SMbcGreen, SMbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		MCbcAlpha, MCbcRed, MCbcGreen, MCbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		HTbcAlpha, HTbcRed, HTbcGreen, HTbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		MPbcAlpha, MPbcRed, MPbcGreen, MPbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		SLbcAlpha, SLbcRed, SLbcGreen, SLbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		CPbcAlpha, CPbcRed, CPbcGreen, CPbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		BIbcAlpha, BIbcRed, BIbcGreen, BIbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		PIbcAlpha, PIbcRed, PIbcGreen, PIbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		EIbcAlpha, EIbcRed, EIbcGreen, EIbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		DIbcAlpha, DIbcRed, DIbcGreen, DIbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		TIbcAlpha, TIbcRed, TIbcGreen, TIbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		IFbcAlpha, IFbcRed, IFbcGreen, IFbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		VTbcAlpha, VTbcRed, VTbcGreen, VTbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		SSbcAlpha, SSbcRed, SSbcGreen, SSbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		BKbcAlpha, BKbcRed, BKbcGreen, BKbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		DNbcAlpha, DNbcRed, DNbcGreen, DNbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		RPbcAlpha, RPbcRed, RPbcGreen, RPbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		LPbcAlpha, LPbcRed, LPbcGreen, LPbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		PLbcAlpha, PLbcRed, PLbcGreen, PLbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		GTbcAlpha, GTbcRed, GTbcGreen, GTbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		YTbcAlpha, YTbcRed, YTbcGreen, YTbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		ASPbcAlpha, ASPbcRed, ASPbcGreen, ASPbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		SOMbcAlpha, SOMbcRed, SOMbcGreen, SOMbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		CGSPbcAlpha, CGSPbcRed, CGSPbcGreen, CGSPbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		GGBbcAlpha, GGBbcRed, GGBbcGreen, GGBbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		BBbcAlpha, BBbcRed, BBbcGreen, BBbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		LATbcAlpha, LATbcRed, LATbcGreen, LATbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		MOEbcAlpha, MOEbcRed, MOEbcGreen, MOEbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		EOEbcAlpha, EOEbcRed, EOEbcGreen, EOEbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		FOSbcAlpha, FOSbcRed, FOSbcGreen, FOSbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		FFTbcAlpha, FFTbcRed, FFTbcGreen, FFTbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		FFATbcAlpha, FFATbcRed, FFATbcGreen, FFATbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		SPLbcAlpha, SPLbcRed, SPLbcGreen, SPLbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		MSTbcAlpha, MSTbcRed, MSTbcGreen, MSTbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;
		ASbcAlpha, ASbcRed, ASbcGreen, ASbcBlue = curSelAlpha, curSelRed, curSelGreen, curSelBlue;

	else
		if sFrom == "TitanBar" then bcAlpha = curSelAlpha; bcRed = curSelRed; bcGreen = curSelGreen; bcBlue = curSelBlue; end
		if sFrom == "WI" then WIbcAlpha = curSelAlpha; WIbcRed = curSelRed; WIbcGreen = curSelGreen; WIbcBlue = curSelBlue; end
		if sFrom == "Money" then MIbcAlpha = curSelAlpha; MIbcRed = curSelRed; MIbcGreen = curSelGreen; MIbcBlue = curSelBlue; end
		if sFrom == "DP" then DPbcAlpha = curSelAlpha; DPbcRed = curSelRed; DPbcGreen = curSelGreen; DPbcBlue = curSelBlue; end
		if sFrom == "SP" then SPbcAlpha = curSelAlpha; SPbcRed = curSelRed; SPbcGreen = curSelGreen; SPbcBlue = curSelBlue; end
		if sFrom == "SM" then SMbcAlpha = curSelAlpha; SMbcRed = curSelRed; SMbcGreen = curSelGreen; SMbcBlue = curSelBlue; end
		if sFrom == "MC" then MCbcAlpha = curSelAlpha; MCbcRed = curSelRed; MCbcGreen = curSelGreen; MCbcBlue = curSelBlue; end
		if sFrom == "YT" then YTbcAlpha = curSelAlpha; YTbcRed = curSelRed; YTbcGreen = curSelGreen; YTbcBlue = curSelBlue; end
		if sFrom == "HT" then HTbcAlpha = curSelAlpha; HTbcRed = curSelRed; HTbcGreen = curSelGreen; HTbcBlue = curSelBlue; end
		if sFrom == "MP" then MPbcAlpha = curSelAlpha; MPbcRed = curSelRed; MPbcGreen = curSelGreen; MPbcBlue = curSelBlue; end
		if sFrom == "SL" then SLbcAlpha = curSelAlpha; SLbcRed = curSelRed; SLbcGreen = curSelGreen; SLbcBlue = curSelBlue; end
		if sFrom == "CP" then CPbcAlpha = curSelAlpha; CPbcRed = curSelRed; CPbcGreen = curSelGreen; CPbcBlue = curSelBlue; end
		if sFrom == "BI" then BIbcAlpha = curSelAlpha; BIbcRed = curSelRed; BIbcGreen = curSelGreen; BIbcBlue = curSelBlue; end
		if sFrom == "PI" then PIbcAlpha = curSelAlpha; PIbcRed = curSelRed; PIbcGreen = curSelGreen; PIbcBlue = curSelBlue; end
		if sFrom == "EI" then EIbcAlpha = curSelAlpha; EIbcRed = curSelRed; EIbcGreen = curSelGreen; EIbcBlue = curSelBlue; end
		if sFrom == "DI" then DIbcAlpha = curSelAlpha; DIbcRed = curSelRed; DIbcGreen = curSelGreen; DIbcBlue = curSelBlue; end
		if sFrom == "TI" then TIbcAlpha = curSelAlpha; TIbcRed = curSelRed; TIbcGreen = curSelGreen; TIbcBlue = curSelBlue; end
		if sFrom == "IF" then IFbcAlpha = curSelAlpha; IFbcRed = curSelRed; IFbcGreen = curSelGreen; IFbcBlue = curSelBlue; end
		if sFrom == "VT" then VTbcAlpha = curSelAlpha; VTbcRed = curSelRed; VTbcGreen = curSelGreen; VTbcBlue = curSelBlue; end
		if sFrom == "SS" then SSbcAlpha = curSelAlpha; SSbcRed = curSelRed; SSbcGreen = curSelGreen; SSbcBlue = curSelBlue; end
		if sFrom == "BK" then BKbcAlpha = curSelAlpha; BKbcRed = curSelRed; BKbcGreen = curSelGreen; BKbcBlue = curSelBlue; end
		if sFrom == "DN" then DNbcAlpha = curSelAlpha; DNbcRed = curSelRed; DNbcGreen = curSelGreen; DNbcBlue = curSelBlue; end
		if sFrom == "RP" then RPbcAlpha = curSelAlpha; RPbcRed = curSelRed; RPbcGreen = curSelGreen; RPbcBlue = curSelBlue; end
		if sFrom == "LP" then LPbcAlpha = curSelAlpha; LPbcRed = curSelRed; LPbcGreen = curSelGreen; LPbcBlue = curSelBlue; end
		if sFrom == "PL" then PLbcAlpha = curSelAlpha; PLbcRed = curSelRed; PLbcGreen = curSelGreen; PLbcBlue = curSelBlue; end
		if sFrom == "GT" then GTbcAlpha = curSelAlpha; GTbcRed = curSelRed; GTbcGreen = curSelGreen; GTbcBlue = curSelBlue; end
		if sFrom == "ASP" then ASPbcAlpha = curSelAlpha; ASPbcRed = curSelRed; ASPbcGreen = curSelGreen; ASPbcBlue = curSelBlue; end
		if sFrom == "SOM" then SOMbcAlpha = curSelAlpha; SOMbcRed = curSelRed; SOMbcGreen = curSelGreen; SOMbcBlue = curSelBlue; end
		if sFrom == "CGSP" then CGSPbcAlpha = curSelAlpha; CGSPbcRed = curSelRed; CGSPbcGreen = curSelGreen; CGSPbcBlue = curSelBlue; end
		if sFrom == "GGB" then GGBbcAlpha = curSelAlpha; GGBbcRed = curSelRed; GGBbcGreen = curSelGreen; GGBbcBlue = curSelBlue; end
		if sFrom == "BB" then BBbcAlpha = curSelAlpha; BBbcRed = curSelRed; BBbcGreen = curSelGreen; BBbcBlue = curSelBlue; end
		if sFrom == "LAT" then LATbcAlpha = curSelAlpha; LATbcRed = curSelRed; LATbcGreen = curSelGreen; LATbcBlue = curSelBlue; end
		if sFrom == "MOE" then MOEbcAlpha = curSelAlpha; MOEbcRed = curSelRed; MOEbcGreen = curSelGreen; MOEbcBlue = curSelBlue; end
		if sFrom == "EOE" then EOEbcAlpha = curSelAlpha; EOEbcRed = curSelRed; EOEbcGreen = curSelGreen; EOEbcBlue = curSelBlue; end
		if sFrom == "FOS" then FOSbcAlpha = curSelAlpha; FOSbcRed = curSelRed; FOSbcGreen = curSelGreen; FOSbcBlue = curSelBlue; end
		if sFrom == "FFT" then FFTbcAlpha = curSelAlpha; FFTbcRed = curSelRed; FFTbcGreen = curSelGreen; FFTbcBlue = curSelBlue; end
		if sFrom == "FFAT" then FFATbcAlpha = curSelAlpha; FFATbcRed = curSelRed; FFATbcGreen = curSelGreen; FFATbcBlue = curSelBlue; end
		if sFrom == "SPL" then SPLbcAlpha = curSelAlpha; SPLbcRed = curSelRed; SPLbcGreen = curSelGreen; SPLbcBlue = curSelBlue; end
		if sFrom == "MST" then MSTbcAlpha = curSelAlpha; MSTbcRed = curSelRed; MSTbcGreen = curSelGreen; MSTbcBlue = curSelBlue; end
		if sFrom == "AS" then ASbcAlpha = curSelAlpha; ASbcRed = curSelRed; ASbcGreen = curSelGreen; ASbcBlue = curSelBlue; end
	end
end