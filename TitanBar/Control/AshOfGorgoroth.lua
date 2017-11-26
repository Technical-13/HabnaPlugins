-- Ash of Gorgoroth.lua
-- Written by Kaische


_G.AOG = {};

--**v Control of Ash of Gorgoroth v**
AOG["Ctr"] = Turbine.UI.Control();
AOG["Ctr"]:SetParent( TB["win"] );
AOG["Ctr"]:SetMouseVisible( false );
AOG["Ctr"]:SetZOrder( 2 );
AOG["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
AOG["Ctr"]:SetBackColor( Turbine.UI.Color( AOGbcAlpha, AOGbcRed, AOGbcGreen, AOGbcBlue ) );
--**^
--**v Ash of Gorgoroth & icon on TitanBar v**
AOG["Icon"] = Turbine.UI.Control();
AOG["Icon"]:SetParent( AOG["Ctr"] );
AOG["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
AOG["Icon"]:SetSize( 32, 32 );
AOG["Icon"]:SetBackground( WalletItem.AshOfGorgoroth.Icon );-- in-game icon 32x32
--**^

AOG["Icon"].MouseMove = function( sender, args )
	AOG["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveAOGCtr(sender, args); end
end

AOG["Icon"].MouseLeave = function( sender, args )
	AOG["Lbl"].MouseLeave( sender, args );
end

AOG["Icon"].MouseClick = function( sender, args )
	AOG["Lbl"].MouseClick( sender, args );
end

AOG["Icon"].MouseDown = function( sender, args )
	AOG["Lbl"].MouseDown( sender, args );
end

AOG["Icon"].MouseUp = function( sender, args )
	AOG["Lbl"].MouseUp( sender, args );
end


AOG["Lbl"] = Turbine.UI.Label();
AOG["Lbl"]:SetParent( AOG["Ctr"] );
AOG["Lbl"]:SetFont( _G.TBFont );
AOG["Lbl"]:SetPosition( 0, 0 );
AOG["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
AOG["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

AOG["Lbl"].MouseMove = function( sender, args )
	AOG["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveAOGCtr(sender, args);
	else
		ShowToolTipWin( "AOG" );
	end
end

AOG["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

AOG["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFroAOGtr = "AOG";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

AOG["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		AOG["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

AOG["Lbl"].MouseUp = function( sender, args )
	AOG["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.AOGLocX = AOG["Ctr"]:GetLeft();
	settings.AshOfGorgoroth.X = string.format("%.0f", _G.AOGLocX);
	_G.AOGLocY = AOG["Ctr"]:GetTop();
	settings.AshOfGorgoroth.Y = string.format("%.0f", _G.AOGLocY);
	SaveSettings( false );
end
--**^

function MoveAOGCtr(sender, args)
	local CtrLocX = AOG["Ctr"]:GetLeft();
	local CtrWidth = AOG["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = AOG["Ctr"]:GetTop();
	local CtrHeight = AOG["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	AOG["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end