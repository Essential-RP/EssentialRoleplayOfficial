local QBCore = exports['qb-core']:GetCoreObject()

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


-- Recycle Ped

exports['qb-target']:SpawnPed({
    [5487] = {
        model = Config.RecycleModel,
        coords = Config.RecycleModelLocation,
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD',
        target = {
            options = {
                {
                    type = "client",
                    event = "recycletrade:StartMenu",
                    icon = 'fas fa-car',
                    label = 'Trade Materials',
                }
            },
            distance = 1.5,
        }
    }
})


RegisterNetEvent('recycletrade:StartMenu', function()
    local menu = {
        {
            header = "| Trade Materials |",
            icon = 'fas fa-clipboard',
            txt = ""
        },
        {
            id = 2,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['rubber'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['rubber'].label,
            txt = "50x Materials",
            params = {
                event = "recycletrade:rubber",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 3,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['steel'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['steel'].label,
            txt = "50x Materials",
            params = {
                event = "recycletrade:steel",
                args = {
                    number = 1,
                    id = 3
                }
            }
        },
        {
            id = 4,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['metalscrap'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['metalscrap'].label,
            txt = "50x Materials",
            params = {
                event = "recycletrade:metalscrap",
                args = {
                    number = 1,
                    id = 4
                }
            }
        },
        {
            id = 5,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['plastic'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['plastic'].label,
            txt = "50x Materials",
            params = {
                event = "recycletrade:plastic",
                args = {
                    number = 1,
                    id = 5
                }
            }
        },
        {
            id = 6,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['iron'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['iron'].label,
            txt = "50x Materials",
            params = {
                event = "recycletrade:iron",
                args = {
                    number = 1,
                    id = 6
                }
            }
        },
        {
            id = 7,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['glass'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['glass'].label,
            txt = "50x Materials",
            params = {
                event = "recycletrade:glass",
                args = {
                    number = 1,
                    id = 7
                }
            }
        },
        {
            id = 8,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['aluminum'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['aluminum'].label,
            txt = "50x Materials",
            params = {
                event = "recycletrade:aluminum",
                args = {
                    number = 1,
                    id = 8
                }
            }
        }
    }

    exports['qb-menu']:openMenu(menu)
    -- Do something with the 'menu' variable here, e.g., show the menu
end)



RegisterNetEvent('recycletrade:rubber')
AddEventHandler('recycletrade:rubber', function()
    if QBCore.Functions.HasItem(Config.RecyclableRemove, 50) then
        QBCore.Functions.Notify("Here you go", 'success')
        TriggerServerEvent('recycletrade:rubber:server:rubbertrade')
    else
        QBCore.Functions.Notify("You don't have the required amount of recyclables.", 'error')
    end
end)

RegisterNetEvent('recycletrade:steel')
AddEventHandler('recycletrade:steel', function()
    if QBCore.Functions.HasItem(Config.RecyclableRemove, 50) then
    QBCore.Functions.Notify("Take This...", 'success')
    TriggerServerEvent('recycletrade:steel:server:steeltrade')
    else
    QBCore.Functions.Notify("You don't have the required amount of recyclables.", 'error')
    end
end)

RegisterNetEvent('recycletrade:metalscrap')
AddEventHandler('recycletrade:metalscrap', function()
    if QBCore.Functions.HasItem(Config.RecyclableRemove, 50) then
    QBCore.Functions.Notify("Take This...", 'success')
    TriggerServerEvent('recycletrade:metalscrap:server:metalscraptrade')
    else
    QBCore.Functions.Notify("You don't have the required amount of recyclables.", 'error')
    end
end)

RegisterNetEvent('recycletrade:plastic')
AddEventHandler('recycletrade:plastic', function()
    if QBCore.Functions.HasItem(Config.RecyclableRemove, 50) then
    QBCore.Functions.Notify("Take This...", 'success')
    TriggerServerEvent('recycletrade:plastic:server:plastictrade')
    else
    QBCore.Functions.Notify("You don't have the required amount of recyclables.", 'error')
    end
end)

RegisterNetEvent('recycletrade:iron')
AddEventHandler('recycletrade:iron', function()
    if QBCore.Functions.HasItem(Config.RecyclableRemove, 50) then
    QBCore.Functions.Notify("Take This...", 'success')
    TriggerServerEvent('recycletrade:iron:server:irontrade')
    else
    QBCore.Functions.Notify("You don't have the required amount of recyclables.", 'error')
    end
end)

RegisterNetEvent('recycletrade:glass')
AddEventHandler('recycletrade:glass', function()
    if QBCore.Functions.HasItem(Config.RecyclableRemove, 50) then
    QBCore.Functions.Notify("Take This...", 'success')
    TriggerServerEvent('recycletrade:glass:server:glass')
    else
    QBCore.Functions.Notify("You don't have the required amount of recyclables.", 'error')
    end
end)

RegisterNetEvent('recycletrade:aluminum')
AddEventHandler('recycletrade:aluminum', function()
    if QBCore.Functions.HasItem(Config.RecyclableRemove, 50) then
    QBCore.Functions.Notify("Take This...", 'success')
    TriggerServerEvent('recycletrade:aluminum:server:aluminum')
    else
    QBCore.Functions.Notify("You don't have the required amount of recyclables.", 'error')
    end
end)




