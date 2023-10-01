Config = Config or {}

Config.Dispatch = 'ps' -- ps = ps-dispatch, cd = cd_dispatch
Config.Phone = 'qb' -- qb / gks / qs
Config.Cooldown = 1
Config.AlertChance = 30 -- 30% chance police notidied
Config.PercentageGiven = 0.7 -- (70%) this is a percentage of the total money that will be given back to the player
Config.UseSetAmount = false -- if set to true it would use the set amount in the table below "setamountworth" if set to false it would use the worth of the item given from whatever script that gives you the bills
Config.Minutes = 1 -- 20 minutes until the washer will have the clean money ready
Config.DirtyMoney = {
    [1] = {
        itemname = 'markedbills', -- self explanatory change to whatever the bills are named in your server
        setamountworth = 940 -- self explanatory
    },
    -- [2] = {
    --     itemname = 'markedbills',
    --     setamountworth = 450
    -- } -- Do not add any more options here if you do not know what you are doing, its not as simple as just dropping in another option
}
Config.StartPed = `g_f_y_families_01` -- model of the start ped can find more here https://docs.fivem.net/docs/game-references/ped-models/
Config.StartPedLocation = vector4(8.2581005096436, -666.54632568359, 33.449726104736, 272.11468505859) -- location the ped spawns at to start washing

Config.MoneyWasherPed = {
    `ig_car3guy2`,
    `u_f_o_prolhost_01`,
    `u_f_y_lauren`,
    `u_m_o_taphillbilly`,
    `u_m_y_fibmugger_01`,
}
Config.MoneyWasherPedLocations = { -- locations the ped spawns at 
vector4(-283.43539428711, 2540.1391601563, 74.605453491211, 356.24453735352),
vector4(219.78, -2247.65, 5.78, 85.4),
vector4(-559.19, -1800.04, 22.62, 333.94),
vector4(-1146.19, -1966.32, 13.16, 202.75),
vector4(-2217.2600097656, 3482.1013183594, 30.169322967529, 181.08990478516),
vector4(-1603.16, -1007.63, 7.54, 50.75),
vector4(2672.78515625, 3515.7565917969, 52.711990356445, 338.84637451172),
vector4(1003.7788085938, -54.813846588135, 74.959289550781, 112.73361206055),
vector4(-757.06848144531, -2584.833984375, 13.860580444336, 239.42749023438),
vector4(706.62, -606.71, 26.1, 263.27),
vector4(-261.82766723633, -2452.314453125, 6.0006289482117, 148.4977722168),
vector4(1109.3869628906, -3260.6728515625, 5.8979783058167, 269.96237182617),
vector4(1239.06, -1924.03, 37.92, 297.59),
vector4(2896.5910644531, 4380.6127929688, 50.375438690186, 292.89453125),
vector4(1532.4677734375, 1703.0318603516, 109.74841308594, 82.411567687988),
vector4(-525.07177734375, -2900.2548828125, 6.0003805160522, 24.207443237305), 
vector4(2551.86, 4651.54, 33.47, 37.15),
vector4(1907.58, 4929.71, 48.35, 334.5),
vector4(1366.28, 4385.25, 43.73, 176.25),
vector4(740.66, 2574.58, 74.86, 199.78),
vector4(136.44, 6342.69, 30.64, 22.95),
vector4(736.47479248047, -1908.6049804688, 29.292032241821, 171.69161987305),
vector4(-3171.1318359375, 1100.9102783203, 20.736005783081, 65.613700866699),
} 
Config.Vehicles = { --vehicles the ped's in add as many as you like
    `sultan`,
    `kuruma`,
}