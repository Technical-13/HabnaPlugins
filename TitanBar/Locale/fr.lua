-- fr.lua
-- Written by Habna -- Translated with Google, Talyrion1003
-- Rewritten by many

_G.L = {};
L[ "TBLoad" ] = "TitanBar " .. Version .. " charg\195\169e!";
L[ "TBSSCS" ] = "TitanBar: La taille de l'\195\169cran a chang\195\169, reposionnement des contr\195\180les...";
L[ "TBSSCD" ] = "TitanBar: fini!";
L[ "TBOpt" ] = "Les options sont disponibles via le clic droit sur TitanBar";

--Misc
L[ "NoData" ] = "Aucune autre donn\195\169e disponible dans l'API";
L[ "NA" ] = "N/D";
--L[ "dmg" ] = " dmg";
L[ "You" ] = "Toi: ";
L[ "ButDel" ] = "Effacer les infos de ce personnage";
--L[ "" ] = "";

-- TitanBar Menu
L[ "MBag" ] = "Porte-feuille";
L[ "MGSC" ] = "Votre argent";
L[ "MBI" ] = "Informations de vos sacs";
L[ "MPI" ] = "Information du joueur";
L[ "MEI" ] = "Points pour tous vos articles";
L[ "MDI" ] = "Durabilit\195\169s de vos articles";
L[ "MPL" ] = "Emplacement du joueur";
L[ "MGT" ] = "Heure";
L[ "MOP" ] = "Plus d'options";
L[ "MPP" ] = "Profile";
L[ "MSC" ] = "Commandes shell";
L[ "MRA" ] = "R\195\169initialiser les param\195\168tres";
L[ "MUTB" ] = "D\195\169charger";
L[ "MRTB" ] = "Recharger";
L[ "MATB" ] = "\195\128 propos de TitanBar ";
L[ "MBG" ] = "Changer l'arri\195\168re plan";
L[ "MCL" ] = "Changer la langue vers ...";
L[ "MCLen" ] = "l'anglais";
L[ "MCLfr" ] = "Fran\195\167ais";
L[ "MCLde" ] = "l'Allemand";
L[ "MTI" ] = "Suivre des articles";
--L[ "MView" ] = "Voir votre ";
L[ "MVault" ] = "Coffre";
L[ "MStorage" ] = "Stockage Partag\195\169";
--L[ "MBank" ] = "Banque";
L[ "MDayNight" ] = "Jour & Nuit";
L[ "MReputation" ] = "R\195\169putation";

