-- en.lua
-- Written by Habna
-- Rewritten by many

_G.L = {};
L[ "TBLoad" ] = "TitanBar " .. Version .. " loaded!";
L[ "TBSSCS" ] = "TitanBar: Screen size has changed, repositioning controls...";
L[ "TBSSCD" ] = "TitanBar: done!";
L[ "TBOpt" ] = "Options are available by right clicking on TitanBar";

--Misc
L[ "NoData" ] = "No other data available in API";
L[ "NA" ] = "N/A";
--L[ "dmg" ] = " dmg";
L[ "You" ] = "You: ";
L[ "ButDel" ] = "Delete information of this character";
--L[ "" ] = "";

-- TitanBar Menu
L[ "MBag" ] = "Wallet";
L[ "MGSC" ] = "Money";
L[ "MBI" ] = "Backpack infos";
L[ "MPI" ] = "Player infos";
L[ "MEI" ] = "Equipment infos";
L[ "MDI" ] = "Durability infos";
L[ "MPL" ] = "Player Location";
L[ "MGT" ] = "Time";
L[ "MOP" ] = "More options";
L[ "MPP" ] = "Profile";
L[ "MSC" ] = "Shell commands";
L[ "MRA" ] = "Reset all settings";
L[ "MUTB" ] = "Unload";
L[ "MRTB" ] = "Reload";
L[ "MATB" ] = "About ";
L[ "MBG" ] = "Set back color";
L[ "MCL" ] = "Change language to ...";
L[ "MCLen" ] = "English";
L[ "MCLfr" ] = "French";
L[ "MCLde" ] = "Deutsch";
L[ "MTI" ] = "Track Items";
--L[ "MView" ] = "View your ";
L[ "MVault" ] = "Vault";
L[ "MStorage" ] = "Shared Storage";
--L[ "MBank" ] = "Bank";
L[ "MDayNight" ] = "Day & Night Time";
L[ "MReputation" ] = "Reputation";

-- Wallet Currency Controls
-- LOTRO Points control
L[ "MLP" ] = "LOTRO points";
L[ "LPh" ] = "These are your LOTRO points";
-- Mithril Coins control
L[ "MMC" ] = "Mithril Coin";
L[ "MCh" ] = "These are your Mitril coins";
-- Yule Tokens control
L[ "MYT" ] = "Yule Festival Token";
L[ "YTh" ] = "These are your Yule Festival Tokens";
-- Anniversary Tokens control
L[ "MLAT" ] = "Anniversary Token";
L[ "LATh" ] = "These are your Anniversary Tokens";
-- Bingo Badge control
L[ "MBB" ] = "Bingo Badge";
L[ "BBh" ] = "These are your Bingo Badges";
-- Skirmish marks control
L[ "MSM" ] = "Mark";
L[ "SMh" ] = "These are your skirmish marks";
-- Destiny Points control
L[ "MDP" ] = "Destiny point";
L[ "DPh" ] = "These are your destiny points";
-- Shards control
L[ "MSP" ] = "Shard";
L[ "SPh" ] = "These are your shard";
-- Tokens of Hytbold control
L[ "MHT" ] = "Token of Hytbold";
L[ "HTh" ] = "These are your Tokens of Hytbold";
-- Medallions control
L[ "MMP" ] = "Medallion";
L[ "MPh" ] = "These are your medallions";
-- Seals control
L[ "MSL" ] = "Seal";
L[ "SLh" ] = "These are your seals";
-- Commendations control
L[ "MCP" ] = "Commendation";
L[ "CPh" ] = "These are your Commendations";
-- Amroth Silver Piece control
L[ "MASP" ] = "Amroth Silver Piece";
L[ "ASPh" ] = "These are your Amroth Silver Pieces";
-- Stars of Merit control
L[ "MSOM" ] = "Star of Merit";
L[ "SOMh" ] = "These are your Stars of Merit";
-- Central Gondor Silver Piece control
L[ "MCGSP" ] = "Central Gondor Silver Piece";
L[ "CGSPh" ] = "These are your Central Gondor Silver Pieces";
-- Gift giver's Brand control
L[ "MGGB" ] = "Gift-giver's Brand";
L[ "GGBh" ] = "These are your Gift-giver's Brands";
-- Motes of Enchantment control
L[ "MMOE" ] = "Motes of Enchantment";
L[ "MOEh" ] = "These are your Motes of Enchantment";
-- Embers of Enchantment control
L[ "MEOE" ] = "Embers of Enchantment";
L[ "EOEh" ] = "These are your Embers of Enchantment";
-- Figments of Splendour control
L[ "MFOS" ] = "Figments of Splendour";
L[ "FOSh" ] = "These are your Figments of Splendour";
-- Fall Festival Tokens control
L[ "MFFT" ] = "Fall Festival Token";
L[ "FFTh" ] = "These are your Fall Festival Tokens";
-- Farmers Faire Tokens control
L[ "MFFAT" ] = "Farmers Faire Token";
L[ "FFATh" ] = "These are your Farmers Faire Tokens";
-- Spring Leaves control
L[ "MSPL" ] = "Spring Leaf";
L[ "SPLh" ] = "These are your Spring Leaves";
-- Midsummer Tokens control
L[ "MMST" ] = "Midsummer Token";
L[ "MSTh" ] = "These are your Midsummer Tokens";
-- Ancient Script control
L[ "MAS" ] = "Ancient Script";
L[ "ASh" ] = "These are your Ancient Scripts";
-- Inn League / Ale Association control
L[ "MBOT" ] = "Badge of Taste";
L[ "BOTh" ] = "These are your Badges of Taste";
L[ "MBOD" ] = "Badge of Dishonour";
L[ "BODh" ] = "These are your Badges of Dishonour";

