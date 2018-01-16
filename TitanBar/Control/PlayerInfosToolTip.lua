-- Written By Habna
-- Refactored By 4andreas

-- XP needed to reach next level
-- Ex.: at lvl 1 u need 100 XP to reach lvl 2, at lvl 2 u need 275 XP to reach lvl 3 and so on.
-- Source: http://lotro-wiki.com/index.php/Character#Character_Levels_and_Experience_Points
-- XP from lvl 75 to 85 from player Geko, thanks!
-- Lvls 96 to 100 from Hyoss.
PlayerLevel = {
    [1]="100", [2]="275", [3]="550", [4]="950", [5]="1,543", [6]="2,395", [7]="3,575", [8]="5,150", [9]="7,188", 
    [10]="9,798", [11]="13,090", [12]="17,175", [13]="22,163", [14]="28,163", [15]="35,328", [16]="43,810", [17]="53,763", [18]="65,338", [19]="78,688",
    [20]="94,008", [21]="111,493", [22]="131,338", [23]="153,738", [24]="178,888", [25]="207,025", [26]="238,388", [27]="273,213", [28]="311,738", [29]="354,200", 
    [30]="400,880", [31]="452,058", [32]="508,013", [33]="569,025", [34]="635,375", [35]="707,385", [36]="785,378", [37]="869,675", [38]="960,600", [39]="1,058,475", 
    [40]="1,163,665", [41]="1,276,535", [42]="1,397,450", [43]="1,526,775", [44]="1,664,875", [45]="1,812,158", [46]="1,969,030", [47]="2,135,900", [48]="2,313,175", [49]="2,501,263", 
    [50]="2,700,613", [51]="2,911,675", [52]="3,134,900", [53]="3,370,738", [54]="3,619,638", [55]="3,882,093", [56]="4,158,595", [57]="4,449,638", [58]="4,755,713", [59]="5,077,313", 
    [60]="5,415,226", [61]="5,770,277", [62]="6,143,336", [63]="6,535,316", [64]="6,947,176", [65]="7,379,926", [66]="7,834,624", [67]="8,312,383", [68]="8,814,374", [69]="9,341,823",
    [70]="9,896,024", [71]="10,478,333", [72]="11,090,176", [73]="11,733,051", [74]="12,408,532", [75]="13,117,787", [76]="13,862,504", [77]="14,644,456", [78]="15,465,505", [79]="16,327,606", 
    [80]="17,232,812", [81]="18,183,278", [82]="19,181,267", [83]="20,229,155", [84]="21,329,437", [85]="22,484,733", [86]="23,697,793", [87]="24,971,506", [88]="26,308,904", [89]="27,713,171",
    [90]="29,187,651", [91]="30,735,855", [92]="32,361,469", [93]="34,068,363", [94]="35,860,601", [95]="37,742,450", [96]="39,718,391", [97]="41,793,129 ", [98]="43,971,603 ", [99]="46,259,000",
    [100]="48,660,766", [101]="51,182,620", [102] ="53,830,566", [103] ="56,610,909", [104] ="59,527,269", [105] ="62,592,597",
    [106]="65,811,191", [107]="69,190,714", [108]="72,739,213", [109]="76,465,136", [110]="80,377,355", [111]="84,485,184", [112]="88,798,404", [113]="93,327,285", [114]="98,082,610", [115]="0"
    };

-- Data 2-dim array, Data[index][string], string could be name,value,icon
Data = {};
-- DataHeading - headings for Data, index - position of heading in Data
DataHeading = {[9] = "Stats", [22] = "Mitigations", [20] = "Healing", [14] = "Offence", [26] = "Defence"};
for i = 1,33 do Data[i] = {}; end

