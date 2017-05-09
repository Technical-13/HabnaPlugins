-- MoneyInfosToolTip.lua
-- written by Habna
-- refacotred by 4andreas

function ShowMIWindow()
	_G.ToolTipWin = Turbine.UI.Window();
	_G.ToolTipWin:SetZOrder( 1 );
	_G.ToolTipWin:SetWidth( 325 );
	_G.ToolTipWin:SetVisible( true );

	MITTListBox = Turbine.UI.ListBox();
	MITTListBox:SetParent( _G.ToolTipWin );
	MITTListBox:SetZOrder( 1 );
	MITTListBox:SetPosition( 15, 20 );
	MITTListBox:SetWidth( _G.ToolTipWin:GetWidth() - 30 );
	MITTListBox:SetMaxItemsPerLine( 1 );
	MITTListBox:SetOrientation( Turbine.UI.Orientation.Horizontal );

	MIRefreshMITTListBox();
  MITTListBox:SetHeight( MITTPosY);
  
	ApplySkin();
end

function MoneyToCoins(m)
    local g = math.floor(m/100000);
    local s = math.floor(m/100)-g*1000;
    local c = m%100;
    return c,s,g;
end

function MIRefreshMITTListBox()	
	MITTListBox:ClearItems();
	MITTPosY = 0;
	iFound = false;
    
    MoneyIcons = {resources.MoneyIcon.Copper, resources.MoneyIcon.Silver, resources.MoneyIcon.Gold};
	--Create an array of character name, sort it, then use it as a reference.
	local a = {};
    for n in pairs(wallet) do table.insert(a, n) end
    table.sort(a);
    --for i,n in ipairs(a) do write(n) end --degug purpose

	for i = 1, #a do
		DecryptMoney(wallet[a[i]].Money);

		if a[i] == Player:GetName() then
			if wallet[a[i]].Show then 
        MITTShowData(MITTListBox, a[i], wallet[a[i]].Money, Color["green"], Color["green"]);
        MITTPosY = MITTPosY + 19; 
      end
		else
			if wallet[a[i]].ShowToAll or wallet[a[i]].ShowToAll == nil then 
        MITTShowData(MITTListBox, a[i], wallet[a[i]].Money, Color["white"], Color["white"]);
        MITTPosY = MITTPosY + 19; 
      end
		end
	end
	
	if not iFound then--No wallet info found, show a message
		--**v Control of message v**
		local MsgCtr = Turbine.UI.Control();
		MsgCtr:SetParent( MITTListBox );
		MsgCtr:SetSize( MITTListBox:GetWidth(), 19 );
		MsgCtr:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
		--**^
		--**v Message v**
		local MsgLbl = Turbine.UI.Label();
		MsgLbl:SetParent( MsgCtr );
		MsgLbl:SetPosition( 0, 0 );
		MsgLbl:SetText( L["MIMsg"] );
		MsgLbl:SetSize( MsgCtr:GetWidth(), MsgCtr:GetHeight() );
		MsgLbl:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		MsgLbl:SetForeColor( Color["red"] );
		--**^

		MITTListBox:AddItem( MsgCtr );
		MITTPosY = MITTPosY + 19;
	end

	--**v Line Control v**
	local LineCtr = Turbine.UI.Control();
	LineCtr:SetParent( MITTListBox );
	LineCtr:SetSize( MITTListBox:GetWidth(), 7 );
	--LineCtr:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );

	local LineLbl = Turbine.UI.Label();
	LineLbl:SetParent( LineCtr );
	LineLbl:SetText( "" );
	LineLbl:SetPosition( 0, 2 );
	LineLbl:SetSize( MITTListBox:GetWidth(), 1 );
	LineLbl:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
	LineLbl:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight );
	LineLbl:SetBackColor( Color["trueblue"] );

	MITTListBox:AddItem( LineCtr );
	--**^
  MITTShowData(MITTListBox, L["MIWTotal"], (CopperTot + SilverTot*100 + GoldTot*100000), Color["white"], Color["white"]);
	MITTPosY = MITTPosY + 19;
    
	MITTListBox:AddItem( TotMoneyCtr );
	MITTPosY = MITTPosY + 8;

	--**v Statistics section v**
	local PN = Player:GetName();
	
	if _G.SSS then --Show session statistics if true
  	local space = Turbine.UI.Label();
    space:SetSize( 140, 10 );
    MITTListBox:AddItem( space );
    MITTPosY = 	MITTPosY + 10;
    
		local LblStat = Turbine.UI.Label();
		LblStat:SetParent( MITTListBox );
		MITTListBox:AddItem( LblStat );
		LblStat:SetForeColor( Color["rustedgold"] );
		LblStat:SetSize( 140, 19 );
		LblStat:SetFont(Turbine.UI.Lotro.Font.TrajanPro14);
		LblStat:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
		LblStat:SetText( L["MISession"] .. " " .. L["Stats"] );
		if TBLocale == "fr" then LblStat:SetText( L["Stats"] .. " " .. L["MISession"] ); end

		local StatsSeparator = Turbine.UI.Control();
		StatsSeparator:SetParent( MITTListBox );
		StatsSeparator:SetSize( LblStat:GetWidth(), 1 );
		MITTListBox:AddItem( StatsSeparator );
		StatsSeparator:SetBackColor( Color["trueblue"] );
    MITTPosY = 	MITTPosY + 20;

    MITTShowData(MITTListBox, L["MIEarned"], walletStats[DOY][PN].Earned, Color["rustedgold"], Color["white"]);
		MITTShowData(MITTListBox, L["MISpent"], walletStats[DOY][PN].Spent, Color["rustedgold"], Color["white"]);
    if bSumSSS then color = Color["white"] else color = Color["red"] end
    MITTShowData(MITTListBox, L["MIWTotal"], walletStats[DOY][PN].SumSS, Color["rustedgold"], color);
	  MITTPosY = MITTPosY + 3*19;
  end
	

	if _G.STS then --Show today statistics if true
		local space = Turbine.UI.Label();
    space:SetSize( 140, 10 );
    MITTListBox:AddItem( space );
    MITTPosY = 	MITTPosY + 10;
    
    local LblStat = Turbine.UI.Label();
		LblStat:SetParent( MITTListBox );
    MITTListBox:AddItem( LblStat );
		LblStat:SetForeColor( Color["rustedgold"] );
		LblStat:SetSize( 140, 19 );
		LblStat:SetFont(Turbine.UI.Lotro.Font.TrajanPro14);
		LblStat:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
		LblStat:SetText( L["MIDaily"] .. " " .. L["Stats"] );
		if TBLocale == "fr" then LblStat:SetText( L["Stats"] .. " " .. L["MIDaily"] ); end

		local StatsSeparator = Turbine.UI.Control();
		StatsSeparator:SetParent( MITTListBox );
		StatsSeparator:SetSize( LblStat:GetWidth(), 1 );
		MITTListBox:AddItem( StatsSeparator );
		StatsSeparator:SetBackColor( Color["trueblue"] );
		MITTPosY = MITTPosY + 20;

    MITTShowData(MITTListBox, L["MIEarned"], totem, Color["rustedgold"], Color["white"]);
		MITTShowData(MITTListBox, L["MISpent"], totsm, Color["rustedgold"], Color["white"]);
    if bSumSTS then color = Color["white"] else color = Color["red"] end
    MITTShowData(MITTListBox, L["MIWTotal"], walletStats[DOY][PN].SumTS, Color["rustedgold"], color);
    MITTPosY = MITTPosY + 3*19;
	end

	_G.ToolTipWin:SetHeight( MITTPosY + 40);

	local mouseX, mouseY = Turbine.UI.Display.GetMousePosition();
			
	if _G.ToolTipWin:GetWidth() + mouseX + 5 > screenWidth then x = _G.ToolTipWin:GetWidth() - 10;
	else x = -5; end
			
	if TBTop then y = -15;
	else y = _G.ToolTipWin:GetHeight() end

	_G.ToolTipWin:SetPosition( mouseX - x, mouseY - y);
