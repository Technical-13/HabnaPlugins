-- functionsCtr.lua
-- written by Habna
-- rewritten by many


function ImportCtr( value )
    if value == "WI" then --Wallet infos
        import (AppCtrD.."Wallet");
        import (AppCtrD.."WalletToolTip");
        UpdateWallet();
        WI[ "Ctr" ]:SetPosition( _G.WILocX, _G.WILocY );
    elseif value == "MI" then --Money Infos
        if _G.MIWhere == 1 then
            import (AppCtrD.."MoneyInfos");
            import (AppCtrD.."MoneyInfosToolTip");
            MI[ "Ctr" ]:SetPosition( _G.MILocX, _G.MILocY );
        end
        if _G.MIWhere ~= 3 then
            PlayerAtt = Player:GetAttributes();
            AddCallback(PlayerAtt, "MoneyChanged",
                function(sender, args) UpdateMoney(); end
                );
            AddCallback(sspack, "CountChanged", UpdateSharedStorageGold);
            -- ^^ Thx Heridian!
            UpdateMoney();
        else
            RemoveCallback(PlayerAtt, "MoneyChanged");
            RemoveCallback(sspack, "CountChanged", UpdateSharedStorageGold);
            -- ^^ Thx Heridian!
        end
    elseif value == "DP" then --Destiny Points
        if _G.DPWhere == 1 then
            import (AppCtrD.."DestinyPoints");
            DP[ "Ctr" ]:SetPosition( _G.DPLocX, _G.DPLocY );
        end
        if _G.DPWhere ~= 3 then
            PlayerAtt = Player:GetAttributes();
            AddCallback(PlayerAtt, "DestinyPointsChanged",
                function(sender, args) UpdateDestinyPoints(); end
                );
            UpdateDestinyPoints();
        else
            RemoveCallback(PlayerAtt, "DestinyPointsChanged");
        end
    elseif value == "SP" then --Shards
        if _G.SPWhere == 1 then
            import (AppCtrD.."Shards");
            SP[ "Ctr" ]:SetPosition( _G.SPLocX, _G.SPLocY );
        end
        if _G.SPWhere ~= 3 then UpdateShards(); end
    elseif value == "SM" then --Skirmish Marks
        if _G.SMWhere == 1 then
            import (AppCtrD.."SkirmishMarks");
            SM[ "Ctr" ]:SetPosition( _G.SMLocX, _G.SMLocY );
        end
        if _G.SMWhere ~= 3 then UpdateMarks(); end
    elseif value == "MC" then --Mithril Coins
        if _G.MCWhere == 1 then
            import (AppCtrD.."MithrilCoins");
            MC[ "Ctr" ]:SetPosition( _G.MCLocX, _G.MCLocY );
        end
        if _G.MCWhere ~= 3 then UpdateMithril(); end
    elseif value == "YT" then --Yule Tokens
        if _G.YTWhere == 1 then
            import (AppCtrD.."YuleToken");
            YT[ "Ctr" ]:SetPosition( _G.YTLocX, _G.YTLocY );
        end
        if _G.YTWhere ~= 3 then UpdateYuleToken(); end
    elseif value == "HT" then --Tokens of Hytbold
        if _G.HTWhere == 1 then
            import (AppCtrD.."TokensOfHytbold");
            HT[ "Ctr" ]:SetPosition( _G.HTLocX, _G.HTLocY );
        end
        if _G.HTWhere ~= 3 then UpdateHytboldTokens(); end
    elseif value == "MP" then --Medallions
        if _G.MPWhere == 1 then
            import (AppCtrD.."Medallions");
            MP[ "Ctr" ]:SetPosition( _G.MPLocX, _G.MPLocY );
        end
        if _G.MPWhere ~= 3 then UpdateMedallions(); end
    elseif value == "SL" then --Seals
        if _G.SLWhere == 1 then
            import (AppCtrD.."Seals");
            SL[ "Ctr" ]:SetPosition( _G.SLLocX, _G.SLLocY );
        end
        if _G.SLWhere ~= 3 then UpdateSeals(); end
    elseif value == "CP" then --Commendations
        if _G.CPWhere == 1 then
            import (AppCtrD.."Commendations");
            CP[ "Ctr" ]:SetPosition( _G.CPLocX, _G.CPLocY );
        end
        if _G.CPWhere ~= 3 then UpdateCommendations(); end
    elseif value == "BI" then --Backpack Infos
        import (AppCtrD.."BagInfos");
        --import (AppCtrD.."BagInfosToolTip");
        AddCallback(backpack, "ItemAdded",
            function(sender, args) UpdateBackpackInfos(); end
            );
        AddCallback(backpack, "ItemRemoved",
            function(sender, args)
                ItemRemovedTimer:SetWantsUpdates( true );
            end
            ); --Workaround
        --AddCallback(backpack, "ItemRemoved",
        --    function(sender, args) UpdateBackpackInfos(); end
        --    ); --Add when workaround is not needed anymore
        UpdateBackpackInfos();
        BI[ "Ctr" ]:SetPosition( _G.BILocX, _G.BILocY );
    elseif value == "PI" then --Player Infos
        import (AppCtrD.."PlayerInfos");
        import (AppCtrD.."PlayerInfosToolTip");
        PlayerAtt = Player:GetAttributes();
        AddCallback(Player, "LevelChanged",
            function(sender, args)
                PI["Lvl"]:SetText( Player:GetLevel() );
                PI["Lvl"]:SetSize( PI["Lvl"]:GetTextLength() * NM+1, CTRHeight );
                PI["Name"]:SetPosition( PI["Lvl"]:GetLeft() + PI["Lvl"]:GetWidth() + 5, 0 );
            end);
        AddCallback(Player, "NameChanged",
            function(sender, args)
                PI["Name"]:SetText( Player:GetName() );
                PI["Name"]:SetSize( PI["Name"]:GetTextLength() * TM, CTRHeight );
                AjustIcon(" PI ");
            end);
        XPcb = AddCallback(Turbine.Chat, "Received",
            function(sender, args)
            if args.ChatType == Turbine.ChatType.Advancement then
                xpMess = args.Message;
                if xpMess ~= nil then
                    local xpPattern;
                    if GLocale == "en" then
                        xpPattern = "total of ([%d%p]*) XP";
                    elseif GLocale == "fr" then
                        xpPattern = "de ([%d%p]*) points d'exp\195\169rience";
                    elseif GLocale == "de" then
                        xpPattern = "\195\188ber ([%d%p]*) EP";
                    end
                    local tmpXP = string.match(xpMess,xpPattern);
                    if tmpXP ~= nil then
                        ExpPTS = tmpXP;
                        settings.PlayerInfos.XP = ExpPTS;
                        SaveSettings( false );
                    end
                end
            end
            end);
        UpdatePlayersInfos();
        PI[ "Ctr" ]:SetPosition( _G.PILocX, _G.PILocY );
    elseif value == "DI" then --Durability Infos
        import (AppCtrD.."DurabilityInfos");
        import (AppCtrD.."DurabilityInfosToolTip");
        UpdateDurabilityInfos();
        DI[ "Ctr" ]:SetPosition( _G.DILocX, _G.DILocY );
    elseif value == "EI" then --Equipment Infos
        import (AppCtrD.."EquipInfos");
        import (AppCtrD.."EquipInfosToolTip");
        UpdateEquipsInfos();
        EI[ "Ctr" ]:SetPosition( _G.EILocX, _G.EILocY );
    elseif value == "PL" then --Player Location
        import (AppCtrD.."PlayerLoc");
        --AddCallback(Player, "LocationChanged", UpdatePlayerLoc(); end);
        PLcb = AddCallback(Turbine.Chat, "Received",
            function(sender, args)
            if args.ChatType == Turbine.ChatType.Standard then
                plMess = args.Message;
                if plMess ~= nil then
                    if GLocale == "en" then
                        plPattern = "Entered the ([%a%p%u%l%s]*) %-";
                    elseif GLocale == "fr" then
                        plPattern = "Canal ([%a%p%u%l%s]*) %-";
                    elseif GLocale == "de" then
                        plPattern = "Chat%-Kanal '([%a%p%u%l%s]*) %-";
                    end

                    local tmpPL = string.match( plMess, plPattern );
                    if tmpPL ~= nil then
                        --write("'".. tmpPL .. "'"); -- debug purpose
                        pLLoc = tmpPL;
                        UpdatePlayerLoc( pLLoc );
                        settings.PlayerLoc.L = string.format( pLLoc );
                        SaveSettings( false );
                    end
                end
            end
        end);
        UpdatePlayerLoc( pLLoc );
        PL[ "Ctr" ]:SetPosition( _G.PLLocX, _G.PLLocY );
    elseif value == "TI" then --Track Items
        import (AppCtrD.."TrackItems");
        import (AppCtrD.."TrackItemsToolTip");
        UpdateTrackItems();
        TI[ "Ctr" ]:SetPosition( _G.TILocX, _G.TILocY );
    elseif value == "IF" then --Infamy
        _G.InfamyRanks = {
            [0] = 0, [1] = 500, [2] = 1250, [3] = 2750, [4] = 5750,
            [5] = 14750, [6] = 33500, [7] = 71000, [8] = 146000, [9] = 258500,
            [10] = 408500, [11] = 633500, [12] = 1008500, [13] = 1608500,
            [14] = 2508500, [15] = 3708500,
            };

        if PlayerAlign == 1 then
            --Free people rank icon 0 to 15
            InfIcon = resources.FreePeoples
        else
            --Monster play rank icon 0 to 15
            InfIcon = resources.Monster
        end
        import (AppCtrD.."Infamy");
        import (AppCtrD.."InfamyToolTip");
        ---InfamyCount = Turbine.
        --AddCallback(InfamyCount, "QuantityChanged",
        --    function(sender, args) UpdateInfamy(); end
        --    );
        IFcb = AddCallback(Turbine.Chat, "Received",
            function(sender, args)
            if args.ChatType == Turbine.ChatType.Advancement then
                ifMess = args.Message;
                if ifMess ~= nil then
                    if PlayerAlign == 1 then
                        if GLocale == "en" then
                            ifPattern = "earned ([%d%p]*) renown points";
                        elseif GLocale == "fr" then
                            ifPattern = "gagn\195\169 ([%d%p]*) points " ..
                                "renomm\195\169e";
                        elseif GLocale == "de" then
                            ifPattern = "habt ([%d%p]*) Ansehenspunkte";
                        end
                    else
                        if GLocale == "en" then
                            ifPattern = "earned ([%d%p]*) infamy points";
                        elseif GLocale == "fr" then
                            ifPattern = "gagn\195\169 ([%d%p]*) points " ..
                                "d'infamie";
                        elseif GLocale == "de" then
                            ifPattern = "habt ([%d%p]*) Verrufenheitspunkte";
                        end
                    end

                    local tmpIF = string.match(ifMess,ifPattern);
                    if tmpIF ~= nil then
                        InfamyPTS = InfamyPTS + tmpIF;

                        for i=0, 14 do
                            if tonumber(InfamyPTS) >= _G.InfamyRanks[i] and
                                tonumber(InfamyPTS) < _G.InfamyRanks[i+1] then
                                InfamyRank = i;
                                break
                                end
                        end
                        settings.Infamy.P = string.format("%.0f", InfamyPTS);
                        settings.Infamy.K = string.format("%.0f", InfamyRank);
                        SaveSettings( false );
                        UpdateInfamy();
                    end
                end
            end
            end);
        UpdateInfamy();
        IF[ "Ctr" ]:SetPosition( _G.IFLocX, _G.IFLocY );
    elseif value == "DN" then --Day & Night Time
        import (AppCtrD.."DayNight");
        UpdateDayNight();
        DN[ "Ctr" ]:SetPosition( _G.DNLocX, _G.DNLocY );
    elseif value == "LP" then --LOTRO points
        if _G.LPWhere == 1 then
            import (AppCtrD.."LOTROPoints");
            LP[ "Ctr" ]:SetPosition( _G.LPLocX, _G.LPLocY );
            UpdateLOTROPoints();
        end
        if _G.LPWhere ~= 3 then
            --PlayerLP = Player:GetLOTROPoints();
            --AddCallback(PlayerLP, "LOTROPointsChanged",
            --    function(sender, args) UpdateLOTROPoints(); end
            --);
            LPcb = AddCallback(Turbine.Chat, "Received",
                function(sender, args)
                if args.ChatType == Turbine.ChatType.Advancement then
                    tpMess = args.Message;
                    if tpMess ~= nil then
                        local tpPattern;
                        if GLocale == "en" then
                            tpPattern = "earned ([%d%p]*) LOTRO Points";
                        elseif GLocale == "fr" then
                            tpPattern = "gagn\195\169 ([%d%p]*) points LOTRO";
                        elseif GLocale == "de" then
                            tpPattern = "habt ([%d%p]*) Punkte erhalten";
                        end
                        local tmpLP = string.match(tpMess,tpPattern);
                        if tmpLP ~= nil then
                            LPTS = tmpLP;
                            _G.LOTROPTS = _G.LOTROPTS + LPTS;
                            if _G.LPWhere == 1 then UpdateLOTROPoints(); end
                            SavePlayerLOTROPoints();
                        end
                    end
                end
                end);
        else
            RemoveCallback(Turbine.Chat, "Received", LPcb);
        end
    elseif value == "GT" then --Game Time
        import (AppCtrD.."GameTime");
        --import (AppCtrD.."GameTimeToolTip");
        --PlayerTime = Turbine.Engine.GetDate();
        --AddCallback(PlayerTime, "MinuteChanged",
        --    function(sender, args) UpdateGameTime(); end
        --);
        if _G.ShowBT then UpdateGameTime("bt");
        elseif _G.ShowST then UpdateGameTime("st");
        else UpdateGameTime("gt") end
        if _G.GTLocX + GT[ "Ctr" ]:GetWidth() > screenWidth then
            _G.GTLocX = screenWidth - GT[ "Ctr" ]:GetWidth();
        end --Replace if out of screen
        GT[ "Ctr" ]:SetPosition( _G.GTLocX, _G.GTLocY );
    elseif value == "VT" then --Vault
        import (AppCtrD.."Vault");
        import (AppCtrD.."VaultToolTip");
        AddCallback(vaultpack, "CountChanged",
            function(sender, args) SavePlayerVault(); end
            );
        UpdateVault();
        VT[ "Ctr" ]:SetPosition( _G.VTLocX, _G.VTLocY );
    elseif value == "SS" then --Shared Storage
        import (AppCtrD.."SharedStorage");
        import (AppCtrD.."SharedStorageToolTip");
        AddCallback(sspack, "CountChanged",
            function(sender, args) SavePlayerSharedStorage(); end
            );
        UpdateSharedStorage();
        SS[ "Ctr" ]:SetPosition( _G.SSLocX, _G.SSLocY );
    elseif value == "ASP" then --Amroth Silver Piece
        if _G.ASPWhere == 1 then
            import (AppCtrD.."AmrothSilverPiece");
            ASP[ "Ctr" ]:SetPosition( _G.ASPLocX, _G.ASPLocY );
        end
        if _G.ASPWhere ~= 3 then UpdateAmrothSilverPiece(); end
    elseif value == "SOM" then --Stars of Merit
        if _G.SOMWhere == 1 then
            import (AppCtrD.."StarsofMerit");
            SOM[ "Ctr" ]:SetPosition( _G.SOMLocX, _G.SOMLocY );
        end
        if _G.SOMWhere ~= 3 then UpdateStarsofMerit(); end
    elseif value == "CGSP" then --Central Gondor Silver Piece
        if _G.CGSPWhere == 1 then
            import (AppCtrD.."CentralGondorSilverPiece");
            CGSP[ "Ctr" ]:SetPosition( _G.CGSPLocX, _G.CGSPLocY );
        end
        if _G.CGSPWhere ~= 3 then UpdateCentralGondorSilverPiece(); end
    elseif value == "GGB" then --Gift giver's Brand
        if _G.GGBWhere == 1 then
            import (AppCtrD.."GiftgiversBrand");
            GGB[ "Ctr" ]:SetPosition( _G.GGBLocX, _G.GGBLocY );
        end
        if _G.GGBWhere ~= 3 then UpdateGiftgiversBrand(); end
    elseif value == "BB" then --Bingo Badge
        if _G.BBWhere == 1 then
            import (AppCtrD.."BingoBadge");
            BB[ "Ctr" ]:SetPosition( _G.BBLocX, _G.BBLocY );
        end
        if _G.BBWhere ~= 3 then UpdateBingoBadge(); end
    elseif value == "LAT" then --Anniversary Token
        if _G.LATWhere == 1 then
            import (AppCtrD.."AnniversaryToken");
            LAT[ "Ctr" ]:SetPosition( _G.LATLocX, _G.LATLocY );
        end
        if _G.LATWhere ~= 3 then UpdateAnniversaryToken(); end
	elseif value == "MOE" then --Motes of Enchantment
        if _G.MOEWhere == 1 then
            import (AppCtrD.."MotesOfEnchantment");
            MOE[ "Ctr" ]:SetPosition( _G.MOELocX, _G.MOELocY );
        end
        if _G.MOEWhere ~= 3 then UpdateMotesOfEnchantment(); end	
	elseif value == "EOE" then --Embers of Enchantment
        if _G.EOEWhere == 1 then
            import (AppCtrD.."EmbersOfEnchantment");
            EOE[ "Ctr" ]:SetPosition( _G.EOELocX, _G.EOELocY );
        end
        if _G.EOEWhere ~= 3 then UpdateEmbersOfEnchantment(); end
	elseif value == "FOS" then --Figments of Splendour
        if _G.FOSWhere == 1 then
            import (AppCtrD.."FigmentsOfSplendour");
            FOS[ "Ctr" ]:SetPosition( _G.FOSLocX, _G.FOSLocY );
        end
        if _G.FOSWhere ~= 3 then UpdateFigmentsOfSplendour(); end
	elseif value == "FFT" then --Fall Festival Tokens
        if _G.FFTWhere == 1 then
            import (AppCtrD.."FallFestivalToken");
            FFT[ "Ctr" ]:SetPosition( _G.FFTLocX, _G.FFTLocY );
        end
        if _G.FFTWhere ~= 3 then UpdateFallFestivalToken(); end
	elseif value == "FFAT" then --Farmers Faire Tokens
        if _G.FFATWhere == 1 then
            import (AppCtrD.."FarmersFaireToken");
            FFAT[ "Ctr" ]:SetPosition( _G.FFATLocX, _G.FFATLocY );
        end
        if _G.FFATWhere ~= 3 then UpdateFarmersFaireToken(); end
	elseif value == "SPL" then --Spring Leaves
        if _G.SPLWhere == 1 then
            import (AppCtrD.."SpringLeaf");
            SPL[ "Ctr" ]:SetPosition( _G.SPLLocX, _G.SPLLocY );
        end
        if _G.SPLWhere ~= 3 then UpdateSpringLeaf(); end	
	elseif value == "MST" then --Midsummer Tokens
        if _G.MSTWhere == 1 then
            import (AppCtrD.."MidsummerToken");
            MST[ "Ctr" ]:SetPosition( _G.MSTLocX, _G.MSTLocY );
        end
        if _G.MSTWhere ~= 3 then UpdateMidsummerToken(); end
	elseif value == "AS" then --Ancient Script
        if _G.ASWhere == 1 then
            import (AppCtrD.."AncientScript");
            AS[ "Ctr" ]:SetPosition( _G.ASLocX, _G.ASLocY );
        end
        if _G.ASWhere ~= 3 then UpdateAncientScript(); end	
    elseif value == "BOT" then --Badge of Taste
        if _G.BOTWhere == 1 then
            import (AppCtrD.."BadgeOfTaste");
            BOT[ "Ctr" ]:SetPosition( _G.BOTLocX, _G.BOTLocY );
        end
        if _G.BOTWhere ~= 3 then UpdateBadgeOfTaste(); end
    elseif value == "BOD" then --Badge of Dishonour
        if _G.BODWhere == 1 then
            import (AppCtrD.."BadgeOfDishonour");
            BOD[ "Ctr" ]:SetPosition( _G.BODLocX, _G.BODLocY );
        end
        if _G.BODWhere ~= 3 then UpdateBadgeOfDishonour(); end
	elseif value == "RP" then --Reputation Points
        RPGR = { ['default'] = {
            [0] = 10000, [1] = 10000, [2] = 20000, [3] = 25000, [4] = 30000,
            [5] = 45000, [6] = 60000, [7] = 90000, [8] = 200000, [9] = 1 },
            ['RPTGA'] = { [1] = 10000, [2] = 20000, [3] = 20000, [4] = 1 },
            ['RPTWC'] = { [1] = 10000, [2] = 15000, [3] = 20000, [4] = 20000,
                        [5] = 20000, [6] = 20000, [7] = 30000, [8] = 1 },
            ['RPRMI'] = { [1] = 4000, [2] = 6000, [3] = 8000, [4] = 10000,
                        [5] = 12000, [6] = 14000, [7] = 16000, [8] = 18000,
                        [9] = 20000, [10] = 1 },
			['RPGA'] = { [1] = 10000, [2] = 20000, [3] = 25000, [4] = 30000,
                        [5] = 45000, [6] = 1 }			
            };
            -- Reputation max points per rank
        import (AppCtrD.."Reputation");
        import (AppCtrD.."ReputationToolTip");
        RPcb = AddCallback(Turbine.Chat, "Received",
            function( sender, args )
                if (args.ChatType ~= Turbine.ChatType.Advancement) then return; end
                
                rpMess = args.Message;
                if rpMess ~= nil then
                -- Check string, Reputation Name and Reputation Point pattern
                    local cstr, rpnPattern, rppPatern, rpbPattern;
                    if GLocale == "en" then
                        rpnPattern = "reputation with (.*) has"..
                            " (.*) by";
                        rppPattern = "has .* by ([%d%p]*)%.";
                    elseif GLocale == "fr" then
                        rpnPattern = "de la faction (.*) a "..
                            "augment\195\169 de";
                        rppPattern = "a augment\195\169 de ([%d%p]*)%.";
                    elseif GLocale == "de" then
                        rpnPattern = "Euer Ruf bei (.*) hat sich um";
                        rppPattern = "hat sich um ([%d%p]*) verbessert";
                    end
                    -- check string if an accelerator was used
                    if GLocale == "de" then
                        cstr = string.match( rpMess, "Bonus" );
                    else cstr = string.match( rpMess, "bonus" ); end
                    -- Accelerator was used, end of string is different.
                    -- Ex. (700 from bonus). instead of just a dot after the
                    -- amount of points
                    if cstr ~= nil then
                        if GLocale == "en" then
                            rppPattern = "has increased by ([%d%p]*) %(";
                            rpbPattern = "%(([%d%p]*) from bonus";
                        elseif GLocale == "fr" then
                            rppPattern = "a augment\195\169 de ([%d%p]*) %(";
                            rpbPattern = "%(([%d%p]*) du bonus";
                        elseif GLocale == "de" then
                            rpnPattern = "Euer Ruf bei der Gruppe \"([%a%p%u%l%s]*)\" wurde um";
                            rppPattern = "wurde um ([%d%p]*) erh\195\182ht";
                            rpbPattern = "%(([%d%p]*) durch Bonus";
                        end
                    end
                    local rpName,increaseOrDecrease = string.match( rpMess,rpnPattern );
                    -- Reputation Name
                    if rpMess ~= nil and rpName ~= nil then
                        if rpbPattern ~= nil then
                            local rpBonus = string.match( rpMess, rpbPattern );
                            rpBonus = string.gsub( rpBonus, ",", "" );
                            tot = PlayerReputation[ PN ][ "RPACC" ].P;
                            tot = tot - rpBonus;
                            if tot < 0 then
                                tot = 0;
                            end
                            PlayerReputation[ PN ][ "RPACC" ].P = string.format( "%.0f", tot );
                        end
                        local rpPTS = string.match( rpMess, rppPattern );
                        if (increaseOrDecrease == L[ "RPDECREASE"]) then
                            rpPTS = -rpPTS;
                        end
                        -- Reputation points
                        local rpPTS = string.gsub( rpPTS, ",", "" );
                        -- Replace "," in 1,400 to get 1400
                        for i = 1, #RepOrder do
                            local v = RepType[ i ];
                            local name = RepOrder[ i ];
                            if L[ name ] == rpName then
                                local lastR = #RepTypes[ v ]
                                -- Check if new points is equal or bigger
                                -- of the max points
                                local tot = PlayerReputation[ PN ][ name ].P;
                                tot = tot + rpPTS;
                                local max = tonumber( PlayerReputation[PN][name].R );
                                if max == lastR and tot > 0 then
                                    tot = 0;
                                end
                                if v == 2 or v == 7 or v == 15 then
                                    max = max - 1
                                elseif v == 8 then
                                    max = max - 1
                                end
                                RPPROG = "default";
                                if name == "RPTGA" or name == "RPTWC" or name == "RPRMI" or name == "RPGA" then
                                    RPPROG = name;
                                end
                                max = RPGR[RPPROG][ max ];
                                if tot >= max then
                                    -- true, then calculate diff to add to next rank
                                    tot = tot - max;
                                    -- Change rank & points
                                    PlayerReputation[ PN ][ name ].R = tostring( PlayerReputation[ PN ][ name ].R + 1 );
                                elseif tot < 0 then
                                    local newR = tonumber( PlayerReputation[ PN ][ name ].R ) - 1;
                                    isNewRNegative = newR;
                                    if v == 2 or v == 7 or v == 8 or v == 15 then
                                        isNewRNegative = isNewRNegative - 1;
                                    end
                                    if isNewRNegative >= 0 then
                                        max = RPGR[RPPROG][ ( isNewRNegative ) ];
                                        PlayerReputation[ PN ][ name ].R = tostring( newR );
                                        tot = tot + max;
                                    end
                                end
                                if PlayerReputation[ PN ][ name ].R == lastR then
                                    tot = 0;
                                end
                                -- add points
                                PlayerReputation[ PN ][ name ].P = string.format( "%.0f", tot );
                                break
                            end
                        end
                        SavePlayerReputation();
                    end
                end
            end);
        UpdateReputation();
        RP[ "Ctr" ]:SetPosition( _G.RPLocX, _G.RPLocY );
    end
