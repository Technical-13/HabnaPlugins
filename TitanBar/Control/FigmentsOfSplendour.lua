-- Figments of Splendour.lua
-- Written by Duriel


_G.FOS = {};

--**v Control of Figments of Splendour v**
FOS["Ctr"] = Turbine.UI.Control();
FOS["Ctr"]:SetParent( TB["win"] );
FOS["Ctr"]:SetMouseVisible( false );
FOS["Ctr"]:SetZOrder( 2 );
FOS["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
FOS["Ctr"]:SetBackColor( Turbine.UI.Color( FOSbcAlpha, FOSbcRed, FOSbcGreen, FOSbcBlue ) );
--**^
--**v Figments of Splendour & icon on TitanBar v**
FOS["Icon"] = Turbine.UI.Control();
FOS["Icon"]:SetParent( FOS["Ctr"] );
FOS["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
FOS["Icon"]:SetSize( 32, 32 );
FOS["Icon"]:SetBackground( WalletItem.FigmentsOfSplendour.Icon );-- in-game icon 32x32
--**^

FOS["Icon"].MouseMove = function( sender, args )
	FOS["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveFOSCtr(sender, args); end
end

FOS["Icon"].MouseLeave = function( sender, args )
	FOS["Lbl"].MouseLeave( sender, args );
end

FOS["Icon"].MouseClick = function( sender, args )
	FOS["Lbl"].MouseClick( sender, args );
end

FOS["Icon"].MouseDown = function( sender, args )
	FOS["Lbl"].MouseDown( sender, args );
end

FOS["Icon"].MouseUp = function( sender, args )
	FOS["Lbl"].MouseUp( sender, args );
end


FOS["Lbl"] = Turbine.UI.Label();
FOS["Lbl"]:SetParent( FOS["Ctr"] );
FOS["Lbl"]:SetFont( _G.TBFont );
FOS["Lbl"]:SetPosition( 0, 0 );
FOS["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
FOS["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

FOS["Lbl"].MouseMove = function( sender, args )
	FOS["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveFOSCtr(sender, args);
	else
		ShowToolTipWin( "FOS" );
	end
end

FOS["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

FOS["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFroFOStr = "FOS";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

FOS["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		FOS["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

FOS["Lbl"].MouseUp = function( sender, args )
	FOS["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.FOSLocX = FOS["Ctr"]:GetLeft();
	settings.FigmentsOfSplendour.X = string.format("%.0f", _G.FOSLocX);
	_G.FOSLocY = FOS["Ctr"]:GetTop();
	settings.FigmentsOfSplendour.Y = string.format("%.0f", _G.FOSLocY);
	SaveSettings( false );
end
--**^

function MoveFOSCtr(sender, args)
	local CtrLocX = FOS["Ctr"]:GetLeft();
	local CtrWidth = FOS["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = FOS["Ctr"]:GetTop();
	local CtrHeight = FOS["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	FOS["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end