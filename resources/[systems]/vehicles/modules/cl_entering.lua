Entering = {
	pressed = 0
}

Main:AddListener("Update", function()
	Entering:Update()
end)

function Entering:Update()
	DisableControlAction(0, 23)

	if DoesEntityExist(CurrentVehicle) or not IsControlEnabled(0, 51) or not IsControlEnabled(0, 52) then return end

	if DoesEntityExist(EnteringVehicle) then
		if IsControlPressed(0, 30) or IsControlPressed(0, 31) then
			ClearPedTasks(Ped)
		else
			return
		end
	end

	if IsDisabledControlJustPressed(0, 23) then
		self.pressed = GetGameTimer()
	elseif IsDisabledControlJustReleased(0, 23) then
		local pressTime = GetGameTimer() - self.pressed
		Entering:Activate(pressTime > 500)
	end
end

function Entering:Activate(goToDriver)
	local coords = GetEntityCoords(Ped)

	-- Get vehicle.
	local vehicle = Main:GetNearestVehicle(coords, 8.0)
	if not vehicle or not DoesEntityExist(vehicle) then return end

	-- Get model.
	local model = GetEntityModel(vehicle)

	-- Check driver.
	local driver = GetPedInVehicleSeat(vehicle, -1)
	local hasDriver = driver and DoesEntityExist(driver) and not IsPedDeadOrDying(driver)
	if hasDriver and not IsPedAPlayer(driver) then
		if Config.Taxis[model] then
			TaskSetBlockingOfNonTemporaryEvents(driver, true)
		else
			return
		end
	end

	-- Find seat.
	local seatIndex, doorDist = (goToDriver and not hasDriver and -1) or Main:GetClosestSeat(coords, vehicle, true)
	if seatIndex then
		-- Enter vehicle.
		SetVehicleDoorsLocked(vehicle, 0)
		TaskEnterVehicle(Ped, vehicle, -1, seatIndex, IsControlPressed(0, 21) and 2.0 or 1.0, 8, 0)
	end
end