function GetData()
    Data[1]["name"] = "Morale";
    Data[1]["value"] = comma_value(round(Player:GetMorale()))
        .." / ".. comma_value(round(Player:GetMaxMorale()));
    Data[1]["icon"] = resources.PlayerInfo.Morale;
    if PlayerClassIs == L["Beorning"] then 
        Power = round(Player:GetClassAttributes():GetWrath());
        MaxPower = 100;
    else 
        Power = comma_value(round(Player:GetPower()));
        MaxPower = comma_value(round(Player:GetMaxPower()));
    end;
    Data[2]["name"],Data[2]["value"] = "Power",(Power .." / ".. MaxPower);
    Data[2]["icon"] = resources.PlayerInfo.Power;  
    
    if PlayerAlign == 1 then
        Data[3]["name"],Data[3]["value"] = "Armour",comma_value(PlayerAtt:GetArmor());
        Data[3]["icon"] = resources.PlayerInfo.Armor;    
        curLvl = Player:GetLevel(); --Current player level
        -- OTHER --
        Data[4]["name"],Data[4]["value"] = "Level",curLvl;
        Data[5]["name"],Data[5]["value"] = "Race",PlayerRaceIs;
        Data[6]["name"],Data[6]["value"] = "Class",PlayerClassIs;
        Data[7]["name"],Data[7]["value"] = "XP", L["MLvl"];
        Data[8]["name"],Data[8]["value"] = "NXP", "";

        if curLvl < #PlayerLevel then
            -- Calculate max xp for current level
            maxXP = PlayerLevel[curLvl]; --Max XP at current level
            maxXP = string.gsub(maxXP, ",", ""); --Replace "," in 1,400 to get 1400
            --Max XP at previous level
            if curLvl-1 == 0 then preXP = 0;
            else preXP = PlayerLevel[curLvl-1]; end
            preXP = string.gsub(preXP, ",", ""); --Replace "," in 1,400 to get 1400
            maxXP = maxXP - preXP;
            --Calculate the min xp for current level
            minXP = ExpPTS;         
            --minXP = string.gsub(minXP, ",", ""); --Replace "," in 1,400 to get 1400
            minXP = string.gsub(minXP, "%p", ""); --Replace decimal separator Ex.: in 1,400 to get 1400
            minXP = minXP - preXP;
            if minXP < 0 then minXP = "No Data"; else minXP = string.format("%2d", minXP); end          
            --Calculate % for current level
            if minXP ~= "No Data" then 
                percentage_done = " (" .. string.format("%.2f", (minXP / maxXP)*100) .. "%)"; 
                minXP = comma_value(minXP); -- Convert back number with comma
            else 
                percentage_done = ""; 
            end         
            -- Convert back number with comma
            Data[7]["value"] = minXP .. percentage_done;
            Data[8]["value"] = comma_value(maxXP);
        end
        -- OTHER END --
        -- STATISTICS --
        Data[9]["name"],Data[9]["value"] = "Might",PlayerAtt:GetMight();
        Data[10]["name"],Data[10]["value"] = "Agility",PlayerAtt:GetAgility();
        Data[11]["name"],Data[11]["value"] = "Vitality",PlayerAtt:GetVitality();
        Data[12]["name"],Data[12]["value"] = "Will",PlayerAtt:GetWill();
        Data[13]["name"],Data[13]["value"] = "Fate",PlayerAtt:GetFate();
        -- STATISTICS END --
        for i = 9,13 do Data[i]["value"] = comma_value(Data[i]["value"]); end
        PlayerAttArray = {}; -- array[i] = {"Visible label name", value, "formula category"};
        for i = 14,32 do PlayerAttArray[i] = {} end; 
            PlayerAttArray[22] = {"Physical", PlayerAtt:GetCommonMitigation(), "Mitigation"};
            PlayerAttArray[23] = {"Tactical", PlayerAtt:GetTacticalMitigation(), "Mitigation"};
            PlayerAttArray[24] = {"Orc", PlayerAtt:GetPhysicalMitigation(), "Mitigation"};
            PlayerAttArray[25] = {"Fell", PlayerAtt:GetPhysicalMitigation(), "Mitigation"};
            PlayerAttArray[20] = {"Outgoing", PlayerAtt:GetOutgoingHealing(), "OutHeal"};
            PlayerAttArray[21] = {"Incoming", PlayerAtt:GetIncomingHealing(), "InHeal"};
            PlayerAttArray[14] = {"Melee", PlayerAtt:GetMeleeDamage(), "OffDam"};
            PlayerAttArray[15] = {"Ranged", PlayerAtt:GetRangeDamage(), "OffDam"};
            PlayerAttArray[16] = {"Tactical", PlayerAtt:GetTacticalDamage(), "OffDam"};
            PlayerAttArray[17] = {"CritHit", PlayerAtt:GetBaseCriticalHitChance(), "CritHit"};
            PlayerAttArray[18] = {"DevHit", PlayerAtt:GetBaseCriticalHitChance(), "DevasHit"};
            PlayerAttArray[19] = {"Finesse", PlayerAtt:GetFinesse(), "Finesse"};
            PlayerAttArray[26] = {"CritDef", PlayerAtt:GetBaseCriticalHitAvoidance(), "CritDef"};
            PlayerAttArray[27] = {"Resistances", PlayerAtt:GetBaseResistance(), "Resistance"};
            PlayerAttArray[28] = {"Block", PlayerAtt:GetBlock(), "BPE"};
            PlayerAttArray[29] = {"Partial", PlayerAtt:GetBlock(), "PartBPE"};
            PlayerAttArray[30] = {"Parry", PlayerAtt:GetParry(), "BPE"};
            PlayerAttArray[31] = {"Partial", PlayerAtt:GetParry(), "PartBPE"};
            PlayerAttArray[32] = {"Evade", PlayerAtt:GetEvade(), "BPE"};
            PlayerAttArray[33] = {"Partial", PlayerAtt:GetEvade(), "PartBPE"};
        for i = 14,33 do
            Data[i]["name"] = PlayerAttArray[i][1];
            Data[i]["value"], Data[i]["capped"] = get_percentage(PlayerAttArray[i][3], PlayerAttArray[i][2], curLvl);
        end
        
    end
