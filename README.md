# shark-cofffee
A simple script that let's you get a cup of coffee.


To use: Have atleast $3 in your inventory, and walk up to a coffee machine.

## Dependencies:
- [ox_lib](https://github.com/overextended/ox_lib)
- [ox_target](https://github.com/overextended/ox_target)
- [ox_inventory](https://github.com/overextended/ox_inventory)

Add the following to your data/items.lua in ox_inventory

	['can'] = {
		label = 'Soda Can',
		weight = 350,
		client = {
			status = { thirst = 300000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_ecola_can", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 5000,
		}
	},

	['coffee'] = {
		label = 'Coffee',
		weight = 200,
		client = {
			status = { thirst = 220000, drunk = -10000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_fib_coffee', 
			pos = vec3(0.008, 0.0, 0.05), rot = vec3(0.0, 0.0, -40.0) },
			usetime = 7500,
		},
	},

	['water'] = {
		label = 'Bottled Water',
		weight = 500,
		client = {
			status = { thirst = 50000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_ld_flow_bottle", pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 5000,
			cancel = true,
		}
	},

		

## Credits:

Thanks to Agimir for the Coffee Icon
