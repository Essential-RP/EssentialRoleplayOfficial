-- Created by Scully#5775 | https://discord.gg/eNtGFS6
TLS = {
    Language = {
        NotNear = '~r~You are not near a police vehicle trunk!'
    },
    EUPUI = {
        Enable = true, -- Set to false if you don't want to use the EUP UI.
        Command = 'eup' -- Change the command used to access the UI
    },
    HelmetUI = {
        Enable = false, -- Set to true if you have the helmets. (PAID) (https://thinlinesanctuary.com/products/ops-core-fast-helmet-accessories-pack)
        Command = 'helmet' -- Change the command used to access the UI
    },
    Helmet = {
        Enable = false, -- Set to true if you have the helmets. (PAID) (https://thinlinesanctuary.com/products/ops-core-fast-helmet-accessories-pack)
        NVGLabel = 'Toggle Night Vision',
        NVGCommand = 'nvg',
        NVGKeybind = 'y', -- Set to '' to disable the keybind, you can find available keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        SwapLabel = 'Swap to Alternative',
        SwapCommand = 'altswap',
        SwapKeybind = '', -- Set to a key to enable the keybind, you can find available keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        Male = {
            Helmets = {59, 62, 89, 91, 92, 93},
            NVG = {2},
            Respirators = {50},
            Alternatives = {
                {
                    mainComponent = 1,
                    newComponent = 2,
                    anim = 'visor_down'
                },
                {
                    mainComponent = 2,
                    newComponent = 1,
                    anim = 'visor_up'
                },
                {
                    mainComponent = 3,
                    newComponent = 5,
                    anim = 'visor_down'
                },
                {
                    mainComponent = 5,
                    newComponent = 3,
                    anim = 'visor_up'
                },
                {
                    mainComponent = 7,
                    newComponent = 8,
                    anim = 'visor_down'
                },
                {
                    mainComponent = 8,
                    newComponent = 7,
                    anim = 'visor_up'
                }
            }
        },
        Female = {
            NVG = {2},
            Respirators = {50}
        }
    },
    Vest = {
        Enable = false, -- Set to true if you have the vests. (PAID) (https://thinlinesanctuary.com/products/crye-avs-plate-carrier) and (https://thinlinesanctuary.com/products/avs-swat-add-on)
        EnableTrunk = true, -- Set to false if you don't want a police trunk to be a requirement to toggle your vest.
        Label = 'Toggle Vest',
        Command = 'vest',
        Keybind = 'k', -- Set to '' to disable the keybind, you can find available keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        Male = {17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27},
        Female = {19, 20, 21, 22, 23, 24, 25}
    },
    Fleece = {
        Enable = false, -- Set to true if you have the fleece. (PAID) (https://thinlinesanctuary.com/products/fleece-jacket)
        Label = 'Toggle Hood',
        Command = 'hood',
        Keybind = 'g', -- Set to '' to disable the keybind, you can find available keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        Male = {
            {
                mainComponent = 209,
                newComponent = 210
            },
            {
                mainComponent = 210,
                newComponent = 209
            }
        },
        Female = {
            {
                mainComponent = 213,
                newComponent = 214
            },
            {
                mainComponent = 214,
                newComponent = 213
            }
        }
    },
    BaseballHat = {
        Enable = false, -- Set to true if you have the baseball hat. (FREE) (https://thinlinesanctuary.com/pages/tactical-baseball-hat)
        Label = 'Flip Hat',
        Command = 'hat',
        Keybind = 'u', -- Set to '' to disable the keybind, you can find available keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        Male = {
            {
                mainComponent = 3,
                newComponent = 4
            },
            {
                mainComponent = 4,
                newComponent = 3
            }
        },
        Female = {
            {
                mainComponent = 3,
                newComponent = 4
            },
            {
                mainComponent = 4,
                newComponent = 3
            }
        }
    },
    Glasses = {
        Enable = false, -- Set to true if you have any of our glasses.
        Label = 'Toggle Glasses',
        Command = 'glasses',
        Keybind = 'm', -- Set to '' to disable the keybind, you can find available keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        Male = {
            {
                Enable = true, -- Set to false if you don't have our oakley m frame glasses. (PAID) (https://thinlinesanctuary.com/products/oakley-m-frame-glasses)
                mainComponent = 11,
                newComponent = 9
            },
            {
                Enable = true, -- Set to false if you don't have our oakley m frame glasses. (PAID) (https://thinlinesanctuary.com/products/oakley-m-frame-glasses)
                mainComponent = 9,
                newComponent = 11
            },
            {
                Enable = true, -- Set to false if you don't have our oakley flak 2.0 xl glasses. (PAID) (https://thinlinesanctuary.com/products/oakley-flak-2-0-xl-glasses)
                mainComponent = 15,
                newComponent = 13
            },
            {
                Enable = true, -- Set to false if you don't have our oakley flak 2.0 xl glasses. (PAID) (https://thinlinesanctuary.com/products/oakley-flak-2-0-xl-glasses)
                mainComponent = 13,
                newComponent = 15
            }
        },
        Female = {
            {
                Enable = true, -- Set to false if you don't have our oakley m frame glasses. (PAID) (https://thinlinesanctuary.com/products/oakley-m-frame-glasses)
                mainComponent = 11,
                newComponent = 9
            },
            {
                Enable = true, -- Set to false if you don't have our oakley m frame glasses. (PAID) (https://thinlinesanctuary.com/products/oakley-m-frame-glasses)
                mainComponent = 9,
                newComponent = 11
            },
            {
                Enable = true, -- Set to false if you don't have our oakley flak 2.0 xl glasses. (PAID) (https://thinlinesanctuary.com/products/oakley-flak-2-0-xl-glasses)
                mainComponent = 15,
                newComponent = 13
            },
            {
                Enable = true, -- Set to false if you don't have our oakley flak 2.0 xl glasses. (PAID) (https://thinlinesanctuary.com/products/oakley-flak-2-0-xl-glasses)
                mainComponent = 13,
                newComponent = 15
            }
        }
    }
}