end


function GetEquipmentInfos()
    LoadEquipmentTable();
    PlayerEquipment = Player:GetEquipment();
    if PlayerEquipment == nil then
        write("<rgb=#FF3333>No equipment, returning.</rgb>");
        return
    end
    --Remove when Player Equipment info are available before plugin is loaded

    itemEquip = {};
    itemScore, numItems = 0, 0;
    Wq = 4; -- weight Quality
    Wd = 1; -- weight Durability

    for i, v in ipairs( EquipSlots ) do
        local PlayerEquipItem = PlayerEquipment:GetItem( v );
        itemEquip[i] = Turbine.UI.Lotro.ItemControl( PlayerEquipItem );

        -- Item Name, WearState, Quality & Durability
        if PlayerEquipItem ~= nil then
            itemEquip[i].Item = true;
            itemEquip[i].Name = PlayerEquipItem:GetName();
            itemEquip[i].Slot = Slots[i];--Debug

            local Quality = 10*((6-PlayerEquipItem:GetQuality())%6);

            local Durability = PlayerEquipItem:GetDurability();
            if Durability ~= 0 then
                Durability = 10*((Durability%7)+1);
            end

            itemEquip[i].Score =
                round((Wq*Quality*7 + Wd*Durability*5)/(3.5*(Wq + Wd)));

            itemEquip[i].WearState = PlayerEquipItem:GetWearState();
            if itemEquip[i].WearState == 0 then
                itemEquip[i].WearStatePts = 0; -- undefined
            elseif itemEquip[i].WearState == 3 then
                itemEquip[i].WearStatePts = 0; -- Broken / cassé
            elseif itemEquip[i].WearState == 1 then
                itemEquip[i].WearStatePts = 20; -- Damaged / endommagé
            elseif itemEquip[i].WearState == 4 then
                itemEquip[i].WearStatePts = 99; -- Worn / usé
            elseif itemEquip[i].WearState == 2 then
                itemEquip[i].WearStatePts = 100;
            end -- Pristine / parfait
            if itemEquip[i].WearState ~= 0 then
                -- undefined items shouldn't be counted
                numItems = numItems + 1;
            end

            itemEquip[i].BImgID = PlayerEquipItem:GetBackgroundImageID();
            itemEquip[i].QImgID = PlayerEquipItem:GetQualityImageID();
            itemEquip[i].UImgID = PlayerEquipItem:GetUnderlayImageID();
            itemEquip[i].SImgID = PlayerEquipItem:GetShadowImageID();
            itemEquip[i].IImgID = PlayerEquipItem:GetIconImageID();

            itemEquip[i].wsHandler = AddCallback(
                PlayerEquipItem, "WearStateChanged",
                function(sender, args) ChangeWearState(i); end
                );

            if _G.Debug then
                write("<rgb=#00FF00>"..numItems.."</rgb> / <rgb=#FF0000>"..i..
                    "</rgb>: <rgb=#6969FF>"..itemEquip[i].Slot..
                    ":</rgb> \"<rgb=#CECECE>"..itemEquip[i].Name..
                    "</rgb>\" is of "..Quality.." quality and "..Durability..
                    " durability with a wear state of "
                    ..itemEquip[i].WearState.." ("..itemEquip[i].WearStatePts..
                    "%) for an overall score of: "..itemEquip[i].Score );
                    --Summary debug line for all stuff in here
            end
        else
            itemEquip[i].Item = false;
            itemEquip[i].Name = "zEmpty";
            itemEquip[i].Score = 0;
            itemEquip[i].WearState = 0;
            itemEquip[i].WearStatePts = 0;

            if _G.Debug then
                write("<rgb=#FF0000>"..i.."</rgb>: <rgb=#6969FF>"..Slots[i]..
                    ":</rgb> <rgb=#FF3333>NO ITEM</rgb>");
            end
        end
    end
