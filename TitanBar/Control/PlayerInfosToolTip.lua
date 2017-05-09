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
    [100]="48,660,766", [101]="51,182,620", [102] ="53,830,566", [103] ="56,610,909", [104] ="59,527,269", [105] ="0" };

-- Data 2-dim array, Data[index][string], string could be name,value,icon
Data = {};
-- DataHeading - headings for Data, index - position of heading in Data
DataHeading = {[9] = "Stats", [14] = "Mitigations", [18] = "Healing", [20] = "Offence", [26] = "Defence"};
for i = 1,33 do Data[i] = {}; end

function GetData()
    Data[1]["name"] = "Morale";
    Data[1]["value"] = round(Player:GetMorale()).." / ".. round(Player:GetMaxMorale());
    Data[1]["icon"] = resources.PlayerInfo.Morale;
    if PlayerClassIs == L["Beorning"] then 
        Power = round(Player:GetClassAttributes():GetWrath());
        MaxPower = 100;
    else 
        Power = round(Player:GetPower());
        MaxPower = round(Player:GetMaxPower());
    end;
    Data[2]["name"],Data[2]["value"] = "Power",(Power .." / ".. MaxPower);
    Data[2]["icon"] = resources.PlayerInfo.Power;  
    
    if PlayerAlign == 1 then
        Data[3]["name"],Data[3]["value"] = "Armour",PlayerAtt:GetArmor();
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
        PlayerAttArray = {}; -- array[i] = {"Visible label name", value, "formula category"};
        for i = 14,32 do PlayerAttArray[i] = {} end; 
            PlayerAttArray[14] = {"Physical", PlayerAtt:GetCommonMitigation(), "Mitigation"};
            PlayerAttArray[15] = {"Tactical", PlayerAtt:GetTacticalMitigation(), "Mitigation"};
            PlayerAttArray[16] = {"Orc", PlayerAtt:GetPhysicalMitigation(), "Mitigation"};
            PlayerAttArray[17] = {"Fell", PlayerAtt:GetPhysicalMitigation(), "Mitigation"};
            PlayerAttArray[18] = {"Outgoing", PlayerAtt:GetOutgoingHealing(), "OutHeal"};
            PlayerAttArray[19] = {"Incoming", PlayerAtt:GetIncomingHealing(), "InHeal"};
            PlayerAttArray[20] = {"Melee", PlayerAtt:GetMeleeDamage(), "OffDam"};
            PlayerAttArray[21] = {"Ranged", PlayerAtt:GetRangeDamage(), "OffDam"};
            PlayerAttArray[22] = {"Tactical", PlayerAtt:GetTacticalDamage(), "OffDam"};
            PlayerAttArray[23] = {"CritHit", PlayerAtt:GetBaseCriticalHitChance(), "CritHit"};
            PlayerAttArray[24] = {"DevHit", PlayerAtt:GetBaseCriticalHitChance(), "DevasHit"};
            PlayerAttArray[25] = {"Finesse", PlayerAtt:GetFinesse(), "Finesse"};
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
    local X0, Y0, K, lowRL, highRL;
    local RL = R/L;
    local Armour, Ratings;
    local Capped = 0;
    
-- S   = Segments?
-- dp  = height of the segment (y-axis)
-- K   = curve constant
-- dRL = width of the segment (x-axis)
    
