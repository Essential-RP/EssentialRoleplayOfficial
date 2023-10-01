local QBCore = exports['qb-core']:GetCoreObject()

local Washing = false
local WasherID = nil
local BillsChecked = false
local CanCollectBills = false
local WasherPedLocationBlip = nil
local WasherPedLocation = vector4(0.0, 0.0, 0.0, 0.0)
local Washer = nil
local WasherVehicle = nil
local Cleaned = 0

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        exports["ps-zones"]:DestroyZone('Washer-MeetLocation')
    end
end)

RegisterNetEvent("ps-zones:enter", function(ZoneName, ZoneData)
    if ZoneName == 'Washer-MeetLocation' then
        CreateWasher()
    end
end)

CreateThread(function()
    local location = Config.StartPedLocation
    QBCore.Functions.LoadModel(Config.StartPed)
    MainPed = CreatePed(0, Config.StartPed, location.x, location.y, location.z -1, location.w, false, false)
    FreezeEntityPosition(MainPed, true)
    SetEntityInvincible(MainPed, true)
    SetBlockingOfNonTemporaryEvents(MainPed, true)

    exports['qb-target']:AddTargetEntity(MainPed, {
        options = {
            {
                icon = 'fas fa-circle',
                label = 'Whats this??',
                canInteract = function(entity)
                    return entity == MainPed and not Washing
                end,
                action = function()
                    TriggerEvent('kevin-moneywasher:startrun')
                end,
            },
        },
        distance = 2.0
    })
end)

RegisterNetEvent('kevin-moneywasher:startrun', function ()
    QBCore.Functions.TriggerCallback("kevin-moneywasher:server:Cooldown", function(cooldown)
        if cooldown then
            QBCore.Functions.Notify("Someone did this recently. Come back later!", "error", 5000)
        else
            if Config.Phone == 'qb' then
                TriggerServerEvent('qb-phone:server:sendNewMail', {
                    sender = "Unknown",
                    subject = 'Information',
                    message = 'There are a few people we trust when it comes to washing. Meet up with them and give them what you got, they will be expecting you.',
                })
            elseif Config.Phone == 'gks' then
                TriggerServerEvent('gksphone:NewMail', {
                    sender = 'Unknown',
                    image = '/html/static/img/icons/mail.png',
                    subject = "Information",
                    message = 'There are a few people we trust when it comes to washing. Meet up with them and give them what you got, they will be expecting you.'
                })
            elseif Config.Phone == 'qs' then
                TriggerServerEvent('qs-smartphone:server:sendNewMail', {
                    sender = 'Unknown',
                    subject = 'Information',
                    message = 'There are a few people we trust when it comes to washing. Meet up with them and give them what you got, they will be expecting you.',
                    button = {}
                })
            end
            Washing = true
            WasherID = math.random(1, 99999)
            TriggerServerEvent('kevin-moneywasher:server:setcooldown')
            CreateMeetBlip()
            exports["ps-zones"]:CreateCircleZone("Washer-MeetLocation", WasherPedLocation, 100.0, {
                debugPoly = false,
                minZ = WasherPedLocation.z - 1,
                maxZ = WasherPedLocation.z + 1,
            })
        end
    end)
end)