end

function MITTShowData(parent,l,m,lc,mc,showDelIcon) -- l = label, m = money, lc = label color, money color
	iFound = true;
    local g = {};
    g[1], g[2], g[3] = MoneyToCoins(m);
	--**v Control of Gold/Silver/Copper currencies v**
	local MoneyCtr = Turbine.UI.Control();
	MoneyCtr:SetParent( parent );
	MoneyCtr:SetSize( parent:GetWidth(), 19 );
	MoneyCtr:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
	--**^
	--**v Player name v**
	local lblName = Turbine.UI.Label();
	lblName:SetParent( MoneyCtr );
	lblName:SetText( l );
	lblName:SetPosition( 5, 0 );
	lblName:SetSize( lblName:GetTextLength() * 7.5, MoneyCtr:GetHeight() );
	lblName:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
	lblName:SetForeColor(lc);
  --**^
  
  --**v Delete icon v**
	if showDelIcon then
    lblName:SetPosition( 15, 0 );  
    local DelIcon = Turbine.UI.Label();
  	DelIcon:SetParent( MoneyCtr );
  	DelIcon:SetPosition( 0, 0 );
  	DelIcon:SetSize( 16, 16 );
  	DelIcon:SetBackground( resources.DelIcon );
  	DelIcon:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
  	DelIcon:SetVisible( true );
  	if k == Player:GetName() then DelIcon:SetVisible( false ); end
  				
  	DelIcon.MouseClick = function( sender, args )
  		if ( args.Button == Turbine.UI.MouseButton.Left ) then
  			write(l .. L["MIWID"]);
  			wallet[l].ShowToAll = false;
  			if _G.STM then AllCharCB:SetChecked( false ); SavePlayerMoney(true); AllCharCB:SetChecked( true ); else SavePlayerMoney(true); end
  			RefreshMIListBox();
  		end
  	end
  end
	--**^
  local pos = MoneyCtr:GetWidth() + 4;
	for i = 1,3 do
        local NewIcon = Turbine.UI.Control();
        NewIcon:SetParent(MoneyCtr);
        NewIcon:SetSize(27, 21);
        NewIcon:SetPosition(pos - 34, -2);
        NewIcon:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
        NewIcon:SetBackground(MoneyIcons[i]);

        local NewLbl = Turbine.UI.Label();
        NewLbl:SetParent(MoneyCtr);
        NewLbl:SetText(string.format("%.0f", g[i]));
        if i == 3 then size = 48 else size = 18 end;
        NewLbl:SetSize(size + 2, MoneyCtr:GetHeight());
        NewLbl:SetPosition(NewIcon:GetLeft() - size, 0);
        NewLbl:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleRight);
        NewLbl:SetForeColor(mc);
        pos = NewLbl:GetLeft();
    end

	parent:AddItem( MoneyCtr );
end