end

-- Formula and data used from: http://lotro-wiki.com/index.php/rating_to_percentage_formula
function get_percentage( Attribute, R, L )
    R = round(R);
    local Ratings;
    local Capped = 0;
    
-- L    = Level segment
-- C    = Curve constant
-- Pcap = Percentage cap
-- RcapF= Rating factor
-- RcapC= Rating constant
-- T2   = T2 115 penetration constant
--
-- Rcap = RcapF * L + RcapC
-- P = (C + 1)/(C + (Rcap/R)) * Pcap
-- T2 required rating = Rcap + T2

RatingsData = { 
    CritHit = {                 -- Critical Hit
        L = {50, 84, 104, 105, 115},
        C = {2/3, 1, 1, 1, 1},
        Pcap = {15, 20, 25, 25, 25},
        RcapF = {215/3, 250, 165, 3550/21, 44375/9},
        RcapC = {0, -6900, 375, 0, -4464125/9}
    },
    DevasHit = {                -- Devastating Hit
        L = {50, 104, 105, 115},
        C = {2, 2, 2, 2},
        Pcap = {10, 10, 10, 10},
        RcapF = {160, 166, 3440/21, 43000/9},
        RcapC = {0, -300, 0, -4325800/9}
    },
    Finesse = {
        L = {105, 115},
        C = {10, 10},
        Pcap = {50, 50},
        RcapF = {4000, 350000/3},
        RcapC = {0, -35210000/3}
    },
    OffDam = {                  -- Offence Damage
        L = {20, 49, 50, 59, 60, 99, 100, 104, 105, 115},
        C = {1/9, 1/9, 1/9, 1/9, 1/9, 1/9, 1/9, 1/9, 1/9, 1/9},
        Pcap = {40, 40, 40, 80, 80, 200, 200, 400, 400, 400},
        RcapF = {1300/9, 1200/9, 1220/9, 2750/9, 2500/9, 7400/9, 6675/9, 
            400/9, 9900/7, 4125},
        RcapC = {0, 2000/9, 0, -15250/9, 0, -66400/9, 0, 1294600/9, 0, 
            -251625}
    },                
    OutHeal = {                 -- Tactical Outgoing Healing
        L = {20, 50, 105, 115},
        C = {3/7, 1, 1.4, 1.4},
        Pcap = {30, 50, 70, 70},
        RcapF = {1200/7, 400, 777, 353675/18},
        RcapC = {0, 0, -10850, -35579705/18}
    },          
    Resistance = {          -- Resistance
        L = {50, 105, 115},
        C = {1, 1, 1},
        Pcap = {30, 50, 50},
        RcapF = {180, 2600/7, 32500/3},
        RcapC = {0, 0, -3269500/3},
        T2 = {90, 90, 90}
    },
    CritDef = {             -- Critical Defence
        L = {105, 115},
        C = {1, 1},
        Pcap = {50, 50},
        RcapF = {100, 8750/3},
        RcapC = {0, -880250/3}
    },
    InHeal = {                  -- Incoming Healing
        L = {50, 104, 105, 115},
        C = {1, 1, 1, 1},
        Pcap = {15, 25, 25, 25},
        RcapF = {72, 243, 3400/21, 42500/9},
        RcapC = {0, -8550, 0, -4275500/9}
    },
    BPE = {                     --  Block, Parry, Evade
        L = {20, 50, 105, 115},
        C = {2, 2, 2, 2},
        Pcap = {13, 13, 13, 13},
        RcapF = {115, 90, 200, 40000/9},
        RcapC = {0, 500, -5000, -4024000/9},
        T2 = {40, 40, 40, 40}
    },
    PartBPE = {                 -- Partially Block, Parry, Evade
        L = {20, 50, 84, 95, 104, 105, 115},
        C = {2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5},
        Pcap = {15, 15, 17, 20, 35, 35, 35},
        RcapF = {112.5, 75, 775, 775, 775, 9500/21, 118750/9},
        RcapC = {0, 750, -34250, -34250, -34250, 0, -11946250/9},
        T2 = {40, 40, 40, 40, 40, 40, 40}
    },
    Mitigation = {          -- Mitigation
        Light = {
            L = {104, 105, 115},
            C = {1.6, 1.6, 1.6},
            Pcap = {40, 40, 40},
            RcapF = {128, 2720/21, 34000/9},
            RcapC = {0, 0, -3420400/9},
            T2 = {13.5, 13.5, 13.5}
        },
        Medium = {
            L = {104, 105, 115},
            C = {10/7, 10/7, 10/7},
            Pcap = {50, 50, 50},
            RcapF = {446/3, 110000/735, 275000/63},
            RcapC = {0, 0, -27665000/63},
            T2 = {13.5, 13.5, 13.5},
        },
        Heavy = {
            L = {104, 105, 115},
            C = {1.2, 1.2, 1.2},
            Pcap = {60, 60, 60},
            RcapF= {166.5, 1168/7, 14600/3},
            RcapC = {0, 0, -1468760/3},
            T2 = {13.5, 13.5, 13.5}
        }
    }
};
    
    if Attribute == "Mitigation" then -- is dependant on armour type
    Armour = RatingsData.Mitigation.Light;
        if PlayerClassIs == _G.L["Lore-Master"] or PlayerClassIs == _G.L["Minstrel"] or PlayerClassIs == _G.L["Rune-Keeper"] then
            Ratings = RatingsData.Mitigation.Light;
        elseif PlayerClassIs == _G.L["Beorning"] or PlayerClassIs == _G.L["Burglar"] or PlayerClassIs == _G.L["Hunter"] or PlayerClassIs == _G.L["Warden"] then
            Ratings = RatingsData.Mitigation.Medium;
        elseif PlayerClassIs == _G.L["Captain"] or PlayerClassIs == _G.L["Champion"] or PlayerClassIs == _G.L["Guardian"] then
            Ratings = RatingsData.Mitigation.Heavy;
        end
    else Ratings = RatingsData[Attribute];
    end
    local P, Rcap;
    local i = 1;
    while L > Ratings.L[i] do i = i + 1; end
    Rcap = Ratings.RcapF[i] * L + Ratings.RcapC[i];
    if R >= Rcap then Capped = 1; end
    if Ratings.T2 ~= nil then 
        local offset = Ratings.T2[i] * L;
        if Attribute == "Mitigation" then offset = math.floor(offset)*5; end
        if R >= Rcap + offset then Capped = 2; end
    end
    local EffR = R;
    if Capped ~= 0 then EffR = Rcap; end
    P = ((Ratings.C[i] + 1)/(Ratings.C[i] + (Rcap/EffR))) * Ratings.Pcap[i];
    return rating_string(R, P, Attribute), Capped;
