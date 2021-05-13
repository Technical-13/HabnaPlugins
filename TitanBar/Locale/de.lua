-- de.lua
-- Written by Habna -- Translated with Google, Wicky, DaBear78, & Talyrion1003.
-- Rewritten by many

_G.L = {};
L[ "TBLoad" ] = "TitanBar " .. Version .. " geladenen!";
L[ "TBSSCS" ] = "TitanBar: Bildschirmgr\195\182\195\159e ge\195\164ndert hat, Neupositionierung Kontrollen..."; --Bildschirmgroesse, geaendert
L[ "TBSSCD" ] = "TitanBar: erledigt!";
L[ "TBOpt" ] = "Optionen sind durch einen Rechtsklick auf TitanBar verf\195\188gbar"; --verfuegbar

--Misc
L[ "NoData" ] = "Keine anderen Daten in der API";
L[ "NA" ] = "N/A";
--L[ "dmg" ] = " def";--Thx DaBear78!
L[ "You" ] = "Du: ";--Thx DaBear78!
L[ "ButDel" ] = "L\195\182schen von Informationen dieser Art"; --Loeschen
--L[ "" ] = "";

-- TitanBar Menu
L[ "MBag" ] = "Zeige Geldbeutel";
L[ "MGSC" ] = "M\195\188nze"; -- Muenze (Gold, Silber, Kupper)
L[ "MBI" ] = "Rucksack Infos";-- Thx Wicky!
L[ "MPI" ] = "Spieler Infos";-- Thx Wicky!
L[ "MEI" ] = "Ausr\195\188stung Infos";-- Thx Wicky! -- Ausruestung
L[ "MDI" ] = "Haltbarkeit Infos";-- Thx DaBear78!
L[ "MPL" ] = "Spieler Ort";-- Thx DaBear78!
L[ "MGT" ] = "Uhrzeit";-- Thx Wicky!
L[ "MOP" ] = "Weitere Optionen";
L[ "MPP" ] = "Profil";
L[ "MSC" ] = "Shell-Befehle";-- Thx Wicky!
L[ "MRA" ] = "Zur\195\188cksetzen auf Standardwerte";-- Thx Wicky! -- Zuruecksetzen
L[ "MUTB" ] = "entfernen";-- Thx Wicky!
L[ "MRTB" ] = "neu laden";-- Thx Wicky!
L[ "MATB" ] = "\195\188ber"; -- Über
L[ "MBG" ] = "Hintergrundfarbe";-- Thx Wicky!
L[ "MCL" ] = "Sprache \195\164ndern ...";-- Thx Wicky! -- Aendern
L[ "MCLen" ] = "Englisch";
L[ "MCLfr" ] = "Franz\195\182sisch";-- Thx Wicky! -- Franzoesisch
L[ "MCLde" ] = "Deutsch";
L[ "MTI" ] = "Artikel verfolgen";-- Thx DaBear78!
--L[ "MView" ] = "Anzeigen ";-- Thx DaBear78!
L[ "MVault" ] = "Bankfach";-- Thx DaBear78!
L[ "MStorage" ] = "gemeinsamer Lagerraum";--Thx DaBear78!
--L[ "MBank" ] = "Bank";
L[ "MDayNight" ] = "Tages- & Nacht-Zeit";-- Thx DaBear78!
L[ "MReputation" ] = "Ruf";

