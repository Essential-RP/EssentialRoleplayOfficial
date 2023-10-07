Config = {}
Config.Debug = false


Config.UseTokens = false
Config.UseRGB = true

local smelterGuy = {
    name = 'smelterGuy',
    model = 'a_m_m_og_boss_01',
    tradeName = 'SandwichToBeer',
    tradeLabel = 'Got Something Valueable?',
    coords = vector4(1563.66, -1710.38, 92.36, 282.03),
    animation = 'WORLD_HUMAN_LEANING',
    available = {from = 0, to = 23}
}

local goldbarguy = {
    name = 'goldbarguy',
    model = 'u_m_y_militarybum',
    tradeName = 'ChainsToBars',
    tradeLabel = 'Hmm So I see you have some gold chains?',
    coords = vector4(1087.9234619141, -2002.0274658203, 30.880876541138, 323.9052734375),
    animation = 'WORLD_HUMAN_LEANING',
}
local goldwatchguy = {
    name = 'goldwatchguy',
    model = 's_m_m_dockwork_01',
    tradeName = 'WatchesToBars',
    tradeLabel = 'Hmm So I see you have some gold watches?',
    coords = vector4(1109.9698486328, -2008.189453125, 31.061130523682, 52.398952484131),
    animation = 'WORLD_HUMAN_LEANING',
}
local BarToCashGuy = {
    name = 'BarToCashGuy',
    model = 'a_m_o_salton_01',
    tradeName = 'BarToCash',
    tradeLabel = 'If you dont have any gold bars leave me alone!',
    coords = vector4(1700.4829101563, 3294.0913085938, 48.922077178955, 212.51472473145),
    animation = 'WORLD_HUMAN_LEANING',
}
-- local RecyableGuy = {
--     name = 'RecyableGuy',
--     model = 's_m_y_garbage',
--     tradeName = 'MattsToRecyclables',
--     tradeLabel = 'Matticket? Your gonna need some space for this!',
--     coords = vector4(-355.70840454102, -1555.6680908203, 25.18013381958, 175.62097167969),
--     animation = 'WORLD_HUMAN_LEANING',
-- }
-- local RecyableGuyMetal = {
--     name = 'RecyableGuyMetal',
--     model = 's_m_y_garbage',
--     tradeName = 'RecycToMetal',
--     tradeLabel = 'Need Some MetalScrap?',
--     coords = vector4(-356.57009887695, -1542.7843017578, 27.722051620483, 358.89273071289),
--     animation = 'WORLD_HUMAN_STAND_IMPATIENT',
-- } 
-- local RecyableGuyRubber = {
--     name = 'RecyableGuyRubber',
--     model = 's_m_y_garbage',
--     tradeName = 'RecycToRubber',
--     tradeLabel = 'Need Some Rubber?',
--     coords = vector4(-358.70205688477, -1542.7447509766, 27.734687805176, 355.04083251953),
--     animation = 'WORLD_HUMAN_STAND_IMPATIENT',
-- }
-- local RecyableGuyIron = {
--     name = 'RecyableGuyIron',
--     model = 's_m_y_garbage',
--     tradeName = 'RecycToIron',
--     tradeLabel = 'Need Some Iron?',
--     coords = vector4(-359.65084838867, -1541.4805908203, 27.728715896606, 268.84759521484),
--     animation = 'WORLD_HUMAN_LEANING',
-- }
-- local RecyableGuyPlastic = {
--     name = 'RecyableGuyPlastic',
--     model = 's_m_y_garbage',
--     tradeName = 'RecycToPlastic',
--     tradeLabel = 'Need Some Plastic?',
--     coords = vector4(-356.62026977539, -1539.8729248047, 27.717351913452, 178.07542419434),
--     animation = 'WORLD_HUMAN_LEANING',
-- }
-- local RecyableGuyGlass = {
--     name = 'RecyableGuyGlass',
--     model = 's_m_y_garbage',
--     tradeName = 'RecycToGlass',
--     tradeLabel = 'Need Some Glass?',
--     coords = vector4(-358.66137695313, -1540.0045166016, 27.718837738037, 175.4506072998),
--     animation = 'WORLD_HUMAN_LEANING',
-- }
-- local RecyableGuySteel = {
--     name = 'RecyableGuySteel',
--     model = 's_m_y_garbage',
--     tradeName = 'RecycToSteel',
--     tradeLabel = 'Need Some Steel?',
--     coords = vector4(-355.37927246094, -1537.1390380859, 27.708986282349, 266.80429077148),
--     animation = 'WORLD_HUMAN_LEANING',
-- }

