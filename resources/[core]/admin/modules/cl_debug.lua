Debugger = { texts = {} }

--[[ Functions ]]--
function Debugger:Init()
	self.active = self.showEntities or self.showPlayers
	if not self.active then
		self:Destroy()
	end
end

function Debugger:Destroy()
	for entity, id in pairs(self.texts) do
		exports.interact:RemoveText(id)
	end
	self.texts = {}
end

function Debugger:Update()
	local coords = GetFinalRenderedCamCoord()
	self.tempCache = {}

	local peds = exports.oldutils:GetPeds()
	local objects = exports.oldutils:GetVehicles()
	local vehicles = exports.oldutils:GetObjects()

	for _, ped in ipairs(peds) do
		local isPlayer = IsPedAPlayer(ped)
		if isPlayer and self.showPlayers then
			self:RegisterPlayer(ped)
		elseif not isPlayer and self.showEntities and #(coords - GetEntityCoords(ped)) < 50.0 then
			self:RegisterEntity(ped)
		end
	end

	if self.showEntities then
		for _, object in ipairs(objects) do
			if #(coords - GetEntityCoords(object)) < 50.0 then
				self:RegisterEntity(object)
			end
		end

		for _, vehicle in ipairs(vehicles) do
			if #(coords - GetEntityCoords(vehicle)) < 50.0 then
				self:RegisterEntity(vehicle)
			end
		end
	end

	for entity, id in pairs(self.texts) do
		if self.tempCache[entity] == nil then
			exports.interact:RemoveText(id)
			self.texts[entity] = nil
		end
	end
end

function Debugger:RegisterEntity(entity, text)
	if not NetworkGetEntityIsNetworked(entity) then
		return
	end

	self.tempCache[entity] = true
	if self.texts[entity] then return end
	
	local id = "d"..entity
	local type = GetEntityType(entity)
	local _entity = Entity(entity)
	local offset = vector3(0, 0, 0)

	if type == 1 then
		text = text or "Ped"
		offset = vector3(0, 0, 1)
	elseif type == 2 then
		text = text or "Vehicle"
		offset = vector3(0, 0, -1)
	elseif type == 3 then
		text = text or "Object"
	else
		text = text or ""
	end

	local owner = NetworkGetEntityOwner(entity)
	if owner == PlayerId() then
		owner = "You"
	else
		owner = "["..GetPlayerServerId(owner).."]"
	end
	
	text = text.."<br>ID: "..NetworkGetNetworkIdFromEntity(entity)
	
	if not IsEntityAPed(entity) or not IsPedAPlayer(entity) then
		local origin = _entity and _entity.state.origin or "Unknown"

		if origin == GetPlayerServerId(PlayerId()) then
			origin = "You"
		end

		text = text.."<br>Owner: "..owner
		text = text.."<br>Orign: "..origin
	end

	exports.interact:AddText({
		id = id,
		text = text,
		entity = entity,
		offset = offset,
	})

	self.texts[entity] = id
end

function Debugger:RegisterPlayer(ped)
	local serverId = GetPlayerServerId(NetworkGetEntityOwner(ped))
	local player = Admin:GetPlayer(serverId)

	local text = ("%s [%s]"):format(player.name, serverId)

	self:RegisterEntity(ped, text)
end

--[[ Threads ]]--
Citizen.CreateThread(function()
	while true do
		if Debugger.active then
			Debugger:Update()
		end

		Citizen.Wait(1000)
	end
end)

--[[ Hooks ]]--
Admin:AddHook("toggle", "debugger-entity", function(active)
	Debugger.showEntities = active
	Debugger:Init()
end)

Admin:AddHook("toggle", "debugger-player", function(active)
	Debugger.showPlayers = active
	Debugger:Init()
end)

--[[ Events ]]--
AddEventHandler(Admin.event.."stop", function()
	Debugger:Destroy()
end)