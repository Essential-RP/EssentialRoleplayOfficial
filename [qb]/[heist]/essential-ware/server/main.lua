local QBCore = exports['qb-core']:GetCoreObject()

local Loot1 = false 
local Loot2 = false 
local Loot3 = false 
local Loot4 = false
local HackCooldown = false

RegisterNetEvent('essential-ware:server:ResetHeist', function()
    TriggerEvent('essential-ware:server:setloot1', false)
    TriggerEvent('essential-ware:server:setloot2', false)
    TriggerEvent('essential-ware:server:setloot3', false)
    TriggerEvent('essential-ware:server:setloot4', false)
    TriggerEvent('essential-ware:server:closedoor', Config.DoorId)
    TriggerEvent('essential-ware:server:closedoor', Config.DoorId2)
    TriggerEvent('essential-ware:server:closedoor', Config.DoorId3)
end)

RegisterNetEvent('essential-ware:server:setloot1', function(status)
    if status ~= nil then
        Loot1 = status
        TriggerClientEvent('essential-ware:client:setloot1', -1, Loot1)
    else 
        TriggerClientEvent('essential-ware:client:setloot1', -1, Loot1)
    end
end)

RegisterNetEvent('essential-ware:server:setloot2', function(status)
    if status ~= nil then
        Loot2 = status
        TriggerClientEvent('essential-ware:client:setloot2', -1, Loot2)
    else 
        TriggerClientEvent('essential-ware:client:setloot2', -1, Loot2)
    end
end)

RegisterNetEvent('essential-ware:server:setloot3', function(status)
    if status ~= nil then
        Loot3 = status
        TriggerClientEvent('essential-ware:client:setloot3', -1, Loot3)
    else 
        TriggerClientEvent('essential-ware:client:setloot3', -1, Loot3)
    end
end)

RegisterNetEvent('essential-ware:server:setloot4', function(status)
    if status ~= nil then
        Loot4 = status
        TriggerClientEvent('essential-ware:client:setloot4', -1, Loot4)
    else 
        TriggerClientEvent('essential-ware:client:setloot4', -1, Loot4)
    end
end)



-- open a door
RegisterNetEvent('essential-ware:server:closedoor', function(doorid)
    local src = source
    TriggerClientEvent('qb-doorlock:client:setState', -1, src, doorid, true, false, false, false)
end)

RegisterNetEvent('essential-ware:server:ThermitePtfx', function()
    TriggerClientEvent('essential-ware:client:ThermitePtfx', -1)
end)

RegisterServerEvent('essential-ware:server:sethacktimercool', function()
    HackCoolDown = true
    local timer = Config.HackCoolDown * (60 * 1000)
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
          HackCoolDown = false
        end
    end
  end)

  QBCore.Functions.CreateCallback("essential-ware:server:Cooldown",function(source, cb)
    if HackCoolDown then
        cb(true)
    else
        cb(false)
    end
end)

-- test
local peds = { 
    `mp_m_securoguard_01`,
    `s_m_m_security_01`,
    `s_m_m_highsec_01`,
    `s_m_m_highsec_02`,
    `s_m_m_marine_01`,
    `s_m_m_prisguard_01`,
    `s_m_m_strpreach_01`,
    `s_m_y_armymech_01`,
}

local getRandomNPC = function()
    return peds[math.random(#peds)]
end

QBCore.Functions.CreateCallback('essential-ware:server:SpawnNPC', function(source, cb, loc)
    local netIds = {}
    local netId
    local npc
    for i=1, #Config.Shooters['whouse'].locations[loc].peds, 1 do
        npc = CreatePed(30, getRandomNPC(), Config.Shooters['whouse'].locations[loc].peds[i], true, false)
        while not DoesEntityExist(npc) do Wait(10) end
        netId = NetworkGetNetworkIdFromEntity(npc)
        netIds[#netIds+1] = netId
    end
    cb(netIds)
end)

RegisterNetEvent('essential-ware:server:removebomb', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
            Player.Functions.RemoveItem(Config.bomb, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.bomb], "remove")
end)

RegisterNetEvent('essential-ware:server:removeitem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
            Player.Functions.RemoveItem(Config.HackLaptop, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.HackLaptop], "remove")
end)

RegisterNetEvent('essential-ware:server:removelaptop2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
            Player.Functions.RemoveItem(Config.HackLaptop2, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.HackLaptop2], "remove")
end)

RegisterNetEvent('essential-ware:server:removelaptop3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
            Player.Functions.RemoveItem(Config.HackLaptop3, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.HackLaptop3], "remove")
end)

RegisterNetEvent('essential-ware:server:removesafeitem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
            Player.Functions.RemoveItem(Config.Safeitem, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Safeitem], "remove")
end)