-- Control Menu
L[ "MCU" ] = "Unload ...";
L[ "MCBG" ] = "Change back color of this control";
L[ "MTBBG" ] = "Apply TitanBar back color to ...";
L[ "MTBBGC" ] = "this control";
L[ "MTBBGAC" ] = "all control";
L[ "MCRBG" ] = "Reset back color of ...";
L[ "MCABT" ] = "Apply this control back color to ...";
L[ "MCABTA" ] = "all control & TitanBar";
L[ "MCABTTB" ] = "TitanBar";
L[ "MCRC" ] = "Refresh ...";

-- Background window
L[ "BWTitle" ] = "Set back color";
L[ "BWAlpha" ] = "Alpha";
L[ "BWCurSetColor" ] = "Currently set color";
L[ "BWApply" ] = " Apply color to all elements";
L[ "BWSave" ] = "Save color";
L[ "BWDef" ] = "Default";
L[ "BWBlack" ] = "Black";
L[ "BWTrans" ] = "Transparent";

-- Wallet infos window
L[ "WIt" ] = "Right click a currency name to get it's settings";
L[ "WIot" ] = "On TitanBar";
L[ "WIiw" ] = "In tooltip";
L[ "WIds" ] = "Don't show";
L[ "WInc" ] = "You track no currency!\nLeft click to see the currency list.";

-- Money infos window
L[ "MIWTitle" ] = "Coin";
L[ "MIWTotal" ] = "Total";
L[ "MIWAll" ] = "Show total on TitanBar";
L[ "MIWCM" ] = "Show player money";
L[ "MIWCMAll" ] = "Show to all your character";
L[ "MIWSSS" ] = "Show session statistics in tooltip";
L[ "MIWSTS" ] = "Show today statistics in tooltip";
L[ "MIWID" ] = " wallet info deleted!"
L[ "MIMsg" ] = "No wallet info was found!"
L[ "MISession" ] = "Session";
L[ "MIDaily" ] = "Today";
L[ "MIStart" ] = "Starting";
L[ "MIEarned" ] = "Earned";
L[ "MISpent" ] = "Spent";
--L[ "MITotEarned" ] = "Total earned";
--L[ "MITotSpent" ] = "Total spent";

-- Vault window
L[ "VTh" ] = "vault";
L[ "VTnd" ] = "No data was found for this character";
L[ "VTID" ] = " vault info deleted!"
L[ "VTSe" ] = "Search:"
L[ "VTAll" ] = "-- All --"