-- Wallet Currency Controls
-- LOTRO Points control
L[ "MLP" ] = "LOTRO Punkte";
L[ "LPh" ] = "Dies sind Ihre LOTRO Punkte";
-- Mithril Coins control
L[ "MMC" ] = "Mithril-M\195\188nze";
L[ "MCh" ] = "Deine Mithril-M\195\188nzen";
-- Yule Tokens control
L[ "MYT" ] = "Julfest-M\195\188nze";
L[ "YTh" ] = "Dies sind eure Yule-Tokens";
-- Anniversary Tokens control
L[ "MLAT" ] = "Jubil\195\164umsm\195\188nze";
L[ "LATh" ] = "Dies sind eure Jubil\195\164umsm\195\188nzen";
-- Bingo Badge control
L[ "MBB" ] = "Bingo-Abzeichen";
L[ "BBh" ] = "These are your Bingo-Abzeichen";
-- Skirmish marks control
L[ "MSM" ] = "Zeichen";
L[ "SMh" ] = "Deine Scharm\195\188tzel-Zeichen";--Thx DaBear78! --Scharmuetzel
-- Destiny Points control
L[ "MDP" ] = "Schicksalspunkte";
L[ "DPh" ] = "Deine Schicksalspunkte";--Thx DaBear78!
-- Shards control
L[ "MSP" ] = "Scherbe";
L[ "SPh" ] = "Deine Scherben";--Thx DaBear78!
-- Tokens of Hytbold control
L[ "MHT" ] = "Zeichen der Hytbold";
L[ "HTh" ] = "Deine M\195\188nzen von Hytbold";
-- Medallions control
L[ "MMP" ] = "Medaillon";
L[ "MPh" ] = "Deine Medallions";--Thx DaBear78!
-- Seals control
L[ "MSL" ] = "Siegel";
L[ "SLh" ] = "Deine Siegel";--Thx DaBear78!
-- Commendations control
L[ "MCP" ] = "Anerkennung";
L[ "CPh" ] = "Deine Anerkennung";--Thx DaBear78!
-- Amroth Silver Piece control
L[ "MASP" ] = "Amroth-Silberst\195\188ck";
L[ "ASPh" ] = "Deine Amroth-Silberst\195\188cke";
-- Stars of Merit control
L[ "MSOM" ] = "Stern des Verdienst";
L[ "SOMh" ] = "Deine Sterne des Verdienst";
-- Central Gondor Silver Piece control
L[ "MCGSP" ] = "Zentralgondorisches Silberst\195\188ck";
L[ "CGSPh" ] = "Deine Zentralgondorischen Silberst\195\188cke";
-- Gift giver's Brand control
L[ "MGGB" ] = "Zeichen des Schenkenden";
L[ "GGBh" ] = "Deine Zeichen des Schenkenden";
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
L[ "MFFT" ] = "Fall Festival Tokens";
L[ "FFTh" ] = "These are your Fall Festival Tokens";
-- Farmers Faire Tokens control
L[ "MFFAT" ] = "Farmers Faire Token";
L[ "FFATh" ] = "These are your Farmers Faire Tokens";
-- Spring Leaves control
L[ "MSPL" ] = "Spring Leaf";
L[ "FSPLh" ] = "These are your Spring Leaves";

-- Control Menu
L[ "MCU" ] = "entfernen ...";-- Thx Wicky!
L[ "MCBG" ] = "Hintergrundfarbe dieses Elements \195\132ndern";-- Thx DaBear78! -- Aendern
L[ "MTBBG" ] = "\195\156bernehmen der TitanBar Hintergrundfarbe f\195\188r ...";-- Thx DaBear78!
L[ "MTBBGC" ] = "dieses Steuerelement";
L[ "MTBBGAC" ] = "alle Steuerelement";
L[ "MCRBG" ] = "Reset Hintergrundfarbe ...";
L[ "MCABT" ] = "Diese Farbe f\195\188r ...";-- Thx Wicky! --zurueck
L[ "MCABTA" ] = "alle Steuerelement & TitanBar";
L[ "MCABTTB" ] = "TitanBar";
L[ "MCRC" ] = "Aktualisieren ...";-- Thx Wicky!

