local QBCore = exports['qb-core']:GetCoreObject()

local MoneyType = Config.MoneyType
local HackItem = Config.HackItem
local CoolDown = false


--------------------------------------------------------------------------------------- # Events # ---------------------------------------------------------------------------------------
RegisterServerEvent('yonni-containers:server:timer', function()
    CoolDown = true
    local timer = Config.CoolDown * (60 * 1000)
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CoolDown = false
        end
    end
end)

RegisterNetEvent('yonni-containers:server:removeitem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.HackingItem.sb, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.HackingItem.sb], "remove", 1)
    Player.Functions.RemoveItem(Config.HackingItem.lt, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.HackingItem.lt], "remove", 1)
end)

RegisterNetEvent('yonni-containers:server:giveitemback', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(HackItem, 1)
end)

RegisterNetEvent("yonni-containers:server:success",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.AddMoney('cash', math.random(Config.PaymentMin, Config.PaymentMax))
end)

RegisterNetEvent("yonni-containers:server:containerrewards",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.AddItem(Config.ContainerItems, 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ContainerItems], "add", 1)
end)

RegisterNetEvent('yonni-containers:server:success2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local bands = math.random(25, 35)
    local rareLoot = math.random(100)
    local info = {
        worth = math.random(Config.PaymentMin, Config.PaymentMax)
    }
    if Player then

        if rareLoot <= Config.RareLoot then
            Player.Functions.AddItem(Config.RareLootItem, 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RareLootItem], "add", 1)
        end
        
        Player.Functions.AddItem('bands', bands, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bands'], "add")
        Player.Functions.RemoveItem(Config.HackItem, 1)

    end
end)
--------------------------------------------------------------------------------------- # Start / Stop Resoure # ----------------------------------------------------------------------------
-- AddEventHandler('onResourceStart', function(resource)
--     if resource == GetCurrentResourceName() then
--         PerformHttpRequest('https://raw.githubusercontent.com/DevSerrulata/essential-atmrobbery/master/version.txt', function(errorCode, result, headers)
--             local version = LoadResourceFile(GetCurrentResourceName(), '1.0.2')
--             if result ~= version then
--                 print("-----------------------------------------------------")
--                 print("essential-atmrobbery is outdated, please update it!")
--                 print("-----------------------------------------------------")
--             else
--                 print("essential-atmrobbery is up to date!")
--             end
--         end)
--     end
-- end)


--------------------------------------------------------------------------------------- # Callbacks # ---------------------------------------------------------------------------------------
QBCore.Functions.CreateCallback("yonni-containers:server:Cooldown",function(source, cb)
    if CoolDown then
        cb(true)
    else
        cb(false)
    end
end)