end

function rating_string(r,p,a) -- String format for Rating and percentage 1234 (25.1%)
    r = comma_value(r);
    if a == "PartBPE" then return (string.format("%.1f", p) .. "%"); end
    return (r .. " (" .. string.format("%.1f", p) .. "%)");
end

function comma_value(n) -- credit http://richard.warburton.it
    local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
    return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end
-- control for stats with icon
function CreateCtr(parent,index)
    local NewCtr = Turbine.UI.Control();
    NewCtr:SetParent(parent);
    NewCtr:SetSize(CtrW, 26);
    NewCtr:SetPosition((15+(index-1)*(CtrW+5)),17);
         
    local NewIcon = Turbine.UI.Control();
    NewIcon:SetParent(NewCtr);
    NewIcon:SetBlendMode(5);
    NewIcon:SetSize(24,26);
    NewIcon:SetPosition(1,1);
    NewIcon:SetBackground(Data[index]["icon"]);        

    local NewLabel = Turbine.UI.Label();
    NewLabel:SetParent(NewCtr);
    NewLabel:SetSize(85,26);
    NewLabel:SetPosition(30,-2);
    NewLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    NewLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro20);
    NewLabel:SetForeColor(Color["nicegreen"]);
    NewLabel:SetText(L[Data[index]["name"]]);

    local NewValue = Turbine.UI.Label();
    NewValue:SetParent(NewCtr);
    NewValue:SetSize(CtrW-85,26);
    NewValue:SetPosition(115, 0);
    NewValue:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    NewValue:SetFont(Turbine.UI.Lotro.Font.Verdana15);
    NewValue:SetForeColor(Color["white"]);
    NewValue:SetText(Data[index]["value"]);
