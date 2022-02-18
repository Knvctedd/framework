Jobs = {
	Permissions = {
		CAN_HIRE_OR_FIRE = 1 << 1,

		CAN_SET_USER_RANK = 1 << 2,
		CAN_SET_USER_STATUS = 1 << 3,
		CAN_SET_USER_FLAGS = 1 << 4,
		CAN_SET_USER_OTHER = 1 << 5,

		ALL = function()
			local result = 0
			
			for k, flag in pairs(Jobs.Permissions) do
				if type(flag) == "number" then
					result = result | flag
				end
			end

			return result
		end,
	},
}

function Jobs:GenerateUserPermissions(flags)
	local permissions = {}

	for k, flag in pairs(self[table]) do
		permissions[k] = flags & flag ~= 0
	end

	return permissions
end