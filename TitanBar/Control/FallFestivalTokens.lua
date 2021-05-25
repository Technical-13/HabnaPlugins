-- Fall Festival Tokens.lua
-- Written by Duriel


_G.FFT = {}; -- Fall Festival Tokens table in _G

--**v Control of Fall Festival Tokens v**
FFT["Ctr"] = Turbine.UI.Control();
FFT["Ctr"]:SetParent( TB["win"] );
FFT["Ctr"]:SetMouseVisible( false );
FFT["Ctr"]:SetZOrder( 2 );
FFT["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
FFT["Ctr"]:SetBackColor( Turbine.UI.Color( FFTbcAlpha, FFTbcRed, FFTbcGreen, FFTbcBlue ) );
--**^
--**v Fall Festival Tokens & icon on TitanBar v**
FFT["Icon"] = Turbine.UI.Control();
FFT["Icon"]:SetParent( FFT["Ctr"] );
FFT["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
FFT["Icon"]:SetSize( 32, 32 );
FFT["Icon"]:SetBackground( WalletItem.FallFestivalTokens.Icon );-- in-game icon 32x32
--**^

FFT["Icon"].MouseMove = function( sender, args )
	FFT["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveFFTCtr(sender, args); end
end

FFT["Icon"].MouseLeave = function( sender, args )
	FFT["Lbl"].MouseLeave( sender, args );
end

FFT["Icon"].MouseClick = function( sender, args )
	FFT["Lbl"].MouseClick( sender, args );
end

FFT["Icon"].MouseDown = function( sender, args )
	FFT["Lbl"].MouseDown( sender, args );
end

FFT["Icon"].MouseUp = function( sender, args )
	FFT["Lbl"].MouseUp( sender, args );
end


FFT["Lbl"] = Turbine.UI.Label();
FFT["Lbl"]:SetParent( FFT["Ctr"] );
FFT["Lbl"]:SetFont( _G.TBFont );
FFT["Lbl"]:SetPosition( 0, 0 );
FFT["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
FFT["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

FFT["Lbl"].MouseMove = function( sender, args )
	FFT["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveFFTCtr(sender, args);
	else
		ShowToolTipWin( "FFT" );
	end
end

FFT["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

FFT["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFromCtr = "FFT";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

FFT["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		FFT["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

FFT["Lbl"].MouseUp = function( sender, args )
	FFT["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.FFTLocX = FFT["Ctr"]:GetLeft();
	settings.FallFestivalTokens.X = string.format("%.0f", _G.FFTLocX);
	_G.FFTLocY = FFT["Ctr"]:GetTop();
	settings.FallFestivalTokens.Y = string.format("%.0f", _G.FFTLocY);
	SaveSettings( false );
end
--**^

function MoveFFTCtr(sender, args)
	local CtrLocX = FFT["Ctr"]:GetLeft();
	local CtrWidth = FFT["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = FFT["Ctr"]:GetTop();
	local CtrHeight = FFT["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	FFT["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end