end

function LoadPlayerItemTrackingList()
    local locale = "TitanBarPlayerItemTrackingList" .. GLocale:upper();
    ITL = Turbine.PluginData.Load(Turbine.DataScope.Character, locale);
    if ITL == nil then ITL = {}; end
end

function SavePlayerItemTrackingList(ITL)
    local newt = {};
    for k, v in pairs(ITL) do newt[tostring(k)] = v; end
    ITL = newt;
    local locale = "TitanBarPlayerItemTrackingList" .. GLocale:upper();
    Turbine.PluginData.Save(Turbine.DataScope.Character, locale, ITL);
end

function LoadPlayerMoney()
    wallet = Turbine.PluginData.Load(
        Turbine.DataScope.Server, "TitanBarPlayerWallet");

    if wallet == nil then wallet = {}; end

    local PN = Player:GetName();
    local PlayerAtt = Player:GetAttributes();

    if wallet[PN] == nil then wallet[PN] = {}; end
    if wallet[PN].Show == nil then wallet[PN].Show = true; end
    if wallet[PN].ShowToAll == nil then wallet[PN].ShowToAll = true; end
    _G.SCM = wallet[PN].Show;
    _G.SCMA = wallet[PN].ShowToAll;


    --Convert wallet
    --Removed 2017-02-07 (after 2012-08-18)
    --Restored 2017-10-02 (was causing "Invalid Data Scope" bug)
    local tGold, tSilver, tCopper, bOk;
    for k,v in pairs(wallet) do
        if wallet[k].Gold ~= nil then
            bOk = true;
            tGold = tonumber(wallet[k].Gold);
            wallet[k].Gold = nil;
        end
        if wallet[k].Silver ~= nil then
            bOk = true;
            tSilver = tonumber(wallet[k].Silver);
            wallet[k].Silver = nil;
        end
        if wallet[k].Copper ~= nil then
            bOk = true;
            tCopper = tonumber(wallet[k].Copper);
            wallet[k].Copper = nil;
            if tCopper < 10 then
                tCopper = "0".. tCopper;
            end
        end

        if bOk then
            local strdata;
            if tGold == 0 then
                if tSilver == 0 then
                    strdata = tCopper;
                else
                    strdata = tSilver..tCopper;
                end
            else
                if tSilver == 0 then
                    strdata = tGold.."000"..tCopper;
                else
                    strdata = tGold..tSilver..tCopper;
                end
            end
            wallet[k].Money = tostring(strdata);
        end
    end

    --Statistics section
    local DDate = Turbine.Engine.GetDate();
    DOY = tostring(DDate.DayOfYear);
    walletStats = Turbine.PluginData.Load(
        Turbine.DataScope.Server, "TitanBarPlayerWalletStats");
    if walletStats == nil then walletStats = {};
    else
        for k,v in pairs(walletStats) do
            if k ~= DOY then
                walletStats[k] = nil;
            end
        end
    end --Delete old date entry
    if walletStats[DOY] == nil then walletStats[DOY] = {}; end
    if walletStats[DOY][PN] == nil then
        walletStats[DOY][PN] = {};
        walletStats[DOY][PN].TotEarned = "0";
        walletStats[DOY][PN].TotSpent = "0";
        walletStats[DOY][PN].SumTS = "0";
    end
    walletStats[DOY][PN].Start = tostring(PlayerAtt:GetMoney());
    walletStats[DOY][PN].Had = tostring(PlayerAtt:GetMoney());
    walletStats[DOY][PN].Earned = "0";
    walletStats[DOY][PN].Spent = "0";
    walletStats[DOY][PN].SumSS = "0";
    --

    Turbine.PluginData.Save(
        Turbine.DataScope.Server, "TitanBarPlayerWalletStats", walletStats);
