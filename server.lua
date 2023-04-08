local ox_inventory = exports.ox_inventory

--------- Coffee Machines
local itemName = {
	'Black Coffee', 'Coffee with Milk', 'Coffee with Sugar', 'Double Double', -- Coffees, 1-4
	'Sprunk', 'Sprunk-Light', 'Orang-O-Tang', 'eCola', 'Diet-eCola' -- Sodas 5-9
}

RegisterServerEvent('sharkcoffee-coffee', function(type)
	local source = source
	ox_inventory:RemoveItem(source, 'money', 3)
	Wait(2000)
	ox_inventory:AddItem(source, 'coffee', 1, {label = itemName[type], description = 'A '..itemName[type]})
end)

RegisterServerEvent('sharkcoffee-can', function(type)
	local source = source
	ox_inventory:RemoveItem(source, 'money', 2)
	Wait(4000)
	ox_inventory:AddItem(source, 'can', 1, {label = 'Can of '..itemName[type], description = 'A can of '..itemName[type], image = itemName[type]})
end)

RegisterServerEvent('sharkcoffee-water', function(type)
	local source = source
	ox_inventory:RemoveItem(source, 'money', 1)
	Wait(2000)
	ox_inventory:AddItem(source, 'water', 1)
end)