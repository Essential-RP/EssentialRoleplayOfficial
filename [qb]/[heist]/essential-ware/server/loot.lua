local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('essential-ware:server:rewards1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local random = math.random(100) 
    local random2 = math.random(20) 
    local item

    if random >= 1 and random <= 30 then 
        item = 'rolex'
    elseif random >= 30 and random <= 60 then 
        item = 'diamond_ring'
    elseif random >= 60 and random <= 80 then 
        item = 'goldchain'
    elseif random >= 80 and random <= 100 then 
        item = 'phone'
    end

    if exports['qb-inventory']:AddItem(Player.PlayerData.source, item, random2, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items[item], 'add', random2)
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Your inventory is full already..', 'error', 2500)
    end
end)

RegisterNetEvent('essential-ware:server:rewards2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local random = math.random(100) 
    local random2 = math.random(20) 

    local item

    if random >= 1 and random <= 10 then 
        item = 'joint'
    elseif random >= 10 and random <= 20 then 
        item = 'crack_baggy'
    elseif random >= 20 and random <= 30 then 
        item = 'xtcbaggy'
    elseif random >= 30 and random <= 40 then 
        item = 'weed_brick'
    elseif random >= 40 and random <= 50 then 
        item = 'coke_brick'
    elseif random >= 50 and random <= 60 then 
        item = 'coke_small_brick'
    elseif random >= 60 and random <= 70 then 
        item = 'oxy'
    elseif random >= 70 and random <= 80 then 
        item = 'meth'
    elseif random >= 80 and random <= 90 then 
        item = 'meth'
    elseif random >= 90 and random <= 100 then 
        item = 'ifaks'
    end

    if exports['qb-inventory']:AddItem(Player.PlayerData.source, item, random2, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items[item], 'add', random2)
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Your inventory is full already..', 'error', 2500)
    end
end)

RegisterNetEvent('essential-ware:server:rewards3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local random = math.random(100) 
    local random2 = math.random(20) 

    local item

    if random >= 1 and random <= 10 then 
        item = 'weapon_advancedrifle'
    elseif random >= 10 and random <= 20 then 
        item = 'weapon_appistol'
    elseif random >= 20 and random <= 30 then 
        item = 'weapon_assaultshotgun'
    elseif random >= 30 and random <= 40 then 
        item = 'weapon_combatmg'
    elseif random >= 40 and random <= 50 then 
        item = 'weapon_combatpdw'
    elseif random >= 50 and random <= 60 then 
        item = 'coke_small_brick'
    elseif random >= 60 and random <= 70 then 
        item = 'weapon_combatpistol'
    elseif random >= 70 and random <= 80 then 
        item = 'weapon_heavypistol'
    elseif random >= 80 and random <= 90 then 
        item = 'weapon_marksmanpistol'
    elseif random >= 90 and random <= 100 then 
        item = 'weapon_pistol'
    end

    if exports['qb-inventory']:AddItem(Player.PlayerData.source, item, random2, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items[item], 'add', random2)
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Your inventory is full already..', 'error', 2500)
    end
end)

RegisterNetEvent('essential-ware:server:rewards4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local random = math.random(100) 
    local random2 = math.random(20) 

    local item

    if random >= 1 and random <= 10 then 
        item = 'weapon_advancedrifle'
    elseif random >= 10 and random <= 20 then 
        item = 'weapon_appistol'
    elseif random >= 20 and random <= 30 then 
        item = 'weapon_assaultshotgun'
    elseif random >= 30 and random <= 40 then 
        item = 'weapon_combatmg'
    elseif random >= 40 and random <= 50 then 
        item = 'weapon_combatpdw'
    elseif random >= 50 and random <= 60 then 
        item = 'coke_small_brick'
    elseif random >= 60 and random <= 70 then 
        item = 'weapon_combatpistol'
    elseif random >= 70 and random <= 80 then 
        item = 'weapon_heavypistol'
    elseif random >= 80 and random <= 90 then 
        item = 'weapon_marksmanpistol'
    elseif random >= 90 and random <= 100 then 
        item = 'weapon_pistol'
    end

    if exports['qb-inventory']:AddItem(Player.PlayerData.source, item, random2, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items[item], 'add', random2)
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Your inventory is full already..', 'error', 2500)
    end
end)

RegisterNetEvent("essential-ware:server:laptopreward",function() -- Med Laptop
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.AddItem(Config.laptopreward, 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.laptopreward], "add", 1)
end)

RegisterNetEvent("essential-ware:server:laptopreward2",function() -- Upstairs 
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.AddItem(Config.laptopreward2, 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.laptopreward2], "add", 1)
end)

RegisterNetEvent("essential-ware:server:laptopreward3",function()  -- Near Gun Loot
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.AddItem(Config.laptopreward3, 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.laptopreward3], "add", 1)
end)

RegisterNetEvent("essential-ware:server:safereward",function()  -- Near Gun Loot
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local markedbills = math.random(3, 5)
    local rareLoot = math.random(100)
    local info = {
        worth = math.random(Config.PaymentMin, Config.PaymentMax)
    }

    if Player then

        if rareLoot <= Config.RareLoot then
            Player.Functions.AddItem(Config.RareLootItem, 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RareLootItem], "add", 1)
        end
    
        Player.Functions.AddItem('markedbills', markedbills, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], "add")
        end
end)