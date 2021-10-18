-- de.lua
-- Written by Habna -- Translated by Nadia (https://hdro-guide.de)
-- Rewritten by many

_G.L = {};
L[ "TBLoad" ] = "TitanBar " .. Version .. " geladenen!";
L[ "TBSSCS" ] = "TitanBar: Bildschirmgr\195\182\195\159e ge\195\164ndert hat, Neupositionierung Kontrollen...";
L[ "TBSSCD" ] = "TitanBar: erledigt!";
L[ "TBOpt" ] = "Optionen sind durch einen Rechtsklick auf TitanBar verf\195\188gbar";

--Misc
L[ "NoData" ] = "Keine anderen Daten in der API";
L[ "NA" ] = "N/A";
--L[ "dmg" ] = " def";
L[ "You" ] = "Du: ";
L[ "ButDel" ] = "Infos dieser Art l\195\182schen";
--L[ "" ] = "";

-- TitanBar Menu
L[ "MBag" ] = "Zeige Geldbeutel";
L[ "MGSC" ] = "Verm\195\182gen"; -- (Gold, Silber, Kupfer)
L[ "MPI" ] = "Spieler Infos";
L[ "MEI" ] = "Ausr\195\188stung Infos";
L[ "MDI" ] = "Haltbarkeit Infos";
L[ "MPL" ] = "Spieler Ort";
L[ "MGT" ] = "Uhrzeit";
L[ "MOP" ] = "Weitere Optionen";
L[ "MPP" ] = "Profil";
L[ "MSC" ] = "Shell-Befehle";
L[ "MRA" ] = "Auf Standardwerte zur\195\188cksetzen";
L[ "MUTB" ] = "entfernen";
L[ "MRTB" ] = "neu laden";
L[ "MATB" ] = "\195\188ber";
L[ "MBG" ] = "Hintergrundfarbe";
L[ "MCL" ] = "Sprache \195\164ndern ...";
L[ "MCLen" ] = "Englisch";
L[ "MCLfr" ] = "Franz\195\182sisch";
L[ "MCLde" ] = "Deutsch";
L[ "MTI" ] = "Artikel verfolgen";
--L[ "MView" ] = "Anzeigen ";
L[ "MVault" ] = "Bankfach";
L[ "MStorage" ] = "gemeinsamer Lagerraum";
--L[ "MBank" ] = "Bank";
L[ "MDayNight" ] = "Tages- & Nacht-Zeit";
L[ "MReputation" ] = "Ruf";

-- Wallet Currency Controls
-- LOTRO Points control
L[ "MLP" ] = "HdRO-Punkte";
L[ "LPh" ] = "Eure HdRO-Punkte";
-- Mithril Coins control
L[ "MMC" ] = "Mithril-M\195\188nze";
L[ "MCh" ] = "Eure Mithril-M\195\188nzen";
-- Yule Tokens control
L[ "MYT" ] = "Julfest-M\195\188nze";
L[ "YTh" ] = "Eure Julfest-M\195\188nzen";
-- Anniversary Tokens control
L[ "MLAT" ] = "Jubil\195\164umsm\195\188nze";
L[ "LATh" ] = "Eure Jubil\195\164umsm\195\188nzen";
-- Bingo Badge control
L[ "MBB" ] = "Bingo-Abzeichen";
L[ "BBh" ] = "Eure Bingo-Abzeichen";
-- Skirmish marks control
L[ "MSM" ] = "Zeichen";
L[ "SMh" ] = "Eure Scharm\195\188tzel-Zeichen";
-- Destiny Points control
L[ "MDP" ] = "Schicksalspunkte";
L[ "DPh" ] = "Eure Schicksalspunkte";
-- Shards control
L[ "MSP" ] = "Scherbe";
L[ "SPh" ] = "Eure Scherben";
-- Tokens of Hytbold control
L[ "MHT" ] = "M\195\188nze von Hytbold";
L[ "HTh" ] = "Eure M\195\188nzen von Hytbold";
-- Medallions control
L[ "MMP" ] = "Medaillon";
L[ "MPh" ] = "Eure Medallions";
-- Seals control
L[ "MSL" ] = "Siegel";
L[ "SLh" ] = "Eure Siegel";
-- Commendations control
L[ "MCP" ] = "Anerkennung";
L[ "CPh" ] = "Eure Anerkennung";
-- Amroth Silver Piece control
L[ "MASP" ] = "Amroth-Silberst\195\188ck";
L[ "ASPh" ] = "Eure Amroth-Silberst\195\188cke";
-- Stars of Merit control
L[ "MSOM" ] = "Stern des Verdienst";
L[ "SOMh" ] = "Eure Sterne des Verdienst";
-- Central Gondor Silver Piece control
L[ "MCGSP" ] = "Zentralgondorisches Silberst\195\188ck";
L[ "CGSPh" ] = "Eure Zentralgondorischen Silberst\195\188cke";
-- Gift giver's Brand control
L[ "MGGB" ] = "Zeichen des Schenkenden";
L[ "GGBh" ] = "Eure Zeichen des Schenkenden";
-- Motes of Enchantment control
L[ "MMOE" ] = "Aschepartikel der Verzauberung";
L[ "MOEh" ] = "Eure Aschepartikel der Verzauberung";
-- Embers of Enchantment control
L[ "MEOE" ] = "Asche der Verzauberung";
L[ "EOEh" ] = "Eure Asche der Verzauberung";
-- Figments of Splendour control
L[ "MFOS" ] = "Prachtst\195\188ck des Glanzes";
L[ "FOSh" ] = "Eure Prachtst\195\188cke des Glanzes";
-- Fall Festival Tokens control
L[ "MFFT" ] = "Herbstfest-Medaille";
L[ "FFTh" ] = "Eure Herbstfest-Medaillen";
-- Farmers Faire Tokens control
L[ "MFFAT" ] = "Bauernfest-M\195\188nze";
L[ "FFATh" ] = "Eure Bauernfest-M\195\188nzen";
-- Spring Leaves control
L[ "MSPL" ] = "Fr\195\188hlingsblatt";
L[ "FSPLh" ] = "Eure Fr\195\188hlingsbl\195\164tter";
-- Midsummer Tokens control
L[ "MMST" ] = "Mittsommer-Marke";
L[ "MSTh" ] = "Eure Mittsommer-Marken";
-- Ancient Script control
L[ "MAS" ] = "Uralte Schrift";
L[ "ASh" ] = "Eure Uralte Schriften";

-- Control Menu
L[ "MCU" ] = "entfernen ...";
L[ "MCBG" ] = "Hintergrundfarbe dieses Elements \195\132ndern";
L[ "MTBBG" ] = "\195\156bernehmen der Hintergrundfarbe f\195\188r ...";
L[ "MTBBGC" ] = "dieses Steuerelement";
L[ "MTBBGAC" ] = "alle Steuerelement";
L[ "MCRBG" ] = "Hintergrundfarbe zur\195\188cksetzen ...";
L[ "MCABT" ] = "Diese Farbe f\195\188r ...";
L[ "MCABTA" ] = "alle Steuerelement & TitanBar";
L[ "MCABTTB" ] = "TitanBar";
L[ "MCRC" ] = "Aktualisieren ...";

-- Background window
L[ "BWTitle" ] = "Farbeinstellung";
L[ "BWAlpha" ] = "Alpha";
L[ "BWCurSetColor" ] = "Aktuelle Farbe";
L[ "BWApply" ] = " Ausgew\195\164hlte Farbe f\195\188r alle Elemente";
L[ "BWSave" ] = "Speichern";
L[ "BWDef" ] = "Standard";
L[ "BWBlack" ] = "Schwarz";
L[ "BWTrans" ] = "Transparent";

-- Wallet infos window
L[ "WIt" ] = "Rechtsklick auf eine W\195\164hrung f\195\188r die Einstellung";--Waehrung, fuer
L[ "WIot" ] = "auf TitanBar";
L[ "WIiw" ] = "im Tooltip";
L[ "WIds" ] = "Nicht mehr anzeigen";
L[ "WInc" ] = "Sie verfolgen keine W\195\164hrung!\nLinks klicken, um die W\195\164hrung Liste zu sehen.";

-- Money infos window
L[ "MIWTitle" ] = "Geldbeutel";
L[ "MIWTotal" ] = "Gesamt";
L[ "MIWAll" ] = "Gesamtsumme anzeigen";
L[ "MIWCM" ] = "Eingeloggten Charakter zeigen";
L[ "MIWCMAll" ] = "Alle Charaktere zeigen";
L[ "MIWSSS" ] = "Sitzungsstatistik im Tooltip zeigen";
L[ "MIWSTS" ] = "Heutige Statistik im Tooltip zeigen";
L[ "MIWID" ] = " Geldbeutel-Info gel\195\182scht";
L[ "MIMsg" ] = "Keine Geldbeutelinfo gefunden";
L[ "MISession" ] = "Sitzung";
L[ "MIDaily" ] = "Heute";
L[ "MIStart" ] = "Start";
L[ "MIEarned" ] = "Eingenommen";
L[ "MISpent" ] = "Ausgegeben";
--L[ "MITotEarned" ] = "Gesamt eingenommen";
--L[ "MITotSpent" ] = "Gesamt ausgegeben";

-- Vault window
L[ "VTh" ] = "Bankfach";
L[ "VTnd" ] = "Es wurden keine Daten f\195\188r diesen Charakter gefunden";
L[ "VTID" ] = " Bankfachinfo gel\195\182scht!"; 
L[ "VTSe" ] = "Suchen:";
L[ "VTAll" ] = "-- Alle --";

-- Shared Storage window
L[ "SSh" ] = "gemeinsamer Lagerraum";
L[ "SSnd" ] = "Ihr m\195\188sst Euren Lagerraum mindestens einmal \195\182ffnen";

-- Backpack window
L[ "BIh" ] = "Rucksack";
L[ "BID" ] = " Rucksackinfo gel\195\182scht!"; 

-- Bank window
L[ "BKh" ] = "Bank";

-- Day & Night window
L[ "Dawn" ] = "Morgend\195\164mmerung";
L[ "Morning" ] = "Vormittag";
L[ "Noon" ] = "Mittag";
L[ "Afternoon" ] = "Nachmittag";
L[ "Dusk" ] = "Abendr\195\182te";
L[ "Gloaming" ] = "Abendd\195\164mmerung";
L[ "Evening" ] = "Abend";
L[ "Midnight" ] = "Mitternacht";
L[ "LateWatches" ] = "Nachtwache";
L[ "Foredawn" ] = "Morgenr\195\182te";
L[ "NextT" ] = "N\195\164chste Tageszeit zeigen";
L[ "TAjustL" ] = "Timer seed";

-- Reputation window
L[ "RPt" ] = "Aktivieren / deaktivieren der Fraktionen\nRechtsklick, um aktuellen Stand einzugeben";
L[ "RPnf" ] = "Ihr verfolgt keine Fraktion!\nLinksklick, um die Fraktionsliste zu sehen.";
L[ "RPPHMaxHide" ] = "Verstecke Fraktionen mit maximalem Ruf";

-- All reputation names
L[ "RPMB" ]    = "Menschen von Bree";
L[ "RPTH" ]    = "Thorins Halle";
L[ "RPTMS" ]   = "Die Mathom-Gesellschaft";
L[ "RPRE" ]    = "Waldl\195\164ufer von Esteld\195\173n";
L[ "RPER" ]    = "Elben von Bruchtal";
L[ "RPTEl" ]   = "Die Eldgang";
L[ "RPCN" ]    = "Rat des Nordens";
L[ "RPTWA" ]   = "Die H\195\188ter von Ann\195\186minas";
L[ "RPLF" ]    = "Lossoth von Forochel";
L[ "RPTEg" ]   = "Die Eglain";
L[ "RPIGG" ]   = "W\195\164chter der eisernen Garnison";
L[ "RPIGM" ]   = "Minenbauer der Eisernen Garnison";
L[ "RPAME" ]   = "Algraig, Menschen von Enedwaith";
L[ "RPTGC" ]   = "Die Graue Schar";
L[ "RPG" ]     = "Galadhrim";
L[ "RPM" ]     = "Malledhrim";
L[ "RPTRS" ]   = "Die Reiter von Stangard";
L[ "RPHLG" ]   = "Helden der Limklar-Schlucht";
L[ "RPMD" ]    = "Menschen aus Dunland"; 
L[ "RPTR" ]    = "Th\195\169odreds Reiter";
L[ "RPJG" ]    = "Goldschmiedegilde";
L[ "RPCG" ]    = "Kochgilde";
L[ "RPSG" ]    = "Gelehrtengilde";
L[ "RPTG" ]    = "Schneidergilde";
L[ "RPWoG" ]   = "Drechslergilde";
L[ "RPWeG" ]   = "Waffenschmiedegilde";
L[ "RPMG" ]    = "Schmiedegilde";
L[ "RPMEV" ]   = "Menschen des Entwasser-Tals";
L[ "RPMN" ]    = "Menschen der Norhofen";
L[ "RPMS" ]    = "Menschen der Suthofen";
L[ "RPMW" ]    = "Menschen der Steppe";
L[ "RPPW" ]    = "Bewohner der Wildermark";
L[ "RPSW" ]    = "\195\156berlebende der Wildermark";
L[ "RPTEo" ]   = "Die Eorlingas";
L[ "RPTHe" ]   = "Die Helmingas";
L[ "RPTEFF" ]  = "Die Ents des Fangorn-Walds";
L[ "RPDA" ]    = "Dol Amroth";
L[ "RPDAA" ]   = "Dol Amroth - Waffenkammer";
L[ "RPDAB" ]   = "Dol Amroth - Bank";
L[ "RPDAD" ]   = "Dol Amroth - Landungsbr\195\188cken";
L[ "RPDAGH" ]  = "Dol Amroth - Gro\195\159e Halle";
L[ "RPDAL" ]   = "Dol Amroth - Bibliothek";
L[ "RPDAW" ]   = "Dol Amroth - Lagerhaus";
L[ "RPDAM" ]   = "Dol Amroth - Maurerei";
L[ "RPDAS" ]   = "Dol Amroth - Schwanenritter";
L[ "RPMRV" ]   = "Bewohner des Ringl\195\179tals";
L[ "RPMDE" ]   = "Bewohner von Dor-en-Ernil";
L[ "RPML" ]    = "Bewohner von Lebennin";
L[ "RPP" ]     = "Pelargir";
L[ "RPRI" ]    = "Waldl\195\164ufer von Ithilien";
L[ "RPDMT" ]   = "Verteidiger von Minas Tirith";
L[ "RPRR" ]    = "Reiter von Rohan";
L[ "RPHOTW" ]  = "Heer des Westens";
L[ "RPHOTWA" ] = "Heer des Westens: R\195\188stung";
L[ "RPHOTWW" ] = "Heer des Westens: Waffen";
L[ "RPHOTWP" ] = "Heer des Westens: Vorr\195\164te";
L[ "RPCOG" ]   = "Eroberung von Gorgoroth";
L[ "RPEOFBs" ] = "Feind des s\195\188dlichen Fushaum Bal";
L[ "RPEOFBn" ] = "Feind des n\195\182rdlichen Fushaum Bal";
L[ "RPRSC" ]   = "Rothimmel-Sippe";
L[ "RPDOE" ]   = "Zwerge vom Erebor";
L[ "RPEOF" ]   = "Elben von Felegoth";
L[ "RPMOD" ]   = "Menschen von Thal";
L[ "RPCCLE" ]  = "H\195\188hnerjagd-Liga von Eriador";
L[ "RPTAA" ]   = "Die Bier-Genossenschaft";
L[ "RPTIL" ]   = "Die Gasthausliga";
L[ "RPGME" ]   = "Expedition ins Graue Gebirge";
L[ "RPWF" ]    = "Wildes Volk";
L[ "RPTGA" ]   = "Die Grosse Allianz";
L[ "RPTWC" ]   = "Die Weisse Schar";
L[ "RPRMI" ]   = "Die R\195\188ckeroberung von Minas Ithil";
L[ "RPPOW" ]   = "Besch\195\188tzer des Wilderlands";
L[ "RPMOG" ]   = "Marsch auf Gundabad";
L[ "RPGA" ]    = "Die Gabil'akk\195\162";
L[ "RPWB"]	   = "Bruderschaft der Holzf\195\164ller";
L[ "RPLOTA"]   = "Der Bund der Axt";
L[ "RPHOT" ]   = "Die Haban'akk\195\162 von Thr\195\162in";
L[ "RPKU" ]    = "Kharum-ubn\195\162r";
L[ "RPACC" ]   = "Rufbeschleunigung";

-- All reputation standings
L[ "RPMSR" ]  = "Maximalen Ruf erreicht";
L[ "RPGL1" ]  = "Neutral";
L[ "RPGL2" ]  = "Bekannter";
L[ "RPGL3" ]  = "Freund";
L[ "RPGL4" ]  = "Verb\195\188ndeter";
L[ "RPGL5" ]  = "Verwandter";
L[ "RPGL6" ]  = "Respektiert";
L[ "RPGL7" ]  = "Verehrt";
L[ "RPGL8" ]  = "Gefeiert";
L[ "RPBL1" ]  = "Au\195\159enseiter";
L[ "RPBL2" ]  = "Feind";
L[ "RPGG1" ]  = "Eingeweihter";
L[ "RPGG2" ]  = "Lehrling";
L[ "RPGG3" ]  = "Geselle";
L[ "RPGG4" ]  = "Experte";
L[ "RPGG5" ]  = "Virtuose";
L[ "RPGG6" ]  = "Meister";
L[ "RPGG7" ]  = "Ost-Emnet-Meister der Gilde";
L[ "RPGG8" ]  = "West-Emnet-Meister der Gilde";
L[ "RPGG9" ]  = "Ehrenmeister der Gilde";
L[ "RCCLE1" ] = "Rookie";
L[ "RCCLE2" ] = "Minor Leaguer";
L[ "RCCLE3" ] = "Major Leaguer";
L[ "RCCLE4" ] = "All-star";
L[ "RCCLE5" ] = "Hall of Famer";
L[ "RPBR" ]   = "Verbleibender Bonus";
L[ "RPMI1" ]  = "Die R\195\188ckeroberung von Minas Ithil";
L[ "RPMI2" ]  = "Die R\195\188ckeroberung geht weiter I";
L[ "RPMI3" ]  = "Pr\195\188fung des Zorn";
L[ "RPMI4" ]  = "Die R\195\188ckeroberung geht weiter II";
L[ "RPMI5" ]  = "Pr\195\188fung der Trauer";
L[ "RPMI6" ]  = "Die R\195\188ckeroberung geht weiter III";
L[ "RPMI7" ]  = "Pr\195\188fung des Wahnsinn";
L[ "RPMI8" ]  = "Die R\195\188ckeroberung geht weiter IV";
L[ "RPMI9" ]  = "Pr\195\188fung der Verzweiflung";
L[ "RPMI10" ] = "Pr\195\188fung des Todes";
L[ "RPGA1" ] = "Idmul";
L[ "RPGA2" ] = "Dumul";
L[ "RPGA3" ] = "Izkhas";
L[ "RPGA4" ] = "Uzkhas";
L[ "RPGA5" ] = "Fabar\195\162l";
L[ "RPGA6" ] = "Azghzabad";

-- Infamy/Renown window
if PlayerAlign == 1 then L[ "IFWTitle" ] = "Ansehen"; L[ "IFIF" ] = "Gesamtes Ansehen:";
else L[ "IFWTitle" ] = "Verrufenheit"; L[ "IFIF" ] = "Gesamte Verrufenheit:"; end
L[ "IFCR" ] = "Euer Rang:";
L[ "IFTN" ] = "Punkte f\195\188r den n\195\164chsten Rang";

-- GameTime window
L[ "GTWTitle" ] = "Lokale/Server Zeit";
L[ "GTW24h" ] = "Anzeige der Uhrzeit im 24 Stunden-Format";
L[ "GTWSST" ] = "Zeige Serverzeit       GMT";
L[ "GTWSBT" ] = "Lokale und Server-Zeit zeigen";
L[ "GTWST" ] = "Server: ";
L[ "GTWRT" ] = "Lokal: ";

-- More Options window
L[ "OPWTitle" ] = L[ "MOP" ];
L[ "OPHText" ] = "H\195\182he:";
L[ "OPFText" ] = "Schriftart:";
L[ "OPAText" ] = "Automatisch im Hintergrund:";
L[ "OPAHD" ] = "niemals";
L[ "OPAHE" ] = "immer";
L[ "OPAHC" ] = "Nur in der Schlacht";
L[ "OPIText" ] = "Icon-Gr\195\182\195\159e:";
L[ "OPTBTop" ] = "Oben am Bildschirm";
L[ "OPISS" ] = "klein";
L[ "OPISM" ] = "medium";
L[ "OPISL" ] = "breit";
L[ "Layout" ] = "Alternatives PlayerInfo Layout\nL\195\164dt TB nach \195\132nderung neu";

-- Profile window
L[ "PWProfile" ] = "Profil";
L[ "PWEPN" ] = "Gebt einen Profilnamen ein";
L[ "PWCreate" ] = "erstellen";
L[ "PWNew" ] = "Neues Profil";
L[ "PWCreated" ] = "wurde erstellt";
L[ "PWLoad" ] = "laden";
L[ "PWNFound" ] = "Kein Profil gefunden";
L[ "PWFail" ] = " kann nicht geladen werden, da Sprache des Spiels nicht mit jener des Profils \195\188bereinstimmt";
L[ "PWLoaded" ] = "geladen";
L[ "PWDelete" ] = "L\195\182schen";
L[ "PWDeleteFailed" ] = "Profil konnte nicht gel\195\182scht werden ";
L[ "PWFailDelete" ] = " kann nicht gel\195\182scht werden, da Sprache im Profil und im Spiel nicht \195\188bereinstimmt";
L[ "PWDeleted" ] = "gel\195\182scht";
L[ "PWSave" ] = "speichern";
L[ "PWSaved" ] = "gespeichert";
L[ "PWCancel" ] = "abbrechen";

-- Shell commands window
L[ "SCWTitle" ] = "TitanBar Shell-Befehle";
L[ "SCWC1" ] = "Zeigt TitanBar Optionen";
L[ "SCWC2" ] = "Entfernt TitanBar";
L[ "SCWC3" ] = "L\195\164dt TitanBar neu";
L[ "SCWC4" ] = "Zur\195\188cksetzen aller Einstellungen auf die Standardwerte";

-- Shell commands
L[ "SC0" ] = "Befehl wird nicht unterst\195\188tzt";
L[ "SCa1" ] = "Optionen";
L[ "SCb1" ] = "opt / ";
L[ "SCa2" ] = "entfernen";
L[ "SCb2" ] = "  u / ";
L[ "SCa3" ] = "neu laden";
L[ "SCb3" ] = "  r / ";
L[ "SCa4" ] = "alle zur\195\188cksetzen";
L[ "SCb4" ] = " ra / ";

-- Durability infos window
L[ "DWTitle" ] = "Haltbarkeit-Infos";
L[ "DWLbl" ] = " besch\195\164digter Gegenstand";
L[ "DWLbls" ] = " besch\195\164digte Gegenst\195\164nde";
L[ "DWLblND" ] = "Alle Eure Gegenst\195\164nde sind 100%";
L[ "DIIcon" ] = " Symbole im Tooltip";
L[ "DIText" ] = " Namen im Tooltip";
L[ "DWnint" ] = " Symbole & Namen sind ausgeblendet";

-- Equipment infos window
--L[ "EWTitle" ] = "Ausstattung Infos";
L[ "EWLbl" ] = "Vom Charakter getragene Ausr\195\188stung";
L[ "EWLblD" ] = "Punkte";
L[ "EWItemNP" ] = " Artikel nicht vorhanden";
--L[ "EWItemF" ] = " Element gefunden";
--L[ "EWItemsF" ] = " Artikel gefunden";
L[ "EWST1" ] = "Kopf";
L[ "EWST13" ] = "Linker Ohrring";
L[ "EWST14" ] = "Rechter Ohrring";
L[ "EWST10" ] = "Halskette";
L[ "EWST6" ] = "Schultern";
L[ "EWST7" ] = "R\195\188cken";
L[ "EWST2" ] = "Brust";
L[ "EWST8" ] = "Linkes Handgelenk";
L[ "EWST9" ] = "Rechtes Handgelenk";
L[ "EWST11" ] = "Linker Ring";
L[ "EWST12" ] = "Rechter Ring";
L[ "EWST4" ] = "Handschuhe";
L[ "EWST3" ] = "Beine";
L[ "EWST5" ] = "F\195\188\195\159e";
L[ "EWST15" ] = "Beutel";
L[ "EWST16" ] = "Hauptwaffe";
L[ "EWST17" ] = "Zweitwaffe";
L[ "EWST18" ] = "Fernwaffe";
L[ "EWST19" ] = "Handwerkzeug";
L[ "EWST20" ] = "Klassenfeld";

-- Player Infos control
--L[ "PINAME" ] = "Dies ist dein Name";
--L[ "PILVL" ] = "Das ist dein Level";
--L[ "PIICON" ] = "Du bist ein ";
L[ "Morale" ] = "Moral";
L[ "Power" ] = "Kraft";
L[ "Armour" ] = "R\195\188stung";
L[ "Stats" ] = "Statistik";
L[ "Might" ] = "Macht";
L[ "Agility" ] = "Beweglichkeit";
L[ "Vitality" ] = "Vitalit\195\164t";
L[ "Will" ] = "Wille";
L[ "Fate" ] = "Schicksal";
L[ "Finesse" ] = "Finesse";
L[ "Mitigations" ] = "Minderungen";
L[ "Common" ] = "Allgemein";
L[ "Fire" ] = "Feuer";
L[ "Frost" ] = "Frost";
L[ "Shadow" ] = "Schatten";
L[ "Lightning" ] = "Blitz";
L[ "Acid" ] = "S\195\164ure";
L[ "Physical" ] = "Physisch";
L[ "Tactical" ] = "Taktisch";
L[ "Healing" ] = "Heilung";
L[ "Outgoing" ] = "Ausgehend";
L[ "Incoming" ] = "Eingehend";
L[ "Avoidances" ] = "Vermeidungen";
L[ "Block" ] = "Blocken";
L[ "Parry" ] = "Parrieren";
L[ "Evade" ] = "Ausweichen";
L[ "Resistances" ] = "Resistenz";
L[ "Base" ] = "Allgemein";
L[ "CritAvoid" ] = "Krit. Vert.";
L[ "CritChance" ] = "Krit. Chance";
L[ "Mastery" ] = "Beherrschung";
L[ "Level" ] = "Stufe";
L[ "Race" ] = "Rasse";
L[ "Class" ] = "Klasse";
L[ "XP" ] = "EP.";
L[ "MLvl" ] = "Maximale Stufe erreicht";
L[ "NXP" ] = "LevelUp bei";
L[ "Offence" ] = "Angriff";
L[ "Defence" ] = "Verteidigung";
L[ "Wrath" ] = "Zorn";
L[ "Orc" ] = "Ork-Waffen";
L[ "Fell" ] = "Hass";
L[ "Melee" ] = "Nahkampf";
L[ "Ranged" ] = "Fernkampf";
L[ "CritHit" ] = "Kritisch";
L[ "CritMag" ] = "Crit. mag.";
L[ "DevHit" ] = "Verw\195\188stet";
L[ "DevMag" ] = "Dev. mag.";
L[ "CritDef" ] = "Krit. Vert.";
L[ "Partial" ] = "Teilweise";
L[ "Capped" ] = "Werte in GELB sind am CAP.";

-- Money Infos control
L[ "MGh" ] = "Menge der Goldm\195\188nzen";
L[ "MSh" ] = "Menge der Silberm\195\188nzen";
L[ "MCh" ] = "Menge der Kupferm\195\188nzen";
L[ "MGB" ] = "Beutel mit Goldm\195\188nzen";
L[ "MSB" ] = "Beutel mit Silberm\195\188nzen";
L[ "MCB" ] = "Beutel mit Kupferm\195\188nzen";

-- Bag Infos control
--L[ "BIh" ] = "Rucksack Informationen";
--L[ "BIt1" ] = "belegte Pl\195\164tze / max";
L[ "BINI" ] = "Es wird kein Artikel verfolgt!\nLinksklick, um Eure Artikel zu sehen.";
L[ "BIIL" ] = "Artikel-Liste";
L[ "BIT" ] = "Aktiviert / deaktiviert ein Element";
L[ "BIUsed" ] = " Freie Taschenpl\195\164tze anzeigen";
L[ "BIMax" ] = " Taschenpl\195\164tze gesamt anzeigen";
L[ "BIMsg" ] = "Es wurde kein stapelbares Element gefunden.";

-- Equipment Infos control
L[ "EIh" ] = "Punkte Eures Equipments";
L[ "EIt1" ] = "Linksklick, um Optionsfenster zu \195\182ffnen";
L[ "EIt2" ] = "Zum Verschieben Linksklick halten";
L[ "EIt3" ] = "Rechtsklick f\195\188r Kontextmen\195\188";

-- Durability Infos control
L[ "DIh" ] = "Haltbarkeit Eurer Ausr\195\188stung";

-- Player Location control
L[ "PLh" ] = "Hier seid Ihr";
L[ "PLMsg" ] = "Bitte Stadt betreten";

-- Game Time control
L[ "GTh" ] = "Lokale/Server Zeit";

-- Chat message
L[ "TBR" ] = "TitanBar: Alle Einstellungen wurden zur\195\188ck auf die Standardwerte gesetzt";

-- Character Race
L[ "Elf" ] = "Elb";
L[ "Man" ] = "Mensch";
L[ "Dwarf" ] = "Zwerg";
L[ "Hobbit" ] = "Hobbit";
L[ "Beorning" ] = "Beorninger";
L[ "HighElf" ] = "Hochelb";
L[ "StoutAxe" ] = "Stark-Axt";

-- Free People Class
L[ "Burglar" ] = "Schurke";
L[ "Captain" ] = "Hauptmann";
L[ "Champion" ] = "Waffenmeister";
L[ "Guardian" ] = "W\195\164chter";
L[ "Hunter" ] = "J\195\164ger";
L[ "Lore-Master" ] = "Kundiger";
L[ "Minstrel" ] = "Barde";
L[ "Rune-Keeper" ] = "Runenbewahrer";
L[ "Warden" ] = "H\195\188ter";
L[ "Brawler" ] = "Schl\195\164ger";

-- Monster Play Class
L[ "Reaver" ] = "Schnitter";
L[ "Weaver" ] = "Weberspinne";
L[ "Blackarrow" ] = "Schwarzpfeil";
L[ "Warleader" ] = "Kriegsanf\195\188hrer";
L[ "Stalker" ] = "Pirscher";
L[ "Defiler" ] = "Saboteur";

-- Durability
L[ "D" ] = "Haltbarkeit";
L[ "D1" ] = "Gesamte Haltbarkeit";
L[ "D2" ] = "Schwach";
L[ "D3" ] = "Best\195\164ndig";
L[ "D4" ] = "Br\195\188chig";
L[ "D5" ] = "Normal";
L[ "D6" ] = "Robust";
L[ "D7" ] = "Br\195\188chig";
L[ "D8" ] = "Unempfindlich";

-- Quality
L[ "Q" ] = "Qualit\195\164ten";
L[ "Q1" ] = "Alle Qualit\195\164ten";
L[ "Q2" ] = "Gew\195\182hnlich";
L[ "Q3" ] = "Ungew\195\182hnlich";
L[ "Q4" ] = "Unvergleichlich";
L[ "Q5" ] = "Selten";
L[ "Q6" ] = "Legend\195\164r";