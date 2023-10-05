local cashAmount = 0
local bankAmount = 0

RegisterNetEvent('hud:client:ShowAccounts', function(type, amount)
    local QBCore = exports['qb-core']:GetCoreObject()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if type == 'cash' then
        SendNUIMessage({
            action = 'show',
            type = 'cash',
            cash = amount
        })
    else
        SendNUIMessage({
            action = 'show',
            type = 'bank',
            bank = amount
        })
    end
end)

RegisterNetEvent('hud:client:OnMoneyChange', function(type, amount, isMinus)
    local QBCore = exports['qb-core']:GetCoreObject()
    local PlayerData = QBCore.Functions.GetPlayerData()

    cashAmount = PlayerData.money['cash']
    bankAmount = PlayerData.money['bank']
    SendNUIMessage({
        action = 'updatemoney',
        cash = cashAmount,
        bank = bankAmount,
        amount = amount,
        minus = isMinus,
        type = type
    })
end)

exports['qb-target']:AddBoxZone("Troopersbossmenu",vector3(463.28903198242, -988.58666992188, 30.689847946167), 1.8, 1, {
    name="Troopersbossmenu",
    heading=0,
    minZ=27.09,
    maxZ=31.09,
}, {
    options = {
        {
            type = "client",
            event = "qb-bossmenu:client:OpenMenu",
            icon = "fas fa-clipboard",
            label = "access boss menu",
            job = {
                ["sast"] = 0,
            }
        },
    },
    distance = 8
})


-- Keybindings

RegisterKeyMapping('escort', 'Escort Player', 'keyboard', Config.Escort)
RegisterKeyMapping('putinvehicle', 'Put In Vehicle', 'keyboard', Config.Putinvehicle)
RegisterKeyMapping('cuffplayer', 'Cuff Player', 'keyboard', Config.Cuff)


RegisterCommand('escort', function()
    TriggerEvent("police:client:EscortPlayer")
end, false)

RegisterCommand('putinvehicle', function()
    TriggerEvent("police:client:PutPlayerInVehicle")
end, false)

RegisterCommand('cuffplayer', function()
    TriggerEvent("police:client:CuffPlayerSoft")
end, false)

