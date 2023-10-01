Config = {}

-- General Settings
Config.OxyRunDebug = false -- Change to true to enable PolyZone DebugPoly's for testing. (Some Targeting Solutions, like ox_target might not display PZ's)

Config.MinimumPolice = 0 -- Minimum Police Required to start a Run..
Config.CallCopsChance = 50 -- %Chance to alert police
Config.RunCost = 500 -- How much it will cost to start the run..

Config.Item = 'package' -- You can change this..

-- Cooldown Settings
Config.Cooldown = {
    EnableTimeout = false, -- true = enable a timeout that'll end the run after Config.Timeout. false = won't start a Timeout
    Timeout = 30, -- Minutes (How long it takes for the entire run to Timeout.)
    BuyerTimeout = 5, -- Minutes (When you initially enter the selling zone, how long does it take upon leaving, before finishing the run and without re-entering, for the run to Reset)

    EnableGlobalCooldown = false, -- Global Cooldown for everyone.
    GlobalCooldown = 20, -- Minutes

    EnablePersonalCooldown = false, -- Cooldown before someone can start another run.
    PersonalCooldown = 20 -- Minutes
}

Config.SendEmail = true -- The E-Mail received upon taking on a job (By Default it only supports qb-phone etc.) (You can add your own Email System, if you have one, in the client)
Config.EnableAnimation = true -- Animation that plays upon talking to the boss

Config.PrintChance = false  -- This will print the chance numbers, when someone delivers a package into your server console.

-- Blip Creation for Boss Peds
Config.Blip = {
    Enable = false, -- Change to false to disable blip creation
    Sprite = 480, -- Sprite/Icon
    Display = 4,
    Scale = 0.6,
    Colour = 1,
    Name = "Mysterious Person", -- Name of the blip
}

-- Ped Spawns
Config.BossPed = 'a_m_m_mlcrisis_01' -- The model name of the boss ped.

Config.BossLocation = { -- The locations where the boss can spawn.
    [1] = vector4(-2175.5852050781, 4294.9067382813, 48.061058044434, 238.69386291504),
    -- [2] = vector4(569.92, -1016.13, 32.56, 104.47),
    -- [3] = vector4(683.48, -789.34, 23.5, 0.13)
}

Config.SupplierPeds = { -- The model names of the supplier peds.
    'a_m_y_skater_01',
    'a_m_y_vinewood_03',
    'a_m_y_soucent_02',
    'a_m_y_soucent_03',
    'a_m_y_methhead_01',
    'a_m_m_eastsa_01',
    'a_m_m_genfat_01',
    'a_m_m_mexlabor_01',
}

Config.PickUpLocations = { -- The locations where the packages can be picked up.
    vector4(608.79, -459.17, 24.74, 181.92),
    vector4(1250.83, -2562.04, 42.71, 219.28),
    vector4(740.43, -2634.68, 6.47, 189.84),
    vector4(-1161.83, -1250.07, 6.8, 306.16),
    vector4(-2223.13, -365.75, 13.32, 260.99),
    vector4(-2982.84, 1585.71, 23.82, 359.91),
    vector4(-287.47, 2535.68, 75.47, 271.17),
    vector4(1583.08, 3620.96, 38.78, 134.18)
}

-- Items
Config.GiveItem = true -- Don't give out any item, will just act as a way to moneywash
Config.ItemReward = "oxy" -- Item that it gives out in exchange of Packages.
Config.MaxItemReward = 3 -- Maximum amount of Config.ItemReward you can get per package.
Config.MinItemReward = 1 -- Minimum amount of Config.ItemReward you can get per package.

Config.SpecialRewardChance = 2 -- % 
Config.SpecialItem = { -- Item(s) you can get as a special Reward
    "vpn",
    -- "security_card_01",
    -- "security_card_02"
}

Config.MaxSpecialReward = 1 -- Maximum amount of Config.SpecialItem you can get.
Config.MinSpecialReward = 1 -- Minimum amount of Config.SpecialItem you can get.

