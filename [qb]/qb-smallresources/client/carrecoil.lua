-- --Last updated 8/28/2021
-- --Recoil At speeds by Anthony.#8754
-- --Speed can be changed to what ever you want/need by chaing the current_mph >= *number*
-- --Effect can be changed to anything you want/need, list of shake types @ https://docs.fivem.net/natives/?_0xFD55E49555E017CF
-- --Effect intensity can be changed to your prefrence by changing ShakeGameplayCam('JOLT_SHAKE', *intensity*)
-- --This works for all vehicle types.
-- --May not be fully optimized!

-- Citizen.CreateThread(function()
--     while true do 
--         Citizen.Wait(0)
        
--         local playerPed = GetPlayerPed(-1)
--         local veh = GetVehiclePedIsIn(PlayerPedId(), false)
--         local speed = GetEntitySpeed(playerPed)

--         local current_mph =math.floor(speed * 2.23694 + 0.5)
--         if DoesEntityExist(veh) and IsPedShooting(playerPed) and not IsEntityDead(veh) then
--             if current_mph >= 10 then
--                 ShakeGameplayCam('JOLT_SHAKE', 0.2)
--             end
--             if current_mph >= 40 then
--                 ShakeGameplayCam('JOLT_SHAKE', 0.4)
--             end
--             if current_mph >= 60 then
--                 ShakeGameplayCam('JOLT_SHAKE', 0.6)
--             end
--             if current_mph >= 80 then
--                 ShakeGameplayCam('JOLT_SHAKE', 0.8)
--             end
--             if current_mph >= 100 then
--                 ShakeGameplayCam('JOLT_SHAKE', 1.0) 
--             end
--             if current_mph >= 120 then
--                 ShakeGameplayCam('JOLT_SHAKE', 1.2) 
--             end
--             if current_mph >= 140 then
--                 ShakeGameplayCam('JOLT_SHAKE', 1.4) 
--             end
--             if current_mph >= 100 then
--                 ShakeGameplayCam('JOLT_SHAKE', 1.6) 
--             end
--         end
--     end
-- end)

local Areas = {
    { pos = vector3(484.56, -3125.31, 6.07), radius = 100 }, -- Example location
    { pos = vector3(549.78, -3165.05, 6.07), radius = 100 }, -- Example location
    { pos = vector3(489.46, -3345.2, 6.07), radius = 100 }, -- Example location
}

local enableDebug = true  
local zones = {}

CreateThread(function()
    local ped = PlayerPedId()
    local sleep = 10000
    while true do
        sleep = 10000
        for i=1, #Areas do
            if #(GetEntityCoords(ped) - Areas[i].pos) < (Areas[i].radius + 100) then
                ClearAreaOfVehicles(Areas[i].pos.x, Areas[i].pos.y, Areas[i].pos.z, Areas[i].radius, 0)
                sleep = 100
            end

            if enableDebug then
                zones[i] = AddBlipForRadius(Areas[i].pos.x, Areas[i].pos.y, Areas[i].pos.z, Areas[i].radius)
                SetBlipColour(zones[i], 1)
                SetBlipAlpha(zones[i], 128)
            end
        end
        Wait(sleep)
    end
end)