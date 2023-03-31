# shark-methlab
A simple script that let's you get a cup of coffee.

## Dependencies:
- [ox_lib](https://github.com/overextended/ox_lib)
- [ox_target](https://github.com/overextended/ox_target)
- [ox_inventory](https://github.com/overextended/ox_inventory)

Add the following to your data/items.lua in ox_inventory

	['coffee'] = {
			label = 'Coffee',
			weight = 200,
			stack = true,
			close = true,
			description = "A nice cup of joe.",
			client = {
				status = { thirst = 220000, drunk = -10000 },
				anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
				prop = { model = 'prop_fib_coffee', 
				pos = vec3(0.008, 0.0, 0.05), rot = vec3(0.0, 0.0, -40.0) },
				usetime = 7500,
			},
		},

## Credits:

Thanks to Agimir for the Coffee Icon