function CreateMeetBlip()
    WasherPedLocation = Config.MoneyWasherPedLocations[math.random(#Config.MoneyWasherPedLocations)]
    WasherPedLocationBlip = AddBlipForCoord(WasherPedLocation)
    SetBlipSprite(WasherPedLocationBlip, 1)
    SetBlipColour(WasherPedLocationBlip, 69)
    SetBlipRoute(WasherPedLocationBlip, true)
    SetBlipRouteColour(WasherPedLocationBlip, 69)
    SetBlipAsShortRange(WasherPedLocationBlip, false)
    SetBlipScale(WasherPedLocationBlip, 0.75)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Washer Guy')
    EndTextCommandSetBlipName(WasherPedLocationBlip)
end

function CreateWasher()
    local Vehicle = Config.Vehicles[math.random(#Config.Vehicles)]
    QBCore.Functions.LoadModel(Vehicle)
    WasherVehicle = CreateVehicle(Vehicle, WasherPedLocation.x, WasherPedLocation.y, WasherPedLocation.z, WasherPedLocation.w, true, true)

    if DoesEntityExist(WasherVehicle) then
        exports["ps-zones"]:DestroyZone('Washer-MeetLocation')
        local washerhash = Config.MoneyWasherPed[math.random(#Config.MoneyWasherPed)]
        QBCore.Functions.LoadModel(washerhash)
        Washer = CreatePedInsideVehicle(WasherVehicle, 0, washerhash, -1, true, true)
        SetEntityInvincible(MainPed, true)
        SetBlockingOfNonTemporaryEvents(Washer, true)
        SetModelAsNoLongerNeeded(WasherVehicle)
        exports['qb-target']:AddTargetEntity(WasherVehicle, {
            options = {
                {
                    icon = 'fas fa-money-bill-1-wave',
                    label = 'Hand Bills',
                    canInteract = function()
                        return not BillsChecked
                    end,
                    action = function()
                        TriggerEvent('kevin-moneywasher:client:givebills')
                    end,
                },
                {
                    icon = 'fas fa-money-bill-1-wave',
                    label = 'Wash Bills',
                    canInteract = function()
                        return not BillsChecked
                    end,
                    action = function()
                        TriggerServerEvent('kevin-moneywasher:server:checkbills', WasherID)
                        RemoveWasherBlip()
                    end,
                },
                {
                    icon = 'fas fa-money-bill-1-wave',
                    label = 'Collect Bills',
                    canInteract = function()
                        return CanCollectBills
                    end,
                    action = function()
                        TriggerServerEvent('kevin-moneywasher:server:collectbills', Cleaned)
                    end,
                }
            },
            distance = 2.0
        })
    end
end

RegisterNetEvent('kevin-moneywasher:client:givebills', function()
    TriggerEvent("inventory:client:SetCurrentStash", "MoneyWasher"..WasherID)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "MoneyWasher"..WasherID, {
        maxweight = 4000000,
        slots = 5,
    })
    local chance = math.random(1, 100)
    if chance <= Config.AlertChance then
        SendAlert()
    end
end)

function DeleteWasher()
    CreateThread(function ()
        SetPedAsNoLongerNeeded(Washer)
        Wait(5000)
        DeleteEntity(Washer)
        DeleteEntity(WasherVehicle)
        Washer = nil
        WasherVehicle = nil
    end)
end

function RemoveWasherBlip()
    if DoesBlipExist(WasherPedLocationBlip) then
        RemoveBlip(WasherPedLocationBlip)
    end
end

RegisterNetEvent('kevin-moneywasher:client:billschecked', function (CleanedMoney)
    if not BillsChecked then
        RemoveBlip(WasherPedLocationBlip)
        Cleaned = CleanedMoney
        WasherPedLocationBlip = nil
        BillsChecked = true
        CreateThread(function ()
            if Config.Phone == 'qb' then
                TriggerEvent('qb-phone:client:CustomNotification', 'UNKNOWN', "Bills looks good, I will message you soon", 'fas fa-user', '#00ffd5', 5500)
            elseif Config.Phone == 'gks' then
                TriggerEvent('gksphone:notifi', {title = "UNKNOWN", message = "Bills looks good, I will message you soon", img= '/html/static/img/icons/messages.png'})
            elseif Config.Phone == 'qs' then
                TriggerEvent('qs-smartphone:client:notify', {title = 'UNKNOWN', text = 'Bills looks good, I will message you soon', icon = "./img/apps/whatsapp.png", timeout = 5500})
            end
            DeleteWasher()
        end)
        Wait(Config.Minutes * 60000)
        CanCollectBills = true
        if Config.Phone == 'qb' then
            TriggerEvent('qb-phone:client:CustomNotification', 'UNKNOWN', "Money Ready to be collected.", 'fas fa-user', '#00ffd5', 5500)
        elseif Config.Phone == 'gks' then
            TriggerEvent('gksphone:notifi', {title = "UNKNOWN", message = "Money Ready to be collected.", img= '/html/static/img/icons/messages.png'})
        elseif Config.Phone == 'qs' then
            TriggerEvent('qs-smartphone:client:notify', {title = 'UNKNOWN', text = 'Money Ready to be collected.', icon = "./img/apps/whatsapp.png", timeout = 5500})
        end
        CreateMeetBlip()
        exports["ps-zones"]:CreateCircleZone("Washer-MeetLocation", WasherPedLocation, 100.0, {
            debugPoly = false,
            minZ = WasherPedLocation.z - 1,
            maxZ = WasherPedLocation.z + 1,
        })
    end
end)

RegisterNetEvent('kevin-moneywasher:client:removeped', function ()
    exports['qb-target']:RemoveTargetEntity(WasherVehicle, 'Hand Bills')
    exports['qb-target']:RemoveTargetEntity(WasherVehicle, 'Wash Bills')
    exports['qb-target']:RemoveTargetEntity(WasherVehicle, 'Collect Bills')
    DeleteWasher()
    RemoveWasherBlip()
    Washing = false
    WasherID = nil
    BillsChecked = false
    CanCollectBills = false
    WasherPedLocationBlip = nil
    WasherPedLocation = vector4(0.0, 0.0, 0.0, 0.0)
end)

function SendAlert()
    if Config.Dispatch == 'ps' then
        exports['ps-dispatch']:SuspiciousActivity()
    elseif Config.Dispatch == 'cd' then
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = {'police'},
            coords = data.coords,
            title = '10-66 - Suspicious Handoff',
            message = 'Suspicious Handoff at '..data.street,
            flash = 0,
            unique_id = tostring(math.random(0000000,9999999)),
            blip = {
                sprite = 67,
                scale = 1.5,
                colour = 2,
                flashes = false,
                text = '10-66 - Suspicious Handoff',
                time = (5*60*1000),
                sound = 1,
            }
        })
    end
end