Config = {}
 
-- DEBUG -- 
Config.Debug = false

Config.Ped = "a_m_y_business_02"  
Config.PedCoords = vector4(699.95, -1448.85, 21.0, 303.08) 

Config.jobTime = 15   
Config.cooldown = 15 -- CLient Cooldown Until Door shuts         
Config.HackCoolDown = 5 -- Server cooldown
Config.BombTimer = 10 -- how long the bomb needs to explode
Config.StartItem = "warehouseusb"
Config.bomb = "thermite"
Config.HackLaptop = "duckusb" -- Med Laptop
Config.HackLaptop2 = "lanturtle" --Upstairs Laptop
Config.HackLaptop3 = "warehouseusb" -- Next to gun laptop
Config.laptopreward = "lanturtle" 
Config.laptopreward2 = "weapon_stickybomb"
Config.laptopreward3 = "duckusb"
Config.Safeitem = "weapon_stickybomb"
Config.DoorLock = 'qb' -- use 'qb' for qb-doorlock events
Config.DoorId = '1-1' -- name of the door in your doorlock config
Config.DoorId2 = '1-2' -- name of the door in your doorlock config
Config.DoorId3 = '1-3' -- name of the door in your doorlock config

--Payout

Config.PaymentMin = '5000' -- Min amount they can get
Config.PaymentMax = '7500' -- Max amount they can get

-- Rare Loot

Config.RareLoot = 50 -- %Chance to receive a rare loot item
Config.RareLootItem = 'case_recoil' -- Rare loot item


-- peds
Config.PedGun = 'weapon_pistol50' -- weapon NPC's use
Config.SetPedAccuracy = 100 -- (between 10-100)
Config.Shooters = {
    ['whouse'] = {
        locations = {
            [1] = { 
                peds = {vector3(935.97, -1475.74, 30.1),vector3(941.27, -1479.89, 30.1),vector3(938.08795166016, -1464.3885498047, 33.612941741943)}
            },
        },
    }
}