-- resources.lua
-- written by Thorondor
-- patched by Technical_13


AppRes = "HabnaPlugins/TitanBar/Resources/";

_G.resources = {
	BagIcon = { 0x41008113, 0x41008114, 0x41008115, 0x41008111, 0x41008112 },
	Box = { TopLeft = 0x41000145, Top = 0x41000146, TopRight = 0x41000144,
			MidLeft = 0x41000147, Middle = 0x4100014C, MidRight = 0x4100014B, --0x4100013B
			BottomLeft = 0x41000148, Bottom = 0x41000149, BottomRight = 0x4100014A },
	DelIcon = 0x4101f893,
	Durability = { 0x410e924c, 0x410e925c, 0x410e926e },
	FreePeoples = { [0]=0x4100819b, [1]=0x410080a8, [2]=0x410080a9, [3]=0x410080aa, [4]=0x410080ab, [5]=0x410080ac, [6]=0x410080ad, [7]=0x410080ae, [8]=0x410080af,
					[9]=0x410080a1, [10]=0x410080a2, [11]=0x410080a3, [12]=0x410080a4, [13]=0x410080a5, [14]=0x410080a6, [15]=0x410080a7 },
	frmMain = 0x41007e8f, --( 0x411044a2, 0x41007e2a, 0x41007e8f )
	InfamyBG = 0x41007df5, -- pink: 0x41007df4, white/grey: 0x41007df7, white: 0x41007e14
						   -- blue: 0x41007df5 -gradient, blue: 0x41000143 -dark, blue: 0x41007e92 -bright
						   -- yellow: 0x41007e93, green: 0x41007df3, Freeps : 0x41007e25,	
	Item = 0x411386af, 
	MoneyIcon = { Gold = 0x41007e7b, Silver = 0x41007e7c, Copper = 0x41007e7d }, --gold, silver, copper icon 27x21
	Monster = 	{ [0]=0x4100819c, [1]=0x410080b7, [2]=0x410080b8, [3]=0x410080b9, [4]=0x410080ba, [5]=0x410080bb, [6]=0x410080bc, [7]=0x410080bd, [8]=0x410080be,
			      [9]=0x410080b0, [10]=0x410080b1, [11]=0x410080b2, [12]=0x410080b3, [13]=0x410080b4, [14]=0x410080b5, [15]=0x410080b6 },
	MonsterIconCode = { Warleader = 0x41007dde, Reaver = 0x41007ddd, Stalker = 0x41007de1, Weaver = 0x41007de0, Defiler = 0x410E6BF5, Blackarrow = 0x41007ddf },
	Picker = AppRes.."picker.jpg",
	PlayerInfo = { Morale = 0x410dcfce, Power = 0x410dcfcf, Armor = 0x410dcfd0, Wrath = 0x4115bdfe },
	PlayerIconCode = { Guardian = 0x4111dd35, Captain = 0x4111dd31, Minstrel = 0x4111dd3b, Burglar = 0x4111dd2f, Hunter = 0x4111dd37, 
					   Champion = 0x4111dd33, LoreMaster = 0x4111dd39, RuneKeeper = 0x4111dd3d, Warden = 0x4111dd3f, Beorning = 0x41153604, Brawler = 0x4120fcd9 },
	Reputation = { Icon = 0x410d431a, BGGood = 0x41007df5, BGBad = 0x41007df5, BGGuild = 0x41007df5, BGFrame = 0x41007e94, BGWindow = 0x4100013B },	-- diff BG's
	Ring = 0x41005f30,
	Storage = { Shared = 0x41003830, Vault = 0x41005e9d }, --0x410e76b7 in-game icon 16x16 (Need 32x32)
	Sun = 0x4101f898, Moon = 0x4101f89a,
	TrackItems = 0x410d42cc, -- in-game icon 32x32 (0x41005bd6 / 0x410d42cc)
	LOTROPoints = 0x4113478C,
	Wallet = 0x41004641, --0x41007f7c,
	WalletWindow = 0x4100014c,
	WalletWindowRefresh = 0x4100013B
	
	
};

_G.WalletItem = {
	AmrothSilverPiece = { Icon = 0x41152875 },
	Commendation = { Icon = 0x41123495 },
	DestinyPoints = { Icon = 0x4100a682 },
	Mark = { Icon = 0x4111c446 },
	Medallion = { Icon = 0x4111c43d },
	Mithril = { Icon = 0x411348E1 },
	YuleToken = { Icon = 0x410FA62D },
	Seal = { Icon = 0x4111c449 }, 
	Shard = { Icon = 0x41110d5b },
	SkirmishMarks = { Icon = 0x4111c446 },
	TokensOfHytbold = { Icon = 0x41127D0C },
	StarsofMerit = { Icon = 0x4115bea4 },
	CentralGondorSilverPiece = { Icon = 0x41155957 },
	GiftgiversBrand = { Icon = 0x4115c888 },
	BingoBadge = { Icon = 0x410E6EE4 },
	AnniversaryToken = { Icon = 0x4110E2E7 },
	LOTROPTS = { Icon = 0x4113478C },
	MotesOfEnchantment = { Icon = 0x411B91DD },
	EmbersOfEnchantment = { Icon = 0x411CE971 },
	FigmentsOfSplendour = { Icon = 0x411CF13B },
	FallFestivalToken = { Icon = 0x410D85DE },
	FarmersFaireToken = { Icon = 0x410E7BD6 },
	SpringLeaf = { Icon = 0x410D74CB },
	MidsummerToken = { Icon = 0x411EE829 },
	AncientScript = { Icon = 0x41212E84 },
	BadgeOfTaste = { Icon = 0x41002B2C },
	BadgeOfDishonour = { Icon = 0x410D4316 }
};

_G.DurabilitySlotsBG = { 0x41007eed, 0x41007ef6, 0x41007ef7, 0x41007eef, 0x41007eee, 0x41007ee9, 0x41007ef0, 0x41007ef9, 0x41007ef8,
		0x41007ef4, 0x41007ef3, 0x41007ef2, 0x41007ef1, 0x41007ef5, 0x41007efa, 0x41007eea, 0x41007eeb, 0x41007eec,
		0x41007efb, 0x410e8680
};