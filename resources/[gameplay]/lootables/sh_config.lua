Config = {
	GridSize = 1,
	Cooldown = 60.0 * 15.0, -- In seconds.
	Types = {
		["bin_small"] = {
			Anim = { Dict = "amb@prop_human_bum_bin@idle_a", Name = "idle_a", Flag = 1 },
			Radius = 0.7,
			Energy = 0.01,
			Exponential = 2.0,
			QuickTime = {
				goalSize = 0.2,
				speed = 0.3,
				stages = 4,
			},
			Container = {
				name = "Small Bin",
				width = 2,
				height = 4,
				maxWeight = 20.0,
			},
			Loot = {
				-- Furniture.
				{ name = "Clutter", chance = 0.2, durability = { 0.1, 0.8 } },
				{ name = "Teddy Bear", chance = 0.5, durability = { 0.1, 0.8 } },

				-- Consumables.
				{ name = "Ego Chaser", chance = 0.2, durability = { 0.05, 0.2 } },
				{ name = "Meteorite Bar", chance = 0.2, durability = { 0.05, 0.2 } },

				-- Drugs.
				{ name = "Crack Pipe", chance = 0.1 },
				{ name = "Joint", chance = 0.1 },

				-- Other.
				{ name = "Ball", chance = 0.2 },
				{ name = "Bandage", chance = 0.2 },
				{ name = "Broken Bottle", chance = 0.05 },
				{ name = "Cotton Swab", chance = 0.5 },
				{ name = "Domi 2", chance = 0.2 },
				{ name = "Flint", chance = 0.5, quantity = { 1, 2 } },
				{ name = "Glass", chance = 0.2, quantity = { 1, 3 } },
				{ name = "Gauze", chance = 0.2 },
				{ name = "Hammer", chance = 0.2 },
				{ name = "Jar", chance = 0.05 },
				{ name = "Hair Tie", chance = 0.05 },
				{ name = "Max 2", chance = 0.05 },
				{ name = "Nora", chance = 0.05 },
				{ name = "Paper Bag", chance = 0.05 },
				{ name = "Paper", chance = 0.1, quantity = { 1, 6 } },
				{ name = "Pliers", chance = 0.05, durability = { 0.05, 0.9 } },
				{ name = "Rag", chance = 0.2, durability = { 0.05, 0.9 } },
				{ name = "Scratch Off", chance = 0.05 },
				{ name = "Screwdriver", chance = 0.4, durability = { 0.05, 0.9 } },
				{ name = "Screws", chance = 0.2 },
				{ name = "Solo Cup", chance = 0.5 },
				{ name = "Switchblade", chance = 0.01 },
				{ name = "Syringe", chance = 0.05 },
				{ name = "Tenga", chance = 0.2 },
				{ name = "Tweezers", chance = 0.5, durability = { 0.05, 0.9 } },
				
				-- Money.
				{ name = "Penny", chance = 0.05, quantity = { 1, 100 } },
				{ name = "Nickel", chance = 0.05, quantity = { 1, 20 } },
				{ name = "Dime", chance = 0.05, quantity = { 1, 10 } },
				{ name = "Quarter", chance = 0.05, quantity = { 1, 4 } },
			},
		},
		["bin_large"] = {
			Anim = { Dict = "missexile3", Name = "ex03_dingy_search_case_a_michael", Flag = 49 },
			Radius = 0.9,
			Energy = 0.02,
			Exponential = 4.0,
			QuickTime = {
				goalSize = 0.2,
				speed = 0.3,
				stages = 6,
			},
			Container = {
				name = "Large Bin",
				width = 4,
				height = 3,
				maxWeight = 40.0,
			},
			Loot = {
				-- Furniture.
				{ name = "Bucket", chance = 1.0, durability = { 0.1, 0.8 } },
				{ name = "Candle", chance = 0.2, durability = { 0.1, 0.8 } },
				{ name = "Chair", chance = 0.2, durability = { 0.1, 0.8 } },
				{ name = "Clutter", chance = 0.5, durability = { 0.1, 0.8 } },
				{ name = "Cutting Board", chance = 0.5, durability = { 0.1, 0.8 } },
				{ name = "Grater", chance = 0.5, durability = { 0.1, 0.8 } },
				{ name = "Pot", chance = 0.5, durability = { 0.1, 0.8 } },
				{ name = "Rug", chance = 0.2, durability = { 0.1, 0.8 } },
				{ name = "Speaker", chance = 0.1, durability = { 0.1, 0.8 } },
				{ name = "Teapot", chance = 0.2, durability = { 0.1, 0.8 } },
				{ name = "Tools", chance = 0.2, durability = { 0.1, 0.8 } },

				-- Consumables.
				{ name = "Crackles o Dawn", chance = 0.2, durability = { 0.05, 0.2 } },
				{ name = "Ps & Qs", chance = 0.2, durability = { 0.05, 0.2 } },
				{ name = "Rails", chance = 0.2, durability = { 0.05, 0.2 } },

				-- Drugs.
				{ name = "Bong", chance = 0.1, durability = { 0.05, 0.5 } },
				{ name = "Crack Pipe", chance = 0.2, durability = { 0.05, 0.5 } },

				-- Other.
				{ name = "Ball", chance = 0.2 },
				{ name = "Butter Knife", chance = 1.0, durability = { 0.05, 0.5 } },
				{ name = "Glass", chance = 0.1, quantity = { 1, 3 } },
				{ name = "Paper", chance = 0.05, quantity = { 1, 6 } },
				{ name = "Radio", chance = 0.01, durability = { 0.05, 0.9 } },
				{ name = "Tire", chance = 0.1 },
			},
		},
		["mail"] = {
			Anim = { Dict = "amb@prop_human_bum_bin@idle_a", Name = "idle_a", Flag = 1 },
			Radius = 0.6,
			Energy = 0.02,
			Exponential = 4.0,
			QuickTime = {
				goalSize = 0.2,
				speed = 1.3,
				stages = 6,
			},
			Container = {
				name = "Mailbox",
				width = 3,
				height = 3,
				maxWeight = 10.0,
			},
			Loot = {
				{ name = "Paper", chance = 0.5, quantity = { 1, 10 } },
			},
		},
	},
	Models = {
		[`v_ind_bin_01`] = "bin_small",
		[`prop_cs_bin_01`] = "bin_small",
		[`prop_cs_bin_02`] = "bin_small",
		[`prop_cs_bin_03`] = "bin_small",
		[`prop_bin_01a`] = "bin_small",
		[`prop_bin_02a`] = "bin_small",
		[`prop_bin_03a`] = "bin_small",
		[`prop_bin_04a`] = "bin_small",
		[`prop_bin_05a`] = "bin_small",
		[`prop_bin_06a`] = "bin_small",
		[`prop_bin_07a`] = "bin_small",
		[`prop_bin_07b`] = "bin_small",
		[`prop_bin_07c`] = "bin_small",
		[`prop_bin_07d`] = "bin_small",
		[`prop_bin_08a`] = "bin_small",
		[`prop_bin_08open`] = "bin_small",
		[`prop_bin_09a`] = "bin_small",
		[`prop_bin_10a`] = "bin_small",
		[`prop_bin_10b`] = "bin_small",
		[`prop_bin_11a`] = "bin_small",
		[`prop_bin_11b`] = "bin_small",
		[`prop_bin_12a`] = "bin_small",
		[`prop_bin_beach_01d`] = "bin_small",
		[`prop_bin_delpiero`] = "bin_small",
		[`prop_bin_delpiero_b`] = "bin_small",
		[`zprop_bin_01a_old`] = "bin_small",
		[`hei_heist_kit_bin_01`] = "bin_small",
		[`ch_prop_casino_bin_01a`] = "bin_small",
		[`vw_prop_vw_casino_bin_01a`] = "bin_small",
		[`mp_b_kit_bin_01`] = "bin_small",

		[`prop_cs_dumpster_01a`] = "bin_large",
		[`p_dumpster_t`] = "bin_large",
		[`prop_dumpster_01a`] = "bin_large",
		[`prop_dumpster_02a`] = "bin_large",
		[`prop_dumpster_02b`] = "bin_large",
		[`prop_dumpster_3a`] = "bin_large",
		[`prop_dumpster_4a`] = "bin_large",
		[`prop_dumpster_4b`] = "bin_large",

		[`prop_postbox_01a`] = "mail",
	},
}