-- Midsummer Token.lua
-- Written by ShoeMaker


_G.MST = {}; -- Midsummer Token table in _G

--**v Control of Midsummer Token v**
MST["Ctr"] = Turbine.UI.Control();
MST["Ctr"]:SetParent( TB["win"] );
MST["Ctr"]:SetMouseVisible( false );
MST["Ctr"]:SetZOrder( 2 );
MST["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
MST["Ctr"]:SetBackColor( Turbine.UI.Color( MSTbcAlpha, MSTbcRed, MSTbcGreen, MSTbcBlue ) );
--**^
--**v Midsummer Token & icon on TitanBar v**
MST["Icon"] = Turbine.UI.Control();
MST["Icon"]:SetParent( MST["Ctr"] );
MST["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
MST["Icon"]:SetSize( 32, 32 );
MST["Icon"]:SetBackground( WalletItem.MidsummerToken.Icon );-- in-game icon 32x32
--**^

MST["Icon"].MouseMove = function( sender, args )
	MST["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveMSTCtr(sender, args); end
end

MST["Icon"].MouseLeave = function( sender, args )
	MST["Lbl"].MouseLeave( sender, args );
end

MST["Icon"].MouseClick = function( sender, args )
	MST["Lbl"].MouseClick( sender, args );
end

MST["Icon"].MouseDown = function( sender, args )
	MST["Lbl"].MouseDown( sender, args );
end

MST["Icon"].MouseUp = function( sender, args )
	MST["Lbl"].MouseUp( sender, args );
end


MST["Lbl"] = Turbine.UI.Label();
MST["Lbl"]:SetParent( MST["Ctr"] );
MST["Lbl"]:SetFont( _G.TBFont );
MST["Lbl"]:SetPosition( 0, 0 );
MST["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
MST["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

MST["Lbl"].MouseMove = function( sender, args )
	MST["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveMSTCtr(sender, args);
	else
		ShowToolTipWin( "MST" );
	end
end

MST["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

MST["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFromCtr = "MST";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

MST["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		MST["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

MST["Lbl"].MouseUp = function( sender, args )
	MST["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.MSTLocX = MST["Ctr"]:GetLeft();
	settings.MidsummerToken.X = string.format("%.0f", _G.MSTLocX);
	_G.MSTLocY = MST["Ctr"]:GetTop();
	settings.MidsummerToken.Y = string.format("%.0f", _G.MSTLocY);
	SaveSettings( false );
end
--**^

function MoveMSTCtr(sender, args)
	local CtrLocX = MST["Ctr"]:GetLeft();
	local CtrWidth = MST["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = MST["Ctr"]:GetTop();
	local CtrHeight = MST["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	MST["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end