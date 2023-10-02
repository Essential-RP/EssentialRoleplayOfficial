local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = '',
    ['testwebhook'] = '',
    ['playermoney'] = 'https://discord.com/api/webhooks/1158463890968031292/FIWzHoFiA5eGgOCCXCNOy9h86vyhp9ChFfycGb1_tXSjwbOAzdoD08dxs_yHI8tU7Xn6',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1158463578928586962/ebRc64DKJpkVw6DSAtKOBFhht-5O5BrMFx2LVfdl1MC07nWbwm3ZtROQPSuNPQXJA-Dg',
    ['robbing'] = 'https://discord.com/api/webhooks/1158464052251594903/sRhjsVyc0KWRY8NbV_VprLKQJnMCUOqFx5PR0cVmSFgXPd4zWfIOmAhmTIm3hXO4X_EI',
    ['cuffing'] = 'https://discord.com/api/webhooks/1158463995846602853/H5zcNmXTH5kqAeQEKSaRlYQYT0P2t-lSQ_5XcWiqx3x4-Lm1LGkAhsS7p-Ka0oWY-QVX',
    ['drop'] = 'https://discord.com/api/webhooks/1158463649405485066/uwPqk--2XH0Ia2Zvc0KD60A7Kfyb7AM1r7rV4oyfmqAdqXWnmZ24URypSZyPvOLV8om_',
    ['trunk'] = 'https://discord.com/api/webhooks/1158463851789025280/WbALUPlwQz6eTOpPZ8lYB0qK8ZBunu_9xmPCNZ12TGUrocRBdcyICF2K_cvZzSqjMIfY',
    ['stash'] = 'https://discord.com/api/webhooks/1158463673782784030/epCUZcDoDAsC5xPJE8JxqApotJOIj0n2GutydW2KdMWjt8QNiJfAbDN65dGVHDcHOI92',
    ['glovebox'] = 'https://discord.com/api/webhooks/1158463763276628040/RD2INWMDQ7zZ0-rF13PfS6GrpOunPK_5kFxzLylp9yCELjrI_hBQHRRoE7wRSbk7XQZo',
    ['banking'] = 'https://discord.com/api/webhooks/1158463967916728363/NrHR6OL26NmaRfmeHkxk3wbnqFMT_7197OncKqWppyRLmF2Gq-TCRtmjc-n0prb9KgeG',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1158463461903306902/rmDRO-nilMzuZOZGuCD7_cYAUu2a3PBiZwqfmr1Ncvl8TC8BSLEp4SNE01FVOBAj9LyA',
    ['vehicleupgrades'] = '',
    ['shops'] = 'https://discord.com/api/webhooks/1158460890715263068/LkLZnx3wJ4JwcHQsoA7iiFnNqj_Nkiej4Ku6GqeyTvWe1TGmuljbVk5UtlTF7GZATAN0',
    ['dealers'] = '',
    ['storerobbery'] = '',
    ['bankrobbery'] = '',
    ['powerplants'] = '',
    ['death'] = 'https://discord.com/api/webhooks/1158464111089303622/CVf5cAekxLWSrgJU3b0WP_dKOjGK-zwS3_w6bfAD4hPUzJN88SxkwAguhNGr_f1GulHG',
    ['joinleave'] = 'https://discord.com/api/webhooks/1158464455777202247/RdAViuJ2Ptv79qVdiJ75F0GJcDH08x_nSeDGKRYTIN6vhI-2CMm-ZuI70K9RlmiI3iTQ',
    ['ooc'] = '',
    ['report'] = 'https://discord.com/api/webhooks/1158465949079449691/dbN_Hj8a4DZZBSUedmUOZ4TRrkugdRS-xd5OvPRS1XrTNTSGAs4yjubW4i-fziKaTZek',
    ['me'] = 'https://discord.com/api/webhooks/1158466076850520134/LUd0YHonAdhyGWS4aaWfJlHoxn10i6S4Pi8ODeVIB309aWxLHuWFYNoAWpp2GRv-OcVO',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = 'https://discord.com/api/webhooks/1158464426379325440/UNt1LEl91ALoupyrfb9q5ceheCDFLpkrsm9Ksfn9PZ8WraGf-zuOEPONrIHm1vR4UZjy',
    ['anticheat'] = '',
    ['weather'] = '',
    ['moneysafes'] = '',
    ['bennys'] = 'https://discord.com/api/webhooks/1158464123311489124/Iu4IDIUKHTwrumJK0BNrNyVgD2cFA-LOYZfz5fod6YEnn68mLu46lyaDNbfnnwE5Z7Pe',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1158464318380191774/ESmd67LL3pMHXAJtKa2xXjDNObMu2S3vw7Bna-iXvoIIFH4gFOnb08U148Cys0H1Twcr',
    ['robbery'] = '',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = 'https://discord.com/api/webhooks/1158464192018382859/mH1-dQo8B1ZoFMH3qJUiwp8Ti0lMxtBTg-ccyMwgQtwGBRMx4EgjAmvfdgXldhkwQ3c5',
    ['palert'] = 'https://discord.com/api/webhooks/1158466191963209788/tIi0jtJEPHOAuUfoxPTaK_nevf-0uhmrDltSjfBTq0RyWPFkPrisYBMJOndrWywjEn-2',
    ['house'] = '',
    ['qbjobs'] = '',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'Essential Logs',
                ['icon_url'] = 'https://cdn.discordapp.com/attachments/1141694599035891752/1158462519585812500/logo1212121.png?ex=651c55cb&is=651b044b&hm=4221087ce464d99ed04bf0425f7925aa70f65d258ac9ad2e7bf5809a30e2e591&',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
