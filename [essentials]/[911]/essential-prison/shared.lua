Config = {}
Config.CoreName = 'qb-core' -- your core name
Config.Target = 'qb-target' -- only change if you have changed your target script name
Config.Menu = 'qb-menu' -- only change if you have changed your menu script name
Config.CircleMiniGameName = 'ps-ui' -- this is for if you use a differenct lock minigame
Config.VarHackName = 'ps-ui' -- this is for if you use a differenct var hack minigame
Config.GatePed = 's_m_y_prisoner_01' -- PrisonBitch Ped model 'Jeph'
Config.CheesburgerFreddy = 's_m_y_prismuscl_01' -- Cheesburger Freddy Ped model
Config.PrisonTowerGuard = 's_m_m_armoured_02' --Guard Tower Ped
Config.CleanUpPed = 's_m_m_armoured_02' --Ped inside the cells to start Clean up job
Config.PrisonBitchLoc = vector4(1647.59, 2493.01, 44.56, 188.94) -- PrisonBitch Ped location
Config.CheesburgerFreddyLoc = vector4(1751.52, 2553.13, 42.59, 116.4) -- CheesburgerFreddy Ped location
Config.PrisonWorkPercentage = 51 --this number is percent chance of prisoners earning random chance of 1 to 4 months off of sentence. 
Config.PrisonTowerGuardLoc = vector4(1536.56, 2584.03, 61.85, 233.39) --Prison Guard Ped that you can loot
Config.CleanUpPedLoc = vector4(1773.94, 2493.49, 44.74, 126.66) --Prison Guard Ped that you can loot
Config.Gabz = true -- if you are using the gabs mlo make this true
Config.ChairSearchCooldown = 10 -- How long you have to wait inbetween chair searching (Multiples of 10 minutes) | this cooldown is on the server side
Config.CleanTableCooldown = 10 -- How long you have to wait inbetween table cleaning (Multiples of 10 minutes) | this cooldown is on the server side
Config.AIHealTimer = 1 
Config.losejob = false -- Set to true if you want players to lose their jobs when being jailed
Config.PugSlingScript = false -- Make this true if you are using Pug-WeaponSling. | This is for basketball only
Config.PoliceJobScript = 'essential-policejob' --folder name of your police job script
Config.EMSJobScript = 'essential-emsjob' --folder name of your emsjob script

-- MUGSHOT
Config.Webhook = 'https://discord.com/api/webhooks/1157076552257896508/2g4uIh7AOrA36Yh3MvRwOxaMnHuyOgfVVC503bvgY3HUreu5AovkFFuLd3bYr09rYkd7' -- Images will be uploaded here
Config.CustomMLO = true -- If you use a MLO use the options below to change the camera location. Otherwise it will use the default IPL for the mugshot location
Config.MugshotLocation = vector3(472.92, -1011.49, 25.27) -- Location of the Suspect
Config.MugshotSuspectHeading = 183.55 -- Direction Suspsect is facing
Config.MugShotCamera = {
    x = 473.05,
    y = -1012.56,
    z = 26.90,
    r = {x = 0.0, y = 0.0, z = 358.04} -- To change the rotation use the z. Others are if you want rotation on other axis
}

Config.Header = "Los Santos Police Department" -- Header that appears on the board
Config.Wait = 2000 -- Time before and after the photo is taken. Decreasing this value might result in some angles being skiped.
Config.Photos = 3 -- Front, Back Side. Use 4 for both sides
Config.PsMdt = true -- If you use ps-mdt this will automatically send them to a players profile alond with fingerprint

Config.PrisonChair = {
	-- Prison Chair locations Table 1
    { location = vector3(1758.48, 2485.15, 45.75), heading = 210.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1758.22, 2483.76, 45.75), heading = 300.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1759.59, 2483.48, 45.75), heading = 390.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1759.92, 2484.84, 45.75), heading = 480.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    -- Prison Chair locations Table 2
    { location = vector3(1763.17, 2487.83, 45.75), heading = 210.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1762.86, 2486.55, 45.75), heading = 300.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1764.19, 2486.17, 45.75), heading = 390.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1764.53, 2487.44, 45.75), heading = 480.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    -- Prison Chair locations Table 3
    { location = vector3(1768.36, 2490.78, 45.75), heading = 210.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1767.95, 2489.42, 45.75), heading = 300.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1769.38, 2489.11, 45.75), heading = 390.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
    { location = vector3(1769.7, 2490.43, 45.75), heading = 480.0, width = 1, height = 1, minZ = 44.79, maxZ = 45.59, distance = 0.8 },
}