RatingsData = { 
    CritHit = {                 -- Critical Hit
        S = 3,
        dp = { 0, 0.15, 0.05, 0.05 },
        K = { 1190/3, 794.8, 1075.2 },
        dRL = { 0, 70, 794.8/19, 1075.2/19 }
    },
    DevasHit = {                -- Devastating Hit
        S = 1,
        dp = {0, 0.1},
        K = {1330},
        dRL = {0, 1330/9}
    },
    OffDam = {                  -- Offence Damage (Linear)
        levSegStart = { 1, 21, 31, 41, 51, 61, 71, 81, 91, 101 }, 
        Factor = { 14.6, 24.2, 17, 13.4, 11.4 ,10.2, 7.4, 6.6, 5.7, 2.7 },
        FactorLevel = { 0, 0.48, 0.24, 0.15, 0.11, 0.09, 0.05, 0.04, 0.03, 0 },
        CapPct = { 40, 40, 40, 40, 200, 200, 200, 200, 200, 400 }
    },                
    OutHeal = {                 -- Tactical Outgoing Healing
        S = 3,
        dp = { 0, 0.3, 0.2, 0.2 },
        K = { 1190/3, 2380/3, 1190 },
        dRL = { 0, 170, 595/3, 297.5 }
    },          
    Resistance = {          -- Resistance
        S = 2,
        dp = { 0, 0.3, 0.2 },
        K = { 1190/3, 2380/3 },
        dRL = { 0, 170, 595/3 },
        T2c105 = 49500
    },
    InHeal = {                  -- Incoming Healing
        S = 2,
        dp = { 0, 0.15, 0.1 },
        K = { 1190/3, 2380/3 },
        dRL = { 0, 70, 2380/27 }
    },
    BPE = {                         --  Block, Parry, Evade
        S = 1,
        dp = { 0, 0.13 },
        K = { 499.95 },
        dRL = { 0, 43329/580 },
        T2c105 = 12389
    },
    PartBPE = {                 -- Partially Block, Parry, Evade
        S = 4,
        dp = { 0, 0.15, 0.02, 0.03, 0.15 },
        K = { 396.66, 991.66, 1050, 1200 },
        dRL = { 0, 59499/850, 49583/2450, 3150/97, 3600/17 },
        T2c105 = 40444
    },
    Mitigation = {          -- Mitigation
        Light = {
            dp = { 0.2, 0.2 },
            K = { 150, 350 },
            dRL = { 37.5, 87.5 },
            T2c105 = 20790
        },
        Medium = {
            dp = { 0.2, 0.3 },
            K = { 149.9175, 253.003 },
            dRL = { 59967/1600, 759009/7000 },
            T2c105 = 23049
        },
        Heavy = {
            dp = { 0.1, 0.5 },
            K = { 5697/38, 5697/38 },
            dRL = { 633/38, 5697/38 },
            T2c105 = 25281
        }
    }
};
    
    if Attribute == "Mitigation" then -- is dependant on armour type
    Armour = RatingsData.Mitigation.Light;
        if PlayerClassIs == _G.L["Lore-Master"] or PlayerClassIs == _G.L["Minstrel"] or PlayerClassIs == _G.L["Rune-Keeper"] then
            Armour = RatingsData.Mitigation.Light;
        elseif PlayerClassIs == _G.L["Beorning"] or PlayerClassIs == _G.L["Burglar"] or PlayerClassIs == _G.L["Hunter"] or PlayerClassIs == _G.L["Warden"] then
            Armour = RatingsData.Mitigation.Medium;
        elseif PlayerClassIs == _G.L["Captain"] or PlayerClassIs == _G.L["Champion"] or PlayerClassIs == _G.L["Guardian"] then
            Armour = RatingsData.Mitigation.Heavy;
        end
        if RL <= Armour.dRL[1] then
            X0 = 0;
            Y0 = 0;
            K = Armour.K[1];
        elseif (RL > Armour.dRL[1]) and (RL <= Armour.dRL[1]+Armour.dRL[2]) then
            X0 = Armour.dRL[1];
            Y0 = Armour.dp[1];
            K = Armour.K[2];
        elseif RL > Armour.dRL[1]+Armour.dRL[2] then -- CAPPED
            Capped = 1;
            if R >= Armour.T2c105 then Capped = 2 end;
            answer = sum_array(Armour.dp, 2)*100;
            return rating_string(R, answer, Attribute), Capped;
        end
        answer = (Y0 + 1/(1+K/(RL-X0)))*100;
        return rating_string(R, answer, Attribute), Capped;
    elseif Attribute == "Finesse" then 
        return rating_string(R, 100/(1+(1190*curLvl/(R*3))), Attribute);
    elseif Attribute == "CritDef" then
        return rating_string(R, 100/(1+(100*curLvl/R)), Attribute);
    elseif Attribute == "OffDam" then -- linear
        Ratings = RatingsData.OffDam;
        local i = #Ratings.levSegStart;
        local answer;
        while Ratings.levSegStart[i] > L do
            i = i-1;
        end
        local Factor = Ratings.Factor[i] - Ratings.FactorLevel[i] * L
        answer = Factor * R / 1000;
        if answer > Ratings.CapPct[i] then
            Capped = 1;
            answer = Ratings.CapPct[i];
        end
        return rating_string(R, answer, Attribute), Capped;
    else Ratings = RatingsData[Attribute];
    end
    
    local i = 0;
    local OverSet = 0;
    local answer;
    while 1 do
        i = i+1;
        MaxD = #Ratings.dRL;
        if Ratings.S == 0 then
            if i >= MaxD - 1 then
                OverSet = i + 1 - MaxD;
            end
            if (RL >= sum_array(Ratings.dRL, i-OverSet) + OverSet * Ratings.dRL[MaxD]) and (RL < sum_array(Ratings.dRL, i+1-OverSet) + OverSet * Ratings.dRL[MaxD]) then
                X0 = sum_array(Ratings.dRL, i-OverSet) + OverSet * Ratings.dRL[MaxD];
                Y0 = sum_array(Ratings.dp, i-OverSet) + OverSet * Ratings.dRL[MaxD];
                if OverSet == 0 then
                    K = Ratings.K[i];
                else
                    K = Ratings.K[MaxD-1];
                end
                answer = (Y0 + 1/(1+K/(RL-X0)))*100;
                return rating_string(R, answer, Attribute), Capped;
            end
        elseif (Ratings.S+1 == i) and (Ratings.S > 0) and (RL>sum_array(Ratings.dRL,i)) then -- CAPPED
            Capped = 1;
            if (Ratings.T2c105 ~= nil) and (R >= Ratings.T2c105) then Capped = 2; end;
            answer = sum_array(Ratings.dp, i)*100;
            return rating_string(R, answer, Attribute), Capped;
        elseif (RL >= sum_array(Ratings.dRL, i)) and (RL < sum_array(Ratings.dRL, i+1)) and (Ratings.S > 0) then
            X0 = sum_array(Ratings.dRL, i);
            Y0 = sum_array(Ratings.dp, i);
            K = Ratings.K[i];
            answer = (Y0 + 1/(1+K/(RL-X0)))*100;
            return rating_string(R, answer, Attribute), Capped;
        end
    end