-- Wallet Currency Controls
-- LOTRO Points control
L[ "MLP" ] = "Points LOTRO";
L[ "LPh" ] = "Ce sont vos points LOTRO";
-- Mithril Coins control
L[ "MMC" ] = "Pi\195\168ce de mithril";
L[ "MCh" ] = "Ce sont vos Pi\195\168ces de mithril";
-- Yule Tokens control
L[ "MYT" ] = "Jeton du festival de Yule";
L[ "YTh" ] = "Ce sont vos Jetons du festival de Yule";
-- Anniversary Tokens control
L[ "MLAT" ] = "Jeton d'anniversaire";
L[ "LATh" ] = "Ce sont vos Jetons d'anniversaire";
-- Bingo Badge control
L[ "MBB" ] = "Insigne de Bingo";
L[ "BBh" ] = "These are your Insignes de Bingo";
-- Skirmish marks control
L[ "MSM" ] = "Marque";
L[ "SMh" ] = "Ce sont vos marques d'escarmouches";
-- Destiny Points control
L[ "MDP" ] = "Points destin\195\169e";
L[ "DPh" ] = "Ce sont vos points destin\195\169e";
-- Shards control
L[ "MSP" ] = "Eclat";
L[ "SPh" ] = "Ce sont vos Eclats";
-- Tokens of Hytbold control
L[ "MHT" ] = "Jeton d'Hytbold";
L[ "HTh" ] = "Ce sont vos Jetons d'Hytbold";
-- Medallions control
L[ "MMP" ] = "M\195\169daillon";
L[ "MPh" ] = "Ce sont vos m\195\169daillons";
-- Seals control
L[ "MSL" ] = "Sceau";
L[ "SLh" ] = "Ce sont vos sceaux";
-- Commendations control
L[ "MCP" ] = "Citation";
L[ "CPh" ] = "Ce sont vos Citations";
-- Amroth Silver Piece control
L[ "MASP" ] = "Pi\195\168ce d'argent d'Amroth";
L[ "ASPh" ] = "Ce sont vos Pi\195\168ces d'argent d'Amroth";
-- Stars of Merit control
L[ "MSOM" ] = "\195\137toile du m\195\169rite";
L[ "SOMh" ] = "Ce sont vos \195\137toiles du m\195\169rite";
-- Central Gondor Silver Piece control
L[ "MCGSP" ] = "Pi\195\168ce d'argent du Gondor central";
L[ "CGSPh" ] = "Ce sont vos Pi\195\168ces d'argent du gondor Central";
-- Gift giver's Brand control
L[ "MGGB" ] = "Marque du Donateur";
L[ "GGBh" ] = "Ce sont vos Marques du Donateur";
-- Motes of Enchantment control
L[ "MMOE" ] = "Grain d\226\128\153enchantement";
L[ "MOEh" ] = "Ce sont vos Grains d'Enchantement";
-- Embers of Enchantment control
L[ "MEOE" ] = "Braise d\226\128\153enchantement";
L[ "EOEh" ] = "Ce sont vos Braises d'Enchantement";
-- Figments of Splendour control
L[ "MFOS" ] = "Mirage de splendeur";
L[ "FOSh" ] = "Ce sont vos Mirages de Splendour";
-- Fall Festival Tokens control
L[ "MFFT" ] = "Jeton du festival d'automne";
L[ "FFTh" ] = "Ce sont vos Jetons du Festival d'Automne";
-- Farmers Faire Tokens control
L[ "MFFAT" ] = "Jeton de la Foire des fermiers";
L[ "FFATh" ] = "Ce sont vos Jetons de la Foire des Fermiers";
-- Spring Leaves control
L[ "MSPL" ] = "Feuille de printemps";
L[ "SPLh" ] = "Ce sont vos Feuille de Printemps";
-- Midsummer Tokens control
L[ "MMST" ] = "Jeton du solstice d'\195\169t\195\169";
L[ "MSTh" ] = "Ce sont vos Jetons du solstice d'�t�";
-- Ancient Script control
L[ "MAS" ] = "\195\137criture ancienne";
L[ "ASh" ] = "Ce sont vos \195\137criture ancienne";
-- Inn League / Ale Association control
L[ "MBOT" ] = "M�daille du go�t";
L[ "BOTh" ] = "Ce sont vos M�dailles du go�t";
L[ "MBOD" ] = "M�daille de la honte";
L[ "BODh" ] = "Ce sont vos M�dailles de la honte";


-- Control Menu
L[ "MCU" ] = "D\195\169charger ...";
L[ "MCBG" ] = "Changer l'arriere plan de ce contr\195\180le";
L[ "MTBBG" ] = "Appliquer la m\195\170me couleur de TitanBar a ...";
L[ "MTBBGC" ] = "ce contr\195\180le";
L[ "MTBBGAC" ] = "tous les contr\195\180les";
L[ "MCRBG" ] = "Restaurer l'arri\195\168re plan de ...";
L[ "MCABT" ] = "Appliquer l'arri\195\168re plan de ce contr\195\180le a ...";
L[ "MCABTA" ] = "tous les contr\195\180les et TitanBar";
L[ "MCABTTB" ] = "TitanBar";
L[ "MCRC" ] = "Rafra\195\174chir ...";

-- Background window
L[ "BWTitle" ] = "R\195\169gler couleur";
L[ "BWAlpha" ] = "Alpha";
L[ "BWCurSetColor" ] = "Couleur d\195\169j\195\160 r\195\169gl\195\169";
L[ "BWApply" ] = " Appliquer la couleur \195\160 tous les \195\169l\195\169ments";
L[ "BWSave" ] = "Sauvegarder";
L[ "BWDef" ] = "Par d\195\169faut";
L[ "BWBlack" ] = "Noir";
L[ "BWTrans" ] = "Transparent";

