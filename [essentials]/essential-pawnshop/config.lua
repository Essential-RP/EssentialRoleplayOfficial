Config = {}

Config.PawnLocation = {
    [1] = {
            coords = vector3(412.34, 314.81, 103.13),
            length = 1.5,
            width = 1.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 100.97,
            maxZ = 105.42,
            distance = 3.0
        },
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems = {
    [1] = {
        item = 'microwave',
        price = math.random(850,1000)
    },
    [2] = {
        item = 'bigtv',
        price = math.random(950,1200)
    },
    [3] = {
        item = 'stereo',
        price = math.random(900,1100)
    },
    [4] = {
        item = 'computer',
        price = math.random(1000,1300)
    },
    [5] = {
        item = 'tablet',
        price = math.random(75,100)
    },
    [6] = {
        item = 'iphone',
        price = math.random(65,100)
    },
    [7] = {
        item = 'samsungphone',
        price = math.random(65,100)
    },
    [8] = {
        item = 'laptop',
        price = math.random(100,150)
    }
} 

-- Config.MeltingItems = { -- meltTime is amount of time in minutes per item
--     [1] = {
--         item = 'goldchain',
--         rewards = {
--             [1] = {
--                 item = 'goldbar',
--                 amount = 2
--             }
--         },
--         meltTime = 0.15
--     },
--     [2] = {
--         item = 'diamond_ring',
--         rewards = {
--             [1] = {
--                 item = 'diamond',
--                 amount = 1
--             },
--             [2] = {
--                 item = 'goldbar',
--                 amount = 1
--             }
--         },
--         meltTime = 0.15
--     },
--     [3] = {
--         item = 'rolex',
--         rewards = {
--             [1] = {
--                 item = 'diamond',
--                 amount = 1
--             },
--             [2] = {
--                 item = 'goldbar',
--                 amount = 1
--             },
--             [3] = {
--                 item = 'electronickit',
--                 amount = 1
--             }
--         },
--         meltTime = 0.15
--     },
--     [4] = {
--         item = '10kgoldchain',
--         rewards = {
--             [1] = {
--                 item = 'diamond',
--                 amount = 5
--             },
--             [2] = {
--                 item = 'goldbar',
--                 amount = 1
--             }
--         },
--         meltTime = 0.15
--     },
-- }
