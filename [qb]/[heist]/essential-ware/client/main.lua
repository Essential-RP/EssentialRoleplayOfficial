local QBCore = exports['qb-core']:GetCoreObject()
local hasJob = false
local cooldown = false
local firsthack = false
local Loot1 = false 
local Loot2 = false 
local Loot3 = false 
local Loot4 = false
securityhacked = false

-- Main
RegisterNetEvent('essential-ware:client:startCooldown',function ()
    local timer = Config.cooldown * 60000
    while timer > 0 do
    Wait(1000)
    print("test")
    timer = timer - 1000
        if timer == 0 then
        cooldown = false
        TriggerEvent('essential-ware:client:ResetHeist')
        end
    end
end)

-- Start
RegisterNetEvent('essential-ware:client:startJob', function()
    QBCore.Functions.TriggerCallback("essential-ware:server:Cooldown", function(HackCoolDown)
        if HackCoolDown then
            QBCore.Functions.Notify("Someone Did This Recently. Come Back Later!", "error", 5000)
        else
            if cooldown == false then
                hasJob = true
                QBCore.Functions.Notify("I'll send you an email!", 'success', 5000)
                TriggerServerEvent('essential-ware:server:sethacktimercool') -- Server Cooldown
                Wait(5000)
                TriggerServerEvent('qb-phone:server:sendNewMail', {
                    sender = "Unknown",
                    subject = "Warehouse",
                    message = "Hello,<br><br>" ..
                        "I got a job for you!<br><br>" ..
                        "I marked it on the map for you, so just take a look at it.<br><br>" ..
                        "I need you to hack the security and rob the place. There will be some goodies in there, so it's worth it.<br><br>" ..
                        "I gave you the general area of the electrical box but you need to find it yourself!<br><br>" ..
                        "Good Luck<br><br>" ..
                        "<b></b>"
                })
                Wait(10000)
                AddTextEntry('MYBLIP', 'Warehouse Robbery')
                local blip = AddBlipForCoord(939.94, -1476.03, 32.69)
                SetBlipSprite(blip, 161)
                BeginTextCommandSetBlipName('MYBLIP')
                EndTextCommandSetBlipName(blip)
                local time = Config.jobTime * 60000
                while hasJob == true and time > 0 do
                    Wait(1000)
                    time = time - 1000
                    if time == 0 then
                        hasJob = false
                        firsthack = false
                        cooldown = true
                        QBCore.Functions.Notify("Your Contract has ended", 'error', 5000)
                        RemoveBlip(blip)
                        TriggerEvent('essential-ware:client:startCooldown') -- Player Cooldown
                        print(cooldown)
                    end
                end
            else
                if cooldown == true then
                    QBCore.Functions.Notify("You just did this quit trying to be sneaky!", 'error', 5000)
                    return
                end
            end
        end
    end)
end)


