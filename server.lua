local ox_inventory = exports.ox_inventory

--------- Coffee Machines
local itemName = {
	'Black Coffee', 'Coffee with Milk', 'Coffee with Sugar', 'Double Double', -- Coffees, 1-4
	'Sprunk', 'Sprunk-Light', 'Orang-O-Tang', 'eCola', 'Diet-eCola' -- Sodas 5-9
}

RegisterServerEvent('sharkcoffee-coffee', function(type)
	ox_inventory:RemoveItem(source, 'money', 3)
	ox_inventory:AddItem(source, 'coffee', 1, {label = itemName[type], description = 'A '..itemName[type]})
end)

RegisterServerEvent('sharkcoffee-can', function(type)
	ox_inventory:RemoveItem(source, 'money', 2)
	ox_inventory:AddItem(source, 'can', 1, {label = 'Can of '..itemName[type], description = 'A can of '..itemName[type], image = itemName[type]})
end)

RegisterServerEvent('sharkcoffee-water', function(type)
	ox_inventory:RemoveItem(source, 'money', 1)
	ox_inventory:AddItem(source, 'water', 1)
end)