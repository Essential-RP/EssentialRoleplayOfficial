if not (GetResourceState('sd_lib') == 'started') then
    print("^1Error: sd_lib isn't installed or this resource has been started before sd_lib.")
end

local SD = exports['sd_lib']:getLib()

SD.VersionCheck() -- Version Check

local Cooldown = false

-- Event to set change a routes 'occupied' status
RegisterNetEvent('sd-oxyrun:server:SetRouteOccupied')
AddEventHandler('sd-oxyrun:server:SetRouteOccupied', function(route, toggle)
	Config.Routes[route].info.occupied = toggle
    TriggerClientEvent('sd-oxyrun:client:SetRouteOccupied', -1, route, toggle)
end)

-- Event to set the OxyBoss location when resource starts
AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
		math.randomseed(os.time())
        GlobalState.OxyBossLocation = Config.BossLocation[math.random(#Config.BossLocation)]
    end
end)

-- Event to start the run
RegisterServerEvent('sd-oxyrun:server:startr', function()
	local src = source
	local hasMoney = SD.GetPlayerAccountFunds(src, 'money', Config.RunCost)

	if hasMoney >= Config.RunCost then
		TriggerClientEvent("sd-oxyrun:client:sendToOxy", src)
	else
		TriggerClientEvent('sd_bridge:notification', src, Lang:t('error.you_dont_have_enough_money'), 'error')
	end
end)

-- Event to take money from the player and if enabled, trigger the Cooldown
RegisterServerEvent('sd-oxyrun:server:TakeMoney')
AddEventHandler('sd-oxyrun:server:TakeMoney', function()
	SD.RemoveMoney(source, 'cash', Config.RunCost)

    if Config.Cooldown.EnableGlobalCooldown then
        TriggerEvent('sd-oxyrun:server:coolout')
    end
end)

-- Event to implement cooldown
RegisterServerEvent('sd-oxyrun:server:coolout')
AddEventHandler('sd-oxyrun:server:coolout', function()
    Cooldown = true
    local timer = Config.Cooldown.GlobalCooldown * 60000

    print(Lang:t('prints.global_cooldown_started'))

    while timer > 0 do
        Wait(1000)
        timer = timer - 1
        if timer == 0 then
            print(Lang:t('prints.global_cooldown_finished'))
            Cooldown = false
        end
    end
end)

-- Callback to check the cooldown status
SD.RegisterCallback("sd-oxyrun:server:coolc", function(source, cb)
    cb(Cooldown)
end)

-- Callback to count the number of cops
SD.RegisterCallback('sd-oxyrun:server:getCops', function(source, cb)
    local players = GetPlayers()
    local amount = 0
    for i=1, #players do
        local player = tonumber(players[i])
        if SD.HasGroup(player, SD.PoliceJobs) then
            amount = amount + 1
        end
    end
    cb(amount)
end)

-- Event to send the car
RegisterNetEvent("sd-oxyrun:server:sendCar")
AddEventHandler("sd-oxyrun:server:sendCar", function(Routes)
	TriggerClientEvent("sd-oxyrun:createOxyVehicle", source, Routes)
end)

-- Event to process package delivery and rewards
RegisterNetEvent("sd-oxyrun:server:deliver")
AddEventHandler("sd-oxyrun:server:deliver", function(doingOxy, holdingBox)
    local source = source

    if doingOxy and holdingBox then
        local hasPackage = SD.HasItem(source, Config.Item)
        local hasBags = SD.HasItem(source, "markedbills")
        local hasBands = SD.HasItem(source, "bands")
        local hasRolls = SD.HasItem(source, "rolls")
        local chance = math.random(0, 100)
        local black_money_player

        if hasPackage then
            if Config.PrintChance then
                print(chance)
            end

            if Config.GiveItem then
                local rareitemchance = math.random(1, 100)
                local itemCount = math.random(Config.MinItemReward, Config.MaxItemReward)
                local itemCount2 = math.random(Config.MinSpecialReward, Config.MaxSpecialReward)
                SD.AddItem(source, Config.ItemReward, itemCount)
                if rareitemchance <= Config.SpecialRewardChance then
                    local itemIndex = math.random(1, #Config.SpecialItem)
                    SD.AddItem(source, Config.SpecialItem[itemIndex], itemCount2)
                end
            end

            if Config.CleanMoney then
                local rewards = {
                    {name = 'markedbills', amount = hasBags, payout = Config.BagChance},
                    {name = 'bands', amount = hasBands, payout = Config.BandChance},
                    {name = 'rolls', amount = hasRolls, payout = Config.RollChance}
                }

                for _, reward in ipairs(rewards) do
                    if chance < reward.payout and reward.amount > 0 then
                        local amount = Config.Amount == 'random' and math.random(reward.amount) or 1

                        if amount > Config.MaxAmount then
                            amount = Config.MaxAmount
                        end

                        local moneyToAdd = 0

                        if reward.name == 'markedbills' then
                            local Player = SD.GetPlayer(source)
                            if SD.Framework == 'qb' then
                                local worth = Player.Functions.GetItemByName('markedbills').info.worth
                                moneyToAdd = amount * worth
                                SD.AddMoney(source, 'cash', moneyToAdd)
                                SD.RemoveItem(source, reward.name, amount)
                            elseif SD.Framework == 'esx' then
                                black_money_player = Player.getAccount('black_money').money
                                if black_money_player < 1 then
                                    print("You don't have any marked cash!")
                                else
                                    Player.removeAccountMoney('black_money', black_money_player)
                                    Player.addMoney(black_money_player)
                                end
                            end
                        elseif reward.name == 'bands' then
                            moneyToAdd = amount * math.random(Config.BandMinPayout, Config.BandMaxPayout)
                            SD.AddMoney(source, 'cash', moneyToAdd)
                            SD.RemoveItem(source, reward.name, amount)
                        elseif reward.name == 'rolls' then
                            moneyToAdd = amount * math.random(Config.RollMinPayout, Config.RollMaxPayout)
                            SD.AddMoney(source, 'cash', moneyToAdd)
                            SD.RemoveItem(source, reward.name, amount)
                        end

                        break
                    end
                end
            end

            SD.RemoveItem(source, Config.Item, 1)
        end
    end
end)

RegisterNetEvent('sd-oxyrun:server:addItem')
AddEventHandler('sd-oxyrun:server:addItem', function(SupplierPosition, isOnRun)
    local playerPed = GetPlayerPed(source)
    local playerCoords = GetEntityCoords(playerPed)
    local distanceThreshold = 5.0 -- Distance threshold in meters

    if isOnRun then
        if SupplierPosition then
            local supplierDistance = #(playerCoords - vector3(SupplierPosition.x, SupplierPosition.y, SupplierPosition.z))

            if supplierDistance <= distanceThreshold then
                SD.AddItem(source, Config.Item, 1)
            end
        end
    end
end)