end

-- basic stat with Label and Value
function CreateLabel(parent,index,LblSize,ValSize,x,y)
    if index == 7 then LblSize,ValSize = 60,130; end -- Max lvl reached text too long
    local NewLabel = Turbine.UI.Label();
    NewLabel:SetParent(parent);
    if Data[index]["name"] == "Partial" then -- Indent Partial
        LblSize = LblSize - _G.AlignOffP;
        x = x + _G.AlignOffP; 
    end 
    NewLabel:SetSize(LblSize,15);
    NewLabel:SetPosition(x,y);
    NewLabel:SetTextAlignment(_G.AlignLbl);
    NewLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro14);
    NewLabel:SetForeColor( Color["nicegold"] );
    NewLabel:SetText(L[Data[index]["name"]]);

    local NewValue = Turbine.UI.Label();
    NewValue:SetParent(parent);
    NewValue:SetSize(ValSize,15);
    NewValue:SetPosition(NewLabel:GetLeft()+NewLabel:GetWidth()+_G.AlignOff,NewLabel:GetTop());
    NewValue:SetTextAlignment(_G.AlignVal);
    NewValue:SetFont(Turbine.UI.Lotro.Font.Verdana12);
    NewValue:SetForeColor(Color["white"]);
    if Data[index]["capped"] == 1 then
        NewValue:SetForeColor(Color["yellow"]);
    elseif Data[index]["capped"] == 2 then
        NewValue:SetForeColor(Color["orange"]);
    end
    NewValue:SetText(Data[index]["value"]);  
end

