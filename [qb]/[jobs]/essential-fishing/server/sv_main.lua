QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('essential-fishing:server:RemoveBait', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    if exports['qb-inventory']:RemoveItem(Player.PlayerData.source, 'fishingbait', 1, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items['fishingbait'], 'remove', 1)
    end
end)

RegisterNetEvent('essential-fishing:server:ReceiveFish', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local random = math.random(100) -- Random number from 1 to 100
    local item
    
    if random >= 90 and random <= 100 then -- 10%
        item = 'fish'
    elseif random >= 80 and random <= 100 then -- 5%
        item = 'fish2'
    elseif random >= 70 and random <= 100 then -- 6%
        item = 'catfish'
    elseif random >= 60 and random <= 100 then -- 6%
        item = 'goldfish'
    elseif random >= 50 and random <= 100 then -- 6%
        item = 'largemouthbass'
    elseif random >= 40 and random <= 100 then -- 6%
        item = 'redfish'
    elseif random >= 30 and random <= 100 then -- 6%
        item = 'salmon'
    elseif random >= 25 and random <= 100 then -- 6%
        item = 'stingray'
    elseif random >= 20 and random <= 100 then -- 6%
        item = 'stripedbass'
    elseif random >= 2 and random <= 100 then -- 7%
        item = 'whale'
    elseif random >= 1 and random <= 100 then 
        item = 'whale2'
    end

    if exports['qb-inventory']:AddItem(Player.PlayerData.source, item, 1, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items[item], 'add', 1)
        TriggerEvent('qb-log:server:CreateLog', 'fishing', 'Received Fish', 'blue', "**"..Player.PlayerData.name .. " (citizenid: "..Player.PlayerData.citizenid.." | id: "..Player.PlayerData.source..")** received 1x "..QBCore.Shared.Items[item].label)
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Your inventory is full already..', 'error', 2500)
    end
end)

QBCore.Functions.CreateUseableItem('fishingrod', function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not Player.Functions.GetItemByName('fishingrod') then return end
    TriggerClientEvent('essential-fishing:client:FishingRod', src)
end)
