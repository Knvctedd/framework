Config = {
	Items = {
		["Lockpick"] = {
			MaxLevel = 2,
			Scale = 1.0,
		},
		["Hotwire Kit"] = {
			MaxLevel = 4,
			Scale = 0.75,
		},
	},
	Anim = {
		Dict = "veh@std@ds@base",
		Name = "hotwire",
		Flag = 17,
	},
	Tiers = {
		[1] = {
			Duration = 30.0,
			EventDelay = { 4000, 8000 },
			QuickTime = {
				goalSize = 0.3,
				speed = 1.3,
				stages = 6,
			},
		},
		[2] = {
			Duration = 60.0,
			EventDelay = { 4000, 8000 },
			QuickTime = {
				goalSize = 0.25,
				speed = 1.3,
				stages = 6,
			},
		},
		[3] = {
			Duration = 120.0,
			EventDelay = { 6000, 10000 },
			QuickTime = {
				goalSize = 0.2,
				speed = 1.3,
				stages = 6,
			},
		},
		[4] = {
			Duration = 300.0,
			EventDelay = { 8000, 12000 },
			QuickTime = {
				goalSize = 0.15,
				speed = 1.3,
				stages = 6,
			},
		},
	},
	Classes = {
		[0] = 1, -- Compacts
		[1] = 1, -- Sedans
		[2] = 1, -- SUVs
		[3] = 1, -- Coupes
		[4] = 1, -- Muscle
		[5] = 2, -- Sports Classics
		[6] = 2, -- Sports
		[7] = 3, -- Super
		[8] = 1, -- Motorcycles
		[9] = 1, -- Off-road
		[10] = 2, -- Industrial
		[11] = 2, -- Utility
		[12] = 1, -- Vans
		[13] = 0, -- Cycles
		[14] = 1, -- Boats
		[15] = 4, -- Helicopters
		[16] = 4, -- Planes
		[17] = 1, -- Service
		[18] = 3, -- Emergency
		[19] = 0, -- Military
		[20] = 2, -- Commercial
		[21] = 0, -- Trains
	},
}