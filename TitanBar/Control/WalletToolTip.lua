-- WalletToolTip.lua
-- written by Habna
-- rewritten by many


function ShowWIToolTip()
	-- ( offsetX, offsetY, width, height, bubble side )
	--x, y, w, h = -5, -15, 100, 0;
	--mouseX, mouseY = Turbine.UI.Display.GetMousePosition();
	
	--if w + mouseX > screenWidth then x = w - 10; end
	
	_G.ToolTipWin = Turbine.UI.Window();
	_G.ToolTipWin:SetZOrder( 1 );
	--_G.ToolTipWin.xOffset = x;
	--_G.ToolTipWin.yOffset = y;
	_G.ToolTipWin:SetWidth( 100 );
	_G.ToolTipWin:SetVisible( true );

	WITTListBox = Turbine.UI.ListBox();
	WITTListBox:SetParent( _G.ToolTipWin );
	WITTListBox:SetZOrder( 1 );
	WITTListBox:SetPosition( 20, 17 );
	--WITTListBox:SetWidth( _G.ToolTipWin:GetWidth()-30 );
	WITTListBox:SetMaxItemsPerLine( 1 );
	WITTListBox:SetOrientation( Turbine.UI.Orientation.Horizontal );
	--WITTListBox:Se0tBackColor( Color["darkgrey"] ); --debug purpose

	RefreshWITTListBox();

	ApplySkin();
end

