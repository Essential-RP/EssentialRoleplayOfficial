Config = {}

Config.Framework = 'QBCore'  -- Framework to use (QBCore or OX)
Config.Dispatch = 'ps-dispatch' -- Dispatch that you use (ps-dispatch or cd_dispatch)

Config.HackingItem = {
    sb = "weapon_stickybomb",
    lt = "lighter",   
}  -- Item required to do the robbery (Change Label to something fitting if you change this)
Config.RewardCard = 'lockpick'
Config.ContainerItems = 'weapon_m9'
Config.HackType = 'alphabet' -- can be alphabet, numeric, alphanumeric, greek, braille, runes
Config.HackTime = 25 --how long to do minigame
Config.HackingTime = 15 --how long for hacking progressbars

Config.RareLoot = 1 -- %Chance to receive a rare loot item
Config.RareLootItem = 'phone' -- Rare loot item

Config.MoneyType = false -- true = cash / false = blackmoney/dirtymoney
Config.PaymentMin = '1000' -- Min amount they can get
Config.PaymentMax = '1500' -- Max amount they can get

Config.Cops = 0 -- Amount of cops needed to do the robbery
Config.CoolDown = 5 -- How long Cooldown is before robbery can be done again (minutes)

Config.Containers = {
    {
        coords = vector3(-2447.36, 3343.14, 32.83),
    },
    {
        coords = vector3(-850.62, -2991.54, 13.97),
    },
}
