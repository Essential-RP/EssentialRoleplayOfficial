-- If Config.Reputation = true the player must reach this level to unlock T3 houses
Config.T3_RequiredLvl = 7

-- If Config.Reputation = false set the chance of the player receiving a T3 house
Config.T3_HouseChance = 20

-- Set the T3 circle / ps-circle minigame difficulty - https://github.com/Nathan-FiveM/qb-lock
Config.T3_Difficulty = {
    ["circles"] = { 4, 5 }, -- [1] = min, [2] = max
    ["speed"] = { 9, 15 } -- [1] = min, [2] = max
}

-- T3 house locations
Config.T3_Houses = {
    [1] = {
        ["interior"] = 1, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-446.15, 686.34, 153.12), -- Set the entry door location for this house
        ["heading"] = 25.44, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [2] = {
        ["interior"] = 2, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-476.54, 647.58, 144.39), -- Set the entry door location for this house
        ["heading"] = 190.83, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [3] = {
        ["interior"] = 1, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-474.31, 585.87, 128.68), -- Set the entry door location for this house
        ["heading"] = 284.92, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [4] = {
        ["interior"] = 2, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-520.58, 594.28, 120.84), -- Set the entry door location for this house
        ["heading"] = 105.93, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [5] = {
        ["interior"] = 1, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-311.75, 474.99, 111.82), -- Set the entry door location for this house
        ["heading"] = 306.79, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [6] = {
        ["interior"] = 2, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-214.18, 399.51, 111.3), -- Set the entry door location for this house
        ["heading"] = 207.51, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [7] = {
        ["interior"] = 1, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-500.71, 551.89, 120.6), -- Set the entry door location for this house
        ["heading"] = 138.16, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [8] = {
        ["interior"] = 2, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-640.98, 520.63, 109.88), -- Set the entry door location for this house
        ["heading"] = 12.06, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [9] = {
        ["interior"] = 1, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-762.01, 430.91, 100.2), -- Set the entry door location for this house
        ["heading"] = 200.9, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [10] = {
        ["interior"] = 2, -- Set the interior ID for this house, T3 interior list: interiors/tier3.lua
        ["location"] = vector3(-1196.56, 693.27, 147.43), -- Set the entry door location for this house
        ["heading"] = 237.88, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
}

-- Set the item used to break in to T3 houses
Config.T3_RequiredBreakIn = "advancedlockpick"

-- Set the item used to crack in to T3 safes
Config.T3_RequiredSafeCracker = "advancedlockpick"

-- Set the reward items for T3 search locations
Config.T3_RewardItems = {
    ["common"] = { ["chance"] = 100, ["exp"] = { 125, 165 },
        [1] = {
            ["item"] = "diamond_necklace",
            ["amount"] = { 1, 2 },
        },
        [2] = {
            ["item"] = "goldchain",
            ["amount"] = { 1, 5 },
        },
        [3] = {
            ["item"] = "pistol_ammo",
            ["amount"] = { 1, 5 },
        },
    },
    ["uncommon"] = { ["chance"] = 55, ["exp"] = { 165, 205 },
        [1] = {
            ["item"] = "pistol_ammo",
            ["amount"] = { 1, 2 },
        },
        [2] = {
            ["item"] = "weedplant_seedf",
            ["amount"] = { 1, 3 },
        },
        [3] = {
            ["item"] = "goldchain",
            ["amount"] = { 1, 3 },
        },
        [4] = {
            ["item"] = "screwdriverset",
            ["amount"] = { 1, 1 },
        },
    },
    ["rare"] = { ["chance"] = 35, ["exp"] = { 205, 245 },
        [1] = {
            ["item"] = "diamond_ring",
            ["amount"] = { 1, 4 },
        },
        [2] = {
            ["item"] = "diamond_necklace",
            ["amount"] = { 1, 4 },
        },
        [3] = {
            ["item"] = "diamond_earring",
            ["amount"] = { 1, 4 },
        },
        [4] = {
            ["item"] = "weapon_fnx45",
            ["amount"] = { 1, 1 },
        },
        [5] = {
            ["item"] = "vpn",
            ["amount"] = { 1, 1 },
        },
    },
    ["noway"] = { ["chance"] = 15, ["exp"] = { 245, 285 },
        [1] = {
            ["item"] = "vpn",
            ["amount"] = { 1, 1 },
        },
        [2] = {
            ["item"] = "weapon_vintagepistol",
            ["amount"] = { 1, 1 },
        },
        [3] = {
            ["item"] = "weapon_pistol",
            ["amount"] = { 1, 1 },
        },
        [4] = {
            ["item"] = "diamond",
            ["amount"] = { 1, 3 },
        },
        [5] = {
            ["item"] = "goldbar",
            ["amount"] = { 1, 1 },
        }
    },
}

-- Set the reward items for T3 safes
Config.T3_SafeRewardItems = {
    ["common"] = { ["chance"] = 100, ["exp"] = { 100, 150 },
        [1] = {
            ["item"] = "pistol_ammo",
            ["amount"] = { 1, 2 },
        },
        [2] = {
            ["item"] = "diamond_necklace",
            ["amount"] = { 1, 2 },
        },
    },
    ["uncommon"] = { ["chance"] = 55, ["exp"] = { 200, 250 },
        [1] = {
            ["item"] = "weapon_fnx45",
            ["amount"] = { 1, 1 },
        },
        [2] = {
            ["item"] = "advancedlockpick",
            ["amount"] = { 1, 1 },
        },
        [3] = {
            ["item"] = "rolex",
            ["amount"] = { 1, 3 },
        }
    },
    ["rare"] = { ["chance"] = 35, ["exp"] = { 300, 350 },
        [1] = {
            ["item"] = "safecracker",
            ["amount"] = { 1, 2 },
        },
    },
    ["noway"] = { ["chance"] = 15, ["exp"] = { 350, 400 },
        [1] = {
            ["item"] = "goldbar",
            ["amount"] = { 1, 2 },
        },
        [2] = {
            ["item"] = "",
            ["amount"] = { 1, 1 },
        },
    },
} 

-- Set the amount of cash rewarded for T3 cash piles
Config.T3_RewardCashAmount = { 999, 1999 } -- [1] = min, [2] = max