-- Doors
RegisterNetEvent('essential-ware:client:hackdoor',function ()
    if cooldown == false then
    if hasJob == true then
    if QBCore.Functions.HasItem(Config.bomb) then
    TriggerServerEvent('essential-ware:server:removebomb')
    TriggerEvent('essential-ware:client:dispatch')
    exports['ps-ui']:Thermite(function(success)
        if success then
            Wait(500)
            securityhacked = true
            QBCore.Functions.Notify("You did it! Now Go Get The Goodies!", 'success')
            TriggerEvent('essential-ware:client:SpawnNPC', 1)
            door1()            
        else
            QBCore.Functions.Notify("You failed, Looks like you need some practice!")
        end
     end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
      end
    end
  end
end)

RegisterNetEvent('essential-ware:client:hackg1',function ()
    if cooldown == false then
    if hasJob == true then
        if QBCore.Functions.HasItem(Config.bomb) then
            TriggerServerEvent('essential-ware:server:removeitem')
            TriggerEvent('essential-ware:client:dispatch')    
    exports['ps-ui']:Thermite(function(success)
        if success then
            QBCore.Functions.Notify("You did it! Now Go Get The Goodies!")
            TriggerEvent('essential-ware:client:SpawnNPC', 1)
            door2()            
        else
            print("fail")
        end
     end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
      end
    end
  end
end)

RegisterNetEvent('essential-ware:client:hackg2',function ()
    if cooldown == false then
    if hasJob == true then
     if QBCore.Functions.HasItem(Config.bomb) then
            TriggerServerEvent('essential-ware:server:removeitem')
            TriggerEvent('essential-ware:client:dispatch')  
    exports['ps-ui']:Thermite(function(success)
        if success then
            QBCore.Functions.Notify("You did it! Now Go Get The Goodies!")
            TriggerEvent('essential-ware:client:SpawnNPC', 1)
            door3()            
        else
            print("fail")
        end
     end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
      end
    end
  end
end)

-- Laptop Hack
RegisterNetEvent('essential-ware:client:hacklaptop', function ()
    if cooldown == false then
        if hasJob == true then
            if QBCore.Functions.HasItem(Config.HackLaptop) then
                TriggerServerEvent('essential-ware:server:removeitem')
                TriggerEvent('essential-ware:client:dispatch')  
                exports['ps-ui']:VarHack(function(success)
                    if success then
                        QBCore.Functions.Notify("You did it! Now take this!", 'success')
                        Wait(2000)
                        TriggerServerEvent('essential-ware:server:laptopreward')            
                    else
                        QBCore.Functions.Notify("Might need some practice because you failed!", 'error')    
                    end
                end, 6, 10) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
            else
                QBCore.Functions.Notify("You can't hack without the required item.", 'error')
            end
        else
            QBCore.Functions.Notify("Quit trying to be sneaky and do it the right way!", 'error')
            end
        end
end)

RegisterNetEvent('essential-ware:client:hacklaptop2', function ()
    if cooldown == false then
        if hasJob == true then
            if QBCore.Functions.HasItem(Config.HackLaptop2) then
                TriggerServerEvent('essential-ware:server:removelaptop2')
                exports['hacking']:OpenHackingGame(20, 4, 3, function(success)
                    if success then
                        QBCore.Functions.Notify("You did it! Now take this!", 'success')
                        Wait(2000)
                        TriggerServerEvent('essential-ware:server:laptopreward2')            
                    else
                        QBCore.Functions.Notify("Might need some practice because you failed!", 'error')      
                    end
                end) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
            else
                QBCore.Functions.Notify("You can't hack without the required item.")
            end
        else
            QBCore.Functions.Notify("Quit trying to be sneaky and do it the right way!", 'error')
        end
    end
end)

RegisterNetEvent('essential-ware:client:hacklaptop3', function ()
    if cooldown == false then
        if hasJob == true then
            if not firsthack then
                if QBCore.Functions.HasItem(Config.HackLaptop3) then
                    TriggerServerEvent('essential-ware:server:removelaptop3')
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            QBCore.Functions.Notify("You did it! Now take this!", 'success')
                            Wait(2000)
                            firsthack = true 
                            TriggerServerEvent('essential-ware:server:laptopreward3')            
                        else
                            QBCore.Functions.Notify("Might need some practice because you failed!", 'error')      
                        end
                    end, 6, 10) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
                else
                    QBCore.Functions.Notify("You can't hack without the required item.", 'error')
                end
            else
                QBCore.Functions.Notify("You've already hacked this laptop!", 'error')
            end
        else
            QBCore.Functions.Notify("Security system isnt hacked! Quit tryna be sneaky!", 'error')
        end
    end
end)

RegisterNetEvent('essential-ware:client:opensafe', function ()
    if cooldown == false then
        if hasJob == true then
            if QBCore.Functions.HasItem(Config.Safeitem) then
                TriggerServerEvent('essential-ware:server:removesafeitem')
                exports['ps-ui']:Thermite(function(success)
                    if success then
                        QBCore.Functions.Notify("You did it! Now get out of the way!")
                        safe1()           
                    else
                        QBCore.Functions.Notify("Might need some practice because you failed!", 'error')    
                    end
                end, 10, 5, 2) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
            else
                QBCore.Functions.Notify("You can't hack without the required item.", 'error')
            end
        else
            QBCore.Functions.Notify("Quit trying to be sneaky and do it the right way!", 'error')
        end
    end
end)
-- Doors End

-- loot

RegisterNetEvent('essential-ware:client:loot1', function ()
    if not Loot1 then 
        if hasJob == true then
            TriggerEvent('animations:client:EmoteCommandStart', {"medic"})
            TriggerServerEvent('essential-ware:server:setloot1', true)
            Wait(5000)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('essential-ware:server:rewards1')
        else
            QBCore.Functions.Notify("Quit trying to be sneaky and do it the right way!", "error", 5000)
        end
    else
        QBCore.Functions.Notify("You have already looted this.", "error", 5000) 
    end
end)

RegisterNetEvent('essential-ware:client:loot2', function ()
    if not Loot2 then 
        if hasJob == true then
            TriggerEvent('animations:client:EmoteCommandStart', {"medic"})
            TriggerServerEvent('essential-ware:server:setloot2', true)
            Wait(5000)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('essential-ware:server:rewards2')
        else
            QBCore.Functions.Notify("Quit trying to be sneaky and do it the right way!", "error", 5000)
        end
    else
        QBCore.Functions.Notify("You have already looted this.", "error", 5000)  
    end
end)


RegisterNetEvent('essential-ware:client:loot3',function ()
    if not Loot3 then 
       if hasJob == true then
        TriggerEvent('animations:client:EmoteCommandStart', {"medic"})
        TriggerServerEvent('essential-ware:server:setloot3', true)
        Wait(5000)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('essential-ware:server:rewards3')
     else
        QBCore.Functions.Notify("Quit trying to be sneaky and do it the right way!", "error", 5000)
    end
  else
    QBCore.Functions.Notify("You have already looted this.", "error", 5000)  
    end
end)


RegisterNetEvent('essential-ware:client:loot4',function ()
    if not Loot4 then 
       if hasJob == true then
        TriggerEvent('animations:client:EmoteCommandStart', {"medic"})
        TriggerServerEvent('essential-ware:server:setloot4', true)
        Wait(5000)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('essential-ware:server:rewards4')
     else
        QBCore.Functions.Notify("Quit trying to be sneaky and do it the right way!", "error", 5000)
    end
  else
    QBCore.Functions.Notify("You have already looted this.", "error", 5000)  
    end
end)
-- loot end







-- lib
-- exports['qb-target']:AddTargetModel(Config.Ped, {
--     options = {
--         {
--             icon = "fa-solid fa-user-secret",
--             label = "Take a job",
--             action = function()
--                 if not hasJob then
--                     if not cooldown then
--                         if QBCore.Functions.HasItem(Config.StartItem) then
--                             TriggerEvent('essential-ware:client:startJob')
--                         else
--                             QBCore.Functions.Notify("You need the required item to grab a job.", 'error')
--                         end
--                     else
--                         QBCore.Functions.Notify("There is a cooldown right now. Come back later!", 'error')
--                     end
--                 else
--                     QBCore.Functions.Notify("You already have a job.", 'error')
--                 end
--             end,
--             canInteract = function()
--                 return true -- Always allow interaction to check the target
--             end
--         }
--     },
--     distance = 2.5 -- This is the distance for you to be at for the target to turn blue; this is in GTA units and has to be a float value
-- })
--   end
--     options = {
--         {
--             event = "essential-ware:client:startJob",
--             icon = "fa-solid fa-user-secret",
--             label = "Take a job",
--             canInteract = function()
--                 if hasJob == false and GetEntityCoords(created_ped).x == Config.PedCoords.x and GetEntityCoords(created_ped).y == Config.PedCoords.y then
--                     return hasJob == false and GetEntityCoords(created_ped).x == Config.PedCoords.x and GetEntityCoords(created_ped).y == Config.PedCoords.y
--                 end
--             end,
--         },
--     },
--     distance = 2.5,
-- })

