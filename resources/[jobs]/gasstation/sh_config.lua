Config = {
	Anim = {
		Dict = "anim@am_hold_up@male",
		Name = "shoplift_high",
		BlendIn = 2.0, 
		BlendOut = 8.0,
		Duration = -1,
		Rate = 0.0,
		Lock = 0,
		Flag = 50,
		Props = {
			{ Model = "prop_cs_fuel_nozle", Bone = 60309, Offset = { 0.11, 0.02, 0.02, -80.0, -90.0, 15.0 }},
		},
	},
	Action = {
		Duration = 1000,
		Label = "Fueling Vehicle...",
		UseWhileDead = false,
		CanCancel = false,
		Disarm = true,
		Anim = {
			Dict = "timetable@gardener@filling_can",
			Name = "gar_ig_5_filling_can",
			BlendIn = 2.0, 
			BlendOut = 8.0,
			Duration = -1,
			Rate = 0.0,
			Lock = 1,
			Flag = 50,
			Props = {
				{ Model = "prop_cs_fuel_nozle", Bone = 60309, Offset = { 0.11, 0.02, 0.02, -80.0, -90.0, 15.0 }},
			},
			DisableMovement = true,
			DisableCombat = true,
			CanCancel = false
		},
	},
	JerryAction = {
		Duration = 1000,
		Label = "Fueling Vehicle...",
		UseWhileDead = false,
		CanCancel = false,
		Disarm = false,
		Anim = {
			Dict = "weapon@w_sp_jerrycan",
			Name = "fire",
			BlendIn = 2.0, 
			BlendOut = 8.0,
			Duration = -1,
			Rate = 0.0,
			Lock = 1,
			Flag = 49,
			DisableMovement = true,
			DisableCombat = true,
			CanCancel = false
		},
	},
	Distance = 2.0,
	Pumps = {
		{ Model = "prop_gas_pump_1a" },
		{ Model = "prop_gas_pump_1b" },
		{ Model = "prop_gas_pump_1c" },
		{ Model = "prop_gas_pump_1d" },
		{ Model = "prop_gas_pump_old2" },
		{ Model = "prop_gas_pump_old3" },
	},
}