end

-- **v Save player wallet infos v**
function SavePlayerMoney( save )
    if string.sub( PN, 1, 1 ) == "~" then return end; --Ignore session play

    wallet[PN].Show = _G.SCM;
    wallet[PN].ShowToAll = _G.SCMA;
    wallet[PN].Money = tostring( PlayerAtt:GetMoney() );

    -- Calculate Gold/Silver/Copper Total
    GoldTot, SilverTot, CopperTot = 0, 0, 0;
    gold, silver, copper = 0, 0, 0;

    for k,v in pairs( wallet ) do
        DecryptMoney( v.Money );
        if k == PN then
            if v.Show then
                GoldTot = GoldTot + gold;
                SilverTot = SilverTot + silver;
                CopperTot = CopperTot + copper;
            end
        else
            if v.ShowToAll or v.ShowToAll == nil then
                GoldTot = GoldTot + gold;
                SilverTot = SilverTot + silver;
                CopperTot = CopperTot + copper;
            end
        end
    end

    if ( CopperTot > 999 ) then
        SilverTot = SilverTot + ( CopperTot / 1000 );
        CopperTot = CopperTot % 1000;
    end

    if ( SilverTot > 999 ) then
        GoldTot = GoldTot + ( SilverTot / 1000 );
        SilverTot = SilverTot % 1000;
    end

    if save then
        Turbine.PluginData.Save(
            Turbine.DataScope.Server, "TitanBarPlayerWallet", wallet);
    end
