local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('cash', 'Check Cash Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local cashamount = Player.PlayerData.money.cash
    TriggerClientEvent('hud:client:ShowAccounts', source, 'cash', cashamount)
end)

QBCore.Commands.Add('bank', 'Check Bank Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local bankamount = Player.PlayerData.money.bank
    TriggerClientEvent('hud:client:ShowAccounts', source, 'bank', bankamount)
end)


RegisterNetEvent("yonni-containers:server:containerrewards",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.AddItem(Config.ContainerItems, 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ContainerItems], "add", 1)
end)


RegisterNetEvent("recycletrade:rubber:server:rubbertrade",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.RecyclableRemove, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecyclableRemove], "remove", 50)
    Player.Functions.AddItem(Config.RecycleTrades.rubber, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecycleTrades.rubber], "add", 50)
end)


RegisterNetEvent("recycletrade:steel:server:steeltrade",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem(Config.RecyclableRemove, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecyclableRemove], "remove", 50)
    
    Player.Functions.AddItem(Config.RecycleTrades.steel, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecycleTrades.steel], "add", 50)
end)


RegisterNetEvent("recycletrade:metalscrap:server:metalscraptrade",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem(Config.RecyclableRemove, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecyclableRemove], "remove", 50)
    
    Player.Functions.AddItem(Config.RecycleTrades.metalscrap, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecycleTrades.metalscrap], "add", 50)
end)


RegisterNetEvent("recycletrade:plastic:server:plastictrade",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem(Config.RecyclableRemove, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecyclableRemove], "remove", 50)
    
    Player.Functions.AddItem(Config.RecycleTrades.plastic, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecycleTrades.plastic], "add", 50)
end)


RegisterNetEvent("recycletrade:iron:server:irontrade",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem(Config.RecyclableRemove, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecyclableRemove], "remove", 50)
    
    Player.Functions.AddItem(Config.RecycleTrades.iron, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecycleTrades.iron], "add", 50)
end)

RegisterNetEvent("recycletrade:glass:server:glass",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem(Config.RecyclableRemove, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecyclableRemove], "remove", 50)
    
    Player.Functions.AddItem(Config.RecycleTrades.glass, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecycleTrades.glass], "add", 50)
end)

RegisterNetEvent("recycletrade:aluminum:server:aluminum",function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem(Config.RecyclableRemove, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecyclableRemove], "remove", 50)
    
    Player.Functions.AddItem(Config.RecycleTrades.aluminum, 50, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RecycleTrades.aluminum], "add", 50)
end)