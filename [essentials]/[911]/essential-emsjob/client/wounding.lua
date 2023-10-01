local prevPos = nil
onPainKillers = false
local painkillerAmount = 0

-- Functions

local function DoBleedAlert()
    if not isDead and tonumber(isBleeding) > 0 then
        QBCore.Functions.Notify(Lang:t('info.bleed_alert', {bleedstate = Config.BleedingStates[tonumber(isBleeding)].label}), "error", 5000)
    end
end

local function RemoveBleed(level)
    if isBleeding ~= 0 then
        if isBleeding - level < 0 then
            isBleeding = 0
        else
            isBleeding = isBleeding - level
        end
        DoBleedAlert()
    end
end

local function Armorifak()
    if not UseArmor then
        UseArmor = true
    else
        return
    end

    local count = 5
    while count > 0 do
        Wait(1000)
        count = count - 1
        SetPedArmour(PlayerPedId(), GetPedArmour(PlayerPedId()) + 4) 
    end
    UseArmor = false
end

local function ApplyBleed(level)
    if isBleeding ~= 4 then
        if isBleeding + level > 4 then
            isBleeding = 4
        else
            isBleeding = isBleeding + level
        end
        DoBleedAlert()
    end
end

local function HealOxy()
    if not healing then
        healing = true
    else
        return
    end
    isBleeding = 0
    local count = 7
    while count > 0 do
        Wait(2000)
        exports["ps-buffs"]:AddBuff("super-health", 2250)
        count = count - 1
        SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 10) 
    end
    healing = false
end

local function HealGauze()
    if not healing then
        healing = true
    else
        return
    end
    isBleeding = 0
    local count = 7
    while count > 0 do
        Wait(2000)
        exports["ps-buffs"]:AddBuff("super-health", 2250)
        count = count - 1
        SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 2) 
    end
    healing = false
end
-- local function RemoveBleed(level)
--     if isBleeding ~= 0 then
--         if isBleeding - level < 0 then
--             isBleeding = 0
--         else
--             isBleeding = isBleeding - level
--         end
--         DoBleedAlert()
--     end
-- end

-- local function ApplyBleed(level)
--     if isBleeding ~= 4 then
--         if isBleeding + level > 4 then
--             isBleeding = 4
--         else
--             isBleeding = isBleeding + level
--         end
--         DoBleedAlert()
--     end
-- end

-- Events

