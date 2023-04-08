local ox_inventory = exports.ox_inventory

--------- Water
local modelsWater = {
    'prop_vend_water_01',
    'prop_watercooler_dark',
    'prop_vend_fridge01',
    'prop_watercooler'
}

local optionsWater = {
    {
        name = 'shark:water',
        onSelect = function() 
            lib.progressBar({
                duration = 2000,
                label = 'Filling Water',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {
                    dict = 'amb@prop_human_atm@male@idle_a', 
                    clip = 'idle_a'
                }})
                TriggerServerEvent('sharkcoffee-water', 1)
        end,
        icon = 'fa-solid fa-bottle-water',
        label = 'Get Water',
        items = {
            ['money'] = 1
        }
    }
}

exports.ox_target:addModel(modelsWater, optionsWater)

exports.ox_target:addModel(modelsSoda, optionsSoda)
--------- Vending Machines
local modelsSoda = {
    'prop_vend_soda_01',
    'prop_vend_soda_02',
    'prop_vend_fridge01',
    'prop_food_bs_soda_01',
    'prop_food_cb_soda_01'
}

local optionsSoda = {
    {
        name = 'shark:sodasp',
        onSelect = function() 
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1'},
            })
            TriggerServerEvent('sharkcoffee-can', 5)
        end,        
        icon = 'fa-solid fa-lemon',
        label = 'Buy Sprunk',
        items = {
            ['money'] = 2
        }
    },
    {
        name = 'shark:sodasl',
        onSelect = function() 
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1'},
            })
            TriggerServerEvent('sharkcoffee-can', 6)
        end,        
        icon = 'fa-regular fa-lemon',
        label = 'Buy Sprunk Light',
        items = {
            ['money'] = 2
        }
    },
    {
        name = 'shark:sodaot',
        onSelect = function() 
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1'},
            })
            TriggerServerEvent('sharkcoffee-can', 7)
        end,        
        icon = 'fa-solid fa-apple-whole',
        label = 'Buy Orang-O-Tang',
        items = {
            ['money'] = 2
        }
    },
    {
        name = 'shark:sodaec',
        onSelect = function() 
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1'},
            })
            TriggerServerEvent('sharkcoffee-can', 8)
        end,        
        icon = 'fa-solid fa-jar',
        label = 'Buy eCola',
        items = {
            ['money'] = 2
        }
    },
    {
        name = 'shark:sodaed',
        onSelect = function()
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1'},
            })
            TriggerServerEvent('sharkcoffee-can', 9)
        end,
        icon = 'fa-solid fa-d',
        label = 'Buy Diet eCola',
        items = {
            ['money'] = 2
        }
    },
}

exports.ox_target:addModel(modelsSoda, optionsSoda)
--------- Coffee Machine
local modelsCoffee = {
    'apa_mp_h_acc_coffeemachine_01',
    'ex_mp_h_acc_coffeemachine_01',
    'hei_heist_kit_coffeemachine_01',
    'prop_coffee_mac_01',
    'prop_coffee_mac_02',
    'p_ld_coffee_vend_01',
    'prop_vend_coffe_01',
}

local optionsCoffee = {
    {
        name = 'shark:coffeebl',
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
            TriggerServerEvent('sharkcoffee-coffee', 1)
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

exports.ox_target:addModel(modelsCoffee, optionsCoffee)
