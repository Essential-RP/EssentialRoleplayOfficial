local QBCore = exports['qb-core']:GetCoreObject()
local emsbag1 = nil
local function dropemsbag()
    RequestAnimDict("anim@heists@money_grab@briefcase")
    TaskPlayAnim(PlayerPedId(), "anim@heists@money_grab@briefcase", "put_down_case", 8.0, -8.0, -1, 1, 0, false, false, false)
    Wait(1000)
    ClearPedTasks(PlayerPedId())
    DetachEntity(emsbag1)
    PlaceObjectOnGroundProperly(emsbag1)
end
local function spawnemsbag()
    local hasBag = true
    CreateThread(function()
        while hasBag do
            Wait(0)
            if not hasbag then
                hasbag = true
                exports['qb-core']:DrawText('[E] Drop EMS Bag')
            end
            if IsControlJustReleased(0, 38) then -- If E is pressed it drop the  bag
                dropemsbag()
                hasBag = false
                exports['qb-core']:HideText()
                exports['qb-menu']:closeMenu()
                Wait(1000)
            end
        end
    end)
end
local ObjectList = {}

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
  end

RegisterNetEvent('essential-emsbag:Client:SpawnAmbulanceBag', function()
    loadAnimDict("anim@heists@money_grab@briefcase")
    TaskPlayAnim(PlayerPedId(), "anim@heists@money_grab@briefcase", "put_down_case", 8.0, -8.0, -1, 1, 0, false, false, false)
    Wait(1000)
    ClearPedTasks(PlayerPedId())
    local hash = GetHashKey('prop_cs_shopping_bag')
    local ped = PlayerPedId()
    local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 3.0, 0.5))
    QBCore.Functions.LoadModel(hash)
    emsbag1 = CreateObjectNoOffset(hash, x, y, z, true, false)
    SetModelAsNoLongerNeeded(hash)
    AttachEntityToEntity(emsbag1, ped, GetPedBoneIndex(ped, 57005), 0.42, 0, -0.05, 0.10, 270.0, 60.0, true, true, false,
        true, 1, true)
        spawnemsbag()
    TriggerServerEvent("essential-emsbag:Server:RemoveItem","emsbag",1)
end)

RegisterNetEvent('essential-emsbag:Client:spawnLight', function()

    TriggerServerEvent("essential-emsbag:Server:SpawnAmbulanceBag", "emsbag")
end)

RegisterNetEvent('essential-emsbag:Client:GuardarAmbulanceBag')
AddEventHandler("essential-emsbag:Client:GuardarAmbulanceBag", function()
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
    local playerPedPos = GetEntityCoords(PlayerPedId(), true)
    local AmbulanceBag = GetClosestObjectOfType(playerPedPos, 10.0, GetHashKey("prop_cs_shopping_bag"), false, false, false)
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Back the Ems Bag...")
    Wait(2500)
    Notify("Ems Bag Taken Back with success.")
    SetEntityAsMissionEntity(AmbulanceBag, 1, 1)
    DeleteObject(AmbulanceBag)
    TriggerServerEvent("essential-emsbag:Server:AddItem","emsbag",1)
end)

local citizenid = nil
AddEventHandler("essential-emsbag:Client:StorageAmbulanceBag", function()
    local charinfo = QBCore.Functions.GetPlayerData().charinfo
    citizenid = QBCore.Functions.GetPlayerData().citizenid
    TriggerEvent("inventory:client:SetCurrentStash", "Ambulance Bag",citizenid)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Ambulance Bag",citizenid, {
        maxweight = Config.Stash.MaxWeighStash,
        slots = Config.Stash.MaxSlotsStash,
    })
end)

local AmbulanceBags = {
    `prop_cs_shopping_bag`,
}

exports['qb-target']:AddTargetModel(AmbulanceBags, {
    options = {{event   = "essential-emsbag:Client:MenuAmbulanceBag",icon    = "fa-solid fa-suitcase-medical",label   = "Ems Bag" , job = Config.Bag.Job },
    {event   = "essential-emsbag:Client:GuardarAmbulanceBag",icon    = "fa-solid fa-suitcase-medical",label   = "Take Back Ems Bag" , job = Config.Bag.Job },},distance = 2.0 })

 

--     while hasBag do
--         Wait(0)
--         if not hasbag then
--             hasbag = true
--             exports['qb-core']:DrawText('[E] Drop EMS Bag')
--         end
--         if IsControlJustReleased(0, 38) then -- If E is pressed it drop the  bag
--             dropemsbag()
--             hasbag = false
--             exports['qb-core']:HideText()
--             exports['qb-menu']:closeMenu()
--             Wait(1000)
--         end
--     end
-- end)