function RefreshWITTListBox()
	WITTListBox:ClearItems();
	WITTPosY, totWidth = 0, 0;
	local bFound = false;
	
	for i = 1, #MenuItem do
		wttcur = MenuItem[WalletOrder[i]];
		if wttcur == L["MGSC"] then ttw = _G.MIWhere;
		elseif wttcur == L["MDP"] then ttw = _G.DPWhere; CtrIconCodeIs=WalletItem.DestinyPoints.Icon; CtrQteIs=PlayerAtt:GetDestinyPoints();
		elseif wttcur == L["MSP"] then ttw = _G.SPWhere; CtrIconCodeIs=WalletItem.Shard.Icon; CtrQteIs=GetCurrency( L[ "MSP" ] );
		elseif wttcur == L["MSM"] then ttw = _G.SMWhere; CtrIconCodeIs=WalletItem.Mark.Icon; CtrQteIs=GetCurrency( L[ "MSM" ] );
		elseif wttcur == L["MMC"] then ttw = _G.MCWhere; CtrIconCodeIs=WalletItem.Mithril.Icon; CtrQteIs=GetCurrency( L[ "MMC" ] );
		elseif wttcur == L["MYT"] then ttw = _G.YTWhere; CtrIconCodeIs=WalletItem.YuleToken.Icon; CtrQteIs=GetCurrency( L[ "MYT" ] );
		elseif wttcur == L["MHT"] then ttw = _G.HTWhere; CtrIconCodeIs=WalletItem.TokensOfHytbold.Icon; CtrQteIs=GetCurrency( L[ "MHT" ] );
		elseif wttcur == L["MMP"] then ttw = _G.MPWhere; CtrIconCodeIs=WalletItem.Medallion.Icon; CtrQteIs=GetCurrency( L[ "MMP" ] );
		elseif wttcur == L["MSL"] then ttw = _G.SLWhere; CtrIconCodeIs=WalletItem.Seal.Icon; CtrQteIs=GetCurrency( L[ "MSL" ] );
		elseif wttcur == L["MCP"] then ttw = _G.CPWhere; CtrIconCodeIs=WalletItem.Commendation.Icon; CtrQteIs=GetCurrency( L[ "MCP" ] );
		elseif wttcur == L["MLP"] then ttw = _G.LPWhere; CtrIconCodeIs=WalletItem.LOTROPTS.Icon; CtrQteIs=_G.LOTROPTS;
		elseif wttcur == L["MASP"] then ttw = _G.ASPWhere; CtrIconCodeIs=WalletItem.AmrothSilverPiece.Icon; CtrQteIs=GetCurrency( L[ "MASP" ] );
		elseif wttcur == L["MSOM"] then ttw = _G.SOMWhere; CtrIconCodeIs=WalletItem.StarsofMerit.Icon; CtrQteIs=GetCurrency( L[ "MSOM" ] );
		elseif wttcur == L["MCGSP"] then ttw = _G.CGSPWhere; CtrIconCodeIs=WalletItem.CentralGondorSilverPiece.Icon; CtrQteIs=GetCurrency( L[ "MCGSP" ] );
		elseif wttcur == L["MGGB"] then ttw = _G.GGBWhere; CtrIconCodeIs=WalletItem.GiftgiversBrand.Icon; CtrQteIs=GetCurrency( L[ "MGGB" ] );
		elseif wttcur == L["MAOE"] then ttw = _G.AOEWhere; CtrIconCodeIs=WalletItem.AshOfEnchantment.Icon; CtrQteIs=GetCurrency( L[ "MAOE" ] );
		elseif wttcur == L["MBB"] then ttw = _G.BBWhere; CtrIconCodeIs=WalletItem.BingoBadge.Icon; CtrQteIs=GetCurrency( L[ "MBB" ] );
		elseif wttcur == L["MLAT"] then ttw = _G.LATWhere; CtrIconCodeIs=WalletItem.AnniversaryToken.Icon; CtrQteIs=GetCurrency( L[ "MLAT" ] );
		elseif wttcur == L["MMOE"] then ttw = _G.MOEWhere; CtrIconCodeIs=WalletItem.MotesOfEnchantment.Icon; CtrQteIs=GetCurrency( L[ "MMOE" ] );
		elseif wttcur == L["MEOE"] then ttw = _G.EOEWhere; CtrIconCodeIs=WalletItem.EmbersOfEnchantment.Icon; CtrQteIs=GetCurrency( L[ "MEOE" ] );
		elseif wttcur == L["MFOS"] then ttw = _G.FOSWhere; CtrIconCodeIs=WalletItem.FigmentsOfSplendour.Icon; CtrQteIs=GetCurrency( L[ "MFOS" ] );
		elseif wttcur == L["MFFT"] then ttw = _G.FFTWhere; CtrIconCodeIs=WalletItem.FallFestivalToken.Icon; CtrQteIs=GetCurrency( L[ "MFFT" ] );
		elseif wttcur == L["MFFAT"] then ttw = _G.FFATWhere; CtrIconCodeIs=WalletItem.FarmersFaireToken.Icon; CtrQteIs=GetCurrency( L[ "MFFAT" ] );	
		elseif wttcur == L["MSPL"] then ttw = _G.SPLWhere; CtrIconCodeIs=WalletItem.SpringLeaf.Icon; CtrQteIs=GetCurrency( L[ "MSPL" ] );
		elseif wttcur == L["MMST"] then ttw = _G.MSTWhere; CtrIconCodeIs=WalletItem.MidsummerToken.Icon; CtrQteIs=GetCurrency( L[ "MMST" ] );
		elseif wttcur == L["MAS"] then ttw = _G.ASWhere; CtrIconCodeIs=WalletItem.AncientScript.Icon; CtrQteIs=GetCurrency( L[ "MAS" ] );	
		end
		
		if tonumber(ttw) == 2 then
			WITTPosY = WITTPosY + 32;
			bFound = true;
		
			--**v Control of all data v**
			local WITTCtr = Turbine.UI.Control();
			WITTCtr:SetParent( WITTListBox );
			WITTCtr:SetHeight( 32 );
			--WITTCtr:SetBackColor( Color["red"] ); -- Debug purpose
			--**^

			if wttcur == L["MGSC"] then --Money control
				local wiPosX, tmWidth = 0, 0;
				local wmoney = PlayerAtt:GetMoney();
				DecryptMoney(wmoney);
				local twmoney = { gold, silver, copper };
				--local twmoneyi = { 0x41007e7b, 0x41007e7c, 0x41007e7d }; --gold, silver, copper icon 27x21
				for w = 1, 3 do
					--**v Quantity v**
					local lblQte = Turbine.UI.Label();
					lblQte:SetParent( WITTCtr );
					lblQte:SetPosition( wiPosX+5, 0 );
					lblQte:SetText( twmoney[w] );
					lblQte:SetSize( lblQte:GetTextLength() * NM, WITTCtr:GetHeight() );
					--lblQte:SetForeColor( Color["green"] );
					lblQte:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );
					tmWidth = tmWidth + lblQte:GetWidth()+5;
					--lblQte:SetBackColor( Color["red"] ); -- debug purpose
					--**^
					--**v Icon v**
					local ttIcon = Turbine.UI.Control();
					ttIcon:SetParent( WITTCtr );
					ttIcon:SetPosition( lblQte:GetLeft()+lblQte:GetWidth()-2, 5 );
					ttIcon:SetSize( 27, 21 );
					ttIcon:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
					ttIcon:SetBackground( resources.MoneyIcon[w] ); --tonumber(twmoneyi[w]) );
					tmWidth = tmWidth + ttIcon:GetWidth()-2;
					--ttIcon:SetBackColor( Color["blue"] ); -- Debug purpose
					--**^
					wiPosX = wiPosX + (lblQte:GetWidth()+ttIcon:GetWidth()+7);
					tmWidth = tmWidth + 5;
				end
				--** Get width - set tooltip width **--
				if tmWidth > totWidth then totWidth = tmWidth; end
				WITTCtr:SetWidth( totWidth );
				WITTListBox:SetWidth( totWidth );
				_G.ToolTipWin:SetWidth( totWidth + 40 );
				--**
			else --All other control
				--**v Icon v**
				local ttIcon = Turbine.UI.Control();
				ttIcon:SetParent( WITTCtr );
				ttIcon:SetPosition( 0, 0 );
				ttIcon:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
			
				if wttcur == L["MSL"] or wttcur == L["MLP"] then ttIcon:SetBackground( CtrIconCodeIs );
				else ttIcon:SetBackground( tonumber(CtrIconCodeIs) ); end
				--ttIcon:SetBackColor( Color["blue"] ); -- Debug purpose
				--**^
				--**v Quantity v**
				local lblQte = Turbine.UI.Label();
				lblQte:SetParent( WITTCtr );
				lblQte:SetPosition( 35, 0 );
				lblQte:SetText( CtrQteIs );
				lblQte:SetSize( lblQte:GetTextLength() * NM, WITTCtr:GetHeight() );
				--lblQte:SetForeColor( Color["green"] );
				lblQte:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
				--lblQte:SetBackColor( Color["red"] ); -- debug purpose
				--**^
				--** Get width - set tooltip width **--
				local tWidth = lblQte:GetWidth() +35;
				if tWidth > totWidth then totWidth = tWidth; end
				WITTCtr:SetWidth(totWidth);
				WITTListBox:SetWidth(totWidth);
				_G.ToolTipWin:SetWidth( totWidth+40 );
				--**
				--** Resize Destiny points & LOTRO points icon since it's not in 32x32 **--
				if wttcur == L["MDP"] then
					ttIcon:SetSize( 21, 22 );
					ttIcon:SetStretchMode( 1 );
					ttIcon:SetSize( 32, 32 );
					ttIcon:SetStretchMode( 3 );
				elseif wttcur == L["MLP"] then
					ttIcon:SetSize( 30, 32 )
					ttIcon:SetStretchMode( 1 );
					ttIcon:SetSize( 32, 32 );
					ttIcon:SetStretchMode( 2 );
				else ttIcon:SetSize( 32, 32 ); end
				--**
			end
			WITTListBox:AddItem( WITTCtr );
		end
	end
	if not bFound then --If not showing any control
		WITTPosY = WITTPosY + 32;

		_G.ToolTipWin:SetWidth( 300 );
		WITTListBox:SetWidth( _G.ToolTipWin:GetWidth()-40 );

		local lblName = Turbine.UI.Label();
		lblName:SetParent( _G.ToolTipWin );
		lblName:SetText( L["WInc"] );
		lblName:SetPosition( 0, 0 );
		lblName:SetSize( WITTListBox:GetWidth(), 32 );
		lblName:SetForeColor( Color["green"] );
		lblName:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		--lblName:SetBackColor( Color["red"] ); -- debug purpose

		WITTListBox:AddItem( lblName );
	end

	WITTListBox:SetHeight( WITTPosY );
	_G.ToolTipWin:SetHeight( WITTPosY + 37 );

	local mouseX, mouseY = Turbine.UI.Display.GetMousePosition();
			
	if _G.ToolTipWin:GetWidth() + mouseX + 5 > screenWidth then x = _G.ToolTipWin:GetWidth() - 10;
	else x = -5; end
			
	if TBTop then y = -15;
	else y = _G.ToolTipWin:GetHeight() end

	_G.ToolTipWin:SetPosition( mouseX - x, mouseY - y);
end