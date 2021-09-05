-- ReputationToolTip.lua
-- written by many


function ShowRPWindow()
    -- ( offsetX, offsetY, width, height, bubble side )
    --x, y, w, h, bblTo = -5, -15, 320, 0, "left";
    --mouseX, mouseY = Turbine.UI.Display.GetMousePosition();

    --if w + mouseX > screenWidth then bblTo = "right"; x = w - 10; end

    _G.ToolTipWin = Turbine.UI.Window();
    _G.ToolTipWin:SetZOrder( 1 );
    --_G.ToolTipWin.xOffset = x;
    --_G.ToolTipWin.yOffset = y;
    _G.ToolTipWin:SetWidth( 380 );
    _G.ToolTipWin:SetVisible( true );

    RPTTListBox = Turbine.UI.ListBox();
    RPTTListBox:SetParent( _G.ToolTipWin );
    RPTTListBox:SetZOrder( 1 );
    RPTTListBox:SetPosition( 15, 12 );
    RPTTListBox:SetWidth( 345 );
    RPTTListBox:SetMaxItemsPerLine( 1 );
    RPTTListBox:SetOrientation( Turbine.UI.Orientation.Horizontal );
    --RPTTListBox:SetBackColor( Color["darkgrey"] ); --debug purpose

    RPRefreshListBox();

    ApplySkin();
end

function RPRefreshListBox()
    RPTTListBox:ClearItems();
    RPTTPosY = 0;
    local bFound = false;

    for i = 1, #RepOrder do
        if PlayerReputation[PN][RepOrder[i]].V then
            HideMaxReps = true;
            HideBonus = true;
            if RepOrder[i] == "RPACC" then
                if tonumber(PlayerReputation[PN][RepOrder[i]].P) > 0 then
                    HideBonus = false;
                    -- hide rep accelerator if 0 points
                end
            end
            -- Assume that people want factions that are max hidden until I
            -- can offer an option checkbox

            --**v Control of all data v**
            local RPTTCtr = Turbine.UI.Control();
            RPTTCtr:SetParent( RPTTListBox );
            RPTTCtr:SetSize( RPTTListBox:GetWidth(), 35 );
--          RPTTCtr:SetBackColor( Color["red"] ); -- Debug purpose
            --**^

            -- Reputation name
            local repLbl = Turbine.UI.Label();
            repLbl:SetParent( RPTTCtr );
            repLbl:SetSize( RPTTListBox:GetWidth() - 35, 15 );
            repLbl:SetPosition( 0, 0 );
            repLbl:SetFont( Turbine.UI.Lotro.Font.TrajanPro16 );
            repLbl:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
            repLbl:SetForeColor( Color["nicegold"] );
            repLbl:SetText( L[RepOrder[i]] );

            local tl, tm, percentage_done = nil, nil, 0;
            local tp = PlayerReputation[PN][RepOrder[i]].P;
            local tr = tonumber(PlayerReputation[PN][RepOrder[i]].R);

            name = RepOrder[i];
            RPPROG = "default";
            if name == "RPTGA" or name == "RPTWC" or name == "RPRMI" or name == "RPGA" then
                RPPROG = name;
            end


            local tt = RepType[i];
            if tt == 2 or tt == 7 or tt == 8 or tt == 15 then
                tm = RPGR[RPPROG][tonumber( tr-1 )];
            else
                tm = RPGR[RPPROG][tonumber( tr )];
            end
            if tt == 10 then
                tm = 80000;
            end

            if tr == #RepTypes[RepType[i]] and HideBonus then
                percentage_done = "max";
            else percentage_done = string.format( "%.2f", ( tp / tm ) * 100 );
            end

            --**v progress bar v**
            local RPPBFill = Turbine.UI.Control();--Filling
            RPPBFill:SetParent( RPTTCtr );
            RPPBFill:SetPosition( 9, 17 );
            if percentage_done == "max" then RPPBFill:SetSize( 183, 9 );
            else RPPBFill:SetSize( ( 183 * percentage_done ) / 100, 9 ); end
            RPPBFill:SetBackground( resources.Reputation.BGGood );
            --RPPBFill:SetBackground( resources.Reputation.BGBad );
            if RepType[i] == 5 then
                RPPBFill:SetBackground( resources.Reputation.BGGuild );
            end
            local RPPB = Turbine.UI.Control(); --Frame
            RPPB:SetParent( RPTTCtr );
            RPPB:SetPosition( 0, 14 );
            RPPB:SetBlendMode( 4 );
            RPPB:SetSize( 200, 15 );
            RPPB:SetBackground( resources.Reputation.BGFrame );

            local RPPC = Turbine.UI.Label(); --percentage
            RPPC:SetParent( RPTTCtr );
            if percentage_done == "max" then
                RPPC:SetPosition( 1, 17 );
                RPPC:SetText( L["RPMSR"] );
            else
                bFound = true;
                RPPC:SetPosition( 9, 17 );
                RPPC:SetText( tp.."/"..tm.."  "..percentage_done.."%" );
            end
            RPPC:SetSize( 200, 9 );
            RPPC:SetForeColor( Color["white"] );
            RPPC:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
            --**^

            local RPLvl = Turbine.UI.Label();
            tl = L[RepTypes[RepType[i]][tr]];
            RPLvl:SetForeColor( Color["white"] );
            if RepType[i] == 10 then RPLvl:SetForeColor( Color["purple"] ); end
            --RPLvl:SetForeColor( Color["red"] );
            --RPLvl:SetForeColor( Color["green"] );

            RPLvl:SetParent( RPTTCtr );
            RPLvl:SetText( tl );
            RPLvl:SetPosition( 205, 15 );
            RPLvl:SetSize( RPTTListBox:GetWidth() - RPPB:GetWidth(), 15 );
            RPLvl:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );

            if HideMaxReps and percentage_done == "max" then
                repLbl:SetVisible( false );
                RPPBFill:SetVisible( false );
                RPPB:SetVisible( false );
                RPPC:SetVisible( false );
                RPLvl:SetVisible( false );
            else
                RPTTPosY = RPTTPosY + 35;
                RPTTListBox:AddItem( RPTTCtr );
            end
        end
    end
    if not bFound then --If not showing any faction
        local lblName = Turbine.UI.Label();
        lblName:SetParent( _G.ToolTipWin );
        lblName:SetText( L["RPnf"] );
        lblName:SetPosition( 0, 0 );
        lblName:SetSize( RPTTListBox:GetWidth(), 35 );
        lblName:SetForeColor( Color["green"] );
        lblName:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
        --lblName:SetBackColor( Color["red"] ); -- debug purpose

        RPTTListBox:AddItem( lblName );

        RPTTPosY = RPTTPosY + 35;
    end

    RPTTListBox:SetHeight( RPTTPosY );
    _G.ToolTipWin:SetHeight( RPTTPosY + 30 );

    local mouseX, mouseY = Turbine.UI.Display.GetMousePosition();

    if _G.ToolTipWin:GetWidth() + mouseX + 5 > screenWidth then
        x = _G.ToolTipWin:GetWidth() - 10;
    else
        x = -5;
    end

    if TBTop then y = -15;
    else y = _G.ToolTipWin:GetHeight() end

    _G.ToolTipWin:SetPosition( mouseX - x, mouseY - y);
end
