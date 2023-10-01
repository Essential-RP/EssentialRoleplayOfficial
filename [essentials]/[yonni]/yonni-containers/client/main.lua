local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = 0
local HackingTime = Config.HackingTime * 1000

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

local function loadPtfx(name)
	if HasNamedPtfxAssetLoaded(name) then UseParticleFxAsset(name) return end
  RequestNamedPtfxAsset(name)
  repeat Wait(0) until HasNamedPtfxAssetLoaded(name)
  UseParticleFxAsset(name)
end

function DispatchCalled()
    if Config.Dispatch == 'ps-dispatch' then
        exports["ps-dispatch"]:CustomAlert({
            coords = GetEntityCoords(PlayerPedId()),
            message = "Attempted Container Robbery",
            dispatchCode = "10-31",
            description = "Attempted Container Robbery",
            radius = 0,
            sprite = 108,
            color = 1,
            scale = 0.7,
            length = 3,
        })
    end
end

RegisterNetEvent('yonni-container:client:hacksuccess')
AddEventHandler('yonni-container:client:hacksuccess', function()
    QBCore.Functions.Notify("You did it! Now grab the rewards and get out of here!")
    ClearPedTasksImmediately(PlayerPedId())
    TriggerEvent("yonni-container:client:robanim")
    DispatchCalled()
    Citizen.Wait(7500)
    TriggerServerEvent('yonni-containers:server:timer')
    -- Add the export target for the container here
    local hasTriggeredEvent = false -- Initialize a variable to track whether the event has been triggered

    exports['qb-target']:AddBoxZone('container2', vector3(-2447.36, 3343.14, 32.83), 0.4, 0.8, {
        name = "container2",
        heading = 335,
        minZ = 30.63,
        maxZ = 34.63
    }, {
        options = {
            {
                icon = 'fas fa-mask',
                label = 'Grab Rewards',
                action = function()
                    if hasTriggeredEvent then
                        QBCore.Functions.Notify("Quit trying to be sneaky!", 'error')
                    elseif QBCore.Functions.HasItem(Config.RewardCard) then
                        TriggerEvent('yonni-container:client:giverewards')
                        hasTriggeredEvent = true -- Mark the event as triggered
                    else
                        QBCore.Functions.Notify("You need the card I gave you to do this!", 'error')
                    end
                end,
                canInteract = function()
                    return true -- Always allow interaction to check the target
                end
            }
        },
        distance = 2.5 -- This is the distance for you to be at for the target to turn blue; this is in GTA units and has to be a float value
    })
end)

-- RegisterNetEvent('yonni-container:client:keycontainer')
-- AddEventHandler('yonni-container:client:keycontainer', function()
--    local ped = PlayerPedId()

-- end)
RegisterNetEvent('yonni-container:client:giverewards')
AddEventHandler('yonni-container:client:giverewards', function()
    QBCore.Functions.Notify("Take This...", 'success')
    TriggerServerEvent('yonni-containers:server:containerrewards')
    -- TriggerServerEvent('essential-atmrobbery:server:giveitemback')
    -- DispatchCalled()
end)

RegisterNetEvent('yonni-container:client:hackfailed')
AddEventHandler('yonni-container:client:hackfailed', function()
    QBCore.Functions.Notify("Seems Like you failed...", 'error')
    -- TriggerServerEvent('essential-atmrobbery:server:giveitemback')
    DispatchCalled()
end)