exports['qb-target']:AddBoxZone("leavezone", vector3(-1156.8, -1516.66, 10.63), 0.4, 0.6, {
    name = "leavezone",
    heading=270,
    debugPoly = false,
}, { 
    options = {
        {
            icon = "fa-solid fa-user-secret",
            label = "Take a job",
            action = function()
                if not hasJob then
                    if not cooldown then
                        if QBCore.Functions.HasItem(Config.StartItem) then
                            TriggerEvent('essential-ware:client:startJob')
                        else
                            QBCore.Functions.Notify("You need the required item to grab a job.", 'error')
                        end
                    else
                        QBCore.Functions.Notify("There is a cooldown right now. Come back later!", 'error')
                    end
                else
                    QBCore.Functions.Notify("You already have a job.", 'error')
                end
            end,
            canInteract = function()
                return true -- Always allow interaction to check the target
            end
        }
    },
    distance = 2.5 -- This is the distance for you to be at for the target to turn blue; this is in GTA units and has to be a float value
})



RegisterNetEvent('essential-ware:client:dispatch', function(data, outside)
exports["ps-dispatch"]:CustomAlert({
    coords = vector3(0.0, 0.0, 0.0),
    message = "10-15 - Warehouse Robbery",
    description = "Warehouse Robbery",
    radius = 0,
    sprite = 64,
    color = 2,
    scale = 1.0,
    length = 3,
})
end)

RegisterNetEvent('essential-ware:client:setloot1', function(status)
    Loot1 = status
end)
RegisterNetEvent('essential-ware:client:setloot2', function(status)
    Loot2 = status
end)
RegisterNetEvent('essential-ware:client:setloot3', function(status)
    Loot3 = status
end)
RegisterNetEvent('essential-ware:client:setloot4', function(status)
    Loot4 = status
end)