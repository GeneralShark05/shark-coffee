local ox_inventory = exports.ox_inventory

--------- Coffee Machines
local blend = {
	'Black Coffee', 'Coffee with Milk', 'Coffee with Sugar', 'Double Double'
}

RegisterServerEvent('sharkcoffee-coffee', function(type)	
	ox_inventory:RemoveItem(source, 'money', 3)
	Wait(2000)
	ox_inventory:AddItem(source, 'coffee', 1, {label = blend[type], description = 'A '..blend[type]})
end)