-- Background window
L[ "BWTitle" ] = "Farbeinstellung";-- Thx Wicky!
L[ "BWAlpha" ] = "Alpha";
L[ "BWCurSetColor" ] = "Aktuelle Farbe";
L[ "BWApply" ] = " Ausgew\195\164hlte Farbe f\195\188r alle Elemente";-- Thx Wicky! --ausgewaehlte, fuer
L[ "BWSave" ] = "Speichern";-- Thx Wicky!
L[ "BWDef" ] = "Standart";-- Thx Wicky!
L[ "BWBlack" ] = "Schwarz";
L[ "BWTrans" ] = "Transparent";

-- Wallet infos window
L[ "WIt" ] = "Rechtsklick auf eine W\195\164hrung f\195\188r die Einstellung";--Waehrung, fuer
L[ "WIot" ] = "auf TitanBar";
L[ "WIiw" ] = "im Tooltipp";
L[ "WIds" ] = "Nicht mehr anzeigen";
L[ "WInc" ] = "Sie verfolgen keine W\195\164hrung!\nLinks klicken, um die W\195\164hrung Liste zu sehen.";

-- Money infos window
L[ "MIWTitle" ] = "Brieftasche";
L[ "MIWTotal" ] = "Gesamt";
L[ "MIWAll" ] = "Summe auf TitanBar zeigen";-- Thx Wicky!
L[ "MIWCM" ] = "Aktuellen Char zeigen";-- Thx DaBear78!
L[ "MIWCMAll" ] = "Allen Charakteren zeigen";-- Thx DaBear78!
L[ "MIWSSS" ] = "Zeige Sitzungs-Statistik im Tooltip";-- Thx DaBear78!
L[ "MIWSTS" ] = "Zeige Heute-Statistik im Tooltip";-- Thx DaBear78!
L[ "MIWID" ] = " Brieftaschen-Info gel\195\182scht";-- Thx DaBear78! --geloescht
L[ "MIMsg" ] = "Keine Brieftascheninfo gefunden";-- Thx DaBear78!
L[ "MISession" ] = "Sitzung";
L[ "MIDaily" ] = "Heute";
L[ "MIStart" ] = "Start";-- Thx DaBear78!
L[ "MIEarned" ] = "Eingenommen";-- Thx DaBear78!
L[ "MISpent" ] = "Ausgegeben";
--L[ "MITotEarned" ] = "Gesamt eingenommen";-- Thx DaBear78!
--L[ "MITotSpent" ] = "Gesamt ausgegeben";-- Thx DaBear78!

-- Vault window
L[ "VTh" ] = "Bankfach";-- Thx DaBear78!
L[ "VTnd" ] = "Es wurden keine Daten f\195\188r diesen Charakter gefunden";--fuer
L[ "VTID" ] = " vault info gel\195\182scht!"; --geloescht
L[ "VTSe" ] = "Suchen:"
L[ "VTAll" ] = "-- Alle --"

-- Shared Storage window
L[ "SSh" ] = "gemeinsamer Lagerraum";-- Thx DaBear78!
L[ "SSnd" ] = "M\195\188ssen Sie Ihre gemeinsamer Lagerraum mindestens einmal \195\182ffnen";--Muessen, oeffnen

-- Backpack window
L[ "BIh" ] = "Rucksack";
L[ "BID" ] = " Taschen info gel\195\182scht!"; --geloescht

-- Bank window
L[ "BKh" ] = "Bank";-- Thx DaBear78!

-- Day & Night window
L[ "Dawn" ] = "Morgend\195\164mmerung";--Morgendaemmerung
L[ "Morning" ] = "Vormittag";
L[ "Noon" ] = "Mittag";
L[ "Afternoon" ] = "Nachmittag";
L[ "Dusk" ] = "Abendr\195\182te";--Abendroete
L[ "Gloaming" ] = "Abendd\195\164mmerung";--Abenddaemmerung
L[ "Evening" ] = "Abend";
L[ "Midnight" ] = "Mitternacht";
L[ "LateWatches" ] = "Nachtwache";
L[ "Foredawn" ] = "Morgenr\195\182te";--Morgenröoee
L[ "NextT" ] = "N\195\164chste Tageszeit zeigen";-- Thx DaBear78! --naechste
L[ "TAjustL" ] = "Timer seed";