-- Moneywashing
Config.CleanMoney = true
Config.Amount = 'random' -- random/one -- Either a randomized amount of marked money (rolls, bands etc.) will be taken and cleaned from your inventory, or only one (per wash)!
Config.MaxAmount = 5 -- if Config.Amount is set to random, set the maximum amount that can possibly be washed per.

Config.BagChance = 0 -- Marked Bills

Config.BandMaxPayout = 2000 -- Bands
Config.BandMinPayout = 750
Config.BandChance = 100

Config.RollMaxPayout = 750 -- Rolls
Config.RollMinPayout = 250
Config.RollChance = 100

-- NPC Route Spawn
Config.DriveStyle = 39 -- THIS CAN BE CHANGED AT https://www.vespura.com/fivem/drivingstyle/
Config.MaxDeliveries = 6
Config.MinDeliveries = 4 
Config.Cars = {"glendale", "ingot", "buccaneer2"}
Config.MaxTimeBetweenCars = 30 
Config.MinTimeBetweenCars = 15 
Config.DriverPed = "s_m_m_gentransport"

Config.Routes = { -- HERE YOU CAN ADD AS MANY LOCATIONS AS YOU WANT TO

{
    info = {
        occupied = false,
        hash = "", -- DON'T TOUCH
        oxyNum = 1, -- DON'T TOUCH
        routeNum = 1, -- NEENDS TO BE SET TO THE ORDER IT COMES IN THE LIST
        startHeading = 121.76 -- HEADING OF CAR WHEN IT SPAWNS IN
    },
    locations = {
        { pos = vector3(-691.34, -1058.22, 14.5), stop = false }, -- SPAWN POINT
        { pos = vector3(-742.16, -1047.58, 12.3), stop = true }, -- WAIT FOR DELIVER
        { pos = vector3(-745.23, -915.48, 19.34), stop = false }, -- DESPAWN POINT
    }
},
{
    info = {
        occupied = false,
        hash = "", -- DON'T TOUCH
        oxyNum = 1, -- DON'T TOUCH
        routeNum = 2, -- NEENDS TO BE SET TO THE ORDER IT COMES IN THE LIST
        startHeading = 46.79 -- HEADING OF CAR WHEN IT SPAWNS IN
    },
    locations = {
        { pos = vector3(-166.94, -1700.22, 31.75), stop = false }, -- SPAWN POINT FORUM DRIVE
        { pos = vector3(-118.38, -1610.66, 31.4), stop = true }, -- WAIT FOR DELIVER
        { pos = vector3(-51.5, -1601.91, 28.71), stop = false }, -- DESPAWN POINT
    }
},
{
    info = {
        occupied = false,
        hash = "", -- DON'T TOUCH
        oxyNum = 1, -- DON'T TOUCH
        routeNum = 3, -- NEENDS TO BE SET TO THE ORDER IT COMES IN THE LIST
        startHeading = 159.00 -- HEADING OF CAR WHEN IT SPAWNS IN
    },
    locations = {
        { pos = vector3(253.96, -141.63, 64.63), stop = false }, -- SPAWN POINT ALTA PLACE
        { pos = vector3(220.58, -166.64, 56.64), stop = true }, -- WAIT FOR DELIVER
        { pos = vector3(18.89, -90.41, 58.64), stop = false }, -- DESPAWN POINT
    }
},
{
    info = { 
        occupied = false,
        hash = "", -- DON'T TOUCH
        oxyNum = 1, -- DON'T TOUCH
        routeNum = 4, -- NEENDS TO BE SET TO THE ORDER IT COMES IN THE LIST
        startHeading = 157.19 -- HEADING OF CAR WHEN IT SPAWNS IN
    },
    locations = {
        { pos = vector3(19.9, -51.4, 64.95), stop = false }, -- SPAWN POINT
        { pos = vector3(-15.09, -77.05, 57.07), stop = true }, -- WAIT FOR DELIVER
        { pos = vector3(-80.28, 43.64, 71.83), stop = false }, -- DESPAWN POINT
    }
},
}

