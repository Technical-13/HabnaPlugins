-- Embers of Enchantment.lua
-- Written by Duriel


_G.EOE = {};

--**v Control of Embers of Enchantment v**
EOE["Ctr"] = Turbine.UI.Control();
EOE["Ctr"]:SetParent( TB["win"] );
EOE["Ctr"]:SetMouseVisible( false );
EOE["Ctr"]:SetZOrder( 2 );
EOE["Ctr"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
EOE["Ctr"]:SetBackColor( Turbine.UI.Color( EOEbcAlpha, EOEbcRed, EOEbcGreen, EOEbcBlue ) );
--**^
--**v Embers of Enchantment & icon on TitanBar v**
EOE["Icon"] = Turbine.UI.Control();
EOE["Icon"]:SetParent( EOE["Ctr"] );
EOE["Icon"]:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
EOE["Icon"]:SetSize( 32, 32 );
EOE["Icon"]:SetBackground( WalletItem.EmbersOfEnchantment.Icon );-- in-game icon 32x32
--**^

EOE["Icon"].MouseMove = function( sender, args )
	EOE["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then MoveEOECtr(sender, args); end
end

EOE["Icon"].MouseLeave = function( sender, args )
	EOE["Lbl"].MouseLeave( sender, args );
end

EOE["Icon"].MouseClick = function( sender, args )
	EOE["Lbl"].MouseClick( sender, args );
end

EOE["Icon"].MouseDown = function( sender, args )
	EOE["Lbl"].MouseDown( sender, args );
end

EOE["Icon"].MouseUp = function( sender, args )
	EOE["Lbl"].MouseUp( sender, args );
end


EOE["Lbl"] = Turbine.UI.Label();
EOE["Lbl"]:SetParent( EOE["Ctr"] );
EOE["Lbl"]:SetFont( _G.TBFont );
EOE["Lbl"]:SetPosition( 0, 0 );
EOE["Lbl"]:SetFontStyle( Turbine.UI.FontStyle.Outline );
EOE["Lbl"]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );

EOE["Lbl"].MouseMove = function( sender, args )
	EOE["Lbl"].MouseLeave( sender, args );
	TB["win"].MouseMove();
	if dragging then
		MoveEOECtr(sender, args);
	else
		ShowToolTipWin( "EOE" );
	end
end

EOE["Lbl"].MouseLeave = function( sender, args )
	ResetToolTipWin();
end

EOE["Lbl"].MouseClick = function( sender, args )
	TB["win"].MouseMove();
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		if not WasDrag then
			
		end
	elseif ( args.Button == Turbine.UI.MouseButton.Right ) then
		_G.sFroEOEtr = "EOE";
		ControlMenu:ShowMenu();
	end
	WasDrag = false;
end

EOE["Lbl"].MouseDown = function( sender, args )
	if ( args.Button == Turbine.UI.MouseButton.Left ) then
		EOE["Ctr"]:SetZOrder( 3 );
		dragStartX = args.X;
		dragStartY = args.Y;
		dragging = true;
	end
end

EOE["Lbl"].MouseUp = function( sender, args )
	EOE["Ctr"]:SetZOrder( 2 );
	dragging = false;
	_G.EOELocX = EOE["Ctr"]:GetLeft();
	settings.EmbersOfEnchantment.X = string.format("%.0f", _G.EOELocX);
	_G.EOELocY = EOE["Ctr"]:GetTop();
	settings.EmbersOfEnchantment.Y = string.format("%.0f", _G.EOELocY);
	SaveSettings( false );
end
--**^

function MoveEOECtr(sender, args)
	local CtrLocX = EOE["Ctr"]:GetLeft();
	local CtrWidth = EOE["Ctr"]:GetWidth();
	CtrLocX = CtrLocX + ( args.X - dragStartX );
	if CtrLocX < 0 then CtrLocX = 0; elseif CtrLocX + CtrWidth > screenWidth then CtrLocX = screenWidth - CtrWidth; end
	
	local CtrLocY = EOE["Ctr"]:GetTop();
	local CtrHeight = EOE["Ctr"]:GetHeight();
	CtrLocY = CtrLocY + ( args.Y - dragStartY );
	if CtrLocY < 0 then CtrLocY = 0; elseif CtrLocY + CtrHeight > TB["win"]:GetHeight() then CtrLocY = TB["win"]:GetHeight() - CtrHeight; end

	EOE["Ctr"]:SetPosition( CtrLocX, CtrLocY );
	WasDrag = true;
end