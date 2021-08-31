-- Spring Leaf.lua
-- Written by Duriel


_G.SPL = {}; -- Spring Leaf table in _G

--**v Control of Spring Leaf v**
SPL["Ctr"] = Turbine.UI.Control();
SPL["Ctr"]:SetParent( TB["win"] );
SPL["Ctr"]:SetMouseVisible( false );
SPL["Ctr"]:SetZOrder( 2 );
SPL["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
SPL["Ctr"]:SetBackColor( Turbine.UI.Color( SPLbcAlpha, SPLbcRed, SPLbcGreen, SPLbcBlue ) );
--**^
--**v Spring Leaf & icon on TitanBar v**
SPL["Icon"] = Turbine.UI.Control();
SPL["Icon"]:SetParent( SPL["Ctr"] );
SPL["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
SPL["Icon"]:SetSize( 32, 32 );
SPL["Icon"]:SetBackground( WalletItem.SpringLeaf.Icon );-- in-game icon 32x32
--**^

SPL["Icon"].MouseMove = function( sender, args )
	SPL["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveSPLCtr(sender, args); end
end

SPL["Icon"].MouseLeave = function( sender, args )
	SPL["Lbl"].MouseLeave( sender, args );
end

SPL["Icon"].MouseClick = function( sender, args )
	SPL["Lbl"].MouseClick( sender, args );
end

SPL["Icon"].MouseDown = function( sender, args )
	SPL["Lbl"].MouseDown( sender, args );
end

SPL["Icon"].MouseUp = function( sender, args )
	SPL["Lbl"].MouseUp( sender, args );
end


SPL["Lbl"] = Turbine.UI.Label();
SPL["Lbl"]:SetParent( SPL["Ctr"] );
SPL["Lbl"]:SetFont( _G.TBFont );
SPL["Lbl"]:SetPosition( 0, 0 );
SPL["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
SPL["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

SPL["Lbl"].MouseMove = function( sender, args )
	SPL["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveSPLCtr(sender, args);
	else
		ShowToolTipWin( "SPL" );
	end
end

SPL["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

SPL["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFromCtr = "SPL";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

SPL["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		SPL["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

SPL["Lbl"].MouseUp = function( sender, args )
	SPL["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.SPLLocX = SPL["Ctr"]:GetLeft();
	settings.SpringLeaf.X = string.format("%.0f", _G.SPLLocX);
	_G.SPLLocY = SPL["Ctr"]:GetTop();
	settings.SpringLeaf.Y = string.format("%.0f", _G.SPLLocY);
	SaveSettings( false );
end
--**^

function MoveSPLCtr(sender, args)
	local CtrLocX = SPL["Ctr"]:GetLeft();
	local CtrWidth = SPL["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = SPL["Ctr"]:GetTop();
	local CtrHeight = SPL["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	SPL["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end