-- Wallet infos window
L[ "WIt" ] = "Clic droit sur une devise pour voir ces configurations";
L[ "WIot" ] = "Sur TitanBar";
L[ "WIiw" ] = "Dans l'infobulle";
L[ "WIds" ] = "Ne pas afficher";
L[ "WInc" ] = "Vous suivez aucune devise!\nFaites un clic gauche pour voir la liste des devises.";

-- Money infos window
L[ "MIWTitle" ] = "Argent";
L[ "MIWTotal" ] = "Totaux";
L[ "MIWAll" ] = "Afficher le total sur TitanBar";
L[ "MIWCM" ] = "Afficher l'argent du joueur";
L[ "MIWCMAll" ] = "Afficher \195\160 tous vos personnages";
L[ "MIWSSS" ] = "Afficher les statistiques de session";
L[ "MIWSTS" ] = "Afficher les statistiques du jour";
L[ "MIWID" ] = " infos porte-feuille supprim\195\169";
L[ "MIMsg" ] = "Aucune infos de porte-feuille trouv\195\169";
L[ "MISession" ] = "Session";
L[ "MIDaily" ] = "du jour";
L[ "MIStart" ] = "D\195\169part";
L[ "MIEarned" ] = "Gagn\195\169";
L[ "MISpent" ] = "D\195\169pens\195\169";
--L[ "MITotEarned" ] = "Totaux gagn\195\169";
--L[ "MITotSpent" ] = "Totaux d\195\169pens\195\169";

-- Vault window
L[ "VTh" ] = "vo\195\187te";
L[ "VTnd" ] = "Aucune donn\195\169e n'as \195\169t\195\169 trouv\195\169 pour ce personnage";
L[ "VTID" ] = " infos coffre supprim\195\169!"
L[ "VTSe" ] = "Rechercher:"
L[ "VTAll" ] = "-- Tous --"

-- Shared Storage window
L[ "SSh" ] = "stockage partag\195\169";
L[ "SSnd" ] = "Besoin d'ouvrir votre stockage partag\195\169 au moins une fois";

-- Backpack window
L[ "BIh" ] = "Sac \195\160 dos";
L[ "BID" ] = " infos sacs supprim\195\169!"

-- Bank window
L[ "BKh" ] = "banque";

-- Day & Night window
L[ "Dawn" ] = "Aube";
L[ "Morning" ] = "Matin";
L[ "Noon" ] = "Midi";
L[ "Afternoon" ] = "Apr\195\168s-midi";
L[ "Dusk" ] = "Entre chien et loup";
L[ "Gloaming" ] = "Cr\195\169puscule";
L[ "Evening" ] = "Soir";
L[ "Midnight" ] = "Minuit";
L[ "LateWatches" ] = "Nuit noire";
L[ "Foredawn" ] = "Au bout..nuit";--Au bout de la nuit
L[ "NextT" ] = "Afficher le prochain temps";
L[ "TAjustL" ] = "Code de minuterie";

-- Reputation window
L[ "RPt" ] = "S\195\169lectionner / d\195\169s\195\169lectionner une faction\nclick droit pour voir ces configurations";
L[ "RPnf" ] = "Vous suivez aucune faction!\nFaites un clic gauche pour voir la liste des factions.";
L[ "RPPHMaxHide" ] = "Masquer les factions \195\160 une r\195\169putation maximale";-- Google: https://translate.google.com/#auto/fr/Hide%20factions%20at%20maximum%20reputation

