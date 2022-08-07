Config = {
	DistanceBetweenReports = 60.0,
	ReportTimeframe = { 4000, 10000 },
	ReportVehicleDistance = 30.0,
	Events = {
		["shooting"] = { Code = { "10-31", "Shots" }, MinDistance = 40.0, MaxDistance = 200.0, Chance = 0.5 },
		["hotwiring"] = { Code = { "10-31", "Hotwire" }, MinDistance = 0.0, MaxDistance = 20.0, Chance = 0.8, Alert = 2 },
		["robbing"] = { Code = { "10-31", "Robbery" }, MinDistance = 10.0, MaxDistance = 100.0, Chance = 0.9, Alert = 3 },
		["drugs"] = { Code = { "10-31", "Handoff" }, MinDistance = 0.0, MaxDistance = 20.0, Chance = 0.3, Alert = 2 },
		["houserob"] = { Code = { "10-31", "House" }, MinDistance = 0.0, MaxDistance = 15.0, Chance = 0.5, Alert = 2 },
		["carjack1"] = { Code = { "10-31", "Jack1" }, MinDistance = 0.0, MaxDistance = 0.0, Chance = 1, Alert = 2 },
		["carjack2"] = { Code = { "10-31", "Jack2" }, MinDistance = 0.0, MaxDistance = 0.0, Chance = 1.0, Alert = 2 },
		["reckless"] = { Code = { "10-31", "Reckless" }, MinDistance = 0.0, MaxDistance = 20.0, Chance = 0.01 },
		["downed"] = { Code = "10-52", MinDistance = 0.0, MaxDistance = 15.0, Chance = 0.9 },
		["brandish1"] = { Code = "10-32", MinDistance = 0.0, MaxDistance = 10.0, Chance = 0.1 },
		["brandish2"] = { Code = { "10-32", "Medium" }, MinDistance = 0.0, MaxDistance = 10.0, Chance = 0.2 },
		["brandish3"] = { Code = { "10-32", "Large" }, MinDistance = 0.0, MaxDistance = 10.0, Chance = 0.3 },
		["hitandrun"] = { Code = "10-57", MinDistance = 0.0, MaxDistance = 20.0, Chance = 0.2 },
	},
	Zones = { -- TODO: MAKE DO STUFF.
		["AIRP"] = 1.0,
		["ALAMO"] = 1.0,
		["ALTA"] = 1.0,
		["ARMYB"] = 1.0,
		["BANHAMC"] = 1.0,
		["BANNING"] = 1.0,
		["BEACH"] = 1.0,
		["BHAMCA"] = 1.0,
		["BRADP"] = 1.0,
		["BRADT"] = 1.0,
		["BURTON"] = 1.0,
		["CALAFB"] = 1.0,
		["CANNY"] = 1.0,
		["CCREAK"] = 1.0,
		["CHAMH"] = 1.0,
		["CHIL"] = 1.0,
		["CHU"] = 1.0,
		["CMSW"] = 1.0,
		["CYPRE"] = 1.0,
		["DAVIS"] = 1.0,
		["DELBE"] = 1.0,
		["DELPE"] = 1.0,
		["DELSOL"] = 1.0,
		["DESRT"] = 1.0,
		["DOWNT"] = 1.0,
		["DTVINE"] = 1.0,
		["EAST_V"] = 1.0,
		["EBURO"] = 1.0,
		["ELGORL"] = 1.0,
		["ELYSIAN"] = 1.0,
		["GALFISH"] = 1.0,
		["GOLF"] = 1.0,
		["GRAPES"] = 1.0,
		["GREATC"] = 1.0,
		["HARMO"] = 1.0,
		["HAWICK"] = 1.0,
		["HORS"] = 1.0,
		["HUMLAB"] = 1.0,
		["JAIL"] = 1.0,
		["KOREAT"] = 1.0,
		["LACT"] = 1.0,
		["LAGO"] = 1.0,
		["LDAM"] = 1.0,
		["LEGSQU"] = 1.0,
		["LMESA"] = 1.0,
		["LOSPUER"] = 1.0,
		["MIRR"] = 1.0,
		["MORN"] = 1.0,
		["MOVIE"] = 1.0,
		["MTCHIL"] = 1.0,
		["MTGORDO"] = 1.0,
		["MTJOSE"] = 1.0,
		["MURRI"] = 1.0,
		["NCHU"] = 1.0,
		["NOOSE"] = 1.0,
		["OCEANA"] = 1.0,
		["PALCOV"] = 1.0,
		["PALETO"] = 1.0,
		["PALFOR"] = 1.0,
		["PALHIGH"] = 1.0,
		["PALMPOW"] = 1.0,
		["PBLUFF"] = 1.0,
		["PBOX"] = 1.0,
		["PROCOB"] = 1.0,
		["RANCHO"] = 1.0,
		["RGLEN"] = 1.0,
		["RICHM"] = 1.0,
		["ROCKF"] = 1.0,
		["RTRAK"] = 1.0,
		["SANAND"] = 1.0,
		["SANCHIA"] = 1.0,
		["SANDY"] = 1.0,
		["SKID"] = 1.0,
		["SLAB"] = 1.0,
		["STAD"] = 1.0,
		["STRAW"] = 1.0,
		["TATAMO"] = 1.0,
		["TERMINA"] = 1.0,
		["TEXTI"] = 1.0,
		["TONGVAH"] = 1.0,
		["TONGVAV"] = 1.0,
		["VCANA"] = 1.0,
		["VESP"] = 1.0,
		["VINE"] = 1.0,
		["WINDF"] = 1.0,
		["WVINE"] = 1.0,
		["ZANCUDO"] = 1.0,
		["ZP_ORT"] = 1.0,
		["ZQ_UAR"] = 1.0,
	},
}