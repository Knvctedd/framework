exports.jobs:Register("sams", {
	Title = "Federal",
	Name = "San Andreas Marshal Service",
	Faction = "federal",
	Pay = 90,
	Group = "sams",
	Clocks = {
		{ Coords = vector3(22.60044, -929.5186, 29.90769), Radius = 3.5 },
	},
	Tracker = {
		Group = "emergency",
		State = "state",
	},
	Emergency = {
		AccessMdt = "police",
		CanBreach = true,
		CanFine = true,
		CanImpound = true,
		CanJail = true,
		CheckIn = 2,
		ChopShop = false,
		DrugBonus = false,
		JailBreak = false,
		Robberies = false,
	},
	Ranks = {
		{ Name = "Probationary Deputy Marshal" },
		{ Name = "Deputy Marshal" },
		{ Name = "Supervisory Marshal" },
		{
			Name = "Chief Deputy Marshal",
			Flags = Jobs.Permissions.ALL()
		},
		{
			Name = "District Marshal",
			Flags = Jobs.Permissions.ALL()
		},
	},
})