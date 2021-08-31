-- Farmers Faire Token.lua
-- Written by Duriel


_G.FFAT = {}; -- Farmers Faire Token table in _G

--**v Control of Farmers Faire Token v**
FFAT["Ctr"] = Turbine.UI.Control();
FFAT["Ctr"]:SetParent( TB["win"] );
FFAT["Ctr"]:SetMouseVisible( false );
FFAT["Ctr"]:SetZOrder( 2 );
FFAT["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
FFAT["Ctr"]:SetBackColor( Turbine.UI.Color( FFATbcAlpha, FFATbcRed, FFATbcGreen, FFATbcBlue ) );
--**^
--**v Farmers Faire Token & icon on TitanBar v**
FFAT["Icon"] = Turbine.UI.Control();
FFAT["Icon"]:SetParent( FFAT["Ctr"] );
FFAT["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
FFAT["Icon"]:SetSize( 32, 32 );
FFAT["Icon"]:SetBackground( WalletItem.FarmersFaireToken.Icon );-- in-game icon 32x32
--**^

FFAT["Icon"].MouseMove = function( sender, args )
	FFAT["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveFFATCtr(sender, args); end
end

FFAT["Icon"].MouseLeave = function( sender, args )
	FFAT["Lbl"].MouseLeave( sender, args );
end

FFAT["Icon"].MouseClick = function( sender, args )
	FFAT["Lbl"].MouseClick( sender, args );
end

FFAT["Icon"].MouseDown = function( sender, args )
	FFAT["Lbl"].MouseDown( sender, args );
end

FFAT["Icon"].MouseUp = function( sender, args )
	FFAT["Lbl"].MouseUp( sender, args );
end


FFAT["Lbl"] = Turbine.UI.Label();
FFAT["Lbl"]:SetParent( FFAT["Ctr"] );
FFAT["Lbl"]:SetFont( _G.TBFont );
FFAT["Lbl"]:SetPosition( 0, 0 );
FFAT["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
FFAT["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

FFAT["Lbl"].MouseMove = function( sender, args )
	FFAT["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveFFATCtr(sender, args);
	else
		ShowToolTipWin( "FFAT" );
	end
end

FFAT["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

FFAT["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFromCtr = "FFAT";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

FFAT["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		FFAT["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

FFAT["Lbl"].MouseUp = function( sender, args )
	FFAT["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.FFATLocX = FFAT["Ctr"]:GetLeft();
	settings.FarmersFaireToken.X = string.format("%.0f", _G.FFATLocX);
	_G.FFATLocY = FFAT["Ctr"]:GetTop();
	settings.FarmersFaireToken.Y = string.format("%.0f", _G.FFATLocY);
	SaveSettings( false );
end
--**^

function MoveFFATCtr(sender, args)
	local CtrLocX = FFAT["Ctr"]:GetLeft();
	local CtrWidth = FFAT["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = FFAT["Ctr"]:GetTop();
	local CtrHeight = FFAT["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	FFAT["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end