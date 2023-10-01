if Config.Version == "new" then
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterNetEvent("qb-chopshop:syncchopcars")
AddEventHandler("qb-chopshop:syncchopcars", SyncCars)

function GiveReward(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rareLoot = math.random(100)

    if data == "wheel1" or data == "wheel2" or data == "wheel3" or data == "wheel4" then
        Player.Functions.AddItem("carpart_wheel", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carpart_wheel'], "add")
    elseif data == "door" then
        Player.Functions.AddItem("carpart_door", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carpart_door'], "add")
    elseif data == "hood" then
        Player.Functions.AddItem("carpart_hood", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carpart_hood'], "add")
    elseif data == "trunk" then
        local randomitem = math.random(1, 3)
        local item = Config.TrunkItems[randomitem]["item"]
        local amount = Config.TrunkItems[randomitem]["amount"]
        Player.Functions.AddItem(item, amount, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, "You found " .. amount .. " " .. item .. " in the trunk", 'success')
        Citizen.Wait(8500)
        Player.Functions.AddItem("carpart_trunk", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carpart_trunk'], "add")

        if rareLoot <= Config.RareLoot then
            Player.Functions.AddItem(Config.RareLootItem, 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RareLootItem], "add", 1)
        end
    end
end

RegisterNetEvent("qb-chopshop:server:rewardplayer")
AddEventHandler("qb-chopshop:server:rewardplayer", GiveReward)

function SyncCars(list)
    TriggerClientEvent('qb-chopshop:carlist', -1, list)
end

RegisterNetEvent("qb-chopshop:server:givegroupmoney")
AddEventHandler("qb-chopshop:server:givegroupmoney", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local groupPayout = math.random(Config.GroupReward.min, Config.GroupReward.max)
    local playerCoords = GetEntityCoords(GetPlayerPed(src))

    -- Add the payout to the player who triggered the event
    Player.Functions.AddMoney('cash', groupPayout, 'group-reward')

    -- Check if the player is in a group
    local group = exports['qb-phone']:GetGroupByMembers(src)

    if group then
        local members = exports['qb-phone']:getGroupMembers(group)
        for _, memberSrc in pairs(members) do
            local memberPlayer = QBCore.Functions.GetPlayer(memberSrc)
            if memberPlayer then
                local memberCoords = GetEntityCoords(GetPlayerPed(memberSrc))
                local distance = #(playerCoords - memberCoords)

                -- Check if the group member is within a certain distance (adjust the value as needed)
                if distance <= 10.0 then
                    memberPlayer.Functions.AddMoney('cash', groupPayout, 'group-reward')

                    -- Notify the group member that they received the group bonus
                    TriggerClientEvent('QBCore:Notify', memberSrc, 'You received a group bonus!', 'success')
                else
                    -- Notify the group member that they were too far to receive the group bonus
                    TriggerClientEvent('QBCore:Notify', memberSrc, 'You were too far from the group leader to receive the group bonus!', 'error')
                end
            end
        end
    end
end)

-- RegisterNetEvent("qb-chopshop:server:repadd")
-- AddEventHandler("qb-chopshop:server:repcheck", function()
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)

--     if Player then
--         local craftingRep = Player.PlayerData.metadata['craftingrep'] or 0 -- Default to 0 if craftingrep is nil
--         if craftingRep == 3 then
--             TriggerClientEvent("qb-chopshop:jobaccept", src)
--         else
--             TriggerClientEvent('QBCore:Notify', src, 'Not Enough Rep..', 'error', 5000)
--         end
--     end
-- end)

RegisterNetEvent("qb-chopshop:server:giverep")
AddEventHandler("qb-chopshop:server:giverep", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Config.CrimeRep == true then
        if Player then
            -- Calculate a random amount of crime experience between 1 and 2 (adjust as needed)
            local minRep = 1
            local maxRep = 2
            local earnedRep = math.random(minRep, maxRep)
            
            -- Add the earned experience to the player's existing crime experience
            local currentRep = Player.PlayerData.metadata['crimeskill'] or 0
            local newRep = currentRep + earnedRep
            
            -- Update the player's crime experience
            Player.Functions.SetMetaData("crimeskill", newRep)
            
            -- Notify the player about the earned crime experience
            TriggerClientEvent('QBCore:Notify', src, 'You earned ' .. earnedRep .. ' Crime Exp!', 'success', 5000)
        end
    end
end)

RegisterNetEvent("qb-chopshop:server:chopdoor")
AddEventHandler("qb-chopshop:server:chopdoor", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local door = "carpart_door"
    local payout = math.random(Config.CashReward.min, Config.CashReward.max)

    if Player.Functions.GetItemByName(door) ~= nil then
        local randomitem = math.random(1, 5)
        local item = Config.DoorItems[randomitem]["item"]
        local amount = Config.DoorItems[randomitem]["amount"]
        Player.Functions.RemoveItem("carpart_door", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carpart_door'], "remove")
        TriggerClientEvent('qb-chopshop:doorchopanim', src)
        Citizen.Wait(12500)
        Player.Functions.AddItem(item, amount, false, info)
        Player.Functions.AddMoney('cash', payout, 'chopshop-reward')
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You have no doors to scrap..', 'error')
    end
end)

RegisterNetEvent("qb-chopshop:server:chopwheel")
AddEventHandler("qb-chopshop:server:chopwheel", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local wheel = "carpart_wheel"
    local payout = math.random(Config.CashReward.min, Config.CashReward.max)

    if Player.Functions.GetItemByName(wheel) ~= nil then
        local randomitem = math.random(1, 3)
        local item = Config.WheelItems[randomitem]["item"]
        local amount = Config.WheelItems[randomitem]["amount"]
        Player.Functions.RemoveItem("carpart_wheel", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carpart_wheel'], "remove")
        TriggerClientEvent('qb-chopshop:wheelchopanim', src)
        Citizen.Wait(14000)
        Player.Functions.AddItem(item, amount, false, info)
        Player.Functions.AddMoney('cash', payout, 'chopshop-reward')
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You have no wheels to scrap..', 'error')
    end
end)

RegisterNetEvent("qb-chopshop:server:chophood")
AddEventHandler("qb-chopshop:server:chophood", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hood = "carpart_hood"
    local payout = math.random(Config.CashReward.min, Config.CashReward.max)

    if Player.Functions.GetItemByName(hood) ~= nil then
        local randomitem = math.random(1, 5)
        local item = Config.DoorItems[randomitem]["item"]
        local amount = Config.DoorItems[randomitem]["amount"]
        Player.Functions.RemoveItem("carpart_hood", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carpart_hood'], "remove")
        TriggerClientEvent('qb-chopshop:hoodchopanim', src)
        Citizen.Wait(12500)
        Player.Functions.AddItem(item, amount, false, info)
        Player.Functions.AddMoney('cash', payout, 'chopshop-reward')
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You have no hoods to scrap..', 'error')
    end
end)

RegisterNetEvent("qb-chopshop:server:choptrunk")
AddEventHandler("qb-chopshop:server:choptrunk", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local trunk = "carpart_trunk"
    local payout = math.random(Config.CashReward.min, Config.CashReward.max)

    if Player.Functions.GetItemByName(trunk) ~= nil then
        local randomitem = math.random(1, 5)
        local item = Config.DoorItems[randomitem]["item"]
        local amount = Config.DoorItems[randomitem]["amount"]
        Player.Functions.RemoveItem("carpart_trunk", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carpart_trunk'], "remove")
        TriggerClientEvent('qb-chopshop:trunkchopanim', src)
        Citizen.Wait(12500)
        Player.Functions.AddItem(item, amount, false, info)
        Player.Functions.AddMoney('cash', payout, 'chopshop-reward')
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You have no trunks to scrap..', 'error')
    end
end)

QBCore.Commands.Add("rep", "Check your crafting reputation.", {}, false, function(source, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        local repValue = Player.PlayerData.metadata['crimeskill'] or 0
		-- local garbagevalue = Player.PlayerData.metadata['garbage'] or 0
        -- print('Crafting Reputation: ' .. repValue) -- Add this line for debugging
        TriggerClientEvent('QBCore:Notify', src, 'Crime Exp: ' .. repValue, 'primary')
		-- TriggerClientEvent('QBCore:Notify', src, 'Garbage Reputation: ' .. garbagevalue, 'primary')
    end
end, "user")