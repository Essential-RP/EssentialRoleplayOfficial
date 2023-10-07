Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.FirearmsLicenseCheck = true -- Whether a arms dealer checks for a firearms license
Config.SellCasinoChips = {
    coords = vector4(950.37, 34.72, 71.87, 33.82),
    radius = 1.5,
    ped = 's_m_y_casino_01'
}
Config.Products = {
    ["normal"] = {
        [1] = {
            name = "tosti",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "water_bottle",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "slushy",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "prime",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "pepslice",
            price = 150,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "bsandwich",
            price = 150,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "popcorn",
            price = 80,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "grillcheese",
            price = 80,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "bandage",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "beer",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "whiskey",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "vodka",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
        },      
    },
    ["liquor"] = {
        [1] = {
            name = "beer",
            price = 7,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "whiskey",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "vodka",
            price = 12,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
    },
    ["lockpick"] = {
        [1] = {
            name = "lockpick",
            price = 150,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "advancedlockpick",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    ["hardware"] = {
        [1] = {
            name = "lockpick",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_wrench",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_hammer",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "repairkit",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
            requiredJob = { "mechanic", "police" }
        },
        [5] = {
            name = "screwdriverset",
            price = 350,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "phone",
            price = 850,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "radio",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "binoculars",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "fishingrod",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "firework2",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "boombox",
            price = 2500,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "firework4",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "weed_nutrition",
            price = 100,
            amount = 150,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "cleaningkit",
            price = 150,
            amount = 150,
            info = {},
            type = "item",
            slot = 14,
        },
        -- [15] = {
        --     name = "advancedrepairkit",
        --     price = 500,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 15,
        --     requiredJob = { "mechanic" }
        -- },
        [15] = {
            name = "plant_tub",
            price = 50,
            amount = 250,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "empty_watering_can",
            price = 50,
            amount = 250,
            info = {},
            type = "item",
            slot = 15,
        },
        -- [17] = {
        --     name = "empty_watering_can",
        --     price = 50,
        --     amount = 250,
        --     info = {},
        --     type = "item",
        --     slot = 15,
        -- },
    },
    ["weedshop"] = {
        [1] = {
            name = "joint",
            price = 10,
            amount = 1000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_poolcue",
            price = 100,
            amount = 1000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weed_nutrition",
            price = 20,
            amount = 1000,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "empty_weed_bag",
            price = 2,
            amount = 1000,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "rolling_paper",
            price = 2,
            amount = 1000,
            info = {},
            type = "item",
            slot = 5,
        },
    },
    ["gearshop"] = {
        [1] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "jerry_can",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    ["leisureshop"] = {
        [1] = {
            name = "parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "binoculars",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "diving_fill",
            price = 500,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        -- [4] = {
        --     name = "smoketrailred",
        --     price = 250,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 4,
        -- },
    },
    ["weapons"] = {
        [1] = {
            name = "weapon_knife",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_bat",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_hatchet",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "mechanic", "police" }
        },
        [4] = {
            name = "weapon_fnx45",
            price = 2500,
            amount = 5,
            info = {},
            type = "item",
            slot = 4,
            requiresLicense = true
        },
        [5] = {
            name = "weapon_snspistol",
            price = 1500,
            amount = 5,
            info = {},
            type = "item",
            slot = 5,
            requiresLicense = true
        },
        [6] = {
            name = "weapon_vintagepistol",
            price = 4000,
            amount = 5,
            info = {},
            type = "item",
            slot = 6,
            requiresLicense = true
        },
        [7] = {
            name = "pistol_ammo",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 7,
            requiresLicense = true
        },
        [8] = {
            name = "armor",
            price = 2500,
            amount = 2500,
            info = {},
            type = "item",
            slot = 8,
            requiresLicense = true
        },
    },
    ["casino"] = {
        [1] = {
            name = 'casinochips',
            price = 1,
            amount = 999999,
            info = {},
            type = 'item',
            slot = 1,
        }
    },
    ["huntingshop"] = {
        [1] = {
            name = 'weapon_musket',
            price = 1500,
            amount = 10,
            info = {},
            type = 'weapon',
            slot = 1,
            requiresLicense = true
        },
        [2] = {
            name = 'shotgun_ammo',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
            requiresLicense = true
        },
        [3] = {
            name = 'huntingbait',
            price = 150,
            amount = 150,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'weapon_knife',
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4
        }
    },
    ["huntingshop"] = {
        [1] = {
            name = 'weapon_musket',
            price = 1500,
            amount = 10,
            info = {},
            type = 'weapon',
            slot = 1,
            requiresLicense = true
        },
        [2] = {
            name = 'shotgun_ammo',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
            requiresLicense = true
        },
        [3] = {
            name = 'huntingbait',
            price = 150,
            amount = 150,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'weapon_knife',
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4
        }
    },
    ["Fishing"] = {
        [1] = {
            name = "fishingrod",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "fishingbait",
            price = 30,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
    }, 
    ["Pharmacy"] = {
        [1] = {
            name = "gauze",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "bandage",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
    }, 
     ["DigitalDen"] = {
        [1] = {
            name = "phone",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "externaldrive",
            price = 500,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "radio",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "customlaptop",
            price = 2500,
            amount = 250,
            info = {},
            type = "item",
            slot = 4,
        },
    }, 


   
}
Config.Locations = {
    -- 24/7 Locations
    ["247supermarket"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(24.47, -1346.62, 29.5, 271.66),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket2"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-3039.54, 584.38, 7.91, 17.27),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket3"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-3242.97, 1000.01, 12.83, 357.57),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket4"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1728.07, 6415.63, 35.04, 242.95),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket5"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1959.82, 3740.48, 32.34, 301.57),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket6"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(549.13, 2670.85, 42.16, 99.39),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket7"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(2677.47, 3279.76, 55.24, 335.08),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket8"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(2556.66, 380.84, 108.62, 356.67),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket9"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(372.66, 326.98, 103.57, 253.73),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- LTD Gasoline Locations
    ["ltdgasoline"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(-47.02, -1758.23, 29.42, 45.05),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["ltdgasoline2"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(-706.06, -913.97, 19.22, 88.04),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["ltdgasoline3"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(-1820.02, 794.03, 138.09, 135.45),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["ltdgasoline4"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(1164.71, -322.94, 69.21, 101.72),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["ltdgasoline5"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(1697.87, 4922.96, 42.06, 324.71),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- Rob's Liquor Locations
    ["robsliquor"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-1221.58, -908.15, 12.33, 35.49),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["robsliquor2"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-1486.59, -377.68, 40.16, 139.51),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["robsliquor3"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-2966.39, 391.42, 15.04, 87.48),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["robsliquor4"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(1165.17, 2710.88, 38.16, 179.43),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["robsliquor5"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(1134.2, -982.91, 46.42, 277.24),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- Hardware Store Locations
    ["hardware"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(45.68, -1749.04, 29.61, 53.13),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Open Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 402,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0
    },

    ["hardware2"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(2747.71, 3472.85, 55.67, 255.08),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Open Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 402,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0
    },

    ["hardware3"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(-421.83, 6136.13, 31.88, 228.2),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 402,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0
    },

    -- Ammunation Locations
    ["ammunation"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-661.96, -933.53, 21.83, 177.05),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation2"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(809.68, -2159.13, 29.62, 1.43),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation3"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(1692.67, 3761.38, 34.71, 227.65),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation4"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-331.23, 6085.37, 31.45, 228.02),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation5"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(253.63, -51.02, 69.94, 72.91),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation6"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(23.0, -1105.67, 29.8, 162.91),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation7"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(2567.48, 292.59, 108.73, 349.68),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation8"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-1118.59, 2700.05, 18.55, 221.89),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation9"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(841.92, -1035.32, 28.19, 1.56),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation10"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-1304.19, -395.12, 36.7, 75.03),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation11"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-3173.31, 1088.85, 20.84, 244.18),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- Casino Locations
    ["casino"] = {
        ["label"] = "Diamond Casino",
        ["coords"] = vector4(949.29, 32.13, 71.95, 79.54),
        ["ped"] = 'csb_tomcasino',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-coins",
        ["targetLabel"] = "Buy Chips",
        ["products"] = Config.Products["casino"],
        ["showblip"] = true,
        ["blipsprite"] = 617,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0
    },

    ["casinobar"] = {
        ["label"] = "Casino Bar",
        ["coords"] = vector4(937.45, 27.22, 71.83, 61.21),
        ["ped"] = 'a_m_y_smartcaspat_01',
        ["scenario"] = "WORLD_HUMAN_VALET",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wine-bottle",
        ["targetLabel"] = "Open Casino Bar",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0
    },

    -- Weedshop Locations
    ["huntingshop"] = {
        ["label"] = "Hunting Shop",
        ["type"] = "weapon",
        ["coords"] = vector4(-679.47, 5834.49, 17.33, 127.62),
        ["ped"] = 'ig_hunter',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Hunting Shop",
        ["products"] = Config.Products["huntingshop"],
        ["showblip"] = true,
        ["blipsprite"] = 626,
        ["blipscale"] = 0.5,
        ["blipcolor"] = 1
    },
    ["huntingshop"] = {
        ["label"] = "Hunting Shop",
        ["type"] = "weapon",
        ["coords"] = vector4(-679.47, 5834.49, 17.33, 127.62),
        ["ped"] = 'ig_hunter',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Hunting Shop",
        ["products"] = Config.Products["huntingshop"],
        ["showblip"] = true,
        ["blipsprite"] = 626,
        ["blipscale"] = 0.5,
        ["blipcolor"] = 1
    },

    


    -- My Fishing Shop

    ["FishingShop"] = {
        ["label"] = "Fishing Shop",
        ["coords"] = vector4(714.43, 4101.83, 35.79, 90.81),  
        ["ped"] = 's_m_y_baywatch_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fa-solid fa-fish",
        ["targetLabel"] = "Open Fish Shop",
        ["products"] = Config.Products["Fishing"],
        ["showblip"] = true,
        ["blipsprite"] = 68,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 46
    },
    ["FishingShop2"] = {
        ["label"] = "Fishing Shop",
        ["coords"] = vector4(-281.1, 6622.48, 7.38, 317.76),  
        ["ped"] = 's_m_y_baywatch_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fa-solid fa-fish",
        ["targetLabel"] = "Open Fish Shop",
        ["products"] = Config.Products["Fishing"],
        ["showblip"] = true,
        ["blipsprite"] = 68,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 46
    },
    ["FishingShop3"] = {
        ["label"] = "Fishing Shop",
        ["coords"] = vector4(-1613.33, 5255.54, 3.97, 296.49),  
        ["ped"] = 's_m_y_baywatch_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fa-solid fa-fish",
        ["targetLabel"] = "Open Fish Shop",
        ["products"] = Config.Products["Fishing"],
        ["showblip"] = true,
        ["blipsprite"] = 68,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 46
    },
    ["FishingShop4"] = {
        ["label"] = "Fishing Shop",
        ["coords"] = vector4(-3428.1, 951.79, 8.35, 357.3),  
        ["ped"] = 's_m_y_baywatch_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fa-solid fa-fish",
        ["targetLabel"] = "Open Fish Shop",
        ["products"] = Config.Products["Fishing"],
        ["showblip"] = true,
        ["blipsprite"] = 68,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 46
    },
    ["FishingShop5"] = {
        ["label"] = "Fishing Shop",
        ["coords"] = vector4(-1836.89, -1261.58, 8.62, 320.71),  
        ["ped"] = 's_m_y_baywatch_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fa-solid fa-fish",
        ["targetLabel"] = "Open Fish Shop",
        ["products"] = Config.Products["Fishing"],
        ["showblip"] = true,
        ["blipsprite"] = 68,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 46
    },
    --Pharmacy
    ["Pharmacy1"] = {
        ["label"] = "Pharmacy",
        ["coords"] = vector4(1142.6740722656, -452.00744628906, 66.984268188477, 251.21160888672),  
        ["ped"] = 's_m_m_ccrew_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5, 
        ["targetIcon"] = "fa-solid fa-notes-medical",   
        ["targetLabel"] = "Open Pharmacy",
        ["products"] = Config.Products["Pharmacy"],
        ["showblip"] = true,
        ["blipsprite"] = 153,
        ["blipscale"] = 0.5,
        ["blipcolor"] = 2
    },

    ["DigitalDen1"] = {
        ["label"] = "DigitalDen",
        ["coords"] = vector4(-509.42047119141, 278.75921630859, 83.319892883301, 170.58947753906),  
        ["ped"] = 'hc_hacker',
        ["scenario"] = "WORLD_HUMAN_LEANING",
        ["radius"] = 1.5, 
        ["targetIcon"] = "fa-solid fa-computer",   
        ["targetLabel"] = "Open DigitalDen",
        ["products"] = Config.Products["DigitalDen"],
        ["showblip"] = true,
        ["blipsprite"] = 521,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 50
    },
    
    
    
}