--[[ local bumGuy = {
    name = 'bumGuy',
    model = 'u_m_y_militarybum',
    tradeName = 'BeerToMeth',
    tradeLabel = 'Trade 5 beers for a bag of meth',
    coords = vector4(934.5, -1903.48, 31.12, 89.13),
    animation = 'WORLD_HUMAN_BUM_STANDING',
}

local golfGuy = {
    name = 'golfGuy',
    model = 'a_f_y_golfer_01',
    tradeName = 'FoodToGolfClub',
    tradeLabel = 'Trade 1 coffee and 2 sandwiches for a golf club',
    coords = vector4(-1135.78, 1.76, 48.48, 121.0),
    animation = 'PROP_HUMAN_SEAT_BENCH',
}

local phoneGuy = {
    name = 'golfGuy',
    model = 'ig_lifeinvad_02',
    tradeName = 'PhoneToCash',
    tradeLabel = 'Trade 1 phone for cash',
    coords = vector4(1137.17, -472.37, 66.57, 254.41),
    animation = 'WORLD_HUMAN_AA_COFFEE',
}

local shadyGuy = { -- Note that this guy is NOT included in the below Config.Traders, as he uses items not included with stock qb-core (rolled bills)
    name = 'shadyGuy',
    model = 'g_m_y_famfor_01',
    trades = {
        { tradeLabel = 'Trade 10 rolls to 10 bags of meth', tradeName = 'RollsToMeth' },
        { tradeLabel = 'Trade 200 rolls to heavy pistol', tradeName = 'RollsToHeavyPistol' },
        { tradeLabel = 'Trade 300 rolls to uzi', tradeName = 'RollsToUzi' },
    }, 
    coords = vector4(1131.48, -2202.64, 31.7, 137.99),
    animation = 'WORLD_HUMAN_DRUG_DEALER_HARD', 
}
 ]]
Config.Traders = {
    smelterGuy,
    goldbarguy,
    goldwatchguy,
    BarToCashGuy,
    RecyableGuy,
    RecyableGuyMetal,
    RecyableGuyGlass,
    RecyableGuyPlastic,
    RecyableGuySteel,
    RecyableGuyRubber,
    RecyableGuyIron,
    -- goldbarguy,
    -- goldwatchguy,
    -- BarToCashGuy,
    -- RecyableGuy,
}

------------------------------
-- RELATED TO CW-RGBPAINTER --
------------------------------

--[[ local paintGuy = {
    name = 'paintGuy',
    model = 's_m_m_gaffer_01',
    trades = {
        { tradeLabel = 'Trade cash to paint gun', tradeName = 'CashToPaintGun' },
        { tradeLabel = 'Trade cash to paint canisters', tradeName = 'CashToPaintCanisters' },
        { tradeLabel = 'Trade cash to paint remover', tradeName = 'CashToPaintRemovalSpray' },
    }, 
    coords = vector4(875.2, -1014.9, 31.1, 4.14),
    animation = 'WORLD_HUMAN_SEAT_WALL',
}
 
Config.RGBTraders = {
    paintGuy,
}
--------------------------
-- RELATED TO CW-TOKENS --
--------------------------
local uziGuy = {
    name = 'uziGuy',
    model = 'csb_ramp_gang',
    gang = 'ballas',
    trades = {
        { tradeLabel = 'Trade token for uzi', tradeName = 'TokenToUzi', },
        { tradeLabel = 'Trade token for pistol', tradeName = 'TokenToPistol' },
        { tradeLabel = 'Trade token for sawed off', tradeName = 'TokenToSawedOff' },
    },
    coords = vector4(139.08, -1921.67, 21.38, 298.39),
    animation = 'WORLD_HUMAN_DRUG_DEALER',
}

local hoboGuy = {
    name = 'hoboGuy',
    model = 'a_m_o_tramp_01',
    trades = {
        { tradeLabel = 'Trade token for molotov', tradeName = 'TokenToMolotov', },
        { tradeLabel = 'Trade token for double barrel sawed off', tradeName = 'TokenToDoubleBarrel' },
    },
    coords = vector4(1443.26, 6331.79, 23.98, 2.27),
    animation = 'WORLD_HUMAN_LEANING',
}

local milRifleGuy = {
    name = 'milRifleGuy',
    model = 'ig_old_man1a',
    tradeLabel = 'Trade token for gear',
    tradeName = 'TokenToMilRifle',
    coords = vector4(880.39, 2888.02, 56.51, 311.04),
    animation = 'WORLD_HUMAN_BINOCULARS',
}

local eastSideGuy = {
    name = 'eastSideGuy',
    model = 'a_f_m_tramp_01',
    trades = {
        { tradeLabel = 'Trade token for 30 meth baggies', tradeName = 'TokenToMeth', },
        { tradeLabel = 'Trade token for 30 crack baggies', tradeName = 'TokenToCrack' },
    },
    coords = vector4(931.56, -1499.05, 30.33, 40.57),
    animation = 'WORLD_HUMAN_BUM_STANDING',
}

local weedGuy = {
    name = 'weedGuy',
    model = 'a_m_m_hillbilly_02',
    trades = {
        { tradeLabel = 'Trade token for 5 AK seeds', tradeName = 'TokenToAKSeed' },
        { tradeLabel = 'Trade token for 5 Amnesia seeds', tradeName = 'TokenToAmnesiaSeed' },
        { tradeLabel = 'Trade token for 5 OG Kush seeds', tradeName = 'TokenToOGSeed' },
        { tradeLabel = 'Trade token for 5 Purple Haze seeds', tradeName = 'TokenToPurpleHazeSeed' },
        { tradeLabel = 'Trade token for 5 Skunk seeds', tradeName = 'TokenToSkunkSeed' },
        { tradeLabel = 'Trade token for 5 White Widow seeds', tradeName = 'TokenToWhiteWidowSeed' },
        { tradeLabel = 'Trade token for 10 bags of weed nutrition', tradeName = 'TokenToWeedNutrition' },
    },
    coords = vector4(2226.79, 5575.66, 53.64, 193.85),
    animation = 'WORLD_HUMAN_GARDENER_PLANT', ]]
--[[ } ]]

--[[ Config.TokenTraders = {
    uziGuy,
    milRifleGuy,
    hoboGuy,
    eastSideGuy,
    weedGuy
} ]]


-- animation pastebin https://pastebin.com/6mrYTdQv