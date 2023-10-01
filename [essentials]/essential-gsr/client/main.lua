local QBCore = exports['qb-core']:GetCoreObject()
local gsrTimer = 0
local gsrPositive = false
local plyPed = PlayerPedId()
local gsrTestDistance = 1.5
Citizen.CreateThread(function()
    while true do
        Wait(1)
        if IsPedArmed(PlayerPedId(), 7) == 1 then
            GSRThread()
        else
            Wait(1500)
        end
    end
end)

if Config.EnableCleanGSR then
    RegisterCommand(Config.CleanGSR, function()
        if gsrPositive then
            gsrPositive = false
            gsrTimer = 0
            Notify(Config.Text.TCleaningGSR)
        elseif not gsrPositive then
            Notify(Config.Text.AlreadyClean)
        end
        print('Cleaned GSR')
    end)
end

RegisterNetEvent("gsr:client:gsrtest", function()
    local playerCoords = GetEntityCoords(plyPed)
    for _, player in ipairs(GetActivePlayers()) do
        local targetPed = GetPlayerPed(player)
        local targetId = GetPlayerServerId(player)
        local distance = #(playerCoords - GetEntityCoords(targetPed))
        if targetPed ~= plyPed then
            if distance <= gsrTestDistance then
                SetCurrentPedWeapon(plyPed, GetHashKey("WEAPON_UNARMED"), true)
                TaskStartScenarioInPlace(PlayerPedId(), 'WORLD_HUMAN_STAND_MOBILE', -1, true)
                QBCore.Functions.Progressbar('searching_dumpster', "Checking For GSR", 5000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    -- Done
                    print('GSR Tested: ' .. targetId)
                    TriggerServerEvent('GSR:TestPlayer', targetId)
                end, function()
                    exports['ps-ui']:Notify('Canceled...', 'error')
                    ClearPedTasks(ped)
                end)
            else
                Notify(tostring(Config.Text.NoSubjectError))
            end
        end
    end
end)
-- RegisterCommand(Config.TestGSR, function()
--     local playerCoords = GetEntityCoords(plyPed)
--     for _, player in ipairs(GetActivePlayers()) do
--         local targetPed = GetPlayerPed(player)
--         local targetId = GetPlayerServerId(player)
--         local distance = #(playerCoords-GetEntityCoords(targetPed))
--         if targetPed ~= plyPed then
--             if distance <= gsrTestDistance then
--                 SetCurrentPedWeapon(plyPed, GetHashKey("WEAPON_UNARMED"), true)
--                 TaskStartScenarioInPlace(PlayerPedId(), 'WORLD_HUMAN_STAND_MOBILE', -1, true)
--                 QBCore.Functions.Progressbar('searching_dumpster', "Checking For GSR", 5000, false, true, {
--                     disableMovement = true,
--                     disableCarMovement = true,
--                     disableMouse = false,
--                     disableCombat = true,
--                 }, {}, {}, {}, function()
--                 end, function() -- Done
--                 print('GSR Tested: ' .. targetId)
--                 TriggerServerEvent('GSR:TestPlayer', targetId)
--             end, function()
--                 Notify(tostring(Config.Text.NoSubjectError))
--                 ClearPedTasks(ped)
--             end)
--           else
--             -- exports['ps-ui']:Notify('No one nearby', 'error')
--           end
--         end
--     end
-- end)

-- RegisterCommand('gsrs', function()
--     if gsrPositive then
--         Notify('You Tested ^1Positive')
--     elseif not gsrPositive then
--         Notify('You Tested ^2Negative')
--     end
-- end)

RegisterNetEvent("GSR:TestNotify")
AddEventHandler("GSR:TestNotify", function(notHandler)
    Notify(notHandler)
end)

RegisterNetEvent("GSR:TestHandler")
AddEventHandler("GSR:TestHandler", function(tester)
    if gsrPositive then
        TriggerServerEvent("GSR:TestCallback", tester, true)
    elseif not gsrPositive then
        TriggerServerEvent("GSR:TestCallback", tester, false)
    end
end)

function GSRThread()
    plyPed = PlayerPedId()
    if IsPedShooting(plyPed) then
        if gsrPositive then
            gsrTimer = Config.GSRAutoClean
        else
            gsrPositive = true
            gsrTimer = Config.GSRAutoClean
            Citizen.CreateThread(GSRThreadTimer)
        end
    end
end

function GSRThreadTimer()
    while gsrPositive do
        Citizen.Wait(1000)
        if gsrTimer == 0 then
            gsrPositive = false
        else
            gsrTimer = gsrTimer - 1
        end
    end
end

function Notify(text)
    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {'GSR', text}
    })      
end


--I just wanted to test githubs new online editor