-- Shared Storage window
L[ "SSh" ] = "shared storage";
L[ "SSnd" ] = "Need to open your shared storage at least once";

-- Backpack window
L[ "BIh" ] = "backpack";
L[ "BID" ] = " bags info deleted!"

-- Bank window
L[ "BKh" ] = "bank";

-- Day & Night window
L[ "Dawn" ] = "Dawn";
L[ "Morning" ] = "Morning";
L[ "Noon" ] = "Noon";
L[ "Afternoon" ] = "Afternoon";
L[ "Dusk" ] = "Dusk";
L[ "Gloaming" ] = "Gloaming";
L[ "Evening" ] = "Evening";
L[ "Midnight" ] = "Midnight";
L[ "LateWatches" ] = "Late Watches";
L[ "Foredawn" ] = "Foredawn";
L[ "NextT" ] = "Show next time";
L[ "TAjustL" ] = "Timer seed";

-- Reputation window
L[ "RPt" ] = "select / unselect a faction\nright click to get it's settings";
L[ "RPnf" ] = "You track no faction!\nLeft click to see the faction list.";
L[ "RPPHMaxHide" ] = "Hide factions at maximum reputation";

-- All reputation names
L[ "RPMB" ]    = "Men of Bree";
L[ "RPTH" ]    = "Thorin's Hall";
L[ "RPTMS" ]   = "The Mathom Society";
L[ "RPRE" ]    = "Rangers of Esteld\195\173n";
L[ "RPER" ]    = "Elves of Rivendell";
L[ "RPTEl" ]   = "The Eldgang";
L[ "RPCN" ]    = "Council of the North";
L[ "RPTWA" ]   = "The Wardens of Ann\195\186minas";
L[ "RPLF" ]    = "Lossoth of Forochel";
L[ "RPTEg" ]   = "The Eglain";
L[ "RPIGG" ]   = "Iron Garrison Guards";
L[ "RPIGM" ]   = "Iron Garrison Miners";
L[ "RPAME" ]   = "Algraig, Men of Enedwaith";
L[ "RPTGC" ]   = "The Grey Company";
L[ "RPG" ]     = "Galadhrim";
L[ "RPM" ]     = "Malledhrim";
L[ "RPTRS" ]   = "The Riders of Stangard";
L[ "RPHLG" ]   = "Heroes of Limlight Gorge";
L[ "RPMD" ]    = "Men of Dunland";
L[ "RPTR" ]    = "Th\195\169odred's Riders";
L[ "RPJG" ]    = "Jeweller's Guild";
L[ "RPCG" ]    = "Cook's Guild";
L[ "RPSG" ]    = "Scholar's Guild";
L[ "RPTG" ]    = "Tailor's Guild";
L[ "RPWoG" ]   = "Woodworker's Guild";
L[ "RPWeG" ]   = "Weaponsmith's Guild";
L[ "RPMG" ]    = "Metalsmith's Guild";
L[ "RPMEV" ]   = "Men of the Entwash Vale";
L[ "RPMN" ]    = "Men of the Norcrofts";
L[ "RPMS" ]    = "Men of the Sutcrofts";
L[ "RPMW" ]    = "Men of the Wold";
L[ "RPPW" ]    = "People of Wildermore";
L[ "RPSW" ]    = "Survivors of Wildermore";
L[ "RPTEo" ]   = "The Eorlingas";
L[ "RPTHe" ]   = "The Helmingas";
L[ "RPTEFF" ]  = "The Ents of Fangorn Forest";
L[ "RPDA" ]    = "Dol Amroth";
L[ "RPDAA" ]   = "Dol Amroth - Armoury";
L[ "RPDAB" ]   = "Dol Amroth - Bank";
L[ "RPDAD" ]   = "Dol Amroth - Docks";
L[ "RPDAGH" ]  = "Dol Amroth - Great Hall";
L[ "RPDAL" ]   = "Dol Amroth - Library";
L[ "RPDAW" ]   = "Dol Amroth - Warehouse";
L[ "RPDAM" ]   = "Dol Amroth - Mason";
L[ "RPDAS" ]   = "Dol Amroth - Swan-knights";
L[ "RPMRV" ]   = "Men of Ringl\195\179 Vale";
L[ "RPMDE" ]   = "Men of Dor-en-Ernil";
L[ "RPML" ]    = "Men of Lebennin";
L[ "RPP" ]     = "Pelargir";
L[ "RPRI" ]    = "Rangers of Ithilien";
L[ "RPDMT" ]   = "Defenders of Minas Tirith";
L[ "RPRR" ]    = "Riders of Rohan";
L[ "RPHOTW" ]  = "Host of the West";
L[ "RPHOTWA" ] = "Host of the West: Armour";
L[ "RPHOTWW" ] = "Host of the West: Weapons";
L[ "RPHOTWP" ] = "Host of the West: Provisions";
L[ "RPCOG" ]   = "Conquest of Gorgoroth";
L[ "RPEOFBs" ] = "Enmity of Fushaum Bal south";
L[ "RPEOFBn" ] = "Enmity of Fushaum Bal north";
L[ "RPRSC" ]   = "Red Sky Clan";
L[ "RPDOE" ]   = "Dwarves of Erebor";
L[ "RPEOF" ]   = "Elves of Felegoth";
L[ "RPMOD" ]   = "Men of Dale";
L[ "RPCCLE" ]  = "Chicken Chasing League of Eriador";
L[ "RPTAA" ]   = "The Ale Association";
L[ "RPTIL" ]   = "The Inn League";
L[ "RPGME" ]   = "Grey Mountains Expedition";
L[ "RPWF" ]    = "Wilderfolk";
L[ "RPTGA" ]   = "The Great Alliance";
L[ "RPTWC" ]   = "The White Company";
L[ "RPRMI" ]   = "Reclamation of Minas Ithil";
L[ "RPPOW" ]   = "Protectors of Wilderland";
L[ "RPMOG" ]   = "March on Gundabad";
L[ "RPGA" ]    = "The Gabil'akk\195\162";
L[ "RPWB"]	   = "Woodcutter's Brotherhood";
L[ "RPLOTA"]   = "The League of the Axe";
L[ "RPHOT" ]   = "The Haban'akk\195\162 of Thr\195\161in"; 
L[ "RPKU" ]    = "Kharum-ubn\195\162r";
L[ "RPROFMH" ] = "Reclaimers of the Mountain-hold";
L[ "RPDOTA" ]  = "Defenders of The Angle";
L[ "RPTYW" ]   = "The Yonder-watch";
L[ "RPDOC" ]   = "Dúnedain of Cardolan";
L[ "RPACC" ]   = "Reputation Acceleration";

