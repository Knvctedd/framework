local cancelControls = { 22, 24, 25, 30, 31, 32, 33, 34, 35, 36 }

-- local retval, didHit, hitCoords, surfaceNormal, materialHash, entity = Raycast()
function Raycast(ignore)
	local camCoords = GetFinalRenderedCamCoord()
	local camRot = GetFinalRenderedCamRot(0)
	local camForward = FromRotation(camRot + vector3(0, 0, 90))
	local rayTarget = camCoords + camForward * 1000.0
	local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, rayTarget.x, rayTarget.y, rayTarget.z, -1, ignore or PlayerPedId(), 0)

	return GetShapeTestResultIncludingMaterial(rayHandle)
end

function GetStreetText(coords, noZone)
	if type(coords) ~= "vector3" then return "" end

	local streetText = ""
	local streetName, crossingRoad = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
	local zone = GetNameOfZone(coords.x, coords.y, coords.z)

	if streetName ~= 0 then
		streetText = GetStreetNameFromHashKey(streetName)
		if crossingRoad ~= 0 then
			streetText = streetText.." & "..GetStreetNameFromHashKey(crossingRoad)
		end
	end

	if noZone then
		return streetText
	end

	return streetText..", "..GetLabelText(zone)
end

function WaitForRequestModel(model)
	if not IsModelValid(model) then
		return false
	end

	RequestModel(model)

	while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(20)
	end

	return true
end

function Delete(entity)
	Citizen.CreateThread(function()
		while DoesEntityExist(entity) do
			NetworkRequestControlOfEntity(entity)
			DeleteEntity(entity)

			Citizen.Wait(50)
		end
	end)
end

function Distance(a, b)
	if type(a) == "number" then
		a = GetEntityCoords(a)
	end
	if type(b) == "number" then
		b = GetEntityCoords(b)
	end

	return #(a - b)
end

function MoveToCoords(coords, heading, snap, timeout)
	local ped = PlayerPedId()

	-- Movement tasks.
	TaskGoToCoordAnyMeans(ped, coords.x, coords.y, coords.z, 1.0, 0, 0, 786603, 0xbf800000)

	Citizen.Wait(100)

	local startTime = GetGameTimer()

	while GetIsTaskActive(ped, 224) and (not timeout or GetGameTimer() - startTime < timeout) and Distance(ped, coords) > 0.3 do
		for k, v in ipairs(cancelControls) do
			if IsControlPressed(0, v) then
				ClearPedTasks(ped)
				ClearPedSecondaryTask(ped)
				
				return false
			end
		end

		if snap and Distance(ped, coords) < 0.1 then
			break
		end

		Citizen.Wait(0)
	end

	-- Smooth to coords.
	if snap then
		local start = GetEntityCoords(ped, true)
		local target = vector3(coords.x, coords.y, start.z)
		local iters = math.floor(math.min(Distance(ped, coords) / 1.0, 1.0) * 200)

		for i = 1, iters + 1 do
			local newCoords = start + (target - start) * (i / iters)
			SetEntityCoordsNoOffset(ped, newCoords.x, newCoords.y, newCoords.z, true, false)
			Citizen.Wait(0)
		end
	end
	
	-- No heading: done!
	if not heading then
		return true
	end

	-- Turning tasks.
	local targetCoords = coords + FromRotation(vector3(0.0, 0.0, heading + 90))

	TaskTurnPedToFaceCoord(ped, targetCoords.x, targetCoords.y, targetCoords.z, 5000)

	Citizen.Wait(100)

	startTime = GetGameTimer()

	while (not timeout or GetGameTimer() - startTime < timeout) and Dot(GetEntityForwardVector(ped), targetCoords - coords) < 0.98 do
		for k, v in ipairs(cancelControls) do
			if IsControlPressed(0, v) then
				ClearPedTasks(ped)
				ClearPedSecondaryTask(ped)

				return false
			end
		end

		Citizen.Wait(0)
	end

	if snap then
		Citizen.Wait(200)
		ClearPedTasksImmediately(ped)
		SetEntityHeading(ped, heading)
	end

	return true
end