-- Reputation window
L[ "RPt" ] = "Aktivieren / deaktivieren der Fraktionen\nRechtsklick um aktuellen Stand einzugeben";-- Thx DaBear78!
L[ "RPnf" ] = "Du verfolgst keine Fraktion!\nLinksklick um die Fraktionsliste zu sehen.";-- Thx DaBear78!
L[ "RPPHMaxHide" ] = "Verstecke Fraktionen mit gr\195\182\195\159ter Reputation";-- Google: https://translate.google.com/#auto/de/Hide%20factions%20at%20maximum%20reputation

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
L[ "RPEOFBs" ] = "Feind des s\195\188dlichen Fushaum Bal";-- Feind des suedlichen Fushaum Bal
L[ "RPEOFBn" ] = "Feind des n\195\182rdlichen Fushaum Bal";-- Feind des noerdlichen Fushaum Bal
L[ "RPRSC" ]   = "Rothimmel-Sippe";-- Red Sky Clan -- Thanks bornfight#0574 on Discord
L[ "RPDOE" ]   = "Zwerge vom Erebor";-- Dwarves of Erebor -- Thanks bornfight#0574 on Discord
L[ "RPEOF" ]   = "Elben von Felegoth";-- Elves of Felegoth -- Thanks bornfight#0574 on Discord
L[ "RPMOD" ]   = "Menschen von Thal";-- Men of Dale -- Thanks bornfight#0574 on Discord
L[ "RPCCLE" ]  = "H\195\188hnerjagd-Liga von Eriador";
L[ "RPTAA" ]   = "Die Bier-Genossenschaft";
L[ "RPTIL" ]   = "Die Gasthausliga";
L[ "RPGME" ]   = "Expedition ins Graue Gebirge"; -- Grey Mountains Expedition -- Thx bornfight
L[ "RPWF" ]    = "Wildes Volk"; -- Wilderfolk
L[ "RPTGA" ]   = "Die Gro\195\159e Allianz"; -- The Great Alliance
L[ "RPTWC" ]   = "Die Wei\195\159e Schar"; -- The White Company
L[ "RPRMI" ]   = "Die R\195\188ckeroberung von Minas Ithil";
L[ "RPPOW" ]   = "Protectors of Wilderland";
L[ "RPMOG" ]   = "March on Gundabad";
L[ "RPGA" ]   = "The Gabil'akk\195\162";
L[ "RPTWB"]	   = "The Woodcutter's Brotherhood";
L[ "RPLOTA"]   = "The League of the Axe";
L[ "RPACC" ]   = "Rufbeschleunigung";

-- All reputation standings
L[ "RPMSR" ]  = "Maximale Geltung erreicht";-- Thx DaBear78!
L[ "RPGL1" ]  = "Neutral";
L[ "RPGL2" ]  = "Bekannter";-- Thx DaBear78!
L[ "RPGL3" ]  = "Freund";
L[ "RPGL4" ]  = "Verb\195\188ndeter";--Verbuendeter
L[ "RPGL5" ]  = "Verwandter";
L[ "RPGL6" ]  = "Respektiert"; -- Thx Mandraval
L[ "RPGL7" ]  = "Verehrt"; -- Thx Mandraval
L[ "RPGL8" ]  = "Gefeiert"; -- Thx Mandraval
L[ "RPBL1" ]  = "Au\195\159enseiter";--Aussenseiter
L[ "RPBL2" ]  = "Feind";-- Thx DaBear78!
L[ "RPGG1" ]  = "Eingeweihter";-- Thx DaBear78!
L[ "RPGG2" ]  = "Lehrling";-- Thx DaBear78!
L[ "RPGG3" ]  = "Geselle";-- Thx DaBear78!
L[ "RPGG4" ]  = "Experte";-- Thx DaBear78!
L[ "RPGG5" ]  = "Virtuose";-- Thx DaBear78!
L[ "RPGG6" ]  = "Meister";-- Thx DaBear78!
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
L[ "RPGAR1" ] = "Idmul";
L[ "RPGAR2" ] = "Dumul";
L[ "RPGAR3" ] = "Izkhas";
L[ "RPGAR4" ] = "Uzkhas";
L[ "RPGAR5" ] = "Fabar\195\162l";
L[ "RPGAR6" ] = "Azghzabad";