-- Heading for stat groups
function CreateHeading(parent,index,x,y)
    local NewHeading = Turbine.UI.Label();
    NewHeading:SetParent(parent);
    NewHeading:SetSize(190,18);
    NewHeading:SetPosition(x,y);
    NewHeading:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    NewHeading:SetFont(Turbine.UI.Lotro.Font.TrajanPro16);
    NewHeading:SetForeColor(Color["white"]);
    NewHeading:SetText(L[DataHeading[index]]);

    local NewSeparator = Turbine.UI.Control();
    NewSeparator:SetParent(parent);
    NewSeparator:SetSize(191,1);
    NewSeparator:SetPosition(NewHeading:GetLeft(),NewHeading:GetTop()+18);
    NewSeparator:SetBackColor(Color["trueblue"]);
end

function ShowPIWindow()
    CtrW = 285;
    if PlayerAlign == 1 then th = 240; tw = 3*CtrW; else th = 75; tw = 2*CtrW; end --th: temp height / tw: temp width

    -- ( offsetX, offsetY, width, height, bubble side )
    local x, y, w, h = -5, -15, tw, th;
    local mouseX, mouseY = Turbine.UI.Display.GetMousePosition();
    
    if w + mouseX > screenWidth then x = w - 10; end
    if not TBTop then y = h; end
    
    _G.ToolTipWin = Turbine.UI.Window();
    _G.ToolTipWin:SetZOrder( 1 );
    _G.ToolTipWin:SetPosition( mouseX - x, mouseY - y);
    _G.ToolTipWin:SetSize( w, h );
    _G.ToolTipWin:SetVisible( true );

    --**v Control of all player infos v**
    local APICtr = Turbine.UI.Control();
    APICtr:SetParent( _G.ToolTipWin );
    APICtr:SetZOrder( 1 );
    APICtr:SetSize( w, h );
    APICtr:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
    --**^
    GetData();
    if (PlayerAlign ~= 1) then -- not Freep
        for i = 1,2 do CreateCtr(APICtr,i); end
        local WarningLabel = Turbine.UI.Label();
        WarningLabel:SetParent(APICtr);
        WarningLabel:SetPosition(25,47);
        WarningLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
        WarningLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro14);
        WarningLabel:SetForeColor( Color["nicegold"] );
        WarningLabel:SetText( L["NoData"] );
        WarningLabel:SetSize(WarningLabel:GetTextLength()*7.2, 15 ); --Auto size with text lenght
    else
        for i = 1,3 do CreateCtr(APICtr,i); end
        local Separator = Turbine.UI.Control();
        Separator:SetParent(APICtr);
        Separator:SetSize(tw-10,1);
        Separator:SetPosition(5,43);
        Separator:SetBackColor(Color["trueblue"]);
        local x,y = 20,47;
        for i = 4,33 do
            if (i == 14) or (i == 22) or (i == 26) then y = 47; x = x + 210; end
            if DataHeading[i] ~= nill then CreateHeading(APICtr,i,x,y+5); y = y +27; end
            CreateLabel(APICtr,i,90,100,x,y);
            y = y + 15;
        end
        local CappedLabel=Turbine.UI.Label();
        CappedLabel:SetParent(APICtr);
        CappedLabel:SetSize(400,15);
        CappedLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
        CappedLabel:SetFont(Turbine.UI.Lotro.Font.Verdana16);
        CappedLabel:SetForeColor(Color["yellow"]);
        CappedLabel:SetText("YELLOW - capped");
        CappedLabel:SetPosition(540-CappedLabel:GetTextLength()*4.1,y);
        
        local T2Label=Turbine.UI.Label();
        T2Label:SetParent(APICtr);
        T2Label:SetSize(400,15);
        T2Label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
        T2Label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
        T2Label:SetForeColor(Color["orange"]);
        T2Label:SetText("ORANGE - T2 capped");
        T2Label:SetPosition(540-T2Label:GetTextLength()*4.1,y+15);
    end
    
    ApplySkin();
end