end
-- **^

function LoadPlayerWallet()
    PlayerWallet = Player:GetWallet();
    PlayerWalletSize = PlayerWallet:GetSize();
    if PlayerWalletSize == 0 then return end
    -- ^^ Remove when Wallet info are available before plugin is loaded

    for i = 1, PlayerWalletSize do
        local CurItem = PlayerWallet:GetItem(i);
        local CurName = PlayerWallet:GetItem(i):GetName();

        PlayerCurrency[CurName] = CurItem;
        if PlayerCurrencyHandler[CurName] == nil then
            PlayerCurrencyHandler[CurName] = AddCallback(
                PlayerCurrency[CurName], "QuantityChanged",
                function(sender, args) UpdateCurrency(CurName); end
            );
        end
    end
end

function LoadPlayerVault()
    PlayerVault = Turbine.PluginData.Load(
        Turbine.DataScope.Server, "TitanBarVault");
    if PlayerVault == nil then PlayerVault = {}; end
    if PlayerVault[PN] == nil then PlayerVault[PN] = {}; end
end

function SavePlayerVault()
    if string.sub( PN, 1, 1 ) == "~" then return end; --Ignore session play

    vaultpackSize = vaultpack:GetCapacity();
    vaultpackCount = vaultpack:GetCount();

    PlayerVault[PN] = {};

    for ii = 1, vaultpackCount do
        local ind = tostring(ii);
        PlayerVault[PN][ind] = vaultpack:GetItem(ii);
        local iteminfo = PlayerVault[PN][ind]:GetItemInfo();

        PlayerVault[PN][ind].Q = tostring(iteminfo:GetQualityImageID());
        PlayerVault[PN][ind].B = tostring(iteminfo:GetBackgroundImageID());
        PlayerVault[PN][ind].U = tostring(iteminfo:GetUnderlayImageID());
        PlayerVault[PN][ind].S = tostring(iteminfo:GetShadowImageID());
        PlayerVault[PN][ind].I = tostring(iteminfo:GetIconImageID());
        PlayerVault[PN][ind].T = tostring(iteminfo:GetName());
        local tq = tostring(PlayerVault[PN][ind]:GetQuantity());
        if tq == "1" then tq = ""; end
        PlayerVault[PN][ind].N = tq;
        PlayerVault[PN][ind].Z = tostring(vaultpackSize);
    end

    Turbine.PluginData.Save(
        Turbine.DataScope.Server, "TitanBarVault", PlayerVault);
