local QBCore = exports[Config.CoreName]:GetCoreObject()
local CheesburgerFreddyCooldown = false
local InfirmaryCooldown = false
local InfirmaryCooldown2 = false
local function IsInPrison()
    local Sent = false
    local IsInJail = false
    QBCore.Functions.TriggerCallback('Thx:SVCB:InJailOrNot', function(InJail)  
        if InJail >= 1 then
            Sent = true
            IsInJail = true
        else
            Sent = true
            IsInJail = false
            TriggerEvent("ThxPrisonNotify",Translation.error.not_inJail, "error")
        end
    end)
    while not Sent do Wait(100) end
    return IsInJail
end
RegisterNetEvent("ThxPrisonNotify", function(text,type,length)
    QBCore.Functions.Notify(text,type,length)
end)
-- Spawning a Ped
----------------------------------------------
local function LoadModel(model)
    if HasModelLoaded(model) then return end
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
end
Citizen.CreateThread(function()
    PrisonBitch = Config.GatePed
    LoadModel(PrisonBitch)
    if Config.Gabz then
        PrisonBitchMan = CreatePed(2, PrisonBitch, Config.PrisonBitchLoc, false, false)
    else
        -- PrisonBitchMan = CreatePed(2, PrisonBitch, Config.PrisonBitchLoc, false, false)
    end
    SetPedFleeAttributes(PrisonBitchMan, 0, 0)
    SetPedDiesWhenInjured(PrisonBitchMan, false)
    SetPedKeepTask(PrisonBitchMan, true)
    SetBlockingOfNonTemporaryEvents(PrisonBitchMan, true)
    SetEntityInvincible(PrisonBitchMan, true)
    FreezeEntityPosition(PrisonBitchMan, true)
    ------------------------------------------ End of spawning a ped
    -- starts here
    CheesburgerFreddy = Config.CheesburgerFreddy
    LoadModel(CheesburgerFreddy)
    if Config.Gabz then
        CheesburgerFreddyMan = CreatePed(2, CheesburgerFreddy, Config.CheesburgerFreddyLoc, false, false)
    else
        -- CheesburgerFreddyMan = CreatePed(2, CheesburgerFreddy, Config.CheesburgerFreddyLoc, false, false)
    end
    SetPedFleeAttributes(CheesburgerFreddyMan, 0, 0)
    SetPedDiesWhenInjured(CheesburgerFreddyMan, false)
    SetPedKeepTask(CheesburgerFreddyMan, true)
    SetBlockingOfNonTemporaryEvents(CheesburgerFreddyMan, true)
    SetEntityInvincible(CheesburgerFreddyMan, true)
    FreezeEntityPosition(CheesburgerFreddyMan, true)
    ------------------------------------------ End of spawning a ped
    -- starts here
    PrisonTowerGuard = Config.PrisonTowerGuard
    LoadModel(PrisonTowerGuard)
    if Config.Gabz then
        PrisonTowerGuardMan = CreatePed(2, PrisonTowerGuard, Config.PrisonTowerGuardLoc, false, false)
    else
        -- PrisonJobStartMan = CreatePed(2, PrisonJobPed, Config.PrisonJobStartLoc, false, false)
    end
    SetPedFleeAttributes(PrisonTowerGuardMan, 0, 0)
    SetPedDiesWhenInjured(PrisonTowerGuardMan, false)
    SetPedKeepTask(PrisonTowerGuardMan, true)
    SetBlockingOfNonTemporaryEvents(PrisonTowerGuardMan, true)
    SetEntityInvincible(PrisonTowerGuardMan, true)
    FreezeEntityPosition(PrisonTowerGuardMan, true)
    ------------------------------------------ End of spawning a ped
    -- starts here
    CleanUpPed = Config.CleanUpPed
    LoadModel(CleanUpPed)
    if Config.Gabz then
        CleanUpPedMan = CreatePed(2, CleanUpPed, Config.CleanUpPedLoc, false, false)
    else
        -- CleanUpPedMan = CreatePed(2, CleanUpPed, Config.CleanUpPedLoc, false, false)
    end
    SetPedFleeAttributes(CleanUpPedMan, 0, 0)
    SetPedDiesWhenInjured(CleanUpPedMan, false)
    SetPedKeepTask(CleanUpPedMan, true)
    SetBlockingOfNonTemporaryEvents(CleanUpPedMan, true)
    SetEntityInvincible(CleanUpPedMan, true)
    FreezeEntityPosition(CleanUpPedMan, true)
    ------------------------------------------ End of spawning a ped 
    -- Targets
exports[Config.Target]:AddBoxZone("PrisonBitch", vector3(1647.47, 2492.99, 45.56), 1.15, 1, {
    name="prisonbitch",
    heading=5,
    -- debugPoly=true,
    minZ=44.76,
    maxZ=46.76
}, {
    options = {
        {
            event = 'Thx:client:PrisonBitch',
            icon = "fa-solid fa-user-secret",
            label = "Jeph",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("CookAssmeth", Config.CookAssMeth[math.random(1,14)], 1.5, 2, {
    name="CookAssmeth",
    heading=295,
    -- debugPoly=true,
    minZ=48.69,
    maxZ=50.29
}, {
    options = {
        {
            event = 'THX:Prison:CookAssMeth',
            icon = "fa-solid fa-flask",
            label = "YO MISTER WHITE",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("CBFreddy", vector3(1751.55, 2553.19, 43.59), 1, 1, {
    name="CBFreddy",
    heading=295,
    -- debugPoly=true,
    minZ=42.59,
    maxZ=44.59
}, {
    options = {
        {
            event = 'Thx:client:CheesburgerFreddyMenu',
            icon = "fa-solid fa-burger",
            label = "Freddy got you covered",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("SearchLab1", vector3(1773.0, 2580.67, 45.73), 1.4, 2, {
    name="SearchLab1",
    heading=270,
    -- debugPoly=true,
    minZ=44.73,
    maxZ=47.13
}, {
    options = {
        {
            event = 'THX:Prison:SearchLab1',
            icon = "fa-solid fa-flask",
            label = "What could be in here?",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("SearchLab2", vector3(1772.88, 2578.42, 45.73), 2.4, 1, {
    name="SearchLab2",
    heading=0,
    -- debugPoly=true,
    minZ=46.53,
    maxZ=47.13
}, {
    options = {
        {
            event = 'THX:Prison:SearchLab2',
            icon = "fa-solid fa-flask",
            label = "What could be in here?",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("PrisonJobs", vector3(1775.2, 2553.55, 45.57), 1, 1, {
    name="PrisonJobs",
    heading=0,
    -- debugPoly=true,
    minZ=44.57,
    maxZ=46.57
}, {
    options = {
        {
            -- event = 'Thx:client:CheesburgerFreddyMenu',
            icon = "fa-solid fa-toolbox",
            label = "Get to work",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("MagnetSearch", vector3(1740.58, 2481.41, 45.74), 1.4, 1, {
    name="MagnetSearch",
    heading=115,
    -- debugPoly=true,
    minZ=45.14,
    maxZ=46.94
}, {
    options = {
        {
            event = 'THX:Prison:MagnetSearch',
            icon = "fa-solid fa-user-secret",
            label = "Check the hole",
            item = 'magnet-stick',
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("PrisonEscape", vector3(1772.37, 2490.69, 49.67), 2.2, 1, {
    name="PrisonEscape",
    heading=30,
    -- debugPoly=true,
    minZ=48.47,
    maxZ=50.47
}, {
    options = {
        {
            event = 'THX:Prison:StartBreakOutBox2',
            icon = "fa-solid fa-user-secret",
            label = "Begin..",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("PrisonSlushy", vector3(1777.56, 2559.76, 45.67), 1, 1, {
    name="PrisonSlushy",
    heading=115,
    -- debugPoly=true,
    minZ=45.14,
    maxZ=46.94
}, {
    options = {
        {
            event = 'THX:Prison:PrisonSlushy',
            icon = "fa-solid fa-glass-water-droplet",
            label = "Make a Slushy",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("PrisonFoodSupplies", vector3(1787.02, 2564.47, 45.67), 3.0, 1, {
    name="PrisonFoodSupplies",
    heading=270,
    -- debugPoly=true,
    minZ=44.67,
    maxZ=46.87
}, {
    options = {
        {
            event = 'THX:Prison:GrabFoodSupplies',
            icon = "fa-solid fa-boxes-stacked",
            label = "Grab Some Ingredients",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("PrisonFoodPrep", vector3(1776.9, 2563.6, 45.67), 1.5, 1.5, {
    name="PrisonFoodPrep",
    heading=0,
    -- debugPoly=true,
    minZ=44.87,
    maxZ=46.47
}, {
    options = {
        {
            event = 'THX:Prison:FoodPrep',
            icon = "fa-solid fa-utensils",  
            label = "Prepare Food",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("PrisonDepositFoodPrep", vector3(1781.04, 2560.25, 45.67), 4.0, 1, {
    name="PrisonDepositFoodPrep",
    heading=270,
    -- debugPoly=true,
    minZ=44.87,
    maxZ=46.47
}, {
    options = {
        {
            event = 'THX:Prison:DepositFoodPrep',
            icon = "fa-solid fa-box",
            label = "Stock Food",
        },
    },
    distance = 1.5
})
exports[Config.Target]:AddBoxZone("PrisonStartCleanup", vector3(1773.9, 2493.44, 45.74), 1, 1, {
    name="PrisonStartCleanup",
    heading=30,
    -- debugPoly=true,
    minZ=44.74,
    maxZ=46.74
}, {
    options = {
        {
            event = 'THX:Prison:StartCleanup',
            icon = "fa-solid fa-poop",
            label = "Get to cleaning",
        },
    },
    distance = 1.5
})
    exports[Config.Target]:AddBoxZone("GuardTower5unlock", vector3(1537.67, 2585.39, 45.35), 1.4, 1, {
        name="GuardTower5unlock",
        heading=0,
        -- debugPoly=true,
        minZ=44.55,
        maxZ=46.95
    }, {
        options = {
            {
                action = function()
                    TriggerServerEvent('qb-doorlock:server:updateState', '1robbery-GuardTower5', false, false, false, true)
                end,
                icon = "fa-solid fa-user-secret",
                label = "Unlock",
                item = 'tower-keys',
            },
            {
                action = function()
                    TriggerServerEvent('qb-doorlock:server:updateState', '1robbery-GuardTower5', true, false, false, true)
                end,
                icon = "fa-solid fa-user-secret",
                label = "Lock",
                item = 'tower-keys',
            },
        },
        distance = 1.5
    })
    exports[Config.Target]:AddBoxZone("InfirmaryLab", vector3(1767.45, 2580.22, 45.73), 1.6, 1, {
        name="InfirmaryLab",
        heading=0,
        -- debugPoly=true,
        minZ=44.73,
        maxZ=47.33
    }, {
        options = {
            {
                action = function()
                    TriggerServerEvent('qb-doorlock:server:updateState', '1robbery-infirmarylab', false, false, false, true)
                end,
                icon = "fa-solid fa-user-secret",
                label = "Unlock",
                item = 'infirmary-key',
            },
            {
                action = function()
                    TriggerServerEvent('qb-doorlock:server:updateState', '1robbery-infirmarylab', true, false, false, true)
                end,
                icon = "fa-solid fa-user-secret",
                label = "Lock",
                item = 'infirmary-key',
            },
        },
        distance = 1.5
    })
    exports[Config.Target]:AddBoxZone("SecurityRoom", vector3(1772.42, 2494.87, 49.67), 1.2, 1, {
        name="SecurityRoom",
        heading=300,
        -- debugPoly=true,
        minZ=48.67,
        maxZ=51.07
    }, {
        options = {
            {
                action = function()
                    TriggerServerEvent('qb-doorlock:server:updateState', '1robbery-cameraroom1', false, false, false, true)
                end,
                icon = "fa-solid fa-user-secret",
                label = "Unlock",
                item = 'chargedphone',
            },
            {
                action = function()
                    TriggerServerEvent('qb-doorlock:server:updateState', '1robbery-cameraroom1', true, false, false, true)
                end,
                icon = "fa-solid fa-user-secret",
                label = "Lock",
                item = 'chargedphone',
            },
        },
        distance = 1.5
    })
    exports[Config.Target]:AddBoxZone("SecurityRoom2", vector3(1774.83, 2490.85, 49.67), 1.6, 1, {
        name="SecurityRoom2",
        heading=300,
        -- debugPoly=true,
        minZ=48.67,
        maxZ=51.27
    }, {
        options = {
            {
                action = function()
                    TriggerServerEvent('qb-doorlock:server:updateState', '1robbery-cameraroom2', false, false, false, true)
                end,
                icon = "fa-solid fa-user-secret",
                label = "Unlock",
                item = 'chargedphone',
            },
            {
                action = function()
                    TriggerServerEvent('qb-doorlock:server:updateState', '1robbery-cameraroom2', true, false, false, true)
                end,
                icon = "fa-solid fa-user-secret",
                label = "Lock",
                item = 'chargedphone',
            },
        },
        distance = 1.5
    })
    -- Chairs
    for k, v in pairs(Config.PrisonChair) do
        exports[Config.Target]:AddBoxZone("PrisonChair"..k, v.location, v.width, v.height, { 
            name="PrisonChair"..k, 
            heading = v.heading, 
            -- debugPoly=true,
            minZ = v.minZ, 
            maxZ = v.maxZ, 
        }, { 
            options = { 
                { 
                    action = function()
                        QBCore.Functions.TriggerCallback('Thx:SVCB:SearchChair', function(bool)
                            if bool then
                                if IsInPrison() then
                                    local Coords = GetEntityCoords(PlayerPedId())
                                    TaskStartScenarioAtPosition(PlayerPedId(), "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", v.location.x, v.location.y, v.location.z-0.5, v.heading, 0, 1, true)
                                    TriggerServerEvent("Thx:server:ChairSearchCooldown", k)
                                    Wait(800)
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                                    local random = math.random(1,12)
                                    QBCore.Functions.Progressbar("search_chair", 'Searching...', 7000, false, true, {
                                        disableMovement = true,
                                        disableCarMovement = true,
                                        disableMouse = true,
                                        disableCombat = true,
                                    }, {}, {}, {}, function() -- Done
                                        FreezeEntityPosition(PlayerPedId(), false)
                                        ClearPedTasks(PlayerPedId())
                                        SetEntityCoords(PlayerPedId(), Coords.x, Coords.y, Coords.z-1)
                                        if random == 12 then
                                            local item = 'magnet-stick'
                                            TriggerServerEvent("Thx:Server:ItemStuff", true, item)
                                        else
                                            TriggerEvent("ThxPrisonNotify",Translation.success.not_chair_searched, 'error')
                                        end
                                    end, function() -- Cancel
                                        FreezeEntityPosition(PlayerPedId(), false)
                                        ClearPedTasks(PlayerPedId())
                                        TriggerEvent("ThxPrisonNotify",'canceled', "error")
                                        SetEntityCoords(PlayerPedId(), Coords.x, Coords.y, Coords.z-1)
                                    end)
                                end
                            else
                                TriggerEvent("ThxPrisonNotify",Translation.error.chair_searched, 'error')
                            end
                        end, k)
                    end,
                    icon = "fas fa-chair", 
                    label = "Sit Down",  
                }, 
            },
            distance = v.distance
        })
    end
end)
RegisterNetEvent("Thx:client:CheesburgerFreddy", function(item)
    if not CheesburgerFreddyCooldown then
        if IsInPrison() then
            QBCore.Functions.Progressbar("pickup_sla", "It's on me..", 2500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_ped_interaction",
                anim = "handshake_guy_a",
                flags = 8,
            }, {}, {}, function() -- Done
                if item == 'burger-bleeder' then
                    TriggerEvent("Thx:client:CheesburgerFreddyCooldown")
                    TriggerServerEvent("Thx:Server:ItemStuff", true, item)
                    TriggerEvent("ThxPrisonNotify","Remember Cheesburger Freddy treats you right..", "success")
                end
            end, function()
                TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
            end)
        end
    else
        TriggerEvent("ThxPrisonNotify",Translation.error.Freffy_cooldown, "error")
    end
end)
RegisterNetEvent("Thx:client:CheesburgerFreddyCooldown", function()
    CheesburgerFreddyCooldown = true
	SetTimeout(Config.ChairSearchCooldown * 60000, function()
		CheesburgerFreddyCooldown = false
	end)
end)
RegisterNetEvent("Thx:client:InfirmaryCooldown", function()
    InfirmaryCooldown = true
	SetTimeout(120000, function()
		InfirmaryCooldown = false
	end)
end)
RegisterNetEvent("Thx:client:InfirmaryCooldown2", function()
    InfirmaryCooldown2 = true
	SetTimeout(120000, function()
		InfirmaryCooldown2 = false
	end)
end)

RegisterNetEvent('Thx:client:CheesburgerFreddyMenu', function()
    if IsInPrison() then
        local menu = {
            {
                header = 'Cheesburger Freddy',
                params = {
                    event = " ",
                }
            },
        }
        for k, v in pairs(Config.FreddyMenu) do
            menu[#menu+1] = {
                header = QBCore.Shared.Items[v.item]["label"],
                icon = "fa-solid fa-clock",
                txt = v.description,
                params = {
                    event = "Thx:client:CheesburgerFreddy",
                    args = v.item,
                }
            }
        end
        exports[Config.Menu]:openMenu(menu)
    end
end)
RegisterNetEvent("THX:Prison:PrisonBitch", function(item)
    QBCore.Functions.TriggerCallback('THX:Prison:HasAssMeth', function(bool)
        if bool then
            QBCore.Functions.Progressbar("pickup_sla", "Making a trade..", 1500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_ped_interaction",
                anim = "handshake_guy_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent("Thx:Server:ItemStuff", true, item)
                TriggerEvent("ThxPrisonNotify","Enjoy..", "success")
            end, function()
                local item = 'ass-meth'
                TriggerServerEvent("Thx:Server:ItemStuff", true, item)
                TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
            end)
        end
    end)
end)
-- RegisterCommand("assmeth", function()
--         TriggerEvent('THX:Prison:CookAssMeth')
        
--     end)
RegisterNetEvent("THX:Prison:CookAssMeth", function(item)
    if IsInPrison() then
        QBCore.Functions.TriggerCallback('THX:Server:CookAssMeth', function(bool)
            if bool then
                QBCore.Functions.Progressbar("pickup_sla", "Cooking some ass..", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                    anim = "machinic_loop_mechandplayer",
                    flags = 8,
                }, {}, {}, function() -- Done
                    local item = 'ass-meth'
                    TriggerServerEvent("Thx:Server:ItemStuff", true, item, 5)
                    TriggerEvent("ThxPrisonNotify","Enjoy your Ass Meth..", "success")
                    ClearPedTasks(PlayerPedId())
                end, function()
                    TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                end)
            end
        end)
    end 
end)
-- RegisterCommand("search",function()
-- TriggerEvent('THX:Prison:SearchLab1')
-- end)
-- RegisterCommand("search2",function()
--     TriggerEvent('THX:Prison:SearchLab2')
--     end)
RegisterNetEvent("THX:Prison:SearchLab1", function()
    if not InfirmaryCooldown then
        if IsInPrison() then
            QBCore.Functions.Progressbar("pickup_sla", "Searching the cabinets", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                anim = "machinic_loop_mechandplayer",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerEvent("Thx:client:InfirmaryCooldown")
                local item = 'nailpolish-remover'
                TriggerServerEvent("Thx:Server:ItemStuff", true, item, math.random(1,4))
                local item2 = 'prison-ephedrine'
                TriggerServerEvent("Thx:Server:ItemStuff", true, item2, math.random(1,4))
                TriggerEvent("ThxPrisonNotify","These could be usefull.", "success")
                ClearPedTasks(PlayerPedId())
            end, function()
                TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
            end)
        end
    else
        TriggerEvent("ThxPrisonNotify","You already wiped these cabinets!", "error")
    end
end)
RegisterNetEvent("THX:Prison:SearchLab2", function()
    if not InfirmaryCooldown2 then
        if IsInPrison() then
            QBCore.Functions.Progressbar("pickup_sla", "Searching the cabinets", 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "friends@frj@ig_1",
                anim = "wave_e",
                flags = 1,
            }, {}, {}, function() -- Done
                TriggerEvent("Thx:client:InfirmaryCooldown2")
                local item = 'sudafed'
                TriggerServerEvent("Thx:Server:ItemStuff", true, item, math.random(1,4))
                local item2 = 'prison-baggy'
                TriggerServerEvent("Thx:Server:ItemStuff", true, item2, math.random(1,4))
                TriggerEvent("ThxPrisonNotify","These could be usefull.", "success")
                ClearPedTasks(PlayerPedId())
            end, function()
                TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
            end)
        end
    else
        TriggerEvent("ThxPrisonNotify","You already wiped these cabinets!", "error")
    end
end)
RegisterNetEvent("THX:Prison:MagnetSearch", function(item)
    if IsInPrison() then
        QBCore.Functions.Progressbar("pickup_sla", "You prod the magnet into the gap..", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "mp_arresting",
            anim = "a_uncuff",
            flags = 1,
        }, {}, {}, function() -- Done
            local item = 'tower-keys'
            TriggerServerEvent("Thx:Server:ItemStuff", true, item)
            local item2 = 'magnet-stick'
            TriggerServerEvent("Thx:Server:ItemStuff", false, item2)
            TriggerEvent("ThxPrisonNotify","You dropped the magnet, but were able to find these..", "success")
            ClearPedTasks(PlayerPedId())
        end, function()
            TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
        end)
    end
end)
RegisterNetEvent('Thx:client:PrisonBitch', function()
    if IsInPrison() then
        local menu = {
            {
                header = 'Prison Shop',
                params = {
                    event = " ",
                }
            },
        }
        for k, v in pairs(Config.PrisonBitchMenu) do
            menu[#menu+1] = {
                header = QBCore.Shared.Items[v.item]["label"],
                icon = "fa-solid fa-clock",
                txt = v.description,
                params = {
                    event = "THX:Prison:PrisonBitch",
                    args = v.item,
                }
            }
        end
        exports[Config.Menu]:openMenu(menu)
    end
end)
local Intower = false
local function CreateGuardTowerZone(zones, name)
    local zone = PolyZone:Create(zones['Zone']['Shape'], {  -- create the zone
        name= name,
        minZ = zones['minZ'],
        maxZ = zones['maxZ'],
        debugPoly = Config.Debug
    })
    zone:onPlayerInOut(function(isPointInside)
        if isPointInside then
            if zone.name == 'Tower1' then
                Intower = true
                print'true'
                TriggerEvent("THX:client:BeginInTowerLoop")
            end
        else
            if zone.name == 'Tower1'then
                if Intower then
                    print'false'
                    SetPedMaxMoveBlendRatio(PlayerPedId(), 1.0)
                    ResetPedMovementClipset(PlayerPedId(), 0.55)
                    ResetPedStrafeClipset(PlayerPedId())
                    SetPedCanPlayAmbientAnims(PlayerPedId(), true)
                    SetPedCanPlayAmbientBaseAnims(PlayerPedId(), true)
                    ResetPedWeaponMovementClipset(PlayerPedId())
                    Wait(500)
                    TriggerServerEvent('qb-walkstyles:server:walkstyles', 'get')
                    Intower = false
                end
            end
        end
    end)
end
for k, v in pairs(Config.TowerZone) do
    CreateGuardTowerZone(v, k)
end
RegisterNetEvent("THX:client:BeginInTowerLoop", function()
    while true do
        Wait(5)
        if Intower then
            SetPedUsingActionMode(PlayerPedId(), false, -1, "DEFAULT_ACTION")
            SetPedMovementClipset(PlayerPedId(), 'move_ped_crouched', 0.55)
            SetPedStrafeClipset(PlayerPedId(), 'move_ped_crouched_strafing') -- it force be on third person if not player will freeze but this func make player can shoot with good anim on crouch if someone know how to fix this make request :D
            SetWeaponAnimationOverride(PlayerPedId(), "Ballistic")
            DisableControlAction(0, 24, true) -- Attack
			DisableControlAction(0, 257, true) -- Attack 2
            DisableControlAction(0, 21,true) -- disable sprint
			DisableControlAction(0, 22, true) -- Jump
            DisableControlAction(0, 25, true) -- Aim
			DisableControlAction(0, 263, true) -- Melee Attack 1
			DisableControlAction(2, 36, true) -- Disable going stealth
	    	EnableControlAction(0, 249, true) -- Added for talking while cuffed
            EnableControlAction(0, 46, true)  -- Added for talking while cuffed
            local distance = #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(PrisonTowerGuardMan))
            if distance <= 3.4 then
                print'true'
                SetEntityInvincible(PrisonTowerGuardMan, false)
                FreezeEntityPosition(PrisonTowerGuardMan, false)
                TaskTurnPedToFaceEntity(PrisonTowerGuardMan, PlayerPedId(), 1000)
                ClearPedTasks(PrisonTowerGuardMan)
                GiveWeaponToPed(PrisonTowerGuardMan, GetHashKey('weapon_carbinerifle'), 0, false, false)
                SetPedAmmo(PrisonTowerGuardMan, GetHashKey('weapon_carbinerifle'), 1000)
                SetCurrentPedWeapon(PrisonTowerGuardMan, GetHashKey('weapon_carbinerifle'), true)
                TaskCombatPed(PrisonTowerGuardMan, PlayerPedId(),0, 16)
                Wait(3000)
                exports[Config.Target]:AddTargetModel(GetEntityModel(PrisonTowerGuardMan), {
                    options = {
                        {
                            icon = 'fa-solid fa-capsules',
                            label = 'Loot Guard',
                            action = function()
                                SetEntityMaxSpeed(PlayerPedId(), 5.5)
                                exports[Config.Target]:RemoveTargetModel(GetEntityModel(PrisonTowerGuardMan), 'Loot Guard')
                                local player = PlayerPedId()
                                RequestAnimDict("pickup_object")
                                while not HasAnimDictLoaded("pickup_object") do
                                    Wait(0)
                                end
                                TaskPlayAnim(player, "pickup_object", "pickup_low", 8.0, -8.0, -1, 1, 0, false, false, false)
                                Wait(2000)
                                ClearPedTasks(player)
                                local item = 'radio'
                                TriggerServerEvent("Thx:Server:ItemStuff", true, item)
                                Wait(500)
                                local item2 = 'prison-lighter'
                                TriggerServerEvent("Thx:Server:ItemStuff", true, item2)
                                Wait(500)
                                local item3 = 'infirmary-key'
                                TriggerServerEvent("Thx:Server:ItemStuff", true, item3)
                                Wait(500)
                                local item4 = 'charging-cable'
                                TriggerServerEvent("Thx:Server:ItemStuff", true, item4)
                            end,
                        }
                    },
                    distance = 2.5
                })
                break
            end
        else
            break
        end
     end
end)
-- RegisterCommand("slushy",function()
-- TriggerEvent('THX:Prison:PrisonSlushy')
-- end)
RegisterNetEvent("THX:Prison:PrisonSlushy", function(item)
    if IsInPrison() then
        TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
        exports[Config.CircleMiniGameName]:Circle(function(success)
            if success then
                local item = 'slushy'
                TriggerServerEvent("Thx:Server:ItemStuff", true, item)
                TriggerEvent("ThxPrisonNotify","You made a slushy..", "success")
                ClearPedTasks(PlayerPedId())
            else
                ClearPedTasks(PlayerPedId())
                print("fail")
            end
        end, 5, 11) -- NumberOfCircles, MS 
    end
end)
RegisterNetEvent("THX:client:BreakoutZone", function(item)
    exports[Config.Target]:AddBoxZone("PrisonBreakBox", vector3(1883.96, 2705.75, 45.84), 3, 3, {
        name="PrisonBreakBox",
        heading=25,
        -- debugPoly=true,
        minZ=44.84,
        maxZ=48.84
    }, {
        options = {
            {
                event = 'THX:Prison:StartBreakOutBox',
                icon = "fa-solid fa-user-secret",
                label = "Activate Virus..",
            },
        },
        distance = 1.5
    })
end)
-- RegisterCommand("breakout2",function()
-- TriggerEvent('THX:Prison:StartBreakOutBox')
-- end)
RegisterNetEvent("THX:Prison:StartBreakOutBox", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    exports[Config.VarHackName]:VarHack(function(success)
        if success then
            print("success")
            TriggerServerEvent("prison:server:SecurityLockdown")
            TriggerEvent("prison:client:PrisonBreakAlert")
            TriggerServerEvent("prison:server:SuccesPrisonBreak")
            ClearPedTasks(PlayerPedId())
            local DoorLocks = exports[Config.DoorLockScript]:GetDoorLockConfigs()
            for k, _ in pairs(DoorLocks) do
                if QBCore.Shared.SplitStr(k, "-")[1] == "prison" then
                    TriggerServerEvent('qb-doorlock:server:updateState', k, false, false, false, true)
                end
            end
        else
            ClearPedTasks(PlayerPedId())
            print("fail")
        end
    end, 6, 4) -- Number of Blocks, Time (seconds) 
end)
-- RegisterCommand("breakout",function()
-- TriggerEvent('THX:Prison:StartBreakOutBox2')
-- end)
RegisterNetEvent("THX:Prison:StartBreakOutBox2", function()
    QBCore.Functions.TriggerCallback('THX:Server:ChargedPhoneBreakout', function(bool)
        if bool then
            FreezeEntityPosition(PlayerPedId(), true)
                Wait(100)
                TriggerEvent('animations:client:EmoteCommandStart', {"type"})
                QBCore.Functions.Progressbar("pickup_sla", "Hacking into the mainframe..", 4500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    ClearPedTasks(PlayerPedId())
                end, function()
                    TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                end)
                Wait(5000)
                TriggerEvent('animations:client:EmoteCommandStart', {"phone"})
                QBCore.Functions.Progressbar("pickup_sla", "Implanting network virus..", 3500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    ClearPedTasks(PlayerPedId())
                end, function()
                    TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                end)
                Wait(5000)
                TriggerEvent('animations:client:EmoteCommandStart', {"type"})
                QBCore.Functions.Progressbar("pickup_sla", "I'm in..", 3500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    ClearPedTasks(PlayerPedId())
                end, function()
                    TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                end)
                Wait(3000)
                TriggerServerEvent('Thx:server:BreakoutZone')
                TriggerEvent("ThxPrisonNotify","I need someone outside to get to that electrical box..", "success")  
            FreezeEntityPosition(PlayerPedId(), false)
        end
    end)
end)

RegisterNetEvent("THX:Prison:PhoneCharging", function()
    if IsInPrison() then
        QBCore.Functions.TriggerCallback('THX:Server:ChargePhone', function(bool)
            if bool then
                QBCore.Functions.Progressbar("pickup_sla", "You charge your ill-gotten smartphone..", 15000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "cellphone@",
                    anim = "cellphone_text_read_base",
                    flags = 1,
                }, {}, {}, function() -- Done
                    local item = 'chargedphone'
                    TriggerServerEvent("Thx:Server:ItemStuff", true, item)
                    local item2 = 'deadphone'
                    TriggerServerEvent("Thx:Server:ItemStuff", false, item2)
                    local item3 = 'charging-brick'
                    TriggerServerEvent("Thx:Server:ItemStuff", false, item3)
                    local item4 = 'charging-cable'
                    TriggerServerEvent("Thx:Server:ItemStuff", false, item4)
                    TriggerEvent("ThxPrisonNotify","You charged the phone", "success")
                    ClearPedTasks(PlayerPedId())
                end, function()
                    TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                end)
            else
                TriggerEvent("ThxPrisonNotify","You are missing things.", "success")  
            end 
        end)
    end
end)

    -- Cafeteria Cleaning
    for k, v in pairs(Config.CafeteriaTables) do
        exports[Config.Target]:AddBoxZone("CafeteriaTable"..k, v.location, v.width, v.height, { 
            name="CafeteriaTable"..k, 
            heading = v.heading, 
            -- debugPoly=true,
            minZ = v.minZ, 
            maxZ = v.maxZ, 
        }, { 
            options = { 
                { 
                    action = function()
                        print(k)
                        QBCore.Functions.TriggerCallback('Thx:SVCB:CleanTables', function(bool)
                            print(bool)
                            if bool then
                                if IsInPrison() then
                                    local Coords = GetEntityCoords(PlayerPedId())
                                    -- TaskStartScenarioAtPosition(PlayerPedId(), "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", v.location.x, v.location.y, v.location.z-0.5, v.heading, 0, 1, true)
                                    TriggerServerEvent("Thx:server:CleanTableCooldown", k)
                                    Wait(100)
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    TriggerEvent('animations:client:EmoteCommandStart', {"clean"})
                                    QBCore.Functions.Progressbar("search_chair", 'Scrubbing down the table...', 5000, false, true, {
                                        disableMovement = true,
                                        disableCarMovement = true,
                                        disableMouse = false,
                                        disableCombat = true,
                                    }, {}, {}, {}, function() -- Done
                                        FreezeEntityPosition(PlayerPedId(), false)
                                        TriggerEvent("ThxPrisonNotify",Translation.success.table_clean_success, 'success')
                                        PrisonWorkSuccess()
                                        ClearPedTasks(PlayerPedId())
                                        SetEntityCoords(PlayerPedId(), Coords.x, Coords.y, Coords.z-1)
                                        FreezeEntityPosition(PlayerPedId(), false)
                                        ClearPedTasks(PlayerPedId())
                                        SetEntityCoords(PlayerPedId(), Coords.x, Coords.y, Coords.z-1)
                                        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    end, function()
                                        TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                                    end)
                                end
                            else
                                TriggerEvent("ThxPrisonNotify",Translation.error.table_clean, 'error')
                            end
                        end, k)
                    end,
                    icon = "fas fa-solid fa-soap", 
                    label = "Clean",  
                }, 
            },
            distance = v.distance
        })
    end

-- Kitchen Work
RegisterNetEvent("THX:Prison:DepositFoodPrep", function()
    if IsInPrison() then
        QBCore.Functions.TriggerCallback('THX:Server:DepositFoodPrep', function(bool)
            if bool then
                QBCore.Functions.Progressbar("pickup_sla", "You stock the prison shop..", 2000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mini@repair",
                    anim = "fixing_a_ped",
                    flags = 1,
                }, {}, {}, function() -- Done
                    local item = 'prison-foodprep'
                    TriggerServerEvent("Thx:Server:ItemStuff", false, item)
                    TriggerEvent("ThxPrisonNotify","Working hard or hardly working?", "success")
                    PrisonWorkSuccess()
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent("Thx:Server:UpdateFoodItemsAmount", 'add')
                end, function()
                    TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                end)
            else
                TriggerEvent("ThxPrisonNotify","You got nothing.", "error")  
            end 
        end)
    end
end)
RegisterNetEvent("THX:Prison:FoodPrep", function()
    if IsInPrison() then
        QBCore.Functions.TriggerCallback('THX:Server:FoodPrep', function(bool)
            if bool then
                QBCore.Functions.Progressbar("pickup_sla", "You prepare some food..", 5000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "anim@heists@prison_heiststation@cop_reactions",
                    anim = "cop_b_idle",
                    flags = 1,
                }, {}, {}, function() -- Done
                    local item = 'prison-foodprep'
                    TriggerServerEvent("Thx:Server:ItemStuff", true, item)
                    local item2 = 'prison-foodsupplies'
                    TriggerServerEvent("Thx:Server:ItemStuff", false, item2)
                    TriggerEvent("ThxPrisonNotify","Working hard or hardly working?", "success")
                    ClearPedTasks(PlayerPedId())
                end, function()
                    TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                end)
            else
                TriggerEvent("ThxPrisonNotify","You got nothing.", "error")  
            end 
        end)
    end
end)
RegisterNetEvent("THX:Prison:GrabFoodSupplies", function()
    if IsInPrison() then
        QBCore.Functions.Progressbar("pickup_sla", "You are grabbing things to cook..", 3500, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "misscarsteal3pullover",
            anim = "pull_over_right",
            flags = 1,
        }, {}, {}, function() -- Done
            local item = 'prison-foodsupplies'
            TriggerServerEvent("Thx:Server:ItemStuff", true, item, math.random(1, 2))
            TriggerEvent("ThxPrisonNotify","Nothing better to do..", "success")
            ClearPedTasks(PlayerPedId())
        end, function()
            TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
        end)
    else
        TriggerEvent("ThxPrisonNotify","You shouldn't be in here..", "error")  
    end 
end)

-- Cell Cleanup Job

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for k, v in pairs(Config.CleanupLocations) do
            if Config.CleanupLocations[k].name then
                if DoesEntityExist(Config.CleanupLocations[k].name) then
                    DeleteEntity(Config.CleanupLocations[k].name)
                end
            end
        end
    end
end)

RegisterNetEvent("THX:Prison:StartCleanup", function()
    if IsInPrison() then
        TriggerEvent("ThxPrisonNotify","Check the cells for any messes..", "success")
        for k, v in pairs(Config.CleanupLocations) do
            RequestModel(GetHashKey(Config.CleanupLocations[k].prop))
            while not HasModelLoaded(GetHashKey(Config.CleanupLocations[k].prop)) do Wait(1) end
            Config.CleanupLocations[k].name = CreateObject(GetHashKey(Config.CleanupLocations[k].prop),Config.CleanupLocations[k].vec.x, Config.CleanupLocations[k].vec.y, Config.CleanupLocations[k].vec.z,false,false,false)
            SetEntityHeading(Config.CleanupLocations[k].name,GetEntityHeading(Config.CleanupLocations[k].name)-Config.CleanupLocations[k].vec.w)
            FreezeEntityPosition(Config.CleanupLocations[k].name, true)
            exports[Config.Target]:AddTargetModel(Config.CleanupLocations[k].prop, {
                options = {
                    { 
                        type = "client",
                        action = function(entity)
                            bag = CreateObject(GetHashKey('p_poly_bag_01_s'), 0, 0, 0, true)
                            AttachEntityToEntity(bag, PlayerPedId(), GetPedBoneIndex(PlayerPedId(),  57005), 0.13, 0.02, 0.0, -90.0, 0, 0, 1, 1, 0, 1, 0, 1)
                            TriggerEvent('animations:client:EmoteCommandStart', {"medic"})
                            TriggerEvent('animations:client:EmoteCommandStart', {"type"})
                            QBCore.Functions.Progressbar("pickup_sla", "Cleaning up shit..", 3000, false, true, {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            }, {}, {}, {}, function() -- Done
                                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                DeleteEntity(entity)
                                DeleteEntity(bag)
                                ClearPedTasks(PlayerPedId())
                            end, function()
                                TriggerEvent("ThxPrisonNotify","Cancelled..", "error")
                            end)
                            PrisonWorkSuccess()
                        end,
                        icon = "fa-solid fa-poop",
                        label = "Butt Mess",
                    },
                },
                distance = 3.0 
            })
        end
    end 
end)


-- EVERYTHING BELOW THIS IS AIRDDROP RELATED
local pilot, aircraft, parachute, crate, pickup, blip, soundID
local currentData = nil
local requiredModels = {"p_cargo_chute_s", "ex_prop_adv_case_sm", "cuban800", "s_m_m_pilot_02", "prop_box_wood02a_pu"} -- parachute, pickup case, plane, pilot, crate

local function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(50)
    end
end
RegisterNetEvent("Thx:client:UseAirDrop", function()
    print(butt)
    local item = 'care-package'
    TriggerServerEvent("Thx:Server:ItemStuff", false, item)
    loadAnimDict('amb@medic@standing@kneel@base')
    TaskPlayAnim(PlayerPedId(), 'amb@medic@standing@kneel@base' ,'base' ,8.0, -8.0, -1, 1, 0, false, false, false )
    loadAnimDict('anim@gangops@facility@servers@bodysearch@')
    TaskPlayAnim(PlayerPedId(), 'anim@gangops@facility@servers@bodysearch@' ,'player_search' ,8.0, -8.0, -1, 48, 0, false, false, false )
    RequestWeaponAsset(GetHashKey("weapon_flare")) -- flare won't spawn later in the script if we don't request it right now
    while not HasWeaponAssetLoaded(GetHashKey("weapon_flare")) do
        Wait(0)
    end
    QBCore.Functions.Progressbar("butchering", 'Placing airdrop down', 6000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        local coords = GetEntityCoords(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        local forward = GetEntityForwardVector(PlayerPedId())
        local x, y, z = table.unpack(coords + forward * 0.5)
        local playerCoords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 10.0, 0.0) -- ISN'T THIS A TABLE ALREADY?
        ShootSingleBulletBetweenCoords(x, y, z-0.7, x, y, z-1, 0, false, GetHashKey("weapon_flare"), 0, true, false, -1.0)
        TriggerEvent("crateDrop", false, 400.0, {["x"] = playerCoords.x, ["y"] = playerCoords.y, ["z"] = playerCoords.z})
        RemoveWeaponAsset(GetHashKey("weapon_flare"))
    end, function()
        QBCore.Functions.Notify("canceled!", "error")
    end)
end)

RegisterNetEvent("Pug:client:PickupAirDropPackage", function()
    exports[Config.Target]:RemoveTargetModel('xm_prop_vancrate_01a', 'Grab Loot')
    loadAnimDict('amb@medic@standing@kneel@base')
    TaskPlayAnim(PlayerPedId(), 'amb@medic@standing@kneel@base' ,'base' ,8.0, -8.0, -1, 1, 0, false, false, false )
    loadAnimDict('anim@gangops@facility@servers@bodysearch@')
    TaskPlayAnim(PlayerPedId(), 'anim@gangops@facility@servers@bodysearch@' ,'player_search' ,8.0, -8.0, -1, 48, 0, false, false, false )
    QBCore.Functions.Progressbar("butchering", 'Looting Supply Drop', math.random(8000,10000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        local coords = GetEntityCoords(PlayerPedId())
        local object = GetClosestObjectOfType(coords, 3.0, GetHashKey('xm_prop_vancrate_01a'), false, false, false)
        if DoesEntityExist(object) then
            local objCoords = GetEntityCoords(object)
            local obj = NetworkGetEntityFromNetworkId(currentData)
            NetworkRequestControlOfEntity(obj)
            SetEntityAsMissionEntity(obj,false,true)
            DeleteEntity(obj)
            DeleteObject(obj)
            local item = 'sudafed'
            TriggerServerEvent("Thx:Server:ItemStuff", true, item, math.random(4,7))
            local item2 = 'nailpolish-remover'
            TriggerServerEvent("Thx:Server:ItemStuff", true, item2, math.random(4,7))
            Wait(3000)
            local item3 = 'prison-ephedrine'
            TriggerServerEvent("Thx:Server:ItemStuff", true, item3, math.random(4,7))
            local item4 = 'prison-baggy'
            TriggerServerEvent("Thx:Server:ItemStuff", true, item4, math.random(4,7))
        end
    end, function()
        QBCore.Functions.Notify("canceled!", "error")
    end)
end)

RegisterNetEvent("crateDrop")
AddEventHandler("crateDrop", function(roofCheck, planeSpawnDistance, dropCoords) -- all of the error checking is done here before passing the parameters to the function itself
    Citizen.CreateThread(function()
        if dropCoords.x and dropCoords.y and dropCoords.z and tonumber(dropCoords.x) and tonumber(dropCoords.y) and tonumber(dropCoords.z) then
            -- print(("DROP COORDS: success, X = %.4f; Y = %.4f; Z = %.4f"):format(dropCoords.x, dropCoords.y, dropCoords.z))
        else
            dropCoords = {0.0, 0.0, 72.0}
            -- print("DROP COORDS: fail, defaulting to X = 0; Y = 0")
        end

        if roofCheck and roofCheck ~= "false" then  -- if roofCheck is not false then a check will be performed if a plane can drop a crate to the specified location before actually spawning a plane, if it can't, function won't be called
            -- print("ROOFCHECK: true")
            local ray = StartShapeTestRay(vector3(dropCoords.x, dropCoords.y, dropCoords.z) + vector3(0.0, 0.0, 500.0), vector3(dropCoords.x, dropCoords.y, dropCoords.z), -1, -1, 0)
            local _, hit, impactCoords = GetShapeTestResult(ray)
            -- print("HIT: " .. hit)
            -- print(("IMPACT COORDS: X = %.4f; Y = %.4f; Z = %.4f"):format(impactCoords.x, impactCoords.y, impactCoords.z))
            -- print("DISTANCE BETWEEN DROP AND IMPACT COORDS: " ..  #(vector3(dropCoords.x, dropCoords.y, dropCoords.z) - vector3(impactCoords)))
            if hit == 0 or (hit == 1 and #(vector3(dropCoords.x, dropCoords.y, dropCoords.z) - vector3(impactCoords)) < 10.0) then -- ± 10 units
                -- print("ROOFCHECK: success")
                CrateDrop(planeSpawnDistance, dropCoords)
            else
                -- print("ROOFCHECK: fail")
                return
            end
        else
            -- print("ROOFCHECK: false")
            CrateDrop(planeSpawnDistance, dropCoords)
        end

    end)
end)

function CrateDrop(planeSpawnDistance, dropCoords)
    Citizen.CreateThread(function()

        for i = 1, #requiredModels do
            RequestModel(GetHashKey(requiredModels[i]))
            while not HasModelLoaded(GetHashKey(requiredModels[i])) do
                Wait(0)
            end
        end

        --[[
        RequestAnimDict("P_cargo_chute_S")
        while not HasAnimDictLoaded("P_cargo_chute_S") do -- wasn't able to get animations working
            Wait(0)
        end
        ]]

        RequestWeaponAsset(GetHashKey("weapon_flare")) -- flare won't spawn later in the script if we don't request it right now
        while not HasWeaponAssetLoaded(GetHashKey("weapon_flare")) do
            Wait(0)
        end

        local rHeading = math.random(0, 360) + 0.0
        local planeSpawnDistance = (planeSpawnDistance and tonumber(planeSpawnDistance) + 0.0) or 400.0 -- this defines how far away the plane is spawned
        local theta = (rHeading / 180.0) * 3.14
        local rPlaneSpawn = vector3(dropCoords.x, dropCoords.y, dropCoords.z) - vector3(math.cos(theta) * planeSpawnDistance, math.sin(theta) * planeSpawnDistance, -500.0) -- the plane is spawned at

        -- print(("PLANE COORDS: X = %.4f; Y = %.4f; Z = %.4f"):format(rPlaneSpawn.x, rPlaneSpawn.y, rPlaneSpawn.z))
        -- print("PLANE SPAWN DISTANCE: " .. #(vector2(rPlaneSpawn.x, rPlaneSpawn.y) - vector2(dropCoords.x, dropCoords.y)))

        local dx = dropCoords.x - rPlaneSpawn.x
        local dy = dropCoords.y - rPlaneSpawn.y
        local heading = GetHeadingFromVector_2d(dx, dy) -- determine plane heading from coordinates

        aircraft = CreateVehicle(GetHashKey("cuban800"), rPlaneSpawn, heading, true, true)
        SetEntityHeading(aircraft, heading)
        SetVehicleDoorsLocked(aircraft, 2) -- lock the doors so pirates don't get in
        SetEntityDynamic(aircraft, true)
        ActivatePhysics(aircraft)
        SetVehicleForwardSpeed(aircraft, 60.0)
        SetHeliBladesFullSpeed(aircraft) -- works for planes I guess
        SetVehicleEngineOn(aircraft, true, true, false)
        ControlLandingGear(aircraft, 3) -- retract the landing gear
        OpenBombBayDoors(aircraft) -- opens the hatch below the plane for added realism
        SetEntityProofs(aircraft, true, false, true, false, false, false, false, false)

        pilot = CreatePedInsideVehicle(aircraft, 1, GetHashKey("s_m_m_pilot_02"), -1, true, true)
        SetBlockingOfNonTemporaryEvents(pilot, true) -- ignore explosions and other shocking events
        SetPedRandomComponentVariation(pilot, false)
        SetPedKeepTask(pilot, true)
        SetPlaneMinHeightAboveTerrain(aircraft, 50) -- the plane shouldn't dip below the defined altitude

        TaskVehicleDriveToCoord(pilot, aircraft, vector3(dropCoords.x, dropCoords.y, dropCoords.z) + vector3(0.0, 0.0, 500.0), 60.0, 0, GetHashKey("cuban800"), 262144, 15.0, -1.0) -- to the dropsite, could be replaced with a task sequence

        local droparea = vector2(dropCoords.x, dropCoords.y)
        local planeLocation = vector2(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y)
        while not IsEntityDead(pilot) and #(planeLocation - droparea) > 5.0 do -- wait for when the plane reaches the dropCoords ± 5 units
            Wait(100)
            planeLocation = vector2(GetEntityCoords(aircraft).x, GetEntityCoords(aircraft).y) -- update plane coords for the loop
        end

        if IsEntityDead(pilot) then -- I think this will end the script if the pilot dies, no idea how to return works
            print("PILOT: dead")
            return
        end

        TaskVehicleDriveToCoord(pilot, aircraft, 0.0, 0.0, 500.0, 60.0, 0, GetHashKey("cuban800"), 262144, -1.0, -1.0) -- disposing of the plane like Rockstar does, send it to 0; 0 coords with -1.0 stop range, so the plane won't be able to achieve its task
        SetEntityAsNoLongerNeeded(pilot) 
        SetEntityAsNoLongerNeeded(aircraft)

        local crateSpawn = vector3(dropCoords.x, dropCoords.y, GetEntityCoords(aircraft).z - 5.0) -- crate will drop to the exact position as planned, not at the plane's current position

        crate = CreateObject(GetHashKey("prop_box_wood02a_pu"), crateSpawn, true, true, true) -- a breakable crate to be spawned directly under the plane, probably could be spawned closer to the plane
        SetEntityLodDist(crate, 1000) -- so we can see it from the distance
        ActivatePhysics(crate)
        SetDamping(crate, 2, 0.1) -- no idea but Rockstar uses it
        SetEntityVelocity(crate, 0.0, 0.0, -0.2) -- I think this makes the crate drop down, not sure if it's needed as many times in the script as I'm using

        parachute = CreateObject(GetHashKey("p_cargo_chute_s"), crateSpawn, true, true, true) -- create the parachute for the crate, location isn't too important as it'll be later attached properly
        SetEntityLodDist(parachute, 1000)
        SetEntityVelocity(parachute, 0.0, 0.0, -0.2)

        -- PlayEntityAnim(parachute, "P_cargo_chute_S_deploy", "P_cargo_chute_S", 1000.0, false, false, false, 0, 0)
        -- ForceEntityAiAndAnimationUpdate(parachute)

        pickup = CreateObject(GetHashKey("xm_prop_vancrate_01a"), crateSpawn, true, true, true)  -- create the pickup itself, location isn't too important as it'll be later attached properly
        currentData = NetworkGetNetworkIdFromEntity(pickup)
        exports[Config.Target]:AddTargetModel("xm_prop_vancrate_01a", {
            options = {
                {
                    event = "Pug:client:PickupAirDropPackage",
                    icon = "fas fa-box",
                    label = "Grab Loot",
                },

            },
            distance = 1.0
        })
        ActivatePhysics(pickup)
        SetDamping(pickup, 2, 0.0245)
        SetEntityVelocity(pickup, 0.0, 0.0, -0.2)

        soundID = GetSoundId() -- we need a sound ID for calling the native below, otherwise we won't be able to stop the sound later
        PlaySoundFromEntity(soundID, "Crate_Beeps", pickup, "MP_CRATE_DROP_SOUNDS", true, 0) -- crate beep sound emitted from the pickup

        blip = AddBlipForEntity(pickup)
        SetBlipSprite(blip, 408) -- 351 or 408 are both fine, 408 is just bigger
        SetBlipNameFromTextFile(blip, "AMD_BLIPN")
        SetBlipScale(blip, 0.7)
        SetBlipColour(blip, 1)
        SetBlipAlpha(blip, 120) -- blip will be semi-transparent

        -- local crateBeacon = StartParticleFxLoopedOnEntity_2("scr_crate_drop_beacon", pickup, 0.0, 0.0, 0.2, 0.0, 0.0, 0.0, 1065353216, 0, 0, 0, 1065353216, 1065353216, 1065353216, 0)--1.0, false, false, false)
        -- SetParticleFxLoopedColour(crateBeacon, 0.8, 0.18, 0.19, false)

        AttachEntityToEntity(parachute, pickup, 0, 0.0, 0.0, 0.1, 0.0, 0.0, 0.0, false, false, false, false, 2, true) -- attach the crate to the pickup
        AttachEntityToEntity(pickup, crate, 0, 0.0, 0.0, 0.3, 0.0, 0.0, 0.0, false, false, true, false, 2, true) -- attach the pickup to the crate, doing it in any other order makes the crate drop spazz out

        while HasObjectBeenBroken(crate) == false do -- wait till the crate gets broken (probably on impact), then continue with the script
            Wait(0)
        end

        local parachuteCoords = vector3(GetEntityCoords(parachute)) -- we get the parachute dropCoords so we know where to drop the flare
        ShootSingleBulletBetweenCoords(parachuteCoords, parachuteCoords - vector3(0.0001, 0.0001, 0.0001), 0, false, GetHashKey("weapon_flare"), 0, true, false, -1.0) -- flare needs to be dropped with dropCoords like that, otherwise it remains static and won't remove itself later
        DetachEntity(parachute, true, true)
        -- SetEntityCollision(parachute, false, true) -- pointless right now but would be cool if animations would work and you'll be able to walk through the parachute while it's disappearing
        -- PlayEntityAnim(parachute, "P_cargo_chute_S_crumple", "P_cargo_chute_S", 1000.0, false, false, false, 0, 0)
        DeleteEntity(parachute)
        DetachEntity(pickup) -- will despawn on its own
        SetBlipAlpha(blip, 255) -- make the blip fully visible

        while DoesEntityExist(pickup) do -- wait till the pickup gets picked up, then the script can continue
            Wait(0)
        end

        while DoesObjectOfTypeExistAtCoords(parachuteCoords, 10.0, GetHashKey("w_am_flare"), true) do
            Wait(0)
            local prop = GetClosestObjectOfType(parachuteCoords, 10.0, GetHashKey("w_am_flare"), false, false, false)
            RemoveParticleFxFromEntity(prop)
            SetEntityAsMissionEntity(prop, true, true)
            DeleteObject(prop)
        end

        if DoesBlipExist(blip) then -- remove the blip, should get removed when the pickup gets picked up anyway, but isn't a bad idea to make sure of it
            RemoveBlip(blip)
        end

        StopSound(soundID) -- stop the crate beeping sound
        ReleaseSoundId(soundID) -- won't need this sound ID any longer

        for i = 1, #requiredModels do
            Wait(0)
            SetModelAsNoLongerNeeded(GetHashKey(requiredModels[i]))
        end

        RemoveWeaponAsset(GetHashKey("weapon_flare"))
    end)
end

AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then

        -- print("RESOURCE: stopped")

        SetEntityAsMissionEntity(pilot, false, true)
        DeleteEntity(pilot)
        SetEntityAsMissionEntity(aircraft, false, true)
        DeleteEntity(aircraft)
        DeleteEntity(parachute)
        DeleteEntity(crate)
        RemovePickup(pickup)
        RemoveBlip(blip)
        StopSound(soundID)
        ReleaseSoundId(soundID)

        for i = 1, #requiredModels do
            Wait(0)
            SetModelAsNoLongerNeeded(GetHashKey(requiredModels[i]))
        end

    end
end)


-- BELOW HERE IS MUGSHOT
local mugshotInProgress, createdCamera, MugshotArray, playerData = false, 0, {}, nil
local handle, board, board_scaleform, overlay, ped, pedcoords, x, y, z, r, suspectheading, suspectx, suspecty, suspectz, board_pos

if Config.CustomMLO then
    x = Config.MugShotCamera.x
    y = Config.MugShotCamera.y
    z = Config.MugShotCamera.z
    r = Config.MugShotCamera.r
    suspectheading = Config.MugshotSuspectHeading
    suspectx = Config.MugshotLocation.x
    suspecty = Config.MugshotLocation.y
    suspectz = Config.MugshotLocation.z
else
    x = 403.0
    y = -998.08
    z = -98.5
    r = {x = 0.0, y = 0.0, z = 359.66}
    suspectheading = 179.99
    suspectx = 403.01
    suspecty = -996.3
    suspectz = -100.0
end

local function TakeMugShot()
    exports['screenshot-basic']:requestScreenshotUpload(Config.Webhook, 'files[]', {encoding = 'jpg'}, function(data)
        local resp = json.decode(data)
        table.insert(MugshotArray, resp.attachments[1].url)
    end)
end

local function PhotoProcess(ped)
    local rotation = suspectheading
    for photo = 1, Config.Photos, 1 do
        Wait(Config.Wait)
        if photo == 1 then
            TakeMugShot()
        end
        PlaySoundFromCoord(-1, "SHUTTER_FLASH", x, y, z, "CAMERA_FLASH_SOUNDSET", true, 5, 0)
        Wait(Config.Wait)
        if photo == 2 then
            rotation = rotation + 180.0
        else
            rotation = rotation - 90.0
        end
        SetEntityHeading(ped, rotation)
    end
end

local function MugShotCamera()
    if createdCamera ~= 0 then
        DestroyCam(createdCamera, 0)
        createdCamera = 0
    end
    local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", 1)
    SetCamCoord(cam, x, y, z)
    SetCamRot(cam, r.x, r.y, r.z, 2)
    RenderScriptCams(1, 0, 0, 1, 1)
    Wait(250)
    createdCamera = cam
    CreateThread(function()
        FreezeEntityPosition(ped, true)
        SetPauseMenuActive(false)
        while mugshotInProgress do
            DisableAllControlActions(0)
            EnableControlAction(0, 249, true)
            EnableControlAction(0, 46, true)
            Wait(1)
        end
    end)
end

local function CreateNamedRenderTargetForModel(name, model)
	local handle = 0
	if not IsNamedRendertargetRegistered(name) then
		RegisterNamedRendertarget(name, 0)
	end
	if not IsNamedRendertargetLinked(model) then
		LinkNamedRendertarget(model)
	end
	if IsNamedRendertargetRegistered(name) then
		handle = GetNamedRendertargetRenderId(name)
	end
	return handle
end

local function LoadScaleform(scaleform)
	local handle = RequestScaleformMovie(scaleform)
	if handle ~= 0 then
		while not HasScaleformMovieLoaded(handle) do
			Wait(0)
		end
	end
	return handle
end

local function CallScaleformMethod(scaleform, method, ...)
	local t
	local args = { ... }
	BeginScaleformMovieMethod(scaleform, method)
	for k, v in ipairs(args) do
		t = type(v)
		if t == 'string' then
			PushScaleformMovieMethodParameterString(v)
		elseif t == 'number' then
			if string.match(tostring(v), "%.") then
				PushScaleformMovieFunctionParameterFloat(v)
			else
				PushScaleformMovieFunctionParameterInt(v)
			end
		elseif t == 'boolean' then
			PushScaleformMovieMethodParameterBool(v)
		end
	end
	EndScaleformMovieMethod()
end

local function PrepBoard()
    CreateThread(function()
        board_scaleform = LoadScaleform("mugshot_board_01")
        handle = CreateNamedRenderTargetForModel("ID_Text", `prop_police_id_text`)
        while handle do
            HideHudAndRadarThisFrame()
            SetTextRenderId(handle)
            Set_2dLayer(4)
            SetScriptGfxDrawBehindPausemenu(1)
            DrawScaleformMovie(board_scaleform, 0.405, 0.37, 0.81, 0.74, 255, 255, 255, 255, 0)
            SetScriptGfxDrawBehindPausemenu(0)
            SetTextRenderId(GetDefaultScriptRendertargetRenderId())
            SetScriptGfxDrawBehindPausemenu(1)
            SetScriptGfxDrawBehindPausemenu(0)
            Wait(0)
        end
    end)
end

local function MakeBoard()
    title = Config.Header
    center = playerData.charinfo.firstname.. " ".. playerData.charinfo.lastname
    footer = playerData.citizenid
    header = playerData.charinfo.birthdate
	CallScaleformMethod(board_scaleform, 'SET_BOARD', title, center, footer, header, 0, 1337, 116)
end

local function PlayerBoard()
	RequestModel(`prop_police_id_board`)
	RequestModel(`prop_police_id_text`)
	while not HasModelLoaded(`prop_police_id_board`) or not HasModelLoaded(`prop_police_id_text`) do 
        Wait(1) 
    end
	board = CreateObject(`prop_police_id_board`, pedcoords, true, true, false)
	overlay = CreateObject(`prop_police_id_text`, pedcoords, true, true, false)
	AttachEntityToEntity(overlay, board, -1, 4103, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
	SetModelAsNoLongerNeeded(`prop_police_id_board`)
	SetModelAsNoLongerNeeded(`prop_police_id_text`)
    SetCurrentPedWeapon(ped, `weapon_unarmed`, 1)
	ClearPedWetness(ped)
	ClearPedBloodDamage(ped)
	AttachEntityToEntity(board, ped, GetPedBoneIndex(ped, 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 2, 1)
end

local function DestoryCamera()
    DestroyCam(createdCamera, 0)
    RenderScriptCams(0, 0, 1, 1, 1)
    SetFocusEntity(GetPlayerPed(ped))
    ClearPedTasksImmediately(ped)
    FreezeEntityPosition(ped, false)
    DeleteObject(overlay)
    DeleteObject(board)
    handle = nil
    createdCamera = 0
end

local function IsInPrison()
    local injail = false
    QBCore.Functions.TriggerCallback('Thx:SVCB:InJailOrNot', function(InJail)  
        if InJail >= 1 then
            injail = true
        else
            QBCore.Functions.Notify(Translation.error.not_inJail, "error")
        end
    end)
    Wait(150)
    return injail
end

RegisterNetEvent('Thx-mugshot:client:trigger', function(playerId, time)
    ped = PlayerPedId()
    pedcoords = GetEntityCoords(ped)
    CreateThread(function()
        if not IsInPrison() then 
            playerData = QBCore.Functions.GetPlayerData()
            MugshotArray, mugshotInProgress = {}, true
            local citizenid = playerData.citizenid
            local animDict = 'mp_character_creation@lineup@male_a'
            loadAnimDict(animDict)
            PrepBoard()
            Wait(250)
            MakeBoard()
            MugShotCamera()
            SetEntityCoords(ped,suspectx, suspecty, suspectz)
            SetEntityHeading(ped,suspectheading)
            PlayerBoard()
            TaskPlayAnim(ped, animDict, "loop_raised", 8.0, 8.0, -1, 49, 0, false, false, false)
            PhotoProcess(ped)
            if createdCamera ~= 0 then
                DestoryCamera()
                SetEntityHeading(suspectheading, ped)
                ClearPedSecondaryTask(GetPlayerPed(ped))
            end
            if Config.PsMdt then
                TriggerServerEvent('Thx-mugshot:server:MDTupload', playerData.citizenid, MugshotArray)
            end
            mugshotInProgress = false
            TriggerServerEvent("police:server:JailPlayer", playerId, tonumber(time))
        else
            TriggerServerEvent("police:server:JailPlayer", playerId, tonumber(time))
        end
    end)
end)