RegisterNetEvent('hospital:client:UseIfaks', function()
    local ped = PlayerPedId()
    exports['qb-inventory']:toggleItem(0, "ifaks", 1)
    QBCore.Functions.Progressbar("use_bandage", Lang:t('progress.ifaks'), 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
		animDict = "mp_suicide",
		anim = "pill",
		flags = 49,
    }, {}, {}, function() -- Done

        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ifaks"], "remove")
        TriggerServerEvent('hud:server:RelieveStress', math.random(12, 24))
        ClearPedBloodDamage(PlayerPedId())
        TriggerEvent("hospital:client:OxyReset")
		HealOxy()
    end, function() -- Cancel
        exports['qb-inventory']:toggleItem(1, "ifaks", 1)
        StopAnimTask(ped, "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
end)

RegisterNetEvent('hospital:client:UseGauze', function()
    local ped = PlayerPedId()
    if GetEntityHealth(ped) < 200 then
    QBCore.Functions.Progressbar("use_gauze", Lang:t('progress.gauze'), 3200, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@business@weed@weed_inspecting_high_dry@",
            anim = "weed_inspecting_high_base_inspector",
            flags = 49,
        }, {}, {}, function() -- Done
        StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
        TriggerServerEvent("hospital:server:removeGauze")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gauze"], "remove")
        ClearPedBloodDamage(PlayerPedId())
        TriggerEvent("hospital:client:OxyReset")
		HealGauze()
    end, function() -- Cancel
        exports['ps-ui']:Notify("This Seems To Be Working", "success")
        -- exports['qb-inventory']:toggleItem(1, "ifaks", 1)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
else
    exports['ps-ui']:Notify("Your Are Fine Bozo Quit Stressing", "error")
end
end)

-- RegisterNetEvent('hospital:client:UseBandage', function()
--     local ped = PlayerPedId()
--     QBCore.Functions.Progressbar("use_bandage", Lang:t('progress.bandage'), 4000, false, true, {
--         disableMovement = false,
--         disableCarMovement = false,
-- 		disableMouse = false,
-- 		disableCombat = true,
--     }, {
-- 		animDict = "anim@amb@business@weed@weed_inspecting_high_dry@",
-- 		anim = "weed_inspecting_high_base_inspector",
-- 		flags = 49,
--     }, {}, {}, function() -- Done
--         StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
--         TriggerServerEvent("hospital:server:removeBandage")
--         TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bandage"], "remove")
--         SetEntityHealth(ped, GetEntityHealth(ped) + 10)
--         if math.random(1, 100) < 50 then
--             RemoveBleed(1)
--         end
--         if math.random(1, 100) < 7 then
--             ResetPartial()
--         end
--     end, function() -- Cancel
--         StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
--         QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
--     end)
-- end)

RegisterNetEvent('hospital:client:UseBandage', function()
    local ped = PlayerPedId()
    if GetEntityHealth(ped) < 200 then
        QBCore.Functions.Progressbar("use_bandage", Lang:t('progress.bandage'), math.random(2150, 2700), false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@business@weed@weed_inspecting_high_dry@",
            anim = "weed_inspecting_high_base_inspector",
            flags = 49,
        }, {}, {}, function() -- Done
            StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
            TriggerServerEvent("hospital:server:removeBandage")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bandage"], "remove")
            SetEntityHealth(ped, GetEntityHealth(ped) + math.random(12,14))
            if math.random(1, 100) < 50 then
                RemoveBleed(1)
            end
            if math.random(1, 100) < 7 then
                ResetPartial()
            end
            exports['ps-ui']:Notify("You Should Be Good For Now", "success")
        end, function() -- Cancel
            StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
            exports['ps-ui']:Notify(Lang:t('error.canceled'), "error")
        end)
    else
        exports['ps-ui']:Notify("Your Are Fine Bozo Quit Stressing", "error")
    end
end)

RegisterNetEvent('hospital:client:UsePainkillers', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("use_bandage", Lang:t('progress.painkillers'), 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
		animDict = "mp_suicide",
		anim = "pill",
		flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "mp_suicide", "pill", 1.0)
        TriggerServerEvent("hospital:server:removePainkillers")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["painkillers"], "remove")
        if painkillerAmount < 3 then
            painkillerAmount = painkillerAmount + 1
        end
        PainKillerLoop()
    end, function() -- Cancel
        StopAnimTask(ped, "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
end)

-- Threads

function PainKillerLoop(pkAmount)
    if not onPainKillers then
        if pkAmount then
            painkillerAmount = pkAmount
        end
        onPainKillers = true
        while onPainKillers do
            Wait(1)
            painkillerAmount = painkillerAmount - 1
            Wait(Config.PainkillerInterval * 1000)
            if painkillerAmount <= 0 then
                painkillerAmount = 0
                onPainKillers = false
            end
        end
    end
end
exports('PainKillerLoop', PainKillerLoop)

CreateThread(function()
	while true do
		if #injured > 0 then
			local level = 0
			for _, v in pairs(injured) do
				if v.severity > level then
					level = v.severity
				end
			end
			SetPedMoveRateOverride(PlayerPedId(), Config.MovementRate[level])
			Wait(5)
		else
			Wait(1000)
		end
	end
end)

