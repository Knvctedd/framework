Config = {
	Debug = false,
	InterestRate = 0.035,
	Commission = 0.01,
	PaymentDays = 30,
	GracePeriod = 7,
	GridSize = 1,
	EnterDistance = 1.5,
	RealtorMessage = "There's a for sale on the door... It says to contact a realtor - maybe you should check Life Invader?",
	OccupiedMessage = "It seems to be locked...",
	UnoccupiedMessage = "The contract states henceforth after paying a payment of <font color='red'>$%s</font>, you may reside here for exactly <font color='red'>30 days</font>. You may pay <font color='red'>7 days</font> in advance before the next payment is due. Press <font color='red'>[%s]</font> again to rent for <font color='red'>$%s</font>.",
	LookupCoords = vector3(-552.4494018554688, -202.9859313964844, 38.2392692565918),
	Menu = {
		PositionOffset = { X = 500, Y = 50 },
		WidthOffset = -100,
	},
	Locking = {
		Anim = {
			Flag = 48,
			Dict = "mp_common",
			Name = "givetake1_a",
			Rate = 0.2,
		},
	},
	Marker = {
		Type = 2,
		OwnedColor = {64, 64, 200, 255},
		OccupiedColor = {200, 64, 64, 255},
		FreeColor = {64, 200, 64, 255},
		NearColor = {98, 98, 255, 255},
		UnlockedColor = {255, 226, 5, 255},
		KeepZ = true,
		Scale = 0.3,
		DrawDistance = 6.0,
	},
	Types = {
		["motel"] = {
			Name = "Motel",
			Coords = vector4(151.35708618164, -1007.6275024414, -98.999977111816, 354.80850219727),
			Storage = vector3(151.34255981445, -1003.0642089844, -98.999977111816),
			StorageType = "smallstash",
			Rent = 600,
			PaymentFlag = 1,
			Color = 2,
			Max = 1,
		},
		["apartment"] = {
			Name = "Apartment",
			Coords = vector4(5.844217777252197, 39.9278678894043, -101.00855255126952, 357.1337585449219),
			Storage = vector3(3.711596727371216, 52.01178741455078, -99.00868225097656),
			StorageType = "mediumstash",
			Rent = 2000,
			PaymentFlag = 1,
			Color = 3,
			Max = 1,
			Public = true,
		},
		["house"] = {
			Name = "House",
			Coords = vector4(3.742862701416016, 184.4699249267578, -99.1962890625, 359.9014587402344),
			Storage = vector3(9.15717601776123, 198.66526794433597, -99.19630432128906),
			StorageType = "largestash",
			Value = 240000,
			PaymentFlag = 0,
			Color = 5,
			Max = 1,
			Public = true,
		},
		["mansion"] = {
			Name = "Mansion",
			Coords = vector4(-8.574377059936523, -71.46099853515625, -99.01022338867188, 284.1888427734375),
			Storage = vector3(5.22984504699707, -69.6736831665039, -94.4225616455078),
			StorageType = "largestash",
			Value = 1500000,
			PaymentFlag = 0,
			Color = 8,
			Max = 1,
			Public = true,
		},
		["nightclub"] = {
			Name = "Nightclub",
			Coords = vector4(-1569.4666748046875, -3017.457275390625, -74.40612030029297, 358.1445922851563),
			Storage = vector3(-1615.5458984375, -2996.53125, -78.1497573852539),
			StorageType = "largestash",
			Value = 800000,
			PaymentFlag = 0,
			Color = 13,
			Max = 1,
			Public = true,
		},
		["clubhouse1"] = {
			Name = "Clubhouse 1",
			Coords = vector4(1120.9953613281, -3152.5573730469, -37.062721252441, 358.52087402344),
			Value = 100000,
			Public = true,
		},
		["clubhouse2"] = {
			Name = "Clubhouse 2",
			Coords = vector4(997.00164794922, -3158.1184082031, -38.907138824463, 269.93807983398),
			Value = 100000,
			Public = true,
		},
		["growroom"] = {
			Name = "Grow Room",
			Coords = vector4(1066.3129882813, -3183.3771972656, -39.16349029541, 92.385810852051),
			Secret = true,
		},
		["drugroom"] = {
			Name = "Drug Room",
			Coords = vector4(1088.7271728516, -3187.5910644531, -38.993476867676, 179.19236755371),
			Secret = true,
		},
		["counterfeit"] = {
			Name = "Counterfeit",
			Coords = vector4(1137.9943847656, -3198.9536132813, -39.665679931641, 1.1668586730957),
			Secret = true,
		},
		["forge"] = {
			Name = "Forge",
			Coords = vector4(1173.7132568359, -3196.5947265625, -39.007987976074, 90.79810333252),
			Secret = true,
		},
		["warehouse1"] = {
			Name = "Warehouse (Tiny)",
			Coords = vector4(996.92431640625, -3200.6821289063, -36.393730163574, 269.40762329102),
			Value = 210000,
			Sprite = 473,
			Public = true,
		},
		["warehouse2"] = {
			Name = "Warehouse (Small)",
			Coords = vector4(1087.6541748047, -3099.4057617188, -38.99995803833, 270.63049316406),
			Value = 450000,
			Public = true,
			Sprite = 473,
		},
		["warehouse3"] = {
			Name = "Warehouse (Medium)",
			Coords = vector4(1048.1672363281, -3096.9958496094, -38.999950408936, 265.73510742188),
			Value = 800000,
			Sprite = 473,
			Public = true,
		},
		["warehouse4"] = {
			Name = "Warehouse (Large)",
			Coords = vector4(992.55310058594, -3097.8640136719, -38.995872497559, 266.82803344727),
			Value = 1500000,
			Sprite = 473,
			Public = true,
		},
		["importgarage"] = {
			Name = "Import Garage",
			Coords = vector4(970.71911621094, -2987.2814941406, -39.647006988525, 181.33741760254),
			Public = true,
		},
		["garage1"] = {
			Name = "Garage (Small)",
			Coords = vector4(179.04328918457, -1000.2451782227, -98.999992370605, 177.0167388916),
			Value = 250000,
			Public = true,
		},
		["garage2"] = {
			Name = "Garage (Medium)",
			Coords = vector4(201.90684509277344, -1007.1939697265624, -98.99990844726564, 359.1762390136719),
			Value = 800000,
			Public = true,
		},
		["garage3"] = {
			Name = "Garage (Large)",
			Coords = vector4(232.0612487793, -1003.4443969727, -98.999961853027, 355.97640991211),
			Value = 1200000,
			Public = true,
		},
		["bunker"] = {
			Name = "Bunker",
			Coords = vector4(894.0772705078125, -3245.867919921875, -98.26036071777344, 77.9786376953125),
			Secret = true,
		},
		["facility"] = {
			Name = "Facility",
			Coords = vector4(487.1884765625, 4819.95849609375, -58.382808685302734, 280.4819030761719),
			Secret = true,
		},
		["sewer"] = {
			Name = "Sewer Warehouse",
			Coords = vector4(1005.56787109375, -2997.625, -39.647735595703125, 267.7490234375),
			Secret = true,
		},
		--["penthouse"] = {
		--	Name = "Diamond Casino Penthouse",
		--	Coords = vector4(980.8413696289064, 56.49443054199219, 116.16404724121094, 60.79072952270508),
		--	Value = 1250000,
		--	Storage = vector3(972.5731201171876, 40.11476135253906, 116.16404724121094),
		--},
		["hangar"] = {
			Name = "Aircraft Hangar",
			Coords = vector4(-1266.990478515625, -2959.485595703125, -48.489688873291016, 178.82388305664065),
			Storage = vector3(-1295.85400390625, -3006.51171875, -44.0864486694336),
			Color = 1,
			Max = 1,
			Public = true,
		},
		["stripclub"] = {
			Custom = true,
			Name = "Vanilla Unicorn",
			Coords = vector4(92.47682189941406, -1291.7655029296875, 29.2635440826416, 31.39937210083007),
			Storage = vector3(93.93679809570312, -1290.94189453125, 29.26354789733886),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["yellowjack"] = {
			Custom = true,
			Name = "Yellowjack",
			Storage = vector3(1987.5218505859375, 3046.49365234375, 50.50151443481445),
			Coords = vector4(1992.053955078125, 3043.767578125, 50.50366973876953, 333.01605224609375),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["tequila"] = {
			Custom = true,
			Name = "Tequi-la-la",
			Storage = vector3(-562.412841796875, 286.83563232421875, 82.17637634277344),
			Coords = vector4(-552.1254272460938, 278.2498474121094, 82.17619323730469, 266.44476318359375),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["burger_shot"] = {
			Custom = true,
			Name = "Burger Shot",
			Storage = vector3(-1178.1912841796875, -893.9248046875, 13.97419166564941),
			Coords = vector4(-1193.232421875, -904.2977905273438, 13.97419357299804, 148.833984375),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["bean_machine"] = {
			Custom = true,
			Name = "Bean Machine",
			Storage = vector3(-635.4105224609375, 233.6558380126953, 81.88167572021484),
			Coords = vector4(-622.6549682617188, 241.5206298828125, 81.889404296875, 355.34613037109375),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["benny_original_motorwork"] = {
			Custom = true,
			Name = "Benny's Original Motorworks",
			Storage = vector3(-197.3069000244141, -1320.53662109375, 31.08950996398925),
			Coords = vector4(-206.5990753173828, -1331.4219970703125, 34.89455795288086, 270.09417724609375),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["beeker_garage"] = {
			Custom = true,
			Name = "Beeker's Garage",
			Storage = vector3(107.62520599365236, 6629.8212890625, 31.7872314453125),
			Coords = vector4(102.70342254638672, 6614.0087890625, 32.43542098999023, 323.7232971191406),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["burton_auto"] = {
			Custom = true,
			Name = "Burton Auto Repairs",
			Storage = vector3(-319.4042053222656, -131.87921142578125, 38.97793197631836),
			Coords = vector4(-345.5218505859375, -123.0562973022461, 39.00966262817383, 68.16484832763672),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["east_side_auto"] = {
			Custom = true,
			Name = "East Side Auto Care",
			Storage = vector3(947.2671508789064, -968.7968139648438, 39.49985122680664),
			Coords = vector4(950.2208862304688, -968.6229858398438, 39.506797790527344, 90.67430877685548),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["luxury_auto"] = {
			Custom = true,
			Name = "Malone and Sons",
			Storage = vector3(-795.9209594726562, -1013.9995727539064, 20.14021301269531),
			Coords = vector4(-793.1007690429688, -1017.8270874023438, 20.14021301269531, 299.1195983886719),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["luxury_auto_lounge"] = {
			Custom = true,
			Name = "Malone and Sons Lounge",
			Storage = vector3(-793.3621826171875, -1012.0477294921876, 20.13989448547363),
			Coords = vector4(-783.8036499023438, -1010.8869018554688, 20.13966369628906, 118.14971160888672),
			StorageType = "smallstash",
			Color = 1,
			Max = 1,
			Public = false,
		},
		["arcadius_office"] = {
			Name = "Arcadius Office",
			Storage = vector3(-147.64227294921875, -638.0762329101562, 168.82049560546875),
			Coords = vector4(-141.7123565673828, -621.000244140625, 168.8203582763672, 278.9176025390625),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["weed_shop"] = {
			Custom = true,
			Name = "High Times",
			Storage = vector3(167.143798828125, -239.76316833496097, 54.22209167480469),
			Coords = vector4(167.4658660888672, -232.3667755126953, 54.22196960449219, 337.9447021484375),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["cayo_villa"] = {
			Custom = true,
			Name = "Villa",
			Storage = vector3(5013.84375, -5752.18798828125, 15.48444175720214),
			Coords = vector4(5002.10986328125, -5751.9619140625, 28.68232727050781, 55.67818069458008),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = false,
		},
		["axles"] = {
			Custom = true,
			Name = "Axles Auto Exotic",
			Storage = vector3(547.1821899414062, -183.3507843017578, 54.49440002441406),
			Coords = vector4(541.4595336914062, -198.15093994140625, 54.4930305480957, 90.70661926269533),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["courthouse"] = {
			Custom = true,
			Name = "Courthouse",
			Storage = vector3(-528.222412109375, -185.99407958984375, 43.36576843261719),
			Coords = vector4(-526.0523681640625, -189.78692626953128, 43.36575317382812, 170.84609985351565),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = false,
		},
		["court_house"] = {
			Custom = true,
			Name = "Courthouse Front Desk",
			Storage = vector3(-541.84521484375, -195.8751983642578, 38.2269058227539),
			Coords = vector4(-542.0068359375, -198.9359588623047, 38.22690963745117, 216.83396911621097),
			StorageType = "smallstash",
			Color = 1,
			Max = 1,
			Public = false,
		},
		["iad_office"] = {
			Custom = true,
			Name = "IAD Office",
			Storage = vector3(-528.4114990234375, -191.2284393310547, 38.22695541381836),
			Coords = vector4(-525.9020385742188, -189.8717803955078, 38.22695541381836, 302.3011169433594),
			StorageType = "smallstash",
			Color = 1,
			Max = 1,
			Public = false,
		},
		["cityhall"] = {
			Custom = true,
			Name = "Attorney General Office",
			Storage = vector3(26.22260665893554, -925.2850952148438, 33.90342330932617),
			Coords = vector4(25.07918739318847, -922.851318359375, 33.90342330932617, 84.09844970703125),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = false,
		},
		["samsoffice"] = {
			Custom = true,
			Name = "SAMS Office",
			Storage = vector3(18.94573020935058, -932.4263305664064, 29.90266227722168),
			Coords = vector4(21.70173454284668, -926.3298950195312, 29.90266418457031, 120.53048706054688),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = false,
		},
		["pdm"] = {
			Custom = true,
			Name = "PDM",
			Storage = vector3(-29.28442192077636, -1109.136962890625, 27.27434539794922),
			Coords = vector4(-26.04985046386718, -1110.44287109375, 27.27434539794922, 31.92225265502929),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["harmony_repair"] = {
			Custom = true,
			Name = "Harmony Repair",
			Storage = vector3(1175.2357177734375, 2635.9951171875, 37.75386428833008),
			Coords = vector4(1187.34423828125, 2635.7744140625, 38.4019660949707, 357.9552307128906),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["hayes_auto_body_shop"] = {
			Custom = true,
			Name = "Hayes Auto Body Shop",
			Storage = vector3(-1418.6202392578125, -454.6424560546875, 35.90970993041992),
			Coords = vector4(-1429.3758544921875, -455.0706176757813, 35.9051399230957, 35.04844284057617),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["power_autos"] = {
			Custom = true,
			Name = "Power Autos",
			Storage = vector3(-32.13229370117187, -1038.982666015625, 28.59539222717285),
			Coords = vector4(-25.05659103393554, -1051.467041015625, 32.40043640136719, 342.00115966796875),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["security"] = {
			Custom = true,
			Name = "Fox-Hound Solutions",
			Storage = vector3(-1576.3382568359375, -582.90673828125, 108.52295684814452),
			Coords = vector4(-1568.114501953125, -567.3807373046875, 108.51043701171876, 305.2803649902344),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["Bahamamamas"] = {
			Custom = true,
			Name = "Bahama Mamas",
			Storage = vector3(-1369.0902099609375, -623.8235473632812, 30.31943130493164),
			Coords = vector4(-1366.3619384765625, -616.0595703125, 30.31942558288574, 132.7202606201172),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["pearls"] = {
			Custom = true,
			Name = "Pearls",
			Storage = vector3(-1836.763671875, -1175.9154052734375, 19.18745994567871),
			Coords = vector4(-1836.779541015625, -1183.929931640625, 14.32456970214843, 150.72914123535156),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["sugar-spice"] = {
			Custom = true,
			Name = "Sugar N Spice",
			Storage = vector3(1117.189697265625, -639.0255126953125, 56.81781005859375),
			Coords = vector4(1120.137451171875, -654.3600463867188, 56.81789398193359, 191.03955078125),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["beanies"] = {
			Custom = true,
			Name = "Beanie's",
			Storage = vector3(-576.2202758789062, -1066.5521240234375, 26.61404609680175),
			Coords = vector4(-579.6268310546875, -1064.9205322265625, 26.61404800415039, 88.74761962890625),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["bike_shop"] = {
			Custom = true,
			Name = "Bike Customs",
			Storage = vector3(906.8868408203124, 3567.851806640625, 33.83506774902344),
			Coords = vector4(907.0801391601564, 3561.778076171875, 33.83503341674805, 126.22441864013672),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["pawn_shop"] = {
			Custom = true,
			Name = "Pawn Shop",
			Storage = vector3(157.8037109375, -1316.1883544921875, 29.36359977722168),
			Coords = vector4(166.89488220214844, -1311.2291259765625, 29.36362075805664, 121.04646301269533),
			StorageType = "largestash",
			Color = 1,
			Max = 1,
			Public = true,
		},
		["rebel_radio"] = {
			Custom = true,
			Name = "Rebel Radio",
			Storage = vector3(716.1415405273438, 2523.8427734375, 73.50574493408203),
			Coords = vector4(729.4915771484375, 2528.110595703125, 73.50574493408203, 177.99485778808597),
			StorageType = "smallstash",
			Color = 1,
			Max = 1,
			Public = true,
			Doors = true,
		},
		["pillbox"] = {
			Custom = true,
			Name = "Pillbox Hospital",
			Storage = vector3(339.4254455566406, -594.7513427734375, 43.28409576416015),
			Coords = vector4(336.0056762695313, -591.845947265625, 43.2840576171875, 157.3616180419922),
			StorageType = "smallstash",
			Color = 1,
			Max = 1,
			Public = false,
		},
	}
}

function GetSettings(_type)
	return Config.Types[_type]
end
exports("GetSettings", GetSettings)

function RegisterDoors(property, radius)
	--[[exports.doors:RegisterGroup({
		id = "property-"..property.id,
		name = "Property "..tostring(property.id),
		coords = vector3(property.x, property.y, property.z),
		radius = radius or 80.0,
		overrides = overrides,
		locked = true,
		property = property.id,
	})]]
end