end

function LoadPlayerSharedStorage()
    PlayerSharedStorage = Turbine.PluginData.Load(Turbine.DataScope.Server,
        "TitanBarSharedStorage");
    if PlayerSharedStorage == nil then PlayerSharedStorage = {}; end
end

function SavePlayerSharedStorage()
    if string.sub( PN, 1, 1 ) == "~" then return end; --Ignore session play

    sspackSize = sspack:GetCapacity();
    sspackCount = sspack:GetCount();

    PlayerSharedStorage = {};

    for ii = 1, sspackCount do
        local ind = tostring(ii);
        PlayerSharedStorage[ind] = sspack:GetItem( ii );
        local iteminfo = PlayerSharedStorage[ind]:GetItemInfo();

        PlayerSharedStorage[ind].Q = tostring(iteminfo:GetQualityImageID());
        PlayerSharedStorage[ind].B = tostring(iteminfo:GetBackgroundImageID());
        PlayerSharedStorage[ind].U = tostring(iteminfo:GetUnderlayImageID());
        PlayerSharedStorage[ind].S = tostring(iteminfo:GetShadowImageID());
        PlayerSharedStorage[ind].I = tostring(iteminfo:GetIconImageID());
        PlayerSharedStorage[ind].T = tostring(iteminfo:GetName());
        local tq = tostring(PlayerSharedStorage[ind]:GetQuantity());
        if tq == "1" then tq = ""; end
        PlayerSharedStorage[ind].N = tq;
        PlayerSharedStorage[ind].Z = tostring(sspackSize);
    end

    Turbine.PluginData.Save(
        Turbine.DataScope.Server, "TitanBarSharedStorage", PlayerSharedStorage
        );
end

-- vvv Added by Heridan vvv
function UpdateSharedStorageGold( sender, args )
    local storagesize = sspack:GetCount()
    local sharedmoney = 0
    local i
    for i = 1, storagesize do
        local item = sspack:GetItem(i)
        if item ~= nil then
            local name = item:GetName()
            local count = item:GetQuantity()
            if name == L[ "MGB" ] then -- Gold Bag
                sharedmoney = sharedmoney + ( count * 1000000 )
            elseif name == L[ "MSB" ] then -- Silver Bag
                sharedmoney = sharedmoney + ( count * 100000 )
            elseif name == L[ "MCB" ] then -- Copper Bag
                sharedmoney = sharedmoney + ( count * 10000 )
            end
        end
    end
    wallet[ L[ "MStorage" ] ] =  {
        [ "Show" ] = true,
        [ "ShowToAll" ] = true,
        [ "Money" ] = tostring( sharedmoney )
    }
    UpdateMoney()