-- Infamy/Renown window
if PlayerAlign == 1 then L[ "IFWTitle" ] = "Ansehen"; L[ "IFIF" ] = "Gesamtes Ansehen:";
else L[ "IFWTitle" ] = "Verrufenheit"; L[ "IFIF" ] = "Gesamte Verrufenheit:"; end-- Thx DaBear78!
L[ "IFCR" ] = "Ihr Rang:";
L[ "IFTN" ] = "Punkte f\195\188r den n\195\164chsten Rang";--fuer, naechsten

-- GameTime window
L[ "GTWTitle" ] = "Lokale/Server Zeit";-- Thx DaBear78!
L[ "GTW24h" ] = "Anzeige der Uhrzeit im 24 Stunden-Format";-- Thx DaBear78!
L[ "GTWSST" ] = "Zeige Serverzeit       GMT";
L[ "GTWSBT" ] = "Lokale und Server-Zeit zeigen";-- Thx DaBear78!
L[ "GTWST" ] = "Server: ";
L[ "GTWRT" ] = "Lokal: ";-- Thx DaBear78!

-- More Options window
L[ "OPWTitle" ] = L[ "MOP" ];
L[ "OPHText" ] = "H\195\182he:"; --Hoehe
L[ "OPFText" ] = "Schriftart:";
L[ "OPAText" ] = "Automatisch im Hintergrund:";
L[ "OPAHD" ] = "niemals";-- Thx DaBear78!
L[ "OPAHE" ] = "immer";
L[ "OPAHC" ] = "Nur in der Schlacht";
L[ "OPIText" ] = "Icon-Gr\195\182\195\159e:";-- Thx DaBear78! --Groesse
L[ "OPTBTop" ] = "Oben am Bildschirm";
L[ "OPISS" ] = "klein";
L[ "OPISM" ] = "Medium";
L[ "OPISL" ] = "Breit";
L[ "Layout" ] = "Alternative PlayerInfo Layout\n(Reloads TB after changing)";

-- Profile window
L[ "PWProfile" ] = "Profil";
L[ "PWEPN" ] = "Geben Sie einen Profilnamen ein";-- Thx DaBear78!
L[ "PWCreate" ] = "erstellen";-- Thx DaBear78!
L[ "PWNew" ] = "Neues Profil";
L[ "PWCreated" ] = "wurde erschaffen";
L[ "PWLoad" ] = "laden";
L[ "PWNFound" ] = "Kein Profil gefunden";-- Thx DaBear78!
L[ "PWFail" ] = " kann nicht geladen werden, weil die Sprache des Spiels ist nicht die gleiche Sprache wie in diesem Profil";-- Thx DaBear78!
L[ "PWLoaded" ] = "geladen";
L[ "PWDelete" ] = "Delete";-- Needs translation
L[ "PWDeleteFailed" ] = "Failed to delete profile ";-- Needs translation
L[ "PWFailDelete" ] = " cannot be deleted because the language of the game is not the same language of this profile";-- Needs translation
L[ "PWDeleted" ] = "gel\195\182scht"; --gelöscht
L[ "PWSave" ] = "speichern";
L[ "PWSaved" ] = "gerettet";
L[ "PWCancel" ] = "abbrechen";-- Thx DaBear78!

