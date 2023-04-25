local ox_inventory = exports.ox_inventory

--------- Coffee Machines
local itemName = {
	'Black Coffee', 'Coffee with Milk', 'Coffee with Sugar', 'Double Double', -- Coffees, 1-4
	'Sprunk', 'Sprunk-Light', 'Orang-O-Tang', 'eCola', 'Diet-eCola' -- Sodas 5-9
}

local classes = {
	['coffee'] = {
		waitTime = 2000,
		cost = 3
	},
	['can'] = {
		waitTime = 4000,
		cost = 2
	},
	['water'] = {
		waitTime = 2000,
		cost = 1
	},
}

RegisterServerEvent('sharkcoffee:buy', function(type, name)
	local src = source
	local count = ox_inventory:Search(src, 'count', 'money')
	if count >= classes[type].cost then
		ox_inventory:RemoveItem(src, 'money', classes[type])
		Wait(classes[type])
		if type == 'coffee' then
			ox_inventory:AddItem(src, 'coffee', 1, {label = itemName[name], description = 'A '..itemName[name]})
		elseif type == 'can' then
			ox_inventory:AddItem(src, 'can', 1, {label = itemName[name], description = 'A can of '..itemName[name], image = itemName[name]})
		elseif type == 'water' then
			ox_inventory:AddItem(src, 'water', 1)
		end
end
end)