local ox_inventory = exports.ox_inventory

local maxDistance = 1.5

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
            TriggerServerEvent('sharkcoffee:buy', 'water', 1)
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
                }
            })
        end,
        icon = 'fa-solid fa-bottle-water',
        label = 'Get Water',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    }
}

exports.ox_target:addModel(modelsWater, optionsWater)

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
            TriggerServerEvent('sharkcoffee:buy', 'can', 5)
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = { dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1' },
            })
        end,
        icon = 'fa-solid fa-lemon',
        label = 'Buy Sprunk',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    },
    {
        name = 'shark:sodasl',
        onSelect = function()
            TriggerServerEvent('sharkcoffee:buy', 'can', 6)
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = { dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1' },
            })
        end,
        icon = 'fa-regular fa-lemon',
        label = 'Buy Sprunk Light',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    },
    {
        name = 'shark:sodaot',
        onSelect = function()
            TriggerServerEvent('sharkcoffee:buy', 'can', 7)
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = { dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1' },
            })
        end,
        icon = 'fa-solid fa-apple-whole',
        label = 'Buy Orang-O-Tang',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    },
    {
        name = 'shark:sodaec',
        onSelect = function()
            TriggerServerEvent('sharkcoffee:buy', 'can', 8)
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = { dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1' },
            })
        end,
        icon = 'fa-solid fa-jar',
        label = 'Buy eCola',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    },
    {
        name = 'shark:sodaed',
        onSelect = function()
            TriggerServerEvent('sharkcoffee:buy', 'can', 9)
            lib.progressBar({
                duration = 4000,
                label = 'Buying Soda',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = { dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1' },
            })
        end,
        icon = 'fa-solid fa-d',
        label = 'Buy Diet eCola',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
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
            TriggerServerEvent('sharkcoffee:buy', 'coffee', 1)
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
                }
            })
        end,
        icon = 'fa-solid fa-mug-hot',
        label = 'Make Black Coffee',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    },
    {
        name = 'shark:coffeemk',
        onSelect = function()
            TriggerServerEvent('sharkcoffee:buy', 'coffee', 2)
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
                }
            })
        end,
        icon = 'fa-solid fa-cow',
        label = 'Make Coffee with Milk',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    },
    {
        name = 'shark:coffeesg',
        onSelect = function()
            TriggerServerEvent('sharkcoffee:buy', 'coffee', 3)
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
                }
            })
        end,
        icon = 'fa-solid fa-cubes-stacked',
        label = 'Make Coffee with Sugar',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    },
    {
        name = 'shark:coffedb',
        onSelect = function()
            TriggerServerEvent('sharkcoffee:buy', 'coffee', 4)
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
                }
            })
        end,
        icon = 'fa-brands fa-canadian-maple-leaf',
        label = 'Make Double-Double',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity) and distance < maxDistance
        end
    },
}

exports.ox_target:addModel(modelsCoffee, optionsCoffee)