-- All reputation standings
L[ "RPMSR" ]  = "Maximum standing reached"
L[ "RPGL1" ]  = "Neutral";
L[ "RPGL2" ]  = "Acquaintance";
L[ "RPGL3" ]  = "Friend";
L[ "RPGL4" ]  = "Ally";
L[ "RPGL5" ]  = "Kindred";
L[ "RPGL6" ]  = "Respected";
L[ "RPGL7" ]  = "Honoured";
L[ "RPGL8" ]  = "Celebrated";
L[ "RPBL1" ]  = "Outsider";
L[ "RPBL2" ]  = "Enemy";
L[ "RPGG1" ]  = "Initiate";
L[ "RPGG2" ]  = "Apprentice";
L[ "RPGG3" ]  = "Journeyman";
L[ "RPGG4" ]  = "Expert";
L[ "RPGG5" ]  = "Artisan";
L[ "RPGG6" ]  = "Master";
L[ "RPGG7" ]  = "Eastemnet Master";
L[ "RPGG8" ]  = "Westemnet Master";
L[ "RPGG9" ]  = "Honoured Master";
L[ "RCCLE1" ] = "Rookie";
L[ "RCCLE2" ] = "Minor Leaguer";
L[ "RCCLE3" ] = "Major Leaguer";
L[ "RCCLE4" ] = "All-star";
L[ "RCCLE5" ] = "Hall of Famer";
L[ "RPBR" ]   = "Bonus Remaining";
L[ "RPMI1" ]  = "The Reclamation";
L[ "RPMI2" ]  = "The Reclamation Continues";
L[ "RPMI3" ]  = "The Trial of Wrath";
L[ "RPMI4" ]  = "The Reclamation Continues II";
L[ "RPMI5" ]  = "The Trial of Sorrow";
L[ "RPMI6" ]  = "The Reclamation Continues III";
L[ "RPMI7" ]  = "The Trial of Madness";
L[ "RPMI8" ]  = "The Reclamation Continues IV";
L[ "RPMI9" ]  = "The Trial of Despair";
L[ "RPMI10" ] = "The Trial of Death";
L[ "RPGA1" ] = "Idmul";
L[ "RPGA2" ] = "Dumul";
L[ "RPGA3" ] = "Izkhas";
L[ "RPGA4" ] = "Uzkhas";
L[ "RPGA5" ] = "Fabar\195\162l";
L[ "RPGA6" ] = "Azghzabad";