RegisterNetEvent('yonni-container:client:robanim')
AddEventHandler('yonni-container:client:robanim', function()
    local ped = PlayerPedId()
    local loc = GetEntityCoords(ped)
    local rot = GetEntityRotation(ped)
    local bagscene = NetworkCreateSynchronisedScene(loc.x, loc.y, loc.z, rot.x, rot.y, rot.z, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, loc.x, loc.y, loc.z, true, true, false)
    SetEntityCollision(bag, false, true)
    NetworkAddPedToSynchronisedScene(ped, bagscene, 'anim@heists@ornate_bank@thermal_charge', 'thermal_charge', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, 'anim@heists@ornate_bank@thermal_charge', 'bag_thermal_charge', 4.0, -8.0, 1)
    NetworkStartSynchronisedScene(bagscene)
    Wait(1500)
    coords = GetEntityCoords(ped)
    local thermal_charge = CreateObject(`hei_prop_heist_thermite`, coords.x, coords.y, coords.z + 0.2, true, true, true)
    SetEntityCollision(thermal_charge, false, true)
    AttachEntityToEntity(thermal_charge, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    Wait(4000)
    DetachEntity(thermal_charge, 1, 1)
    FreezeEntityPosition(thermal_charge, true)
    Wait(100)
    DeleteObject(bag)
    ClearPedTasks(ped)
    Wait(100)
    loadPtfx('scr_ornate_heist')
    local termcoords = GetEntityCoords(thermal_charge)
    local effect = StartParticleFxLoopedAtCoord('scr_heist_ornate_thermal_burn', termcoords.x, termcoords.y + 1.0, termcoords.z, 0, 0, 0, 0x3F800000, 0, 0, 0, 0)
    -- QBCore.Functions.Notify("Might want to move for this!...", 'error')
    Wait(3000)
    local x = -2447.8142089844 -- X-coordinate where the explosion occurs
    local y = 3343.3254394531  -- Y-coordinate where the explosion occurs
    local z = 32.82719039917   -- Z-coordinate where the explosion occurs
    local explosionType = 1 -- Replace with the appropriate explosion type (1 for default explosion)
    local damageScale = 2.0 -- Adjust the damage scale as needed (1.0 for normal damage)
    local isAudible = true -- Set to true if the explosion should be audible
    local isInvisible = false -- Set to false if the explosion should be visible
    local cameraShake = 5.0 -- Adjust the camera shake intensity as needed

    AddExplosion(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
    StopParticleFxLooped(effect, 0)
    DeleteObject(thermal_charge)
    if Config.MoneyType == true then
        exports['qb-target']:RemoveZone("container1")
        TriggerServerEvent("yonni-containers:server:success")
    else
        TriggerServerEvent("yonni-containers:server:success2")
    end
end)

RegisterNetEvent('yonni-containers:startrob')
AddEventHandler('yonni-containers:startrob', function()
    if Config.Framework == 'QBCore' or Config.Framework == 'OX' then
        if CurrentCops >= Config.Cops then
            QBCore.Functions.TriggerCallback("yonni-containers:server:Cooldown", function(isCooldown)
                if not isCooldown then
                    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
                    TriggerServerEvent('yonni-containers:server:removeitem')
                    
                    QBCore.Functions.Progressbar('cnct_elect', 'Hacking the Container...', HackingTime, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        -- Callback function body
                    end)

                    Wait(HackingTime) 

                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})

                    exports['ps-ui']:Thermite(function(success)
                        if success then
                            ClearPedTasksImmediately(PlayerPedId())
                            TriggerEvent("yonni-container:client:hacksuccess")
                        else
                            Wait(1000)
                            ClearPedTasksImmediately(PlayerPedId())
                            TriggerEvent("yonni-container:client:hackfailed")
                        end
                    end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
                else
                    QBCore.Functions.Notify("The container security has already been triggered. Try again later", "error")
                end
            end)
        else
            QBCore.Functions.Notify("Not Enough Police", "error")
        end
    end
end)

--Container Locations

if Config.Framework == 'QBCore' then
    exports['qb-target']:AddBoxZone('container1', vector3(-2447.36, 3343.14, 32.83), 0.4, 0.8, {
        name="container1",
        heading=335,
        minZ=30.63,
        maxZ=34.63
          }, {
            options = {
                {
                  icon = 'fas fa-mask',
                  label = 'Blow Up Container',
                  action = function()
                    if QBCore.Functions.HasItem(Config.HackingItem.sb) and QBCore.Functions.HasItem(Config.HackingItem.lt) then
                      TriggerEvent('yonni-containers:startrob')
                    else
                      QBCore.Functions.Notify("Your missing items silly!", 'error')
                    end
                  end,
                  canInteract = function()
                    return true -- Always allow interaction to check the target
                  end
                }
              },
              distance = 2.5 -- This is the distance for you to be at for the target to turn blue; this is in GTA units and has to be a float value
            })
          end
    --       options = {
    --           { 
    --               type = 'client',
    --               event = 'yonni-containers:startrob',
    --               icon = 'fa-solid fa-mask',
    --               label = 'Rob Container',
    --               item = {Config.HackingItem.lt, Config.HackingItem.sb}
    --           }
    --       },
    --       distance = 2,
    --   })
    -- end
---------------------------------------------------------------------------------------# Start/Stop Resource #---------------------------------------------------------------------------------------