end
-- ^^^ Added by Heridan ^^^

function LoadPlayerBags()
    PlayerBags = Turbine.PluginData.Load(
        Turbine.DataScope.Server, "TitanBarBags");
    if PlayerBags == nil then PlayerBags = {}; end
    if PlayerBags[PN] == nil then PlayerBags[PN] = {}; end
end

function SavePlayerBags()
    if string.sub( PN, 1, 1 ) == "~" then return end; --Ignore session play

    backpackSize = backpack:GetSize();

    PlayerBags[PN] = {};
    ii=1;
    for i = 1, backpackSize do

        local items = backpack:GetItem( i );

        if items ~= nil then
            local ind = tostring(ii);
            PlayerBags[PN][ind] = items;
            local iteminfo = PlayerBags[PN][ind]:GetItemInfo();

            --local sc = Turbine.UI.Lotro.Shortcut( items );
            --PlayerBags[PN][ind].C = sc:GetData();

            PlayerBags[PN][ind].Q = tostring(iteminfo:GetQualityImageID());
            PlayerBags[PN][ind].B = tostring(iteminfo:GetBackgroundImageID());
            PlayerBags[PN][ind].U = tostring(iteminfo:GetUnderlayImageID());
            PlayerBags[PN][ind].S = tostring(iteminfo:GetShadowImageID());
            PlayerBags[PN][ind].I = tostring(iteminfo:GetIconImageID());
            PlayerBags[PN][ind].T = tostring(iteminfo:GetName());
            local tq = tostring(PlayerBags[PN][ind]:GetQuantity());
            if tq == "1" then tq = ""; end
            PlayerBags[PN][ind].N = tq;
            PlayerBags[PN][ind].Z = tostring(backpackSize);

            ii = ii +1;
        end
    end

    Turbine.PluginData.Save(
        Turbine.DataScope.Server, "TitanBarBags", PlayerBags);
    --[[
    Turbine.PluginData.Save(Turbine.DataScope.Server, "TitanBarSharedStorage",
        PlayerBags[PN]); --Debug purpose since i dont have a shared storage
    --]]
end

function LoadPlayerReputation()
    RepOrder = {
        -- Normal faction advancement + Forochel and Minas Tirith
        "RPMB", "RPTH", "RPTMS", "RPRE", "RPER", "RPTEl", "RPCN", "RPTWA",
        "RPLF", "RPWB", "RPLOTA", "RPTEg", "RPIGG", "RPIGM", "RPAME", "RPTGC", "RPG", "RPM",
        "RPTRS", "RPHLG", "RPMD", "RPTR", "RPMEV", "RPMN", "RPMS", "RPMW",
        "RPPW", "RPSW", "RPTEo", "RPTHe", "RPTEFF", "RPMRV", "RPMDE", "RPML",
        "RPP", "RPRI", "RPRR", "RPDMT", "RPDA",
        -- Dol Amroth Buildings (position 37< <46)
        "RPDAA", "RPDAB", "RPDAD", "RPDAGH", "RPDAL", "RPDAW", "RPDAM",
        "RPDAS",
        -- Crafting guilds (position 45< <53)
        "RPJG", "RPCG", "RPSG", "RPTG", "RPWoG", "RPWeG", "RPMG",
        -- Host of the West
        "RPHOTW", "RPHOTWA", "RPHOTWW", "RPHOTWP",
        -- Plateau of Gorgoroth
        "RPCOG", "RPEOFBs", "RPEOFBn", "RPRSC",
        -- Strongholds of the North
        "RPDOE", "RPEOF", "RPMOD", "RPGME",
        -- Vales of Anduin
        "RPWF",
        -- Minas Morgul
        "RPTGA", "RPTWC", "RPRMI",
        -- Wells of Langflood
		"RPPOW",
		-- Elderslade
		"RPMOG", "RPGA",
		--Azanulbizar
		"RPHOT", "RPKU",
		-- Special Event
        "RPCCLE", "RPTAA", "RPTIL",
        -- Reputation Accelerator
        "RPACC",
    };
    RepType = {
        1, 1, 1, 1, 1, 1, 1, 1,
        2, 1, 15, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 3, 1,
        -- DA Buildings
        4, 4, 4, 4, 4, 4, 4, 4,
        -- Crafting guilds
        5, 5, 5, 5, 5, 5, 5,
        -- Host of the West
        3, 1, 1, 1,
        -- Plateau of Gorgoroth
        3, 8, 8, 9,
        -- Strongholds of the North
        11, 1, 1, 1,
        -- Vales of Anduin
        1,
        -- Minas Morgul
        12, 3, 13,
        -- Wells of Langflood
		1,
		-- Elderslade
		1, 14,
		--Azanulbizar
		16, 15,
		-- Special Event
        6, 7, 7,
        -- Accelerator
        10,
    };
    RepTypes = {
        [1] = {"RPGL1", "RPGL2", "RPGL3", "RPGL4", "RPGL5"}, -- normal
        [2] = {"RPBL1", "RPGL1", "RPGL2", "RPGL3", "RPGL4", "RPGL5"}, -- Forochel
        [3] = {"RPGL1", "RPGL2", "RPGL3", "RPGL4", "RPGL5", "RPGL6", "RPGL7", "RPGL8"}, -- extended normal
        [4] = {"RPGL1", "RPGL2"}, -- DA buildings
        [5] = {"RPGG1", "RPGG2", "RPGG3", "RPGG4", "RPGG5", "RPGG6", "RPGG7", "RPGG8", "RPGG9"}, -- craft guild
        [6] = {"RCCLE1", "RCCLE2", "RCCLE3", "RCCLE4", "RCCLE5"}, -- chicken
        [7] = {"RPBL2", "RPGL1", "RPGL2", "RPGL3", "RPGL4", "RPGL5"}, -- inn/alhe
        [8] = {"RPBL2", "RPBL1", "RPGL1"}, -- fushaum
        [9] = {"RPBL1", "RPGL1", "RPGL2", "RPGL3"}, -- red sky clan
        [10] = {"RPBR"}, -- Accelerator
        [11] = {"RPGL1", "RPGL2", "RPGL3", "RPGL4", "RPGL5", "RPGL6"}, -- why another??? Dwarfs of Erebor
        [12] = {"RPGL5", "RPGL6", "RPGL7", "RPGL8"}, -- another one for Minas Morgul
        [13] = {"RPMI1", "RPMI2", "RPMI3", "RPMI4", "RPMI5", "RPMI6", "RPMI7", "RPMI8", "RPMI9", "RPMI10"}, -- and another one for the Reclamation, because... why not?
		[14] = {"RPGA1", "RPGA2", "RPGA3", "RPGA4", "RPGA5", "RPGA6"}, -- The Gabil'akkâ
		[15] = {"RPBL1", "RPGL1", "RPGL2", "RPGL3", "RPGL4"}, -- Outsider to Ally
		[16] = {"RPGA1", "RPGA2", "RPGA3", "RPGA4", "RPGA5"}, -- The Haban'akkâ of Thráin		
    };
    PlayerReputation = Turbine.PluginData.Load(
        Turbine.DataScope.Server, "TitanBarReputation");
    if PlayerReputation == nil then PlayerReputation = {}; end
    if PlayerReputation[PN] == nil then PlayerReputation[PN] = {}; end
    for i = 1, #RepOrder do
        if PlayerReputation[PN][RepOrder[i]] == nil then
            PlayerReputation[PN][RepOrder[i]] = {};
        end
        if PlayerReputation[PN][RepOrder[i]].P == nil then
            PlayerReputation[PN][RepOrder[i]].P = "0";
        end --Points
        if PlayerReputation[PN][RepOrder[i]].V == nil then
            PlayerReputation[PN][RepOrder[i]].V = false;
        end --Show faction in tooltip
        if PlayerReputation[PN][RepOrder[i]].R == nil then
            PlayerReputation[PN][RepOrder[i]].R = "1";
        end --rank
        -- delete old values vv
        if PlayerReputation[PN][RepOrder[i]].T ~= nil then
            PlayerReputation[PN][RepOrder[i]].T = nil;
        end
        if PlayerReputation[PN][RepOrder[i]].N ~= nil then
            PlayerReputation[PN][RepOrder[i]].N = nil;
        end
        -- ^^
    end
    -- if old reputation data exists, load them into new.
    for i = 1, 60 do
        if PlayerReputation[PN][tostring(i)] == nil then break end
        for j = 1, #RepOrder do
            local ind = tostring(i);
            if PlayerReputation[PN][ind].en == L[RepOrder[j]] or
                    PlayerReputation[PN][ind].de == L[RepOrder[j]] or
                    PlayerReputation[PN][ind].fr == L[RepOrder[j]] then
                PlayerReputation[PN][RepOrder[j]].P = PlayerReputation[PN][ind].P;
                PlayerReputation[PN][RepOrder[j]].V = PlayerReputation[PN][ind].V;
                PlayerReputation[PN][RepOrder[j]].R = PlayerReputation[PN][ind].R;
                PlayerReputation[PN][ind] = nil;
                break;
            end
        end
    end
    -- ^^ Old rep data load
    SavePlayerReputation();
