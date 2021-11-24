function Damage.process:Stalling(data, deltas, direction)
	local damage = (deltas.engine or 0.0) + (deltas.body or 0.0) + (deltas.petrol or 0.0)
	
	if damage > Config.Stalling.MinDamage and not IsStalling then
		Citizen.CreateThread(function()
			IsStalling = true

			local endTime = GetGameTimer() + GetRandomIntInRange(table.unpack(Config.Stalling.StallTime))
			local vehicle = CurrentVehicle
			
			while GetGameTimer() < endTime and vehicle == CurrentVehicle do
				SetVehicleCurrentRpm(vehicle, 0.0)
				Citizen.Wait(0)
			end

			IsStalling = false
		end)
	end
end