Config.CafeteriaTables = {
	-- Tables to clean in the cafeteria
    -- Facing East
    { location = vector3(1779.56, 2547.29, 45.67), heading = 0, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1779.69, 2550.94, 45.67), heading = 0, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1779.66, 2554.44, 45.67), heading = 0, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1785.52, 2554.46, 45.67), heading = 0, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1785.46, 2550.81, 45.67), heading = 0, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1785.47, 2547.26, 45.67), heading = 0, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    -- Facing West
    { location = vector3(1782.97, 2547.26, 45.67), heading = 180, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1783.01, 2550.97, 45.67), heading = 180, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1782.97, 2554.49, 45.67), heading = 180, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1788.81, 2554.53, 45.67), heading = 180, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1788.84, 2550.88, 45.67), heading = 180, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },
    { location = vector3(1788.86, 2547.21, 45.67), heading = 180, width = 1, height = 1, minZ = 44.87, maxZ = 46.07, distance = 0.8 },

}
Config.CleanupLocations = {
    [1] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit',
        vec = vector4(1767.76, 2500.85, 44.74, 211.9),
    },
    [2] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit2',
        vec = vector4(1773.92, 2481.54, 44.74, 13.29),
    },
    [3] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit3',
        vec = vector4(1767.48, 2478.02, 44.74, 2.26),
    },
    [4] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit4',
        vec = vector4(1761.54, 2497.31, 44.74, 211.5),
    },
    [5] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit5',
        vec = vector4(1757.94, 2473.1, 44.74, 26.76),
    },
    [6] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit6',
        vec = vector4(1758.09, 2495.38, 48.69, 207.13),
    },
    [7] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit7',
        vec = vector4(1752.03, 2491.92, 48.69, 193.94),
    },
    [8] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit8',
        vec = vector4(1758.24, 2472.4, 48.69, 193.01),
    },
    [9] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit9',
        vec = vector4(1764.49, 2475.34, 48.69, 331.4),
    },
    [10] = {
        prop = 'prop_big_shit_02',
        name = 'prisonshit10',
        vec = vector4(1774.07, 2481.75, 48.69, 28.81),
    },
    
}

Config.FreddyMenu = { --One free item in prison with a cooldown. If you dont have 'burger=bleeder' in your server change these items.
    [1] ={
        item = 'burger-bleeder', -- Name of item 
        description = 'Filling', --Description text displayed in the menu
    },
    [2] ={
        item = 'burger-bleeder',
        description = 'Juicy',
    },
    [3] ={
        item = 'burger-bleeder',
        description = 'Tasty',
    },
}

Config.PrisonBitchMenu = { -- Do not remove items only add items that you want to cost 1 bag of meth in prison.  
    [1] ={
        item = 'charging-brick',
        description = '1 Ass Meth',
    },
    [2] ={
        item = 'deadphone',
        description = '1 Ass Meth',
    },
    [3] ={
        item = 'care-package',
        description = '1 Ass Meth',
    },
    -- [4] ={
    --     item = 'itemname',
    --     description = '1 Ass Meth',
    -- },
}

Config.CookAssMeth = { --Config of cell toilets you can cook ass meth in. 
    [1] = vector3(1764.59, 2501.21, 49.69),
    [2] = vector3(1761.22, 2473.14, 49.69),
    [3] = vector3(1748.95, 2491.37, 49.69),
    [4] = vector3(1755.19, 2495.02, 49.69),
    [5] = vector3(1776.92, 2482.08, 49.69),
    [6] = vector3(1773.78, 2480.21, 49.7),
    [7] = vector3(1770.59, 2478.43, 49.69),
    [8] = vector3(1767.49, 2476.68, 49.69),
    [9] = vector3(1764.36, 2474.82, 49.69),
    [10] = vector3(1758.04, 2471.13, 49.69),
    [11] = vector3(1752.11, 2493.19, 49.7),
    [12] = vector3(1758.4, 2496.85, 49.69),
    [13] = vector3(1761.76, 2498.63, 49.69),
    [14] = vector3(1767.73, 2502.32, 49.69),

}

