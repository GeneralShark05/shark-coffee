local ox_inventory = exports.ox_inventory

--------- Coffee Machine
local models = {
    'apa_mp_h_acc_coffeemachine_01',
    'ex_mp_h_acc_coffeemachine_01',
    'hei_heist_kit_coffeemachine_01',
    'prop_coffee_mac_01',
    'prop_coffee_mac_02',
    'p_ld_coffee_vend_01',
    'prop_vend_coffe_01',
}

local options = {
    {
        name = 'shark:coffeebl',
        onSelect = function() 
            TriggerServerEvent('sharkcoffee-coffee', 1)
            lib.progressBar({
                duration = 2000,
                label = 'Ordering Coffee',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {
                    dict = 'amb@prop_human_atm@male@idle_a', 
                    clip = 'idle_a'
                }})
        end,        
        icon = 'fa-solid fa-mug-hot',
        label = 'Make Black Coffee',
        items = {
            ['money'] = 3
        }
    },
    {
        name = 'shark:coffeemk',
        onSelect = function() 
            lib.progressBar({
                duration = 2000,
                label = 'Ordering Coffee',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {
                    dict = 'amb@prop_human_atm@male@idle_a', 
                    clip = 'idle_a'
                }})
                TriggerServerEvent('sharkcoffee-coffee', 2)
        end,
        icon = 'fa-solid fa-cow',
        label = 'Make Coffee with Milk',
        items = {
            ['money'] = 3
        }
    },
    {
        name = 'shark:coffeesg',
        onSelect = function() 
            lib.progressBar({
                duration = 2000,
                label = 'Ordering Coffee',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {
                    dict = 'amb@prop_human_atm@male@idle_a', 
                    clip = 'idle_a'
                }})
                TriggerServerEvent('sharkcoffee-coffee', 3)
        end,
        icon = 'fa-solid fa-cubes-stacked',
        label = 'Make Coffee with Sugar',
        items = {
            ['money'] = 3
        }
    },
    {
        name = 'shark:coffedb',
        onSelect = function() 
            lib.progressBar({
                duration = 2000,
                label = 'Ordering Coffee',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {
                    dict = 'amb@prop_human_atm@male@idle_a', 
                    clip = 'idle_a'
                }})
                TriggerServerEvent('sharkcoffee-coffee', 4)
        end,
        icon = 'fa-brands fa-canadian-maple-leaf',
        label = 'Make Double-Double',
        items = {
            ['money'] = 3
        }
    },
}

exports.ox_target:addModel(models, options)