-- All reputation names
L[ "RPMB" ]    = "Hommes de Bree";
L[ "RPTH" ]    = "Palais de Thorin";
L[ "RPTMS" ]   = "La Soci\195\169t\195\169 des Mathoms";
L[ "RPRE" ]    = "R\195\180deurs d'Esteldin";
L[ "RPER" ]    = "Elfes de Fondcombe";
L[ "RPTEl" ]   = "Les Eldgangs";
L[ "RPCN" ]    = "Conseil du Nord";
L[ "RPTWA" ]   = "Les Gardiens d'Annuminas";
L[ "RPLF" ]    = "Lossoth du Forochel";
L[ "RPTEg" ]   = "Les Eglain";
L[ "RPIGG" ]   = "Gardes de la Garnison de Fer";
L[ "RPIGM" ]   = "Minuers de la Garnison de Fer";
L[ "RPAME" ]   = "Les Algraig, Hommes d'Enedwaith";
L[ "RPTGC" ]   = "La Compagnie grise";
L[ "RPG" ]     = "Galadhrim";
L[ "RPM" ]     = "Malledhrim";
L[ "RPTRS" ]   = "Les Cavaliers de Stangarde";
L[ "RPHLG" ]   = "Les H\195\169ros de la Gorge de Limeclair";
L[ "RPMD" ]    = "Hommes du Pays de Dun";
L[ "RPTR" ]    = "Cavaliers de Th\195\169odred";
L[ "RPJG" ]    = "Guilde des bijoutiers";
L[ "RPCG" ]    = "Guilde des cuisiniers";
L[ "RPSG" ]    = "Guilde des \195\169rudits";
L[ "RPTG" ]    = "Guilde des tailleurs";
L[ "RPWoG" ]   = "Guilde des menuisiers";
L[ "RPWeG" ]   = "Guilde des fabricants d'armes";
L[ "RPMG" ]    = "Guilde des ferroniers";
L[ "RPMEV" ]   = "Hommes de la vall\195\169e de l'Entalluve";
L[ "RPMN" ]    = "Hommes des Norcrofts";
L[ "RPMS" ]    = "Hommes des Sutcrofts";
L[ "RPMW" ]    = "Hommes du Plateau";
L[ "RPPW" ]    = "Peuple des Landes farouches";
L[ "RPSW" ]    = "Survivants des Landes farouches";
L[ "RPTEo" ]   = "Les Eorlingas";
L[ "RPTHe" ]   = "Les Helmingas";
L[ "RPTEFF" ]  = "Les Ents de la for\195\170t de Fangorn";
L[ "RPDA" ]    = "Dol Amroth";
L[ "RPDAA" ]   = "Dol Amroth - Armurerie";
L[ "RPDAB" ]   = "Dol Amroth - Banque";
L[ "RPDAD" ]   = "Dol Amroth - Quais";
L[ "RPDAGH" ]  = "Dol Amroth - Palais";
L[ "RPDAL" ]   = "Dol Amroth - Biblioth\195\168que";
L[ "RPDAW" ]   = "Dol Amroth - Entrep\195\180t";
L[ "RPDAM" ]   = "Dol Amroth - Atelier de Maconnerie";
L[ "RPDAS" ]   = "Dol Amroth - Chevaliers au Cygne";
L[ "RPMRV" ]   = "Hommes du Val de Ringl\195\179 Vale";
L[ "RPMDE" ]   = "Hommes de Dor-en-Ernil";
L[ "RPML" ]    = "Hommes du Lebennin";
L[ "RPP" ]     = "Pelargir";
L[ "RPRI" ]    = "R\195\180deurs de l'Ithilien";
L[ "RPDMT" ]   = "Les D\195\169fenseurs de Minas Tirith";
L[ "RPRR" ]    = "Cavaliers de Rohan";
L[ "RPHOTW" ]  = "Arm\195\169e de l'ouest"; -- Thx Valiarym
L[ "RPHOTWA" ] = "Arm\195\169e de l'ouest: Armures"; -- Thx Valiarym
L[ "RPHOTWW" ] = "Arm\195\169e de l'ouest: Armes"; -- Thx Valiarym
L[ "RPHOTWP" ] = "Arm\195\169e de l'ouest: Provisions"; -- Thx Valiarym
L[ "RPCOG" ]   = "Conqu\195\170te de Gorgoroth";-- Conqu�te de Gorgoroth
L[ "RPEOFBs" ] = "Ennemie du sud de Fushaum Bal";
L[ "RPEOFBn" ] = "Ennemie du nord de Fushaum Bal";
L[ "RPRSC" ]   = "Clan du Ciel rouge";
L[ "RPDOE" ]   = "Nains d�Erebor";-- Dwarves of Erebor -- Thanks bornfight#0574 on Discord
L[ "RPEOF" ]   = "Elfes de Felegoth";-- Elves of Felegoth -- Thanks bornfight#0574 on Discord
L[ "RPMOD" ]   = "Hommes de Dale";-- Men of Dale -- Thanks bornfight#0574 on Discord
L[ "RPCCLE" ]  = "Ligue des Chasseurs de Poulets d'Eriador";
L[ "RPTAA" ]   = "La confr\195\168rie de la cervoise";
L[ "RPTIL" ]   = "La Ligue des Tavernes";
L[ "RPGME" ]   = "Exp\195\168dition des Montagnes Grises"; -- Grey Mountains Expedition -- Thx bornfight
L[ "RPWF" ]    = "Peuple Sauvage"; -- Wilderfolk
L[ "RPTGA" ]   = "La Grande Alliance"; -- The Great Alliance
L[ "RPTWC" ]   = "La Compagnie Blanche"; -- The White Company
L[ "RPRMI" ]   = "R\195\169clamation de Minas Ithil";
L[ "RPPOW" ]   = "Protecteurs des Terres sauvages";
L[ "RPMOG" ]   = "Les Reconqu\195\169rants de Gundabad";
L[ "RPGA" ]    = "Les Gabil'akk\195\162";
L[ "RPWB"]	   = "Confr\195\169rie des B\195\185cherons";
L[ "RPLOTA"]   = "La Ligue de la hache";
L[ "RPHOT" ]   = "Les Haban'akk\195\162 de Thr\195\162in";
L[ "RPKU" ]    = "Kharum-ubn\195\162r";
L[ "RPROFMH" ] = "La reconqu\195\170te de la Montagne";
L[ "RPDOTA" ]  = "Défenseurs de l'Angle";
L[ "RPTYW" ]   = "La Garde de la Comtè Lointaine";
L[ "RPDOC" ]   = "Dunedain du Cardolan";
L[ "RPACC" ]   = "Acc\195\168l\195\168ration de r\195\168putation";

