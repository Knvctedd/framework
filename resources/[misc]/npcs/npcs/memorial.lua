local MemorialNpcs = {
	{
		id = "Abel_Sampson",
		coords = vector4(-71.41214752197266, 6423.95654296875, 31.44007682800293, 41.53114700317383),
		appearance = json.decode('{"hair":[152,0,61],"components":[1,1,2,1,1,1,175,17,141,3,14,1,1,1,1,1,1,1,1,1,2,1],"makeupOverlays":[1,1,4,0.0,0.0,0.0,62,62,62,34,34,34],"props":[178,9,1,1,1,1,1,1,1,1]}'),
		features = json.decode('{"blendData":[1,46,1,1,46,1,0.09090909090909,0.09090909090909,0.0],"model":1,"otherOverlays":[19,13,9,7,7,10,0.00001856670229,3.7550661167892697e-8,0.02618033751044,0.25337698644864,0.99624443054199,0.49977421760559,0.86559891700744],"eyeColor":0,"hairOverlays":[12,1,1,1.0,1,1,30,1,1],"faceFeatures":[0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909],"overlays":[],"bodyType":1}'),
		animations = {
			idle = { Dict = "amb@world_human_drug_dealer_hard@male@idle_b", Name = "idle_d", Flag = 1 },
		}
	},
	{
		id = "Mia_Wolfe",
		coords = vector4(-614.6067504882812, 35.01748657226562, 43.53423690795898, 154.86781311035156),
		appearance = json.decode('{"hair":[47,0,10],"components":[1,1,31,1,1,1,113,233,122,109,9,1,1,1,1,1,1,6,1,1,3,1],"makeupOverlays":[12,3,6,0.54675078392028,0.11081353779878,0.54675078392028,27,27,27,54,54,54],"props":[1,1,1,104,1,1,1,1,1,1]}'),
		features = json.decode('{"otherOverlays":[9,2,8,2,4,5,0.00096771701628,0.04833555391552,0.04010648989795,0.29508866852388,0.19780874252319,0.81386005878448,0.36739587783813],"overlays":[],"hairOverlays":[2,1,1,0.0,1,1,5,1,1],"blendData":[26,1,1,26,1,1,0.09090909090909,0.09090909090909,0.0],"eyeColor":0,"faceFeatures":[0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909],"model":1,"bodyType":2}'),
		animations = {
			idle = { Dict = "random@shop_tattoo", Name = "_idle", Flag = 49 },
		}
	},
	{
		id = "Andre_Johnson",
		coords = vector4(128.1234893798828, -1299.624755859375, 29.23272705078125, 232.3399658203125),
		appearance = json.decode('{"props":[1,5,1,1,2,1,1,1,1,1],"makeupOverlays":[1,1,4,0.0,0.0,0.0,62,62,62,34,34,34],"components":[1,1,201,1,1,1,381,233,121,34,12,1,1,4,1,1,1,1,9,1,3,1],"hair":[31,0,61]}'),
		features = json.decode('{"eyeColor":0,"bodyType":1,"hairOverlays":[20,1,1,0.99,1,1,1,1,1],"otherOverlays":[19,13,9,7,7,10,0.00001856670229,3.7550661167892697e-8,0.02618033751044,0.25337698644864,0.99624443054199,0.49977421760559,0.86559891700744],"overlays":[-1953737187,-2086773],"faceFeatures":[-0.27272727272727,0.09090909090909,0.09090909090909,0.27272727272727,0.09090909090909,-0.09090909090909,0.09090909090909,0.09090909090909,-0.09090909090909,0.09090909090909,0.27272727272727,-0.09090909090909,0.63636363636363,-0.27272727272727,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,0.09090909090909,1.0],"model":1,"blendData":[30,43,1,30,43,1,0.63636363636363,0.09090909090909,0.0]}'),
		animations = {
			idle = { Dict = "amb@world_human_stand_guard@male@idle_a", Name = "idle_a", Flag = 49 },
		}
	}
}

Citizen.CreateThread(function()
	for _, npc in ipairs(MemorialNpcs) do
		Npcs:Register(npc)
	end
end)

