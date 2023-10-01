QB = {}

QB.Spawns = {
    ["legion"] = {
        coords = vector4(195.17, -933.77, 29.7, 144.5),
        location = "legion",
        label = "Legion Square",
        pos = {top = 51.1, left = 65.0}
    },

    ["policedp"] = {
        coords = vector4(435.85406494141, -974.70257568359, 30.718267440796, 89.435897827148),
        location = "policedp",
        label = "Police Department",
        pos = {top = 42.8, left = 64.9}
    },

    ["paleto"] = {
        coords = vector4(80.35, 6424.12, 31.67, 45.5),
        location = "paleto",
        label = "Paleto Bay",
        pos = {top = 45, left = 29.9}
    },

    ["motel"] = {
        coords = vector4(324.70614624023, -209.72808837891, 54.050018310547, 157.52836608887),
        location = "motel",
        label = "Pink Cage Motels",
        pos = {top = 43.7, left = 61.0}
    },

    ["sandy"] = {
        coords = vector4(1151.608154296875, 2667.66650390625, 38.14596557617187, 356.8353271484375),          
        location = "sandy",      
        label = "Sandy Shores",
        pos = {top = 29.7, left = 42.0},
    },

    ["amusementpark"] = {
        coords = vector4(-1600.0509033203125, -971.2437133789064, 13.01739120483398, 54.69508361816406),
        location = "amusementpark",
        label = "The Pier",
        pos = {top = 59.3, left = 64.8},
    },

    -- ["paleto2"] = {
    --     coords = vector4(-375.2769775390625, 6030.4697265625, 31.52615165710449, 162.48745727539065),
    --     location = "paleto2",
    --     label = "Paleto Bay Sheriff",
    --     pos = {top = 55.8, left = 30.9},
    -- },
    -- ["apartments"] = {
    --     coords = vector4(-1861.359619140625, -350.3289184570313, 20.87908172607422, 2.81375503540039),         
    --     location = "apartments",
    --     label = "Cresten Apartments",
    --     pos = {top = 50, left = 50},
    -- },
}

QB.SpawnAccess = { --To disable the buttons
    ['apartments'] = true,
    ['houses'] = true,
    ['lastLoc'] = true,
}