-- Reputation changes
L[ "RPDECREASE"] = "decreased";

-- Infamy/Renown window
if PlayerAlign == 1 then L[ "IFWTitle" ] = "Renown"; L[ "IFIF" ] = "Total renown:";
else L[ "IFWTitle" ] = "Infamy"; L[ "IFIF" ] = "Total infamy:"; end
L[ "IFCR" ] = "Your rank:";
L[ "IFTN" ] = "points for the next rank";

-- GameTime window
L[ "GTWTitle" ] = "Real/Server Time";
L[ "GTW24h" ] = "Show time in 24 hour format";
L[ "GTWSST" ] = "Show server time       GMT";
L[ "GTWSBT" ] = "Show real & server time";
L[ "GTWST" ] = "Server: ";
L[ "GTWRT" ] = "Real: ";

-- More Options window
L[ "OPWTitle" ] = L[ "MOP" ];
L[ "OPHText" ] = "Height:";
L[ "OPFText" ] = "Font:";
L[ "OPAText" ] = "Auto hide:";
L[ "OPAHD" ] = "Disabled";
L[ "OPAHE" ] = "Always";
L[ "OPAHC" ] = "Only in combat";
L[ "OPIText" ] = "Icon size:";
L[ "OPTBTop" ] = "At top of screen";
L[ "OPISS" ] = "Small";
L[ "OPISM" ] = "Medium";
L[ "OPISL" ] = "Large";
L[ "Layout" ] = "Alternative PlayerInfo Layout\n(Reloads TB after changing)";

-- Profile window
L[ "PWProfile" ] = "Profile";
L[ "PWEPN" ] = "Enter a profile name";
L[ "PWCreate" ] = "Create";
L[ "PWNew" ] = "New profile";
L[ "PWCreated" ] = "has been created";
L[ "PWLoad" ] = "Load";
L[ "PWNFound" ] = "No profile was found";
L[ "PWFail" ] = " cannot be loaded because the language of the game is not the same language of this profile";
L[ "PWLoaded" ] = "loaded";
L[ "PWDelete" ] = "Delete";
L[ "PWDeleteFailed" ] = "Failed to delete profile ";
L[ "PWFailDelete" ] = " cannot be deleted because the language of the game is not the same language of this profile";
L[ "PWDeleted" ] = "deleted";
L[ "PWSave" ] = "Save";
L[ "PWSaved" ] = "saved";
L[ "PWCancel" ] = "Cancel";

-- Shell commands window
L[ "SCWTitle" ] = "TitanBar Shell Commands";
L[ "SCWC1" ] = "Show TitanBar Options";
L[ "SCWC2" ] = "Unload TitanBar";
L[ "SCWC3" ] = "Reload TitanBar";
L[ "SCWC4" ] = "Reset all settings to default";

