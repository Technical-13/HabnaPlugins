-- Badge of Dishonour.lua
-- Written by b414213562


_G.BOD = {}; -- Badge of Dishonour table in _G

--**v Control of Badge of Dishonour v**
BOD["Ctr"] = Turbine.UI.Control();
BOD["Ctr"]:SetParent( TB["win"] );
BOD["Ctr"]:SetMouseVisible( false );
BOD["Ctr"]:SetZOrder( 2 );
BOD["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
BOD["Ctr"]:SetBackColor( Turbine.UI.Color( BODbcAlpha, BODbcRed, BODbcGreen, BODbcBlue ) );
--**^
--**v Badge of Dishonour & icon on TitanBar v**
BOD["Icon"] = Turbine.UI.Control();
BOD["Icon"]:SetParent( BOD["Ctr"] );
BOD["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
BOD["Icon"]:SetSize( 32, 32 );
BOD["Icon"]:SetBackground( WalletItem.BadgeOfDishonour.Icon );-- in-game icon 32x32
--**^

BOD["Icon"].MouseMove = function( sender, args )
	BOD["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveBODCtr(sender, args); end
end

BOD["Icon"].MouseLeave = function( sender, args )
	BOD["Lbl"].MouseLeave( sender, args );
end

BOD["Icon"].MouseClick = function( sender, args )
	BOD["Lbl"].MouseClick( sender, args );
end

BOD["Icon"].MouseDown = function( sender, args )
	BOD["Lbl"].MouseDown( sender, args );
end

BOD["Icon"].MouseUp = function( sender, args )
	BOD["Lbl"].MouseUp( sender, args );
end


BOD["Lbl"] = Turbine.UI.Label();
BOD["Lbl"]:SetParent( BOD["Ctr"] );
BOD["Lbl"]:SetFont( _G.TBFont );
BOD["Lbl"]:SetPosition( 0, 0 );
BOD["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
BOD["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

BOD["Lbl"].MouseMove = function( sender, args )
	BOD["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveBODCtr(sender, args);
	else
		ShowToolTipWin( "BOD" );
	end
end

BOD["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

BOD["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFromCtr = "BOD";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

BOD["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		BOD["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

BOD["Lbl"].MouseUp = function( sender, args )
	BOD["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.BODLocX = BOD["Ctr"]:GetLeft();
	settings.BadgeOfDishonour.X = string.format("%.0f", _G.BODLocX);
	_G.BODLocY = BOD["Ctr"]:GetTop();
	settings.BadgeOfDishonour.Y = string.format("%.0f", _G.BODLocY);
	SaveSettings( false );
end
--**^

function MoveBODCtr(sender, args)
	local CtrLocX = BOD["Ctr"]:GetLeft();
	local CtrWidth = BOD["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = BOD["Ctr"]:GetTop();
	local CtrHeight = BOD["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	BOD["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end