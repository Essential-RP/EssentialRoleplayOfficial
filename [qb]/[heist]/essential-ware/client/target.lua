local QBCore = exports['qb-core']:GetCoreObject()
-- Door
exports['qb-target']:AddBoxZone("d1", vector3(928.42, -1479.79, 30.06),0.4, 0.8, {
    name = "d1",
    heading=270,
    debugPoly = false,
}, { 
    options = {
        {
            event = "essential-ware:client:hackdoor",
            icon = "fa-solid fa-mask",
            label = "Attempt to hack security",
            
        },
    },
    distance = 1.5
})
-- exports['qb-target']:AddBoxZone("d2", vector3(935.81, -1488.69, 30.16), 4.2, 3, {
--     name = "d2",
--     heading=270,
--     debugPoly = false,
-- }, { 
--     options = {
--         {
--             event = "essential-ware:client:hackg1",
--             icon = "fa-solid fa-mask",
--             label = "Attempt To Open Garage",
            
--         },
--     },
--     distance = 1.5
-- })
-- exports['qb-target']:AddBoxZone("d3", vector3(943.35, -1489.02, 30.14), 4.2, 3, {
--     name = "d3",
--     heading=270,
--     debugPoly = false,
-- }, { 
--     options = {
--         {
--             event = "essential-ware:client:hackg2",
--             icon = "fa-solid fa-mask",
--             label = "Open Door",
            
--         },
--     },
--     distance = 1.5
-- })
-- Door End

-- loot
exports['qb-target']:AddBoxZone("1", vector3(944.89, -1476.27, 30.1), 1.4, 3, {
    name = "1",
    heading=270,
    debugPoly = false,
}, { 
    options = {
        {
            type = "Client",
            event = "essential-ware:client:loot1",
            icon = "fas fa-gem",
            label = 'Grab Jewellery'
            
        },
    },
    distance = 1.5
})

exports['qb-target']:AddBoxZone("2", vector3(945.52, -1473.22, 30.1), 3, 3, {
    name = "2",
    heading=0,
    debugPoly = false,
}, { 
    options = {
        {
            type = "Client",
            event = "essential-ware:client:loot2",
            icon = "fas fa-question",
            label = 'Grab Items'
            
        },
    },
    distance = 1.5
})   
exports['qb-target']:AddBoxZone("3", vector3(944.91, -1470.37, 30.1), 1.6, 3, {
    name = "2",
    heading=0,
    debugPoly = false,
}, { 
    options = {
        {
            type = "Client",
            event = "essential-ware:client:loot3",
            icon = "fas fa-question",
            label = 'Grab Items'
            
        },
    },
    distance = 1.5
})   
exports['qb-target']:AddBoxZone("loot4", vector3(944.36, -1466.57, 30.1), 1, 1.5, {
    name = "loot4",
    heading=270,
    debugPoly = false,
}, { 
    options = {
        {
            type = "Client",
            event = "essential-ware:client:loot4",
            icon = "fas fa-question",
            label = 'Grab Loot'
            
        },
    },
    distance = 1.5
}) 
-- loot

-- Laptop Hacks

exports['qb-target']:AddBoxZone("Hacklaptop", vector3(930.32, -1462.42, 30.4), 0.4, 0.8, {
    name = "Hacklaptop",
    heading=270,
    debugPoly = false,
}, { 
    options = {
        {
            type = "Client",
            event = "essential-ware:client:hacklaptop",  -- Med Laptop
            icon = "fas fa-mask",
            label = 'Attempt Hack'
            
        },
    },
    distance = 1.5
}) 
exports['qb-target']:AddBoxZone("laptop2", vector3(939.38, -1460.69, 33.61), 0.4, 0.8, {
    name = "laptop2",
    heading=270,
    debugPoly = false,
}, { 
    options = {
        {
            type = "Client",
            event = "essential-ware:client:hacklaptop2",  -- Upstairs Laptop
            icon = "fas fa-mask",
            label = 'Attempt Hack'
            
        },
    },
    distance = 1.5
}) 
exports['qb-target']:AddBoxZone("laptop3", vector3(944.83, -1464.09, 30.4), 0.4, 0.8, {
    name = "laptop3",
    heading=270,
    debugPoly = false,
}, { 
    options = {
        {
            type = "Client",
            event = "essential-ware:client:hacklaptop3",  -- Near Gun Loot
            icon = "fas fa-mask",
            label = 'Attempt Hack'
            
        },
    },
    distance = 1.5
}) 
exports['qb-target']:AddBoxZone("safeware", vector3(934.44, -1460.47, 33.61), 0.4, 0.8, {
    name = "safeware",
    heading=270,
    debugPoly = false,
}, { 
    options = {
        {
            type = "Client",
            event = "essential-ware:client:opensafe",
            icon = "fas fa-mask",
            label = 'Crack Safe'
            
        },
    },
    distance = 1.5
}) 


-- lib
RegisterCommand("heist", function(source --[[ this is the player ID (on the server): a number ]], args --[[ this is a table of the arguments provided ]], rawCommand --[[ this is what the user entered ]])
    TriggerServerEvent('essential-ware:server:ResetHeist')
end, true) -- this true bool means that the user cannot execute the command unless they have the 'command.commandName' ACL object allowed to one of their identifiers.


    
-- thread
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if isActive then
            Citizen.Wait(Config.StartTimer*60000)
            RemoveBlip(hackBlip)
            TriggerEvent('essential-ware:client:ResetHeist')
        end
    end
end)
RegisterNetEvent('essential-ware:client:ResetHeist', function()
    TriggerServerEvent('essential-ware:server:ResetHeist')
end)

CreateThread(function()
    QBCore.Functions.LoadModel(Config.Ped)
    created_ped = CreatePed(5, GetHashKey(Config.Ped) , Config.PedCoords, false, true)
    FreezeEntityPosition(created_ped, true)
    SetEntityInvincible(created_ped, true)
    SetBlockingOfNonTemporaryEvents(created_ped, true)
end)