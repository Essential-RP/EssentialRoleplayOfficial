
Config = {}
Config.Debug = false -- \ Set to true to enable debugging
Config.Core = "qb-core" -- \ The name of the core (Default: qb-core)
Config.Target = "qb-target" -- \ The target name (Default: qb-target)
Config.Menu = "qb-menu" -- \ The target name (Default: qb-menu)
Config.Inventory = "oldqb" -- \ What inventory are you using? ('oldqb', 'qb' / 'ox')
Config.MinimumCops = 0 -- \ Minimum cops required to sell drugs
Config.GiveBonusOnPolice = true -- \ Give bonus on selling drugs to police (Edit on server side)
Config.ChanceSell = 65 -- \ Chance to sell drug (in %)
Config.CopCallChance = 70 -- Chance Of Cop Call
Config.RandomMinSell = 1 -- \ Random sell amount range min
Config.RandomMaxSell = 6 -- \ Random sell amount range max
Config.SellTimeout = 10 -- \ Max time you get to choose your option (secs)
Config.ShouldToggleSelling = false -- \ This option decides whether the person has to toggle selling in a zone (radialmenu/command) (Recommended: false)
Config.Zones = { -- \ Sell zones (these zones are linked with the certain drugs check below)
    ['groove'] = {        
        points = {
            -- vector2(250.90760803223, -1866.3974609375),
            -- vector2(146.70475769043, -1990.5447998047),
            -- vector2(130.3134765625, -2034.3944091797),
            -- vector2(95.291275024414, -2030.4129638672),
            -- vector2(88.095336914062, -2009.6634521484),
            -- vector2(68.878730773926, -1978.8924560547),
            -- vector2(-153.59761047363, -1779.4030761719),
            -- vector2(-97.692588806152, -1750.6363525391),
            -- vector2(-50.927833557129, -1733.6020507812),
            -- vector2(49.590217590332, -1689.9705810547)
            vector2(-46.4436378479, -1720.4527587891),
            vector2(-59.779094696045, -1736.4079589844),
            vector2(-108.14495849609, -1751.0574951172),
            vector2(-141.38159179688, -1785.6029052734),
            vector2(-144.2297668457, -1790.9140625),
            vector2(-72.582679748535, -1852.1164550781),
            vector2(-21.622346878052, -1887.8305664062),
            vector2(15.757265090942, -1919.7944335938),
            vector2(66.773338317871, -1970.2650146484),
            vector2(86.052032470703, -1989.6049804688),
            vector2(141.37719726562, -1983.7467041016),
            vector2(179.36875915527, -1934.5040283203),
            vector2(192.84883117676, -1917.9803466797),
            vector2(130.79154968262, -1989.732421875),
            vector2(179.8032989502, -1913.2827148438)
        },
        minZ = 15.0,
        maxZ = 38.0                      
    },
    ['baycity'] = {
        points = {
            vector2(-1087.7517089844, -1601.6892089844),
            vector2(-1109.9432373047, -1568.1716308594),
            vector2(-1132.6949462891, -1584.1221923828),
            vector2(-1153.8947753906, -1599.8084716797),
            vector2(-1167.4608154297, -1611.119140625),
            vector2(-1152.3186035156, -1632.287109375),
            vector2(-1135.6639404297, -1656.1383056641),
            vector2(-1118.4146728516, -1680.0499267578),
            vector2(-1099.2900390625, -1706.6293945312),
            vector2(-1075.5013427734, -1690.9547119141),
            vector2(-1054.8333740234, -1669.9407958984),
            vector2(-1040.5163574219, -1654.6176757812),
            vector2(-1056.5600585938, -1632.9147949219),
            vector2(-1074.1484375, -1609.5377197266),
            vector2(-1089.2338867188, -1588.0784912109),
            vector2(-1104.8605957031, -1566.0418701172)
        },
      minZ = 2.5738687515259,
  maxZ = 9.3473138809204
    },
    ['forumdr'] = {
        points = {
            -- vector2(-181.78276062012, -1767.562133789),
            -- vector2(-232.15049743652, -1728.5841064454),
            -- vector2(-257.00219726562, -1706.3781738282),
            -- vector2(-316.23831176758, -1670.7681884766),
            -- vector2(-317.6089477539, -1671.6815185546),
            -- vector2(-339.08483886718, -1659.1655273438),
            -- vector2(-345.54052734375, -1655.4389648438),
            -- vector2(-370.05755615234, -1640.6751708984),
            -- vector2(-357.4814453125, -1617.630859375),
            -- vector2(-344.98095703125, -1605.980834961),
            -- vector2(-308.92208862304, -1544.8927001954),
            -- vector2(-304.6683959961, -1535.6296386718),
            -- vector2(-307.36282348632, -1531.2420654296),
            -- vector2(-303.91906738282, -1514.8071289062),
            -- vector2(-302.4489440918, -1508.5216064454),
            -- vector2(-299.51068115234, -1489.9995117188),
            -- vector2(-297.42388916016, -1452.6616210938),
            -- vector2(-297.9144897461, -1445.0788574218),
            -- vector2(-300.47821044922, -1410.740600586),
            -- vector2(-243.52647399902, -1409.9093017578),
            -- vector2(-228.14682006836, -1408.454711914),
            -- vector2(-214.2696685791, -1404.2430419922),
            -- vector2(-202.69938659668, -1398.415649414),
            -- vector2(-176.32830810546, -1382.9993896484),
            -- vector2(-140.07070922852, -1360.1298828125),
            -- vector2(-131.92518615722, -1353.8952636718),
            -- vector2(-126.67826080322, -1347.0697021484),
            -- vector2(-122.79215240478, -1338.1767578125),
            -- vector2(-122.24575042724, -1335.2940673828),
            -- vector2(-88.574974060058, -1337.8919677734),
            -- vector2(-83.885818481446, -1337.3891601562),
            -- vector2(-72.32137298584, -1347.8657226562),
            -- vector2(-55.457233428956, -1349.6873779296),
            -- vector2(-46.141300201416, -1350.8635253906),
            -- vector2(0.30536636710166, -1350.3518066406),
            -- vector2(19.377029418946, -1349.9018554688),
            -- vector2(46.155563354492, -1350.2407226562),
            -- vector2(56.231525421142, -1346.1237792968),
            -- vector2(61.976043701172, -1336.847290039),
            -- vector2(61.876712799072, -1331.4219970704),
            -- vector2(94.016792297364, -1317.3137207032),
            -- vector2(98.473731994628, -1315.1446533204),
            -- vector2(100.91152191162, -1318.8972167968),
            -- vector2(116.59771728516, -1309.0223388672),
            -- vector2(115.354637146, -1306.6965332032),
            -- vector2(142.13439941406, -1291.261352539),
            -- vector2(143.9640197754, -1293.9191894532),
            -- vector2(159.81324768066, -1280.7825927734),
            -- vector2(166.5573272705, -1270.3135986328),
            -- vector2(203.52110290528, -1282.7435302734),
            -- vector2(231.76536560058, -1329.863647461),
            -- vector2(215.84732055664, -1346.2076416016),
            -- vector2(190.12483215332, -1387.3775634766),
            -- vector2(162.40365600586, -1423.5834960938),
            -- vector2(154.98637390136, -1424.7723388672),
            -- vector2(126.23979187012, -1458.2556152344),
            -- vector2(108.94204711914, -1478.851196289),
            -- vector2(113.4779586792, -1482.6186523438),
            -- vector2(111.75213623046, -1484.7049560546),
            -- vector2(109.91118621826, -1483.4962158204),
            -- vector2(92.817611694336, -1503.7390136718),
            -- vector2(69.58283996582, -1526.8861083984),
            -- vector2(39.489440917968, -1562.9592285156),
            -- vector2(16.217784881592, -1590.7109375),
            -- vector2(0.90857058763504, -1609.6218261718),
            -- vector2(-22.47274017334, -1636.7037353516),
            -- vector2(-65.98893737793, -1687.4913330078)
            vector2(65.589691162109, -1473.5983886719),
  vector2(44.349155426025, -1500.142578125),
  vector2(7.8085994720459, -1542.5529785156),
  vector2(-30.296354293823, -1584.9411621094),
  vector2(-61.454517364502, -1622.4390869141),
  vector2(-93.554000854492, -1659.3011474609),
  vector2(-120.11674499512, -1691.7803955078),
  vector2(-139.34346008301, -1713.4797363281),
  vector2(-173.4761505127, -1752.6796875),
  vector2(-230.09086608887, -1709.8005371094),
  vector2(-235.40655517578, -1673.158203125),
  vector2(-236.12818908691, -1620.3596191406),
  vector2(-220.4453125, -1562.5433349609),
  vector2(-182.44709777832, -1517.5473632812),
  vector2(-141.94358825684, -1461.7916259766),
  vector2(-102.65003967285, -1427.8519287109),
  vector2(-9.4401741027832, -1421.2486572266),
  vector2(47.96662902832, -1420.5880126953),
  vector2(78.677894592285, -1446.9757080078),
  vector2(81.907829284668, -1455.5362548828)
        },
        minZ = 15.0,
        maxZ = 38.0
    },
}

Config.ZoneDrugs = { -- \ Names should be same as zone names
    -- Multiple drugs can be added to a zone like shown below
    ["groove"] = {
        {item = 'packagedweed', price = math.random(50, 175)},
        -- {item = 'weed_amnesia', price = math.random(100, 200)},
        -- {item = 'meth', price = math.random(100, 200)},
    },    

    -- ["baycity"] = {        
        {item = 'packagedweed', price = math.random(50, 225)},
    --     {item = 'weed_amnesia', price = math.random(100, 200)},
    --     {item = 'meth', price = math.random(100, 200)},
    -- },    

    ["forumdr"] = {
        {item = 'packagedweed', price = math.random(50, 150)},
        -- {item = 'weed_amnesia', price = math.random(100, 200)},
        -- {item = 'meth', price = math.random(100, 200)},
    },
}

Config.BlacklistPeds = { -- \ Ped models that should be blacklisted
    "mp_m_shopkeep_01",
    "s_m_y_ammucity_01",
    "s_m_m_lathandy_01",
    "s_f_y_clubbar_01",
    "ig_talcc",
    "g_f_y_vagos_01",
    "hc_hacker",
    "s_m_m_migrant_01",
}