-- START DO NOT EDIT
Config.BedLocations = {
    ["beds"] = {
        [1] = {coords = vector4(1761.94, 2591.51, 45.66, 259.49), taken = false, model = 1631638868},
        [2] = {coords = vector4(1761.92, 2594.59, 45.66, 269.02), taken = false, model = 1631638868},
        [3] = {coords = vector4(1761.98, 2597.69, 45.66, 276.74), taken = false, model = 1631638868},
        [4] = {coords = vector4(1771.89, 2597.92, 45.66, 88.12), taken = false, model = 1631638868},
        [5] = {coords = vector4(1771.82, 2594.92, 45.66, 100.75), taken = false, model = 1631638868}, 
        [6] = {coords = vector4(1771.98, 2591.84, 45.66, 90.15), taken = false, model = 1631638868}, 
    },
}
Config.WoundStates = {
    'irritated',
    'quite painful',
    'painful',
    'really painful',
}
Config.BleedingStates = {
    [1] = {label = 'bleeding a little bit..', damage = 10, chance = 50},
    [2] = {label = 'bleeding..', damage = 15, chance = 65},
    [3] = {label = 'bleeding a lot..', damage = 20, chance = 65},
    [4] = {label = 'bleeding very much..', damage = 25, chance = 75},
}
Config.BasketBallLocations = {
    [1] = vector3(1718.1, 2534.0, 44.0),
}

Config.BasketBallCourts = {
    ["Prison1"] = {
        ['Zone'] = {
            ['Shape'] = { --polyzone that surrounds the area
                vector2(1715.8226318359, 2507.8610839844),
                vector2(1771.9819335938, 2532.7834472656),
                vector2(1759.2467041016, 2567.9357910156),
                vector2(1702.6334228516, 2559.4924316406)
            },
        ['minZ'] = 45.564876556396, 
        ['maxZ'] = 47.591743469238  
        },
    },
    -- ["Prison2"] = {
    --     ['Zone'] = {
    --         ['Shape'] = { --polyzone that surrounds the area
    --             vector2(1715.8226318359, 2507.8610839844),
    --             vector2(1771.9819335938, 2532.7834472656),
    --             vector2(1759.2467041016, 2567.9357910156),
    --             vector2(1702.6334228516, 2559.4924316406)
    --         },
    --     ['minZ'] = 45.564876556396, 
    --     ['maxZ'] = 47.591743469238  
    --     },
    -- },
}


Config.ActivityZones = {
    ["pushups1"] = {
        ['Zone'] = {
            ['Shape'] = { --polyzone that surrounds the tournament area
                vector2(-1620.01171875, 4464.6005859375),
                vector2(-1807.2664794922, 4669.259765625),
                vector2(-1898.1372070313, 4593.2348632813),
                vector2(-1692.4174804688, 4412.130859375)
            },
            ['minZ'] = -5.7327547073364,  -- min height of the tournament area
            ['maxZ'] = 35.722059249878  -- max height of the tournament area
        },
    },
}

Config.TowerZone = {
    ["Tower1"] = {
        ['Zone'] = {
            ['Shape'] = { --polyzone that surrounds the Guard Tower
            vector2(1537.7170410156, 2581.6943359375),
            vector2(1538.0364990234, 2588.958984375),
            vector2(1531.2237548828, 2589.43359375),
            vector2(1530.3713378906, 2581.3193359375),
            },
            ['minZ'] = 45.332054138184,
            ['maxZ'] = 45.548999786377
        },
    },
}
-- END DO NOT EDIT

-- OG PRSISON CONFIG
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