-- All reputation standings
L[ "RPMSR" ]  = "Statut maximum atteint";
L[ "RPGL1" ]  = "Neutre";
L[ "RPGL2" ]  = "Connaissance";
L[ "RPGL3" ]  = "Ami";
L[ "RPGL4" ]  = "Alli\195\169";-- Alli�
L[ "RPGL5" ]  = "Fr\195\168re";-- Fr�re
L[ "RPGL6" ]  = "Respect\195\169";-- thx axennexa
L[ "RPGL7" ]  = "Honor\195\169";-- thx axennexa
L[ "RPGL8" ]  = "Acclam\195\169";-- thx axennexa
L[ "RPBL1" ]  = "\195\137tranger";-- �tranger
L[ "RPBL2" ]  = "Ennemi";
L[ "RPGG1" ]  = "Initier";
L[ "RPGG2" ]  = "Aprenti";
L[ "RPGG3" ]  = "Compagnon";
L[ "RPGG4" ]  = "Expert";
L[ "RPGG5" ]  = "Artisan";
L[ "RPGG6" ]  = "Ma\195\174tre";--Ma�tre
L[ "RPGG7" ]  = "Eastemnet Master";
L[ "RPGG8" ]  = "Westemnet Master";
L[ "RPGG9" ]  = "Grand Ma\195\174tre Honor\195\169";
L[ "RCCLE1" ] = "Rookie";
L[ "RCCLE2" ] = "Minor Leaguer";
L[ "RCCLE3" ] = "Major Leaguer";
L[ "RCCLE4" ] = "All-star";
L[ "RCCLE5" ] = "Hall of Famer";
L[ "RPBR" ]   = "Bonus Restant";
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
L[ "RPDECREASE"] = "diminu\195\169";

