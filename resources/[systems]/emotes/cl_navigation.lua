AddEventHandler("emotes:clientStart", function()
	local expressions = {}

	for k, expression in ipairs(Expressions) do
		if expression.Icon then
			expressions[#expressions + 1] = {
				id = "expression-"..tostring(k),
				text = expression.Name,
				icon = expression.Icon,
			}
		end
	end

	exports.interact:AddOption({
		id = "emotesRoot",
		text = "Emotes",
		icon = "gesture",
		sub = {
			{
				id = "emotes",
				text = "Emote",
				icon = "accessibility",
			},
			{
				id = "walkstyles",
				text = "Walkstyle",
				icon = "directions_run",
			},
			{
				id = "cancelEmote",
				text = "Cancel",
				icon = "not_interested",
			},
			{
				id = "expressions",
				text = "Expression",
				icon = "mood",
				sub = expressions,
			},
		},
	})
end)

AddEventHandler("interact:onNavigate", function(id)
	if not id then return end

	local key, value = id:match("([^-]+)-([^-]+)")
	if key ~= "expression" then return end

	local index = tonumber(value)
	if not index then return end

	local expression = Expressions[index]
	if not expression then return end

	Main:PerformEmote(expression.Anim)
end)

AddEventHandler("interact:onNavigate_emotes", function()
	Navigation:Close()

	local options = {}

	for _, group in ipairs(Config.Groups) do
		local subOptions = {}
		
		for name, emote in pairs(group.Emotes) do
			subOptions[#subOptions + 1] = {
				label = name,
				emote = true,
			}
		end

		table.sort(subOptions, function(a, b)
			return a.label < b.label
		end)

		options[#options + 1] = {
			label = group.Name,
			icon = group.Icon,
			options = subOptions,
		}
	end

	Navigation:Open("Emotes", options)

	function Navigation:OnSelect(option)
		if option.emote then
			Main:PerformEmote(option.label)
		end
	end
end)

AddEventHandler("interact:onNavigate_walkstyles", function()
	print("open walkstyles menu")
end)

AddEventHandler("interact:onNavigate_cancelEmote", function()
	Main:CancelEmote()
end)