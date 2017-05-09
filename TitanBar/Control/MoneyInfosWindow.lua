-- MoneyInfosWindow.lua
-- written by Habna
-- refacotred by 4andreas

function frmMoneyInfosWindow()
	-- **v Set some window stuff v**
	_G.wMI = Turbine.UI.Lotro.Window()
	_G.wMI:SetText( L["MIWTitle"] );
	_G.wMI:SetWantsKeyEvents( true );
	_G.wMI:SetVisible( true );
	_G.wMI:SetWidth( 325 );
	--_G.wMI:SetZOrder( 2 );
	_G.wMI:Activate();

	_G.wMI.KeyDown = function( sender, args )
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			_G.wMI:Close();
		elseif ( args.Action == 268435635 ) or ( args.Action == 268435579 ) then -- Hide if F12 key is press or reposition UI
			_G.wMI:SetVisible( not _G.wMI:IsVisible() );
		end
	end

	_G.wMI.MouseUp = function( sender, args )
		settings.Money.L = string.format("%.0f", _G.wMI:GetLeft());
		settings.Money.T = string.format("%.0f", _G.wMI:GetTop());
		MIWLeft, MIWTop = _G.wMI:GetPosition();
		SaveSettings( false );
	end

	_G.wMI.Closing = function( sender, args ) -- Function for the Upper right X icon
		_G.wMI:SetWantsKeyEvents( false );
		_G.wMI = nil;
		_G.frmMI = nil;
	end
	-- **^

	MIListBox = Turbine.UI.ListBox();
	MIListBox:SetParent( _G.wMI );
	MIListBox:SetPosition( 20, 35 );
	MIListBox:SetWidth( _G.wMI:GetWidth() - 40 );
	MIListBox:SetMaxItemsPerLine( 1 );
	MIListBox:SetOrientation( Turbine.UI.Orientation.Horizontal );
	--MIListBox:SetBackColor( Color["darkgrey"] ); --debug purpose
	
	-- **v Display total money - check box v**
	AllCharCB = Turbine.UI.Lotro.CheckBox();
	AllCharCB:SetParent( _G.wMI );
	AllCharCB:SetText( L["MIWAll"] );
	AllCharCB:SetSize( _G.wMI:GetWidth(), 30 );
	AllCharCB:SetChecked( _G.STM );
	AllCharCB:SetForeColor( Color["rustedgold"] );

	AllCharCB.CheckedChanged = function( sender, args )
		_G.STM = AllCharCB:IsChecked();
		settings.Money.S = _G.STM;
		SaveSettings( false );
		UpdateMoney();
	end
	-- **^
	-- **v Display character money - check box v**
	ThisCharCB = Turbine.UI.Lotro.CheckBox();
	ThisCharCB:SetParent( _G.wMI );
	ThisCharCB:SetText( L["MIWCM"] );
	ThisCharCB:SetSize( _G.wMI:GetWidth(), 30 );
	ThisCharCB:SetChecked( _G.SCM );
	ThisCharCB:SetForeColor( Color["rustedgold"] );

	ThisCharCB.CheckedChanged = function( sender, args )
		_G.SCM = ThisCharCB:IsChecked();
		if _G.STM then AllCharCB:SetChecked( false ); SavePlayerMoney(true); AllCharCB:SetChecked( true );
		else SavePlayerMoney(true); end
		RefreshMIListBox();
	end
	-- **^
	-- **v Display to all character - check box v**
	ToAllCharCB = Turbine.UI.Lotro.CheckBox();
	ToAllCharCB:SetParent( _G.wMI );
	ToAllCharCB:SetText( L["MIWCMAll"] );
	ToAllCharCB:SetSize( _G.wMI:GetWidth(), 30 );
	ToAllCharCB:SetChecked( _G.SCMA );
	ToAllCharCB:SetForeColor( Color["rustedgold"] );

	ToAllCharCB.CheckedChanged = function( sender, args )
		_G.SCMA = ToAllCharCB:IsChecked();
		SavePlayerMoney( false );
	end
	-- **^
	-- **v Display session statistics - check box v**
	SSSCB = Turbine.UI.Lotro.CheckBox();
	SSSCB:SetParent( _G.wMI );
	SSSCB:SetText( L["MIWSSS"] );
	SSSCB:SetSize( _G.wMI:GetWidth(), 30 );
	SSSCB:SetChecked( _G.SSS );
	SSSCB:SetForeColor( Color["rustedgold"] );

	SSSCB.CheckedChanged = function( sender, args )
		_G.SSS = SSSCB:IsChecked();
		settings.Money.SS = _G.SSS;
		SaveSettings( false );
	end
	-- **^
	-- **v Display session statistics - check box v**
	STSCB = Turbine.UI.Lotro.CheckBox();
	STSCB:SetParent( _G.wMI );
	STSCB:SetText( L["MIWSTS"] );
	STSCB:SetSize( _G.wMI:GetWidth(), 30 );
	STSCB:SetChecked( _G.STS );
	STSCB:SetForeColor( Color["rustedgold"] );

	STSCB.CheckedChanged = function( sender, args )
		_G.STS = STSCB:IsChecked();
		settings.Money.TS = _G.STS;
		SaveSettings( false );
	end
	-- **^

	RefreshMIListBox();

	_G.wMI:SetPosition( MIWLeft, MIWTop );