-- Infamy/Renown window
if PlayerAlign == 1 then L[ "IFWTitle" ] = "Renomm\195\169e"; L[ "IFIF" ] = "Total de renomm\195\169e:";
else L[ "IFWTitle" ] = "Infamie"; L[ "IFIF" ] = "Total d'infamie:"; end
L[ "IFCR" ] = "Votre grade:";
L[ "IFTN" ] = "points pour le rang suivant";

-- GameTime window
L[ "GTWTitle" ] = "Temps actuel/serveur";
L[ "GTW24h" ] = "Afficher l'heure en format 24h";
L[ "GTWSST" ] = "Afficher l'heure du serveur       GMT";
L[ "GTWSBT" ] = "Afficher l'heure actuel et celui du serveur";
L[ "GTWST" ] = "Serveur: ";
L[ "GTWRT" ] = "Actuel: ";

-- More Options window
L[ "OPWTitle" ] = L[ "MOP" ];
L[ "OPHText" ] = "Hauteur:";
L[ "OPFText" ] = "Police:";
L[ "OPAText" ] = "Masquer automatiquement:";
L[ "OPAHD" ] = "D\195\169sactiver";
L[ "OPAHE" ] = "Toujours";
L[ "OPAHC" ] = "Seulement en combat";
L[ "OPIText" ] = "Taille des ic\195\180nes:";
L[ "OPTBTop" ] = "Au haut de l'\195\169cran";
L[ "OPISS" ] = "Petit";
L[ "OPISM" ] = "Moyen";
L[ "OPISL" ] = "Grand";
L[ "Layout" ] = "Alternative PlayerInfo Layout\n(Reloads TB after changing)";

-- Profile window
L[ "PWProfile" ] = "Profil";
L[ "PWEPN" ] = "Taper un nom";
L[ "PWCreate" ] = "Cr\195\169er";
L[ "PWNew" ] = "Nouveau profil";
L[ "PWCreated" ] = "a \195\169t\195\169 cr\195\169\195\169";-- a �t� cr��
L[ "PWLoad" ] = "Charger";
L[ "PWNFound" ] = "Aucun profile trouv\195\169";
L[ "PWFail" ] = " ne peut pas \195\170tre charg\195\169, car la langue du jeu n'est pas la m\195\170me langue que ce profil";
L[ "PWLoaded" ] = "charger";
L[ "PWDelete" ] = "Delete";-- Needs translation";
L[ "PWDeleteFailed" ] = "Failed to delete profile ";-- Needs translation
L[ "PWFailDelete" ] = " cannot be deleted because the language of the game is not the same language of this profile";-- Needs translation
L[ "PWDeleted" ] = "supprimer";
L[ "PWSave" ] = "Sauvegarder";
L[ "PWSaved" ] = "enregistr\195\169";-- enregistr�
L[ "PWCancel" ] = "Annuler";

-- Shell commands window
L[ "SCWTitle" ] = "Commandes shell TitanBar";
L[ "SCWC1" ] = "Afficher les options";
L[ "SCWC2" ] = "D\195\169charger TitanBar";
L[ "SCWC3" ] = "Recharger TitanBar";
L[ "SCWC4" ] = "R\195\169initialiser tous les r\195\169glages par d\195\169faut";

-- Shell commands
L[ "SC0" ] = "Cette commande n'est pas support\195\169";
L[ "SCa1" ] = "options";
L[ "SCb1" ] = "opt / ";
L[ "SCa2" ] = "d\195\169charger";
L[ "SCb2" ] = "  u / ";
L[ "SCa3" ] = "recharger";
L[ "SCb3" ] = "  r / ";
L[ "SCa4" ] = "r\195\169initialiser";
L[ "SCb4" ] = " ra / ";

-- Durability infos window
L[ "DWTitle" ] = "Durabilit\195\169 de vos articles";
L[ "DWLbl" ] = " article endommag\195\169";
L[ "DWLbls" ] = " articles endommag\195\169s";
L[ "DWLblND" ] = "Tous vos articles sont \195\160 100%";
L[ "DIIcon" ] = "Afficher l'ic\195\180ne dans l'infobulle";
L[ "DIText" ] = "Afficher le nom de l'article dans l'infobulle";
L[ "DWnint" ] = "Ic\195\180ne et nom pas afficher";