end

function SavePlayerReputation()
    if string.sub( PN, 1, 1 ) == "~" then return end; --Ignore session play

    Turbine.PluginData.Save(
        Turbine.DataScope.Server, "TitanBarReputation", PlayerReputation);
end

function LoadPlayerLOTROPoints()
    PlayerLOTROPoints = Turbine.PluginData.Load(
        Turbine.DataScope.Account, "TitanBarLOTROPoints");
    if PlayerLOTROPoints == nil then
        PlayerLOTROPoints = Turbine.PluginData.Load(
            Turbine.DataScope.Account, "TitanBarTurbinePoints");
        -- Check for the old file name.
        if PlayerLOTROPoints == nil then
            PlayerLOTROPoints = {};-- If old doesn't exist either, start clean.
        else
            if PlayerLOTROPoints.PTS == nil then
                PlayerLOTROPoints.PTS = "0";
            end
            _G.LOTROPTS = PlayerLOTROPoints.PTS;
            SavePlayerLOTROPoints()
            -- If old named file does exist, create new using data from file
            -- with old name. Then delete old named file
        end
    end
    if PlayerLOTROPoints.PTS == nil then PlayerLOTROPoints.PTS = "0"; end
    _G.LOTROPTS = PlayerLOTROPoints.PTS;
end

function SavePlayerLOTROPoints()
    PlayerLOTROPoints.PTS = string.format("%.0f", _G.LOTROPTS);
    Turbine.PluginData.Save(
        Turbine.DataScope.Account, "TitanBarLOTROPoints", PlayerLOTROPoints);
end

function UpdateCurrency( str )
    if str == L[ "MSP" ] and ShowShards then UpdateShards(); end
    if str == L[ "MSM" ] and ShowSkirmishMarks then UpdateMarks(); end
    if str == L[ "MMP" ] and ShowMedallions then UpdateMedallions(); end
    if str == L[ "MSL" ] and ShowSeals then UpdateSeals(); end
    if str == L[ "MCP" ] and ShowCommendations then UpdateCommendations(); end
    if str == L[ "MMC" ] and ShowMithril then UpdateMithril(); end
    if str == L[ "MYT" ] and ShowYuleToken then UpdateYuleToken(); end
    if str == L[ "MHT" ] and ShowHytboldTokens then UpdateHytboldTokens(); end
    if str == L[ "MASP" ] and ShowAmrothSilverPiece then UpdateAmrothSilverPiece(); end
    if str == L[ "MSOM" ] and ShowStarsofMerit then UpdateStarsofMerit(); end
    if str == L[ "MCGSP" ] and ShowCentralGondorSilverPiece then UpdateCentralGondorSilverPiece(); end
    if str == L[ "MGGB" ] and ShowGiftgiversBrand then UpdateGiftgiversBrand(); end
    if str == L[ "MBB" ] and ShowBingoBadge then UpdateBingoBadge(); end
    if str == L[ "MLAT" ] and ShowAnniversaryToken then UpdateAnniversaryToken(); end
	if str == L[ "MMOE" ] and ShowMotesOfEnchantment then UpdateMotesOfEnchantment(); end
	if str == L[ "MEOE" ] and ShowEmbersOfEnchantment then UpdateEmbersOfEnchantment(); end
	if str == L[ "MFOS" ] and ShowFigmentsOfSplendour then UpdateFigmentsOfSplendour(); end
	if str == L[ "MFFT" ] and ShowFallFestivalToken then UpdateFallFestivalToken(); end
	if str == L[ "MFFAT" ] and ShowFarmersFaireToken then UpdateFarmersFaireToken(); end
	if str == L[ "MSPL" ] and ShowSpringLeaf then UpdateSpringLeaf(); end
	if str == L[ "MMST" ] and ShowMidsummerToken then UpdateMidsummerToken(); end
	if str == L[ "MAS" ] and ShowAncientScript then UpdateAncientScript(); end
    if str == L[ "MBOT" ] and ShowBadgeOfTaste then UpdateBadgeOfTaste(); end
    if str == L[ "MBOD" ] and ShowBadgeOfDishonour then UpdateBadgeOfDishonour(); end
end

function GetCurrency( str )
    CurQuantity = 0;

    for k,v in pairs( PlayerCurrency ) do
        if k == str then
            CurQuantity = PlayerCurrency[ str ]:GetQuantity();
            break
        end
    end

    return CurQuantity
end
