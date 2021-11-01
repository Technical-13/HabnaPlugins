-- Badge of Taste.lua
-- Written by b414213562


_G.BOT = {}; -- Badge of Taste table in _G

--**v Control of Badge of Taste v**
BOT["Ctr"] = Turbine.UI.Control();
BOT["Ctr"]:SetParent( TB["win"] );
BOT["Ctr"]:SetMouseVisible( false );
BOT["Ctr"]:SetZOrder( 2 );
BOT["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
BOT["Ctr"]:SetBackColor( Turbine.UI.Color( BOTbcAlpha, BOTbcRed, BOTbcGreen, BOTbcBlue ) );
--**^
--**v Badge of Taste & icon on TitanBar v**
BOT["Icon"] = Turbine.UI.Control();
BOT["Icon"]:SetParent( BOT["Ctr"] );
BOT["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
BOT["Icon"]:SetSize( 32, 32 );
BOT["Icon"]:SetBackground( WalletItem.BadgeOfTaste.Icon );-- in-game icon 32x32
--**^

BOT["Icon"].MouseMove = function( sender, args )
	BOT["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveBOTCtr(sender, args); end
end

BOT["Icon"].MouseLeave = function( sender, args )
	BOT["Lbl"].MouseLeave( sender, args );
end

BOT["Icon"].MouseClick = function( sender, args )
	BOT["Lbl"].MouseClick( sender, args );
end

BOT["Icon"].MouseDown = function( sender, args )
	BOT["Lbl"].MouseDown( sender, args );
end

BOT["Icon"].MouseUp = function( sender, args )
	BOT["Lbl"].MouseUp( sender, args );
end


BOT["Lbl"] = Turbine.UI.Label();
BOT["Lbl"]:SetParent( BOT["Ctr"] );
BOT["Lbl"]:SetFont( _G.TBFont );
BOT["Lbl"]:SetPosition( 0, 0 );
BOT["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
BOT["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

BOT["Lbl"].MouseMove = function( sender, args )
	BOT["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveBOTCtr(sender, args);
	else
		ShowToolTipWin( "BOT" );
	end
end

BOT["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

BOT["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFromCtr = "BOT";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

BOT["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		BOT["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

BOT["Lbl"].MouseUp = function( sender, args )
	BOT["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.BOTLocX = BOT["Ctr"]:GetLeft();
	settings.BadgeOfTaste.X = string.format("%.0f", _G.BOTLocX);
	_G.BOTLocY = BOT["Ctr"]:GetTop();
	settings.BadgeOfTaste.Y = string.format("%.0f", _G.BOTLocY);
	SaveSettings( false );
end
--**^

function MoveBOTCtr(sender, args)
	local CtrLocX = BOT["Ctr"]:GetLeft();
	local CtrWidth = BOT["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = BOT["Ctr"]:GetTop();
	local CtrHeight = BOT["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	BOT["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end