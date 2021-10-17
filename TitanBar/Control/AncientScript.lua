-- Ancient Script.lua
-- Written by Duriel


_G.AS = {}; -- Ancient Script table in _G

--**v Control of Ancient Script v**
AS["Ctr"] = Turbine.UI.Control();
AS["Ctr"]:SetParent( TB["win"] );
AS["Ctr"]:SetMouseVisible( false );
AS["Ctr"]:SetZOrder( 2 );
AS["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
AS["Ctr"]:SetBackColor( Turbine.UI.Color( ASbcAlpha, ASbcRed, ASbcGreen, ASbcBlue ) );
--**^
--**v Ancient Script & icon on TitanBar v**
AS["Icon"] = Turbine.UI.Control();
AS["Icon"]:SetParent( AS["Ctr"] );
AS["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
AS["Icon"]:SetSize( 32, 32 );
AS["Icon"]:SetBackground( WalletItem.AncientScript.Icon );-- in-game icon 32x32
--**^

AS["Icon"].MouseMove = function( sender, args )
	AS["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveASCtr(sender, args); end
end

AS["Icon"].MouseLeave = function( sender, args )
	AS["Lbl"].MouseLeave( sender, args );
end

AS["Icon"].MouseClick = function( sender, args )
	AS["Lbl"].MouseClick( sender, args );
end

AS["Icon"].MouseDown = function( sender, args )
	AS["Lbl"].MouseDown( sender, args );
end

AS["Icon"].MouseUp = function( sender, args )
	AS["Lbl"].MouseUp( sender, args );
end


AS["Lbl"] = Turbine.UI.Label();
AS["Lbl"]:SetParent( AS["Ctr"] );
AS["Lbl"]:SetFont( _G.TBFont );
AS["Lbl"]:SetPosition( 0, 0 );
AS["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
AS["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

AS["Lbl"].MouseMove = function( sender, args )
	AS["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveASCtr(sender, args);
	else
		ShowToolTipWin( "AS" );
	end
end

AS["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

AS["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFromCtr = "AS";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

AS["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		AS["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

AS["Lbl"].MouseUp = function( sender, args )
	AS["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.ASLocX = AS["Ctr"]:GetLeft();
	settings.AncientScript.X = string.format("%.0f", _G.ASLocX);
	_G.ASLocY = AS["Ctr"]:GetTop();
	settings.AncientScript.Y = string.format("%.0f", _G.ASLocY);
	SaveSettings( false );
end
--**^

function MoveASCtr(sender, args)
	local CtrLocX = AS["Ctr"]:GetLeft();
	local CtrWidth = AS["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = AS["Ctr"]:GetTop();
	local CtrHeight = AS["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	AS["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end