-- Shell commands
L[ "SC0" ] = "Command not supported";
L[ "SCa1" ] = "options";
L[ "SCb1" ] = "opt / ";
L[ "SCa2" ] = "unload";
L[ "SCb2" ] = "  u / ";
L[ "SCa3" ] = "reload";
L[ "SCb3" ] = "  r / ";
L[ "SCa4" ] = "resetall";
L[ "SCb4" ] = " ra / ";

-- Durability infos window
L[ "DWTitle" ] = "Durability infos";
L[ "DWLbl" ] = " damaged item";
L[ "DWLbls" ] = " damaged items";
L[ "DWLblND" ] = "All your items are at 100%";
L[ "DIIcon" ] = "Show icon in tooltip";
L[ "DIText" ] = "Show item name in tooltip";
L[ "DWnint" ] = "Not showing icon & item name";

-- Equipment infos window
--L[ "EWTitle" ] = "Equipment infos";
L[ "EWLbl" ] = "Items currently on your character";
L[ "EWLblD" ] = "Score";
L[ "EWItemNP" ] = " Item not present";
--L[ "EWItemF" ] = " item was found";
--L[ "EWItemsF" ] = " items was found";
L[ "EWST1" ] = "Head";
L[ "EWST13" ] = "Left Earring";
L[ "EWST14" ] = "Right Earring";
L[ "EWST10" ] = "Necklace";
L[ "EWST6" ] = "Shoulder";
L[ "EWST7" ] = "Back";
L[ "EWST2" ] = "Chest";
L[ "EWST8" ] = "Left Bracelet";
L[ "EWST9" ] = "Right Bracelet";
L[ "EWST11" ] = "Left Ring";
L[ "EWST12" ] = "Right Ring";
L[ "EWST4" ] = "Gloves";
L[ "EWST3" ] = "Legs";
L[ "EWST5" ] = "Feet";
L[ "EWST15" ] = "Pocket";
L[ "EWST16" ] = "Primary Weapon";
L[ "EWST17" ] = "Secondary Weapon/Shield";
L[ "EWST18" ] = "Ranged Weapon";
L[ "EWST19" ] = "Craft Tool";
L[ "EWST20" ] = "Class";

-- Player Infos control
--L[ "PINAME" ] = "Your name";
--L[ "PILVL" ] = "Your level";
--L[ "PIICON" ] = "Your are a ";
L[ "Morale" ] = "Morale";
L[ "Power" ] = "Power";
L[ "Armour" ] = "Armour";
L[ "Stats" ] = "Statistics";
L[ "Might" ] = "Might";
L[ "Agility" ] = "Agility";
L[ "Vitality" ] = "Vitality";
L[ "Will" ] = "Will";
L[ "Fate" ] = "Fate";
L[ "Finesse" ] = "Finesse";
L[ "Mitigations" ] = "Mitigations";
L[ "Common" ] = "Common";
L[ "Fire" ] = "Fire";
L[ "Frost" ] = "Frost";
L[ "Shadow" ] = "Shadow";
L[ "Lightning" ] = "Lightning";
L[ "Acid" ] = "Acid";
L[ "Physical" ] = "Physical";
L[ "Tactical" ] = "Tactical";
L[ "Healing" ] = "Healing";
L[ "Outgoing" ] = "Outgoing";
L[ "Incoming" ] = "Incoming";
L[ "Avoidances" ] = "Avoidances";
L[ "Block" ] = "Block";
L[ "Parry" ] = "Parry";
L[ "Evade" ] = "Evade";
L[ "Resistances" ] = "Resistance";
L[ "Base" ] = "Base";
L[ "CritAvoid" ] = "Crit. Defence";
L[ "CritChance" ] = "Crit. Chance";
L[ "Mastery" ] = "Mastery";
L[ "Level" ] = "Level";
L[ "Race" ] = "Race";
L[ "Class" ] = "Class";
L[ "XP" ] = "Exp.";
L[ "NXP" ] = "Next lvl at";
L[ "MLvl" ] = "Maximum level reached";
L[ "Offence" ] = "Offence";
L[ "Defence" ] = "Defence";
L[ "Wrath" ] = "Wrath";
L[ "Orc" ] = "Orc-craft";
L[ "Fell" ] = "Fell-wrought";
L[ "Melee" ] = "Melee dam.";
L[ "Ranged" ] = "Ranged dam.";
L[ "CritHit" ] = "Crit. hit";
L[ "CritMag" ] = "Crit. mag.";
L[ "DevHit" ] = "Dev. hit";
L[ "DevMag" ] = "Dev. mag.";
L[ "CritDef" ] = "Crit. defence";
L[ "Partial" ] = "partial";
L[ "Capped" ] = "Values in YELLOW are CAPPED.";