end

function RefreshMIListBox()
	MIListBox:ClearItems();
	MIPosY = 0;
	iFound = false;
	
	--Create an array of character name, sort it, then use it as a reference.
	local a = {};
    for n in pairs(wallet) do table.insert(a, n) end
    table.sort(a);
    --for i,n in ipairs(a) do write(n) end --degug purpose

	--for k,v in pairs(wallet) do
	for i = 1, #a do
		if a[i] == Player:GetName() then
			if wallet[a[i]].Show then 
        MITTShowData(MIListBox, a[i], wallet[a[i]].Money, Color["green"], Color["green"], true); 
        MIPosY = MIPosY + 19;
      end
		else
			if wallet[a[i]].ShowToAll or wallet[a[i]].ShowToAll == nil then 
        MITTShowData(MIListBox, a[i], wallet[a[i]].Money, Color["white"], Color["white"], true); 
        MIPosY = MIPosY + 19;
      end
		end
	end
	
	if not iFound then--No wallet info found, show a message
		--**v Control of message v**
		local MsgCtr = Turbine.UI.Control();
		MsgCtr:SetParent( MIListBox );
		MsgCtr:SetSize( MIListBox:GetWidth(), 19 );
		MsgCtr:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
		--MsgCtr:SetBackColor( Color["red"] ); -- Debug purpose
		--**^
		--**v Message v**
		local MsgLbl = Turbine.UI.Label();
		MsgLbl:SetParent( MsgCtr );
		--MsgLbl:SetForeColor( Color["white"] );
		MsgLbl:SetPosition( 0, 0 );
		MsgLbl:SetText( L["MIMsg"] );
		MsgLbl:SetSize( MsgCtr:GetWidth(), MsgCtr:GetHeight() );
		--MsgLbl:SetFontStyle( Turbine.UI.FontStyle.Outline );
		MsgLbl:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		MsgLbl:SetForeColor( Color["red"] );
		--MsgLbl:SetBackColor( Color["white"] ); -- Debug purpose
		--**^

		MIListBox:AddItem( MsgCtr );
		MIPosY = MIPosY + 19;
	end

	--**v Line Control v**
	local LineCtr = Turbine.UI.Control();
	LineCtr:SetParent( MIListBox );
	LineCtr:SetSize( MIListBox:GetWidth(), 7 );
	--LineCtr:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );

	local LineLbl = Turbine.UI.Label();
	LineLbl:SetParent( LineCtr );
	LineLbl:SetText( "" );
	LineLbl:SetPosition( 0, 2 );
	LineLbl:SetSize( MIListBox:GetWidth(), 1 );
	LineLbl:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
	LineLbl:SetBackColor( Color["trueblue"] );

	MIListBox:AddItem( LineCtr );
	MIPosY = MIPosY + 7;
	--**^
	MITTShowData(MIListBox, L["MIWTotal"], (GoldTot*100000+SilverTot*100+CopperTot), Color["white"], Color["white"]);
  MIPosY = MIPosY + 19;
	
	MIListBox:AddItem( TotMoneyCtr );
	MIPosY = MIPosY + 19;
	MIListBox:SetHeight( MIPosY );

	MIPosY = MIPosY + 50;
	AllCharCB:SetPosition( MIListBox:GetLeft(), MIPosY );
	MIPosY = MIPosY + 20;
	ThisCharCB:SetPosition( MIListBox:GetLeft(), MIPosY );
	MIPosY = MIPosY + 20;
	ToAllCharCB:SetPosition( MIListBox:GetLeft(), MIPosY );
	MIPosY = MIPosY + 20;
	SSSCB:SetPosition( MIListBox:GetLeft(), MIPosY );
	MIPosY = MIPosY + 20;
	STSCB:SetPosition( MIListBox:GetLeft(), MIPosY );
	
	_G.wMI:SetHeight( MIPosY + 45 );
end