-- Equipment infos window
--L[ "EWTitle" ] = "Infos sur vos articles";
L[ "EWLbl" ] = "Articles actuellement sur vous";
L[ "EWLblD" ] = "Pointage";
L[ "EWItemNP" ] = " Article absent";
--L[ "EWItemF" ] = " article trouv\195\169";
--L[ "EWItemsF" ] = " articles trouv\195\169s";
L[ "EWST1" ] = "T\195\170te";
L[ "EWST13" ] = "Boucle d'oreille gauche";
L[ "EWST14" ] = "Boucle d'oreille droite";
L[ "EWST10" ] = "Collier";
L[ "EWST6" ] = "\195\137paules";
L[ "EWST7" ] = "Dos";
L[ "EWST2" ] = "Buste";
L[ "EWST8" ] = "Bracelet gauche";
L[ "EWST9" ] = "Bracelet droit";
L[ "EWST11" ] = "Anneau gauche";
L[ "EWST12" ] = "Anneau droite";
L[ "EWST4" ] = "Gants";
L[ "EWST3" ] = "Jambes";
L[ "EWST5" ] = "Pieds";
L[ "EWST15" ] = "Poche";
L[ "EWST16" ] = "Arme principale";
L[ "EWST17" ] = "Arme secondaire/Bouclier";
L[ "EWST18" ] = "Arme \195\160 distance";
L[ "EWST19" ] = "Outil d'artisanat";
L[ "EWST20" ] = "Objet de classe";

-- Player Infos control
--L[ "PINAME" ] = "Votre nom";
--L[ "PILVL" ] = "Votre niveau";
--L[ "PIICON" ] = "Vous \195\170tes un ";
L[ "Morale" ] = "Moral";
L[ "Power" ] = "Puissance";
L[ "Armour" ] = "Armure";
L[ "Stats" ] = "Statistiques";
L[ "Might" ] = "Force";
L[ "Agility" ] = "Agilit\195\169";
L[ "Vitality" ] = "Vitalit\195\169";
L[ "Will" ] = "Volont\195\169";
L[ "Fate" ] = "Destin";
L[ "Finesse" ] = "Finesse";
L[ "Mitigations" ] = "Mitigations";
L[ "Common" ] = "Commum";
L[ "Fire" ] = "Feu";
L[ "Frost" ] = "Froid";
L[ "Shadow" ] = "Ombre";
L[ "Lightning" ] = "Foudre";
L[ "Acid" ] = "Acide";
L[ "Physical" ] = "Physique";
L[ "Tactical" ] = "Tactique";
L[ "Healing" ] = "Soins";
L[ "Outgoing" ] = "Donn\195\169e";
L[ "Incoming" ] = "Re\195\167us";
L[ "Avoidances" ] = "Avoidances";
L[ "Block" ] = "Bloqu\195\169";
L[ "Parry" ] = "Par\195\169";
L[ "Evade" ] = "Esquiv\195\169";
L[ "Resistances" ] = "R\195\169sistance";
L[ "Base" ] = "Base";
L[ "CritAvoid" ] = "D\195\169f. critique";
L[ "CritChance" ] = "Coup critique";
L[ "Mastery" ] = "Ma\195\174trise";
L[ "Level" ] = "Niveau";
L[ "Race" ] = "Race";
L[ "Class" ] = "Classe";
L[ "XP" ] = "Exp.";
L[ "MLvl" ] = "Niveau maximum atteint";
L[ "NXP" ] = "Next lvl at";
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
L[ "Capped" ] = "Valeurs en JAUNE sont PLAFONN\195\137S.";