-- Shell commands window
L[ "SCWTitle" ] = "TitanBar Shell-Befehle";
L[ "SCWC1" ] = "Zeige TitanBar Optionen";
L[ "SCWC2" ] = "Entfernen TitanBar";-- Thx Wicky!
L[ "SCWC3" ] = "Neuladen TitanBar";-- Thx Wicky!
L[ "SCWC4" ] = "Zur\195\188cksetzen aller Einstellungen auf die Standardwerte";-- Thx Wicky! --Zuruecksetzen

-- Shell commands
L[ "SC0" ] = "Befehl wird nicht unterst\195\188tzt";-- Thx Wicky! -- unterstuetzt
L[ "SCa1" ] = "optionen";
L[ "SCb1" ] = "opt / ";
L[ "SCa2" ] = "entfernen";--Thx Wicky!
L[ "SCb2" ] = "  u / ";
L[ "SCa3" ] = "neuladen";--Thx Wicky!
L[ "SCb3" ] = "  r / ";
L[ "SCa4" ] = "zur\195\188cksetzen alle";--Thx Wicky! -- zuruecksetzen
L[ "SCb4" ] = " ra / ";

-- Durability infos window
L[ "DWTitle" ] = "Haltbarkeit infos";--Thx Wicky!
L[ "DWLbl" ] = " besch\195\164digter Gegenstand";--Thx DaBear78! --beschaedigter
L[ "DWLbls" ] = " besch\195\164digte Gegenst\195\164nde"; --beschaedigte --Gegenstaende
L[ "DWLblND" ] = "Alle deine Gegenst\195\164nde sind 100%";--Thx DaBear78! --Gegenstaende
L[ "DIIcon" ] = "Symbole im Tooltipp";--Thx DaBear78!
L[ "DIText" ] = "Namen im Tooltip";--Thx DaBear78!
L[ "DWnint" ] = "Symbole & Namen sind ausgeblendet";--Thx DaBear78!

-- Equipment infos window
--L[ "EWTitle" ] = "Ausstattung Infos";
L[ "EWLbl" ] = "Vom Charakter getragene Ausr\195\188stung";--Thx DaBear78! --Ausruestung
L[ "EWLblD" ] = "Punkte";--Thx DaBear78! --Ausruestung
L[ "EWItemNP" ] = " Artikel nicht vorhanden";
--L[ "EWItemF" ] = " Element gefunden";--Thx DaBear78!
--L[ "EWItemsF" ] = " Artikel gefunden";--Thx DaBear78!
L[ "EWST1" ] = "Kopf";-- Thx Wicky!
L[ "EWST13" ] = "Linker Ohrring";
L[ "EWST14" ] = "Rechter Ohrring";
L[ "EWST10" ] = "Halskette";
L[ "EWST6" ] = "Schultern";-- Thx Wicky!
L[ "EWST7" ] = "R\195\188cken";-- Thx Wicky! -- Ruecken
L[ "EWST2" ] = "Brust";
L[ "EWST8" ] = "Linkes Armband";
L[ "EWST9" ] = "Rechtes Armband";
L[ "EWST11" ] = "Linker Ring";
L[ "EWST12" ] = "Rechter Ring";
L[ "EWST4" ] = "Handschuhe";
L[ "EWST3" ] = "Beine";
L[ "EWST5" ] = "F\195\188sse";-- Thx Wicky! -- Fuesse
L[ "EWST15" ] = "Beutel";
L[ "EWST16" ] = "Prim\195\164rwaffe";-- Thx Wicky! -- Primaerwaffe
L[ "EWST17" ] = "Sekundarwaffe/Schild";-- Thx Wicky! --Sekundaerwaffe
L[ "EWST18" ] = "Fernwaffe";-- Thx Wicky!
L[ "EWST19" ] = "Handwerkzeug";
L[ "EWST20" ] = "Klassenfeld";