-- Money Infos control
L[ "MGh" ] = "Quantity of gold";
L[ "MSh" ] = "Quantity of silver";
L[ "MCh" ] = "Quantity of copper";
L[ "MGB" ] = "Bag of Gold Coins"; -- Thx Heridan!
L[ "MSB" ] = "Bag of Silver Coins"; -- Thx Heridan!
L[ "MCB" ] = "Bag of Copper Coins"; -- Thx Heridan!

-- Bag Infos control
--L[ "BIh" ] = "Backpack informations";
--L[ "BIt1" ] = "Number of occupied slots/max";
L[ "BINI" ] = "You're tracking no items!\nLeft click to see your items."
L[ "BIIL" ] = "Items list"
L[ "BIT" ] = "Select / unselect an item"
L[ "BIUsed" ] = " Show used over free slots";
L[ "BIMax" ] = " Show total bag slots";
L[ "BIMsg" ] = "No stackable item was found in your bag!"

-- Equipment Infos control
L[ "EIh" ] = "Points for all your equipment";
L[ "EIt1" ] = "Left click to open the options window";
L[ "EIt2" ] = "Hold left click to move the control";
L[ "EIt3" ] = "Right click to open the control menu";

-- Durability Infos control
L[ "DIh" ] = "Durability of all your equipment";

-- Player Location control
L[ "PLh" ] = "This is where you are";
L[ "PLMsg" ] = "Enter a City!";

-- Game Time control
L[ "GTh" ] = "Real/Server Time";

-- Chat message
L[ "TBR" ] = "TitanBar: All my settings are set back to default";

-- Character Race
L[ "Elf" ] = "Elf";
L[ "Man" ] = "Man";
L[ "Dwarf" ] = "Dwarf";
L[ "Hobbit" ] = "Hobbit";
L[ "Beorning" ] = "Beorning";
L[ "HighElf" ] = "High Elf";
L[ "StoutAxe" ] = "Stout-axe";

-- Free People Class
L[ "Burglar" ] = "Burglar";
L[ "Captain" ] = "Captain";
L[ "Champion" ] = "Champion";
L[ "Guardian" ] = "Guardian";
L[ "Hunter" ] = "Hunter";
L[ "Lore-Master" ] = "Lore-Master";
L[ "Minstrel" ] = "Minstrel";
L[ "Rune-Keeper" ] = "Rune-Keeper";
L[ "Warden" ] = "Warden";
L[ "Brawler" ] = "Brawler";

-- Monster Play Class
L[ "Reaver" ] = "Reaver";
L[ "Weaver" ] = "Weaver";
L[ "Blackarrow" ] = "Blackarrow";
L[ "Warleader" ] = "Warleader";
L[ "Stalker" ] = "Stalker";
L[ "Defiler" ] = "Defiler";

-- Durability
L[ "D" ] = "Durability";
L[ "D1" ] = "All Durability";
L[ "D2" ] = "Weak";
L[ "D3" ] = "Substantial";
L[ "D4" ] = "Brittle";
L[ "D5" ] = "Normal";
L[ "D6" ] = "Tough";
L[ "D7" ] = "Filmsy";
L[ "D8" ] = "Indestructible";

-- Quality
L[ "Q" ] = "Quality";
L[ "Q1" ] = "All Quality";
L[ "Q2" ] = "Common";
L[ "Q3" ] = "UnCommon";
L[ "Q4" ] = "Incomparable";
L[ "Q5" ] = "Rare";
L[ "Q6" ] = "Legendary";