local isServer = IsDuplicityVersion()
if not isServer then
    --- This function will be triggered once the hack is done
    --- @param success boolean
    --- @param currentGate number
    --- @param gateData table
    --- @return nil
    function Config.OnHackDone(success, currentGate, gateData)
        if success then
            TriggerServerEvent("prison:server:SetGateHit", currentGate)
            TriggerServerEvent('qb-doorlock:server:updateState', gateData.gatekey, false, false, false, true)
        else
            TriggerServerEvent("prison:server:SecurityLockdown")
        end
        TriggerEvent('mhacking:hide')
    end
end

Config.Jobs = {
    ["electrician"] = "Electrician"
}

Config.Uniforms ={
    ['male'] = {
        outfitData ={
            ['t-shirt'] = {item = 15, texture = 0},
            ['torso2'] = {item = 345, texture = 0},
			['arms'] = {item = 19, texture = 0},
			['pants'] = {item = 3, texture = 7},
			['shoes'] = {item = 1, texture = 0},
        }
    },
    ['female'] = {
        outfitData ={
            ['t-shirt'] = {item = 14, texture = 0},
			['torso2'] = {item = 370, texture = 0},
			['arms'] = {item = 0, texture = 0},
			['pants'] = {item = 0, texture = 12},
			['shoes'] = {item = 1, texture = 0},
        }
    },
}

Config.Locations = { 
    jobs = {
        ["electrician"] = {
            [1] = {
                coords = vector4(1761.46, 2540.41, 45.56, 272.249),
            },
            [2] = {
                coords = vector4(1718.54, 2527.802, 45.56, 272.249),
            },
            [3] = {
                coords = vector4(1700.199, 2474.811, 45.56, 272.249),
            },
            [4] = {
                coords = vector4(1664.827, 2501.58, 45.56, 272.249),
            },
            [5] = {
                coords = vector4(1621.622, 2509.302, 45.56, 272.249),
            },
            [6] = {
                coords = vector4(1627.936, 2538.393, 45.56, 272.249),
            },
            [7] = {
                coords = vector4(1625.1, 2575.988, 45.56, 272.249),
            }
        }
    },
    ["freedom"] = {
        coords = vector4(1818.54, 2592.63, 44.72, 82.72)
    },
    ["outside"] = {
        coords = vector4(1848.13, 2586.05, 44.67, 269.5)
    },
    ["yard"] = {
        coords = vector4(1762.86, 2485.49, 45.74, 24.54)
    },
    ["middle"] = {
        coords = vector4(1693.33, 2569.51, 44.55, 123.5)
    },
    ["shop"] = {
        coords = vector4(1784.07, 2558.87, 44.67, 99.7)
    },
    spawns = { --Location of spawns when 'jailed'
        [1] = {
            animation = "sunbathe", --Active emote on spawn
            coords = vector4(1661.046, 2524.681, 45.564, 260.545)
        },
        [2] = {
            animation = "pushup",
            coords = vector4(1742.97, 2480.7, 45.76, 118.71)
        },
        [3] = {
            animation = "lean",
            coords = vector4(1654.959, 2545.535, 45.564, 230.436)
        },
        [4] = {
            animation = "situp",
            coords = vector4(1761.18, 2497.58, 49.69, 218.14)
        },
        [5] = {
            animation = "sitchair4",
            coords = vector4(1673.084, 2519.823, 45.564, 229.542)
        },
        [6] = {
            animation = "sitchair",
            coords = vector4(1666.029, 2511.367, 45.564, 233.888)
        },
        [7] = {
            animation = "sitchair4",
            coords = vector4(1691.229, 2509.635, 45.564, 52.432)
        },
        [8] = {
            animation = "finger2",
            coords = vector4(1770.59, 2536.064, 45.564, 258.113)
        },
        [9] = {
            animation = "smoke",
            coords = vector4(1792.45, 2584.37, 45.56, 276.24)
        },
        [10] = {
            animation = "yoga",
            coords = vector4(1725.97, 2537.98, 43.59, 111.19)
        },
        [11] = {
            animation = "chinup",
            coords = vector4(1643.35, 2527.77, 45.56, 45.35)
        }
    }
}
----