-- Player Infos control
--L[ "PINAME" ] = "Dies ist dein Name";
--L[ "PILVL" ] = "Das ist dein Level";-- Thx Wicky!
--L[ "PIICON" ] = "Du bist ein ";
L[ "Morale" ] = "Moral";-- Thx DaBear78!
L[ "Power" ] = "Kraft";-- Thx DaBear78!
L[ "Armour" ] = "R\195\188stung";-- Thx DaBear78!
L[ "Stats" ] = "Statistik";
L[ "Might" ] = "Macht";-- Thx DaBear78!
L[ "Agility" ] = "Beweglichkeit";-- Thx DaBear78!
L[ "Vitality" ] = "Vitalit\195\164t";-- Thx DaBear78!
L[ "Will" ] = "Wille";-- Thx DaBear78!
L[ "Fate" ] = "Schicksal";-- Thx DaBear78!
L[ "Finesse" ] = "Finesse";
L[ "Mitigations" ] = "Minderungen";-- Thx DaBear78!
L[ "Common" ] = "Allgemein";-- Thx DaBear78!
L[ "Fire" ] = "Feuer";-- Thx DaBear78!
L[ "Frost" ] = "Frost";
L[ "Shadow" ] = "Schatten";-- Thx DaBear78!
L[ "Lightning" ] = "Blitz";-- Thx DaBear78!
L[ "Acid" ] = "S\195\164ure";-- Thx DaBear78!
L[ "Physical" ] = "Physisch";-- Thx DaBear78!
L[ "Tactical" ] = "Taktisch";-- Thx DaBear78!
L[ "Healing" ] = "Heilung";-- Thx DaBear78!
L[ "Outgoing" ] = "Ausgehend";-- Thx DaBear78!
L[ "Incoming" ] = "Eingehend";-- Thx DaBear78!
L[ "Avoidances" ] = "Vermeidungen";-- Thx DaBear78!
L[ "Block" ] = "Blocken";-- Thx DaBear78!
L[ "Parry" ] = "Parrieren";-- Thx DaBear78!
L[ "Evade" ] = "Ausweichen";-- Thx DaBear78!
L[ "Resistances" ] = "Resistenz";-- Thx DaBear78!
L[ "Base" ] = "Allgemein";-- Thx DaBear78!
L[ "CritAvoid" ] = "Krit. Vert.";-- Thx DaBear78!
L[ "CritChance" ] = "Krit. Chance";-- Thx DaBear78!
L[ "Mastery" ] = "Beherrschung";-- Thx DaBear78!
L[ "Level" ] = "Stufe";
L[ "Race" ] = "Rasse";-- Thx DaBear78!
L[ "Class" ] = "Klasse";-- Thx DaBear78!
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
L[ "MGh" ] = "Menge der Goldm\195\188nzen";-- Thx Wicky! -- Goldmuenzen
L[ "MSh" ] = "Menge der Silberm\195\188nzen";-- Thx Wicky! -- Silbermuenzen
L[ "MCh" ] = "Menge der Kupferm\195\188nzen";-- Thx Wicky! -- Kupfermuenzen
L[ "MGB" ] = "Beutel mit Goldm\195\188nzen"; -- Thx Heridan!
L[ "MSB" ] = "Beutel mit Silberm\195\188nzen"; -- Thx Heridan!
L[ "MCB" ] = "Beutel mit Kupferm\195\188nzen"; -- Thx Heridan!

-- Bag Infos control
--L[ "BIh" ] = "Rucksack Informationen";
--L[ "BIt1" ] = "belegte Pl\195\164tze / max";-- Thx DaBear78! -- Plaetze
L[ "BINI" ] = "Kein Artikel wird verfolgt!\nLinksklick, um deine Artikel zu sehen."--Thx DaBear78!
L[ "BIIL" ] = "Artikel-Liste"
L[ "BIT" ] = "Aktivieren / deaktivieren Sie ein Element"
L[ "BIUsed" ] = " Zeige verwendet \195\188ber freie Steckpl\195\164tze";--ueber, Steckplaetze
L[ "BIMax" ] = " Zeige insgesamt Tasche Slots";
L[ "BIMsg" ] = "Kein Element gefunden wurde stapelbar!"

