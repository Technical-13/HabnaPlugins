-- Motes of Enchantment.lua
-- Written by Duriel


_G.MOE = {};

--**v Control of Motes of Enchantment v**
MOE["Ctr"] = Turbine.UI.Control();
MOE["Ctr"]:SetParent( TB["win"] );
MOE["Ctr"]:SetMouseVisible( false );
MOE["Ctr"]:SetZOrder( 2 );
MOE["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
MOE["Ctr"]:SetBackColor( Turbine.UI.Color( MOEbcAlpha, MOEbcRed, MOEbcGreen, MOEbcBlue ) );
--**^
--**v Motes of Enchantment & icon on TitanBar v**
MOE["Icon"] = Turbine.UI.Control();
MOE["Icon"]:SetParent( MOE["Ctr"] );
MOE["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
MOE["Icon"]:SetSize( 32, 32 );
MOE["Icon"]:SetBackground( WalletItem.MotesOfEnchantment.Icon );-- in-game icon 32x32
--**^

MOE["Icon"].MouseMove = function( sender, args )
	MOE["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveMOECtr(sender, args); end
end

MOE["Icon"].MouseLeave = function( sender, args )
	MOE["Lbl"].MouseLeave( sender, args );
end

MOE["Icon"].MouseClick = function( sender, args )
	MOE["Lbl"].MouseClick( sender, args );
end

MOE["Icon"].MouseDown = function( sender, args )
	MOE["Lbl"].MouseDown( sender, args );
end

MOE["Icon"].MouseUp = function( sender, args )
	MOE["Lbl"].MouseUp( sender, args );
end


MOE["Lbl"] = Turbine.UI.Label();
MOE["Lbl"]:SetParent( MOE["Ctr"] );
MOE["Lbl"]:SetFont( _G.TBFont );
MOE["Lbl"]:SetPosition( 0, 0 );
MOE["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
MOE["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

MOE["Lbl"].MouseMove = function( sender, args )
	MOE["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveMOECtr(sender, args);
	else
		ShowToolTipWin( "MOE" );
	end
end

MOE["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

MOE["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFroMOEtr = "MOE";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

MOE["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		MOE["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

MOE["Lbl"].MouseUp = function( sender, args )
	MOE["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.MOELocX = MOE["Ctr"]:GetLeft();
	settings.MotesOfEnchantment.X = string.format("%.0f", _G.MOELocX);
	_G.MOELocY = MOE["Ctr"]:GetTop();
	settings.MotesOfEnchantment.Y = string.format("%.0f", _G.MOELocY);
	SaveSettings( false );
end
--**^

function MoveMOECtr(sender, args)
	local CtrLocX = MOE["Ctr"]:GetLeft();
	local CtrWidth = MOE["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = MOE["Ctr"]:GetTop();
	local CtrHeight = MOE["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	MOE["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end