end

function rating_string(r,p,a) -- String format for Rating and percentage 1234 (25.1%)
    if a == "PartBPE" then return (string.format("%.1f", p) .. "%"); end
    return (r .. " (" .. string.format("%.1f", p) .. "%)");
end

function sum_array( Array, MaxInt )
    local sum = 0;
    for i = 1,MaxInt do
        sum = sum+Array[i];
    end
    return sum;
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
    if PlayerAlign == 1 then th = 250; tw = 3*CtrW; else th = 75; tw = 2*CtrW; end --th: temp height / tw: temp width

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
            if (i == 14) or (i == 20) or (i == 26) then y = 47; x = x + 210; end
            if DataHeading[i] ~= nill then CreateHeading(APICtr,i,x,y+5); y = y +27; end
            CreateLabel(APICtr,i,90,100,x,y);
            y = y + 15;
        end
        local CappedLabel=Turbine.UI.Label();
        CappedLabel:SetParent(APICtr);
        CappedLabel:SetSize(400,15);
        CappedLabel:SetPosition(340,y+15);
        CappedLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
        CappedLabel:SetFont(Turbine.UI.Lotro.Font.Verdana16);
        CappedLabel:SetForeColor(Color["yellow"]);
        CappedLabel:SetText(L["Capped"]);
        
        local T2Label=Turbine.UI.Label();
        T2Label:SetParent(APICtr);
        T2Label:SetSize(400,15);
        T2Label:SetPosition(320,y+30);
        T2Label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
        T2Label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
        T2Label:SetForeColor(Color["orange"]);
        T2Label:SetText("Values in ORANGE are capped for T2");
    end
    ApplySkin();
end