-- Equipment Infos control
L[ "EIh" ] = "Punkte deines Equipments";-- Thx DaBear78!
L[ "EIt1" ] = "Linksklick zum \195\150ffnen des Optionen-Fensters";-- Thx DaBear78! -- oeffnen
L[ "EIt2" ] = "Links halten zum Verschieben";-- Thx DaBear78!
L[ "EIt3" ] = "Rechtsklick f\195\188r Kontextmen\195\188";-- Thx DaBear78! -- fuer -- Kontextmenü

-- Durability Infos control
L[ "DIh" ] = "Haltbarkeit deiner Ausr\195\188stung";--Thx DaBear78! -- Ausruestung

-- Player Location control
L[ "PLh" ] = "Dies ist, wo du bist";
L[ "PLMsg" ] = "Bitte Stadt betreten";-- Thx DaBear78!

-- Game Time control
L[ "GTh" ] = "Lokale/Server Zeit";-- Thx DaBear78!

-- Chat message
L[ "TBR" ] = "TitanBar: Alle Einstellungen wurden zur\195\188ck auf die Standardwerte gesetzt";-- Thx Wicky! -- zurueck

-- Character Race
L[ "Elf" ] = "Elb";-- Thx Wicky!
L[ "Man" ] = "Mensch";-- Thx Wicky!
L[ "Dwarf" ] = "Zwerg";
L[ "Hobbit" ] = "Hobbit";
L[ "Beorning" ] = "Beorninger";
L[ "HighElf" ] = "Hochelb";-- Thanks bornfight#0574 on Discord
L[ "StoutAxe" ] = "Stark-Axt";

-- Free People Class
L[ "Burglar" ] = "Schurke";
L[ "Captain" ] = "Hauptmann";
L[ "Champion" ] = "Waffenmeister";
L[ "Guardian" ] = "W\195\164chter"; -- Waechter
L[ "Hunter" ] = "J\195\164ger"; --Jaeger
L[ "Lore-Master" ] = "Kundiger";
L[ "Minstrel" ] = "Barde";
L[ "Rune-Keeper" ] = "Runenbewahrer";
L[ "Warden" ] = "H\195\188ter"; -- Hueter

-- Monster Play Class
L[ "Reaver" ] = "Schnitter";-- Thx Wicky!
L[ "Weaver" ] = "Weberspinne";-- Thx Wicky!
L[ "Blackarrow" ] = "Schwarzpfeil";-- Thx Wicky!
L[ "Warleader" ] = "Kriegsanf\195\188hrer";-- Thx Wicky! -- Kriegsanfuehrer
L[ "Stalker" ] = "Pirscher";-- Thx Wicky!
L[ "Defiler" ] = "Saboteur";-- Thx Wicky!

-- Durability
L[ "D" ] = "Haltbarkeit";
L[ "D1" ] = "Alle Haltbarkeit";
L[ "D2" ] = "Schwach";
L[ "D3" ] = "Wesentlich";
L[ "D4" ] = "Spr\195\182de";-- Thx Wicky! -- Sproede
L[ "D5" ] = "Normal";
L[ "D6" ] = "Robust";
L[ "D7" ] = "Flimsy"; -- ??
L[ "D8" ] = "Unverw\195\188stlich";-- Thx Wicky! -- Unverwuestlich

-- Quality
L[ "Q" ] = "Qualit\195\164ten";
L[ "Q1" ] = "Alle Qualit\195\164ten";-- Thx Wicky! --Qualitaetswein
L[ "Q2" ] = "Gew\195\182hnlich";-- Thx DaBear78! --Gewoehnlich
L[ "Q3" ] = "Ungew\195\182hnlich";--Thx DaBear78! --Ungewoehnlich
L[ "Q4" ] = "Unvergleichlich";
L[ "Q5" ] = "Selten";
L[ "Q6" ] = "Legend\195\164r";-- Thx Wicky! -- Legendaer
