local QBCore = exports['qb-core']:GetCoreObject()

local Objects = {}

local function CreateObjectId()
    if Objects then
        local objectId = math.random(10000, 99999)
        while Objects[objectId] do
            objectId = math.random(10000, 99999)
        end
        return objectId
    else
        local objectId = math.random(10000, 99999)
        return objectId
    end
end

QBCore.Functions.CreateUseableItem('emsbag', function(source, item)TriggerClientEvent("essential-emsbag:Client:spawnLight", source)end)

RegisterNetEvent('essential-emsbag:Server:SpawnAmbulanceBag', function(type)
    local src = source
    local objectId = CreateObjectId()
    Objects[objectId] = type
    TriggerClientEvent("essential-emsbag:Client:SpawnAmbulanceBag", src, objectId, type, src)
end)

RegisterNetEvent('essential-emsbag:Server:RemoveItem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item, amount)
end)

RegisterNetEvent('essential-emsbag:Server:AddItem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(item, amount)
end)