-- Money Infos control
L[ "MGh" ] = "Quantit\195\169 de pi\195\168ces d'or";
L[ "MSh" ] = "Quantit\195\169 de pi\195\168ces d'argent";
L[ "MCh" ] = "Quantit\195\169 de pi\195\168ces de cuivre";
L[ "MGB" ] = "Sac de pi\195\168ces d'or"; -- Thx Lukrim!
L[ "MSB" ] = "Sac de pi\195\168ces d'argent"; -- Thx Lukrim!
L[ "MCB" ] = "Sac de pi\195\168ces de cuivre"; -- Thx Lukrim!

-- Bag Infos control
--L[ "BIh" ] = "Informations de vos sacs";
--L[ "BIt1" ] = "Nombre de place occup\195\169s/max";
L[ "BINI" ] = "Vous suivez pas d'article!\nFaites un clic gauche pour voir vos articles."
L[ "BIIL" ] = "Liste des articles"
L[ "BIT" ] = "S\195\169lectionner / d\195\169s\195\169lectionner un article"
L[ "BIUsed" ] = " Afficher espaces occup\195\169es, sinon libres";
L[ "BIMax" ] = " Afficher le total d'espaces";
L[ "BIMsg" ] = "Aucun article empilable n'a \195\169t\195\169 trouv\195\169!"

-- Equipment Infos control
L[ "EIh" ] = "Points pour tous les \195\169quipements";
L[ "EIt1" ] = "Clique gauche pour ouvrir la fen\195\170tre d'options";
L[ "EIt2" ] = "Tenir clique gauche pour d\195\169placer le contr\195\180le";
L[ "EIt3" ] = "Clique droit pour ouvrir le menu du contr\195\180le";

-- Durability Infos control
L[ "DIh" ] = "Durabilit\195\169 pour tous les \195\169quipements";

-- Player Location control
L[ "PLh" ] = "Votre emplacement";
L[ "PLMsg" ] = "Entrez une ville!";

-- Game Time control
L[ "GTh" ] = "Temps actuel/serveur";

-- Chat message
L[ "TBR" ] = "TitanBar: Tous les param\195\168tres on \195\169t\195\169 restaur\195\169 par default";

-- Character Race
L[ "Elf" ] = "Elfe";
L[ "Man" ] = "Homme";
L[ "Dwarf" ] = "Nain";
L[ "Hobbit" ] = "Hobbit";
L[ "Beorning" ] = "Beornide";
L[ "HighElf" ] = "Haut Elfe";-- Thanks F0urEyes#3544 on Discord
L[ "StoutAxe" ] = "Nain Hache robuste";

-- Free People Class
L[ "Burglar" ] = "Cambrioleur";
L[ "Captain" ] = "Capitaine";
L[ "Champion" ] = "Champion";
L[ "Guardian" ] = "Gardien";
L[ "Hunter" ] = "Chasseur";
L[ "Lore-Master" ] = "Ma\195\174tre du savoir";
L[ "Minstrel" ] = "M\195\169nestrel";
L[ "Rune-Keeper" ] = "Gardien des runes";
L[ "Warden" ] = "Sentinelle";
L[ "Brawler" ] = "Bagarreur";

-- Monster Play Class
L[ "Reaver" ] = "Reaver";
L[ "Weaver" ] = "Weaver";
L[ "Blackarrow" ] = "Blackarrow";
L[ "Warleader" ] = "Warleader";
L[ "Stalker" ] = "Stalker";
L[ "Defiler" ] = "Defiler";

-- Durability
L[ "D" ] = "Durabilit\195\169";
L[ "D1" ] = "Toutes les Durabilit\195\169s";
L[ "D2" ] = "Faible";
L[ "D3" ] = "Substantiel";
L[ "D4" ] = "Fragile";
L[ "D5" ] = "Normal";
L[ "D6" ] = "R\195\169sitant";
L[ "D7" ] = "Flimsy"; -- ??
L[ "D8" ] = "Indestructible";

-- Quality
L[ "Q" ] = "Qualit\195\169";
L[ "Q1" ] = "Toutes les Qualit\195\169s";
L[ "Q2" ] = "Commum";
L[ "Q3" ] = "Peu Commum";
L[ "Q4" ] = "Incomparable";
L[ "Q5" ] = "Rare";
L[ "Q6" ] = "L\195\169gendaire";