CreateThread(function()
    Wait(2500)
    prevPos = GetEntityCoords(PlayerPedId(), true)
    while true do
        Wait(1000)
        if isBleeding > 0 and not onPainKillers then
            local player = PlayerPedId()
            if bleedTickTimer >= Config.BleedTickRate and not isInHospitalBed then
                if not isDead and not InLaststand then
                    if isBleeding > 0 then
                        if fadeOutTimer + 1 == Config.FadeOutTimer then
                            if blackoutTimer + 1 == Config.BlackoutTimer then
                                SetFlash(0, 0, 100, 7000, 100)

                                DoScreenFadeOut(500)
                                while not IsScreenFadedOut() do
                                    Wait(0)
                                end

                                if not IsPedRagdoll(player) and IsPedOnFoot(player) and not IsPedSwimming(player) then
                                    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08) -- change this float to increase/decrease camera shake
                                    SetPedToRagdollWithFall(player, 7500, 9000, 1, GetEntityForwardVector(player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                                end

                                Wait(1500)
                                DoScreenFadeIn(1000)
                                blackoutTimer = 0
                            else
                                DoScreenFadeOut(500)
                                while not IsScreenFadedOut() do
                                    Wait(0)
                                end
                                DoScreenFadeIn(500)

                                if isBleeding > 3 then
                                    blackoutTimer = blackoutTimer + 2
                                else
                                    blackoutTimer = blackoutTimer + 1
                                end
                            end

                            fadeOutTimer = 0
                        else
                            fadeOutTimer = fadeOutTimer + 1
                        end

                        local bleedDamage = tonumber(isBleeding) * Config.BleedTickDamage
                        ApplyDamageToPed(player, bleedDamage, false)
                        DoBleedAlert()
                        playerHealth = playerHealth - bleedDamage
                        local randX = math.random() + math.random(-1, 1)
                        local randY = math.random() + math.random(-1, 1)
                        local coords = GetOffsetFromEntityInWorldCoords(player, randX, randY, 0)
                        TriggerServerEvent("evidence:server:CreateBloodDrop", QBCore.Functions.GetPlayerData().citizenid, QBCore.Functions.GetPlayerData().metadata["bloodtype"], coords)

                        if advanceBleedTimer >= Config.AdvanceBleedTimer then
                            ApplyBleed(1)
                            advanceBleedTimer = 0
                        else
                            advanceBleedTimer = advanceBleedTimer + 1
                        end
                    end
                end
                bleedTickTimer = 0
            else
                if math.floor(bleedTickTimer % (Config.BleedTickRate / 10)) == 0 then
                    local currPos = GetEntityCoords(player, true)
                    local moving = #(vector2(prevPos.x, prevPos.y) - vector2(currPos.x, currPos.y))
                    if (moving > 1 and not IsPedInAnyVehicle(player)) and isBleeding > 2 then
                        advanceBleedTimer = advanceBleedTimer + Config.BleedMovementAdvance
                        bleedTickTimer = bleedTickTimer + Config.BleedMovementTick
                        prevPos = currPos
                    else
                        bleedTickTimer = bleedTickTimer + 1
                    end
                end
                bleedTickTimer = bleedTickTimer + 1
            end
        end
    end
end)

-- RegisterNetEvent('hospital:client:UseBandage', function()
--     local ped = PlayerPedId()
--     QBCore.Functions.Progressbar("use_bandage", Lang:t('progress.bandage'), 4000, false, true, {
--         disableMovement = false,
--         disableCarMovement = false,
-- 		disableMouse = false,
-- 		disableCombat = true,
--     }, {
-- 		animDict = "anim@amb@business@weed@weed_inspecting_high_dry@",
-- 		anim = "weed_inspecting_high_base_inspector",
-- 		flags = 49,
--     }, {}, {}, function() -- Done
--         StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
--         TriggerServerEvent("hospital:server:removeBandage")
--         TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bandage"], "remove")
--         SetEntityHealth(ped, GetEntityHealth(ped) + 10)
--         if math.random(1, 100) < 50 then
--             RemoveBleed(1)
--         end
--         if math.random(1, 100) < 7 then
--             ResetPartial()
--         end
--     end, function() -- Cancel
--         StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
--         QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
--     end)
-- end)
