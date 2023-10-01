local QBCore = exports[Config.CoreName]:GetCoreObject()

-- Jobs
local currentLocation = 1
currentBlip = 0
local PrisonBreak = false
local isWorking = false


-- Functions

local function loadAnimDict(dict)
	while(not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Wait(1)
	end
end

--- This will create the blip for the current prison job and give a reward if they were done with the previous one
--- @param noItem boolean | nil
--- @return nil
function CreateJobBlip(noItem) -- Used globally
    if DoesBlipExist(currentBlip) then
        RemoveBlip(currentBlip)
    end
    local coords = Config.Locations.jobs[currentJob][currentLocation].coords.xyz
    currentBlip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(currentBlip, 402)
    SetBlipDisplay(currentBlip, 4)
    SetBlipScale(currentBlip, 0.8)
    SetBlipAsShortRange(currentBlip, true)
    SetBlipColour(currentBlip, 1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Lang:t("info.work_blip"))
    EndTextCommandSetBlipName(currentBlip)
    if noItem then return end
    TriggerServerEvent('prison:server:CheckChance')
end

--- This will check all job locations of the current job to check if they're done or not
--- @return boolean
local function CheckAllLocations()
    local amount = 0
    for i = 1, #Config.Locations.jobs[currentJob] do
        local current = Config.Locations.jobs[currentJob][i]
        if current.done then
            amount += 1
        end
    end
    return amount == #Config.Locations.jobs[currentJob]
end

--- This will reset all location of the current job
--- @return nil
local function ResetLocations()
    for i = 1, #Config.Locations.jobs[currentJob] do
        Config.Locations.jobs[currentJob][i].done = false
    end
end

--- This will set the job as done and give a new location at the same time for you to continue the job and give you some time cut as a reward
--- @return nil
function JobDone()
    if not Config.Locations.jobs[currentJob][currentLocation].done then return end
    if math.random(1, 100) <= 75 then
        TriggerEvent("ThxPrisonNotify",Lang:t("success.time_cut"))
        jailTime -= math.random(1, 4)
    end
    if CheckAllLocations() then ResetLocations() end
    local newLocation = math.random(1, #Config.Locations.jobs[currentJob])
    while newLocation == currentLocation or Config.Locations.jobs[currentJob][newLocation].done do
        Wait(0)
        newLocation = math.random(1, #Config.Locations.jobs[currentJob])
    end
    currentLocation = newLocation
    CreateJobBlip()
end

function PrisonWorkSuccess()
    if math.random(1, 100) <= Config.PrisonWorkPercentage then
        TriggerEvent("ThxPrisonNotify",Lang:t("success.time_cut"))
        jailTime -= 1
    end
end
--- This will be triggered once you interact with a job location to perform your job at
--- @return nil
local function StartWork()
    isWorking = true
    Config.Locations.jobs[currentJob][currentLocation].done = true
	loadAnimDict("anim@gangops@facility@servers@")
	TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire",  8.0, -8, -1, 16, 1, 0, 0, 0)
	exports[Config.CircleMiniGameName]:Circle(function(success)
		if success then
			isWorking = false
			StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
			JobDone()
			print("success")
		else
			isWorking = false
			StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
			TriggerEvent("ThxPrisonNotify",'You failed', "error")
			print("fail")
		end
	end, 1, 69) -- NumberOfCircles, Milliseconds
end

-- Threads

CreateThread(function()
    local isInside = false
    for k in pairs(Config.Locations.jobs) do
        for i = 1, #Config.Locations.jobs[k] do
            local current = Config.Locations.jobs[k][i]
            if Config.UseTarget then
                exports[Config.Target]:AddBoxZone("work_"..k.."_"..i, current.coords.xyz, 1.5, 1.6, {
                    name = "work_"..k.."_"..i,
                    heading = 12.0,
                    debugPoly = false,
                    minZ = 19,
                    maxZ = 219
                }, {
                    options = {
                        {
                            icon = 'fa-solid fa-bolt',
                            label = Lang:t("info.job_interaction_target", {job = Config.Jobs[k]}),
                            canInteract = function()
                                return inJail and currentJob and not Config.Locations.jobs[k][i].done and not isWorking and i == currentLocation
                            end,
                            action = function()
                                StartWork()
                            end
                        }
                    },
                    distance = 2.5
                })
            else
                local electricityzone = BoxZone:Create(current.coords.xyz, 3.0, 5.0, {
                    name = "work_"..k.."_"..i,
                    debugPoly = false,
                })
                electricityzone:onPlayerInOut(function(isPointInside)
                    isInside = isPointInside and inJail and currentJob and not Config.Locations.jobs[k][i].done and not isWorking
                    if isInside then
                        exports[Config.CoreName]:DrawText(Lang:t("info.job_interaction"), 'left')
					else
                        exports[Config.CoreName]:HideText()
                    end
                end)
            end
            Config.Locations.jobs[k][i].done = false
        end
    end
    if not Config.UseTarget then
        while true do
            local sleep = 1000
            if isInside then
                sleep = 0
                if IsControlJustReleased(0, 38) then
					exports[Config.CoreName]:HideText()
					StartWork()
                    sleep = 1000
                end
            end
            Wait(sleep)
        end
    end
end)
-- END JOBS

-- MAIN
inJail = false
jailTime = 0
currentJob = nil
CellsBlip = nil
TimeBlip = nil
ShopBlip = nil
local insidecanteen = false
local insidefreedom = false
local canteen_ped = 0
local freedom_ped = 0
local freedom
local canteen

-- Functions

--- This will create the blips for the cells, time check and shop
--- @return nil
local function CreateCellsBlip()
	if CellsBlip then
		RemoveBlip(CellsBlip)
	end
	CellsBlip = AddBlipForCoord(Config.Locations["yard"].coords.x, Config.Locations["yard"].coords.y, Config.Locations["yard"].coords.z)

	SetBlipSprite (CellsBlip, 238)
	SetBlipDisplay(CellsBlip, 4)
	SetBlipScale  (CellsBlip, 0.8)
	SetBlipAsShortRange(CellsBlip, true)
	SetBlipColour(CellsBlip, 4)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName(Lang:t("info.cells_blip"))
	EndTextCommandSetBlipName(CellsBlip)

	if TimeBlip then
		RemoveBlip(TimeBlip)
	end
	TimeBlip = AddBlipForCoord(Config.Locations["freedom"].coords.x, Config.Locations["freedom"].coords.y, Config.Locations["freedom"].coords.z)

	SetBlipSprite(TimeBlip, 466)
	SetBlipDisplay(TimeBlip, 4)
	SetBlipScale(TimeBlip, 0.8)
	SetBlipAsShortRange(TimeBlip, true)
	SetBlipColour(TimeBlip, 4)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName(Lang:t("info.freedom_blip"))
	EndTextCommandSetBlipName(TimeBlip)

	if ShopBlip then
		RemoveBlip(ShopBlip)
	end
	ShopBlip = AddBlipForCoord(Config.Locations["shop"].coords.x, Config.Locations["shop"].coords.y, Config.Locations["shop"].coords.z)

	SetBlipSprite(ShopBlip, 52)
	SetBlipDisplay(ShopBlip, 4)
	SetBlipScale(ShopBlip, 0.5)
	SetBlipAsShortRange(ShopBlip, true)
	SetBlipColour(ShopBlip, 0)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName(Lang:t("info.canteen_blip"))
	EndTextCommandSetBlipName(ShopBlip)
end

-- Add clothes to prisioner

local function ApplyClothes()
	local playerPed = PlayerPedId()
	if DoesEntityExist(playerPed) then
		Citizen.CreateThread(function()
			SetPedArmour(playerPed, 0)
			ClearPedBloodDamage(playerPed)
			ResetPedVisibleDamage(playerPed)
			ClearPedLastWeaponDamage(playerPed)
			ResetPedMovementClipset(playerPed, 0)
			local gender = QBCore.Functions.GetPlayerData().charinfo.gender
			if gender == 0 then
				TriggerEvent('qb-clothing:client:loadOutfit', Config.Uniforms.male)
			else
				TriggerEvent('qb-clothing:client:loadOutfit', Config.Uniforms.female)
			end
		end)
	end
end


-- Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		if PlayerData.metadata["injail"] > 0 then
			TriggerEvent("prison:client:Enter", PlayerData.metadata["injail"])
		end
	end)

	QBCore.Functions.TriggerCallback('prison:server:IsAlarmActive', function(active)
		if active then
			TriggerEvent('prison:client:JailAlarm', true)
		end
	end)

	if DoesEntityExist(canteen_ped) or DoesEntityExist(freedom_ped) then return end

	local pedModel = `s_m_m_armoured_01`

	RequestModel(pedModel)
	while not HasModelLoaded(pedModel) do
		Wait(0)
	end

	freedom_ped = CreatePed(0, pedModel, Config.Locations["freedom"].coords.x, Config.Locations["freedom"].coords.y, Config.Locations["freedom"].coords.z, Config.Locations["freedom"].coords.w, false, true)
	FreezeEntityPosition(freedom_ped, true)
	SetEntityInvincible(freedom_ped, true)
	SetBlockingOfNonTemporaryEvents(freedom_ped, true)
	TaskStartScenarioInPlace(freedom_ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)

	canteen_ped = CreatePed(0, pedModel, Config.Locations["shop"].coords.x, Config.Locations["shop"].coords.y, Config.Locations["shop"].coords.z, Config.Locations["shop"].coords.w, false, true)
	FreezeEntityPosition(canteen_ped, true)
	SetEntityInvincible(canteen_ped, true)
	SetBlockingOfNonTemporaryEvents(canteen_ped, true)
	TaskStartScenarioInPlace(canteen_ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)

	if not Config.UseTarget then return end

	exports[Config.Target]:AddTargetEntity(freedom_ped, {
		options = {
			{
				type = "client",
				event = "prison:client:Leave",
				icon = 'fas fa-clipboard',
				label = Lang:t("info.target_freedom_option"),
				canInteract = function()
					return inJail
				end
			}
		},
		distance = 2.5,
	})

	exports[Config.Target]:AddTargetEntity(canteen_ped, {
		options = {
			{
				type = "client",
				event = "prison:client:canteen",
				icon = 'fas fa-clipboard',
				label = Lang:t("info.target_canteen_option"),
				canInteract = function()
					return inJail
				end
			}
		},
		distance = 1.5,
	})
end)

AddEventHandler('onResourceStart', function(resource)
    if resource ~= GetCurrentResourceName() then return end
	Wait(100)
	if LocalPlayer.state['isLoggedIn'] then
		QBCore.Functions.GetPlayerData(function(PlayerData)
			if PlayerData.metadata["injail"] > 0 then
				TriggerEvent("prison:client:Enter", PlayerData.metadata["injail"])
			end
		end)
	end

	QBCore.Functions.TriggerCallback('prison:server:IsAlarmActive', function(active)
		if not active then return end
		TriggerEvent('prison:client:JailAlarm', true)
	end)

	if DoesEntityExist(canteen_ped) or DoesEntityExist(freedom_ped) then return end

	local pedModel = `s_m_m_armoured_01`

	RequestModel(pedModel)
	while not HasModelLoaded(pedModel) do
		Wait(0)
	end

	freedom_ped = CreatePed(0, pedModel, Config.Locations["freedom"].coords.x, Config.Locations["freedom"].coords.y, Config.Locations["freedom"].coords.z, Config.Locations["freedom"].coords.w, false, true)
	FreezeEntityPosition(freedom_ped, true)
	SetEntityInvincible(freedom_ped, true)
	SetBlockingOfNonTemporaryEvents(freedom_ped, true)
	TaskStartScenarioInPlace(freedom_ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)

	canteen_ped = CreatePed(0, pedModel, Config.Locations["shop"].coords.x, Config.Locations["shop"].coords.y, Config.Locations["shop"].coords.z, Config.Locations["shop"].coords.w, false, true)
	FreezeEntityPosition(canteen_ped, true)
	SetEntityInvincible(canteen_ped, true)
	SetBlockingOfNonTemporaryEvents(canteen_ped, true)
	TaskStartScenarioInPlace(canteen_ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)

	if not Config.UseTarget then return end

	exports[Config.Target]:AddTargetEntity(freedom_ped, {
		options = {
			{
				type = "client",
				event = "prison:client:Leave",
				icon = 'fas fa-clipboard',
				label = Lang:t("info.target_freedom_option"),
				canInteract = function()
					return inJail
				end
			}
		},
		distance = 2.5,
	})

	exports[Config.Target]:AddTargetEntity(canteen_ped, {
		options = {
			{
				type = "client",
				event = "prison:client:canteen",
				icon = 'fas fa-clipboard',
				label = Lang:t("info.target_canteen_option"),
				canInteract = function()
					return inJail
				end
			}
		},
		distance = 1.5,
	})
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
	inJail = false
	currentJob = nil
	RemoveBlip(currentBlip)
end)

RegisterNetEvent('prison:client:Enter', function(time)
	local invokingResource = GetInvokingResource()
	if invokingResource and invokingResource ~= Config.PoliceJobScript and invokingResource ~= Config.EMSJobScript and invokingResource ~= GetCurrentResourceName() then
		-- Use QBCore.Debug here for a quick and easy way to print to the console to grab your attention with this message
		QBCore.Debug({('Player with source %s tried to execute prison:client:Enter manually or from another resource which is not authorized to call this, invokedResource: %s'):format(GetPlayerServerId(PlayerId()), invokingResource)})
		return
	end

	TriggerEvent("ThxPrisonNotify", Lang:t("error.injail", {Time = time}), "error")

	TriggerEvent("chat:addMessage", {
		color = {3, 132, 252},
		multiline = true,
		args = {"SYSTEM", Lang:t("info.seized_property")}
	})
	DoScreenFadeOut(500)
	while not IsScreenFadedOut() do
		Wait(10)
	end
	local RandomStartPosition = Config.Locations.spawns[math.random(1, #Config.Locations.spawns)]
	SetEntityCoords(PlayerPedId(), RandomStartPosition.coords.x, RandomStartPosition.coords.y, RandomStartPosition.coords.z - 0.9, 0, 0, 0, false)
	SetEntityHeading(PlayerPedId(), RandomStartPosition.coords.w)
	Wait(500)
	TriggerEvent('animations:client:EmoteCommandStart', {RandomStartPosition.animation})

	inJail = true
	jailTime = time
	local tempJobs = {}
	local i = 1
	for k in pairs(Config.Locations.jobs) do
		tempJobs[i] = k
		i += 1
	end
	currentJob = tempJobs[math.random(1, #tempJobs)]
	CreateJobBlip(true)
	ApplyClothes()
	TriggerServerEvent("prison:server:SetJailStatus", jailTime)
	TriggerServerEvent("prison:server:SaveJailItems", jailTime)
	TriggerServerEvent("InteractSound_SV:PlayOnSource", "jail", 0.5)
	CreateCellsBlip()
	Wait(2000)
	DoScreenFadeIn(1000)
	TriggerEvent("ThxPrisonNotify", Lang:t("error.do_some_work", {currentjob = Config.Jobs[currentJob] }), "error")
end)

RegisterNetEvent('prison:client:Leave', function()
	if jailTime > 0 then
		TriggerEvent("ThxPrisonNotify", Lang:t("info.timeleft", {JAILTIME = jailTime}))
	elseif PrisonBreak then
		TriggerEvent("ThxPrisonNotify",'I cant help you now pal', "error")
	else
		jailTime = 0
		TriggerServerEvent("prison:server:SetJailStatus", 0)
		TriggerServerEvent("prison:server:GiveJailItems")
		TriggerEvent("chat:addMessage", {
			color = {3, 132, 252},
			multiline = true,
			args = {"SYSTEM", Lang:t("info.received_property")}
		})
		inJail = false
		RemoveBlip(currentBlip)
		RemoveBlip(CellsBlip)
		CellsBlip = nil
		RemoveBlip(TimeBlip)
		TimeBlip = nil
		RemoveBlip(ShopBlip)
		ShopBlip = nil
		TriggerEvent("ThxPrisonNotify",Lang:t("success.free_"))
		DoScreenFadeOut(500)
		while not IsScreenFadedOut() do
			Wait(10)
		end
		TriggerServerEvent('qb-clothes:loadPlayerSkin')
		SetEntityCoords(PlayerPedId(), Config.Locations["outside"].coords.x, Config.Locations["outside"].coords.y, Config.Locations["outside"].coords.z, 0, 0, 0, false)
		SetEntityHeading(PlayerPedId(), Config.Locations["outside"].coords.w)

		Wait(500)

		DoScreenFadeIn(1000)
	end
end)

RegisterNetEvent('prison:client:UnjailPerson', function()
	if jailTime > 0 then
		TriggerServerEvent("prison:server:SetJailStatus", 0)
		TriggerServerEvent("prison:server:GiveJailItems")
		TriggerEvent("chat:addMessage", {
			color = {3, 132, 252},
			multiline = true,
			args = {"SYSTEM", Lang:t("info.received_property")}
		})
		inJail = false
		RemoveBlip(currentBlip)
		RemoveBlip(CellsBlip)
		CellsBlip = nil
		RemoveBlip(TimeBlip)
		TimeBlip = nil
		RemoveBlip(ShopBlip)
		ShopBlip = nil
		TriggerEvent("ThxPrisonNotify",Lang:t("success.free_"))
		DoScreenFadeOut(500)
		while not IsScreenFadedOut() do
			Wait(10)
		end
		TriggerServerEvent('qb-clothes:loadPlayerSkin')
		SetEntityCoords(PlayerPedId(), Config.Locations["outside"].coords.x, Config.Locations["outside"].coords.y, Config.Locations["outside"].coords.z, 0, 0, 0, false)
		SetEntityHeading(PlayerPedId(), Config.Locations["outside"].coords.w)
		Wait(500)
		DoScreenFadeIn(1000)
	end
end)

RegisterNetEvent('prison:client:canteen',function()
	QBCore.Functions.TriggerCallback("Thx:server:CantienAmount", function(CanteenItems)
		local ShopItems = {}
		ShopItems.label = "Prison Canteen"
		ShopItems.items = CanteenItems
		ShopItems.slots = #CanteenItems
		print(ShopItems.slots, 'slots')
		print(ShopItems.items, 'items')
		-- for _, v in pairs(ShopItems.items) do
		-- 	v.amount = amount
		-- 	print(v.amount, 'amount')
		-- end
		TriggerServerEvent("inventory:server:OpenInventory", "shop", "Canteenshop_"..math.random(1, 99), ShopItems)
	end)
end)

-- Threads

CreateThread(function()
    TriggerEvent('prison:client:JailAlarm', false)
	while true do
		local sleep = 1000
		if jailTime > 0 and inJail then
			Wait(1000 * 60)
			sleep = 0
			if jailTime > 0 and inJail then
				jailTime -= 1
				if jailTime <= 0 then
					jailTime = 0
					TriggerEvent("ThxPrisonNotify",Lang:t("success.timesup"), "success", 10000)
				end
				TriggerServerEvent("prison:server:SetJailStatus", jailTime)
			end
		end
		Wait(sleep)
	end
end)

CreateThread(function()
	if not Config.UseTarget then
		freedom = BoxZone:Create(vector3(Config.Locations["freedom"].coords.x, Config.Locations["freedom"].coords.y, Config.Locations["freedom"].coords.z), 2.75, 2.75, {
			name="freedom",
			debugPoly = false,
		})
		freedom:onPlayerInOut(function(isPointInside)
			insidefreedom = isPointInside
			if isPointInside then
				CreateThread(function()
					while insidefreedom do
						if IsControlJustReleased(0, 38) then
							exports[Config.CoreName]:KeyPressed()
							exports[Config.CoreName]:HideText()
							TriggerEvent("prison:client:Leave")
							break
						end
						Wait(0)
					end
				end)
				exports[Config.CoreName]:DrawText('[E] Check Time', 'left')
			else
				exports[Config.CoreName]:HideText()
			end
		end)
		canteen = BoxZone:Create(vector3(Config.Locations["shop"].coords.x, Config.Locations["shop"].coords.y, Config.Locations["shop"].coords.z), 2.75, 7.75, {
			name="canteen",
			debugPoly = false,
		})
		canteen:onPlayerInOut(function(isPointInside)
			insidecanteen = isPointInside
			if isPointInside then
				CreateThread(function()
					while insidecanteen do
						if IsControlJustReleased(0, 38) then
							exports[Config.CoreName]:KeyPressed()
							exports[Config.CoreName]:HideText()
							TriggerEvent("prison:client:canteen")
							break
						end
						Wait(0)
					end
				end)
				exports[Config.CoreName]:DrawText('[E] Open Canteen', 'left')
			else
				exports[Config.CoreName]:HideText()
			end
		end)
	end
end)
-- END OF MAIN

-- PRISON BREAK
local currentGate = 0
local requiredItemsShowed = false
local requiredItems = {}
local inRange = false
local securityLockdown = false
local PlayerJob = {}
local Gates = {
    [1] = {
        gatekey = 13,
        coords = vector3(1845.99, 2604.7, 45.58),
        hit = false,
    },
    [2] = {
        gatekey = 14,
        coords = vector3(1819.47, 2604.67, 45.56),
        hit = false,
    },
    [3] = {
        gatekey = 15,
        coords = vector3(1804.74, 2616.311, 45.61),
        hit = false,
    }
}

-- Functions

--- This will be triggered once a hack is done on a gate
--- @param success boolean
--- @return nil
local function OnHackDone(success)
    Config.OnHackDone(success, currentGate, Gates[currentGate])
end

--- This will draw 3d text at the given location with the given text
--- @param x number
--- @param y number
--- @param z number
--- @param text string
--- @return nil
local function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

-- Events

AddEventHandler('onResourceStart', function(resource)
    if resource ~= GetCurrentResourceName() or not LocalPlayer.state['isLoggedIn'] then return end
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

RegisterNetEvent('electronickit:UseElectronickit', function()
    if currentGate ~= 0 and not securityLockdown and not Gates[currentGate].hit then
        local hasItem = QBCore.Functions.HasItem("gatecrack")
        if hasItem then
            TriggerEvent('inventory:client:requiredItems', requiredItems, false)
            QBCore.Functions.Progressbar("hack_gate", Lang:t("info.connecting_device"), math.random(5000, 10000), false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "anim@gangops@facility@servers@",
                anim = "hotwire",
                flags = 16,
            }, {}, {}, function() -- Done
                StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                TriggerEvent("mhacking:show")
                TriggerEvent("mhacking:start", math.random(5, 9), math.random(10, 18), OnHackDone)
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                TriggerEvent("ThxPrisonNotify",Lang:t("error.cancelled"), "error")
            end)
        else
            TriggerEvent("ThxPrisonNotify",Lang:t("error.item_missing"), "error")
        end
    end
end)

RegisterNetEvent('prison:client:SetLockDown', function(isLockdown)
    securityLockdown = isLockdown
    if not securityLockdown or not inJail then return end
    TriggerEvent("chat:addMessage", {
        color = {255, 0, 0},
        multiline = true,
        args = {"HOSTAGE", Lang:t("error.security_activated")}
    })
end)

RegisterNetEvent('prison:client:PrisonBreakAlert', function()
    local coords = vector3(Config.Locations["middle"].coords.x, Config.Locations["middle"].coords.y, Config.Locations["middle"].coords.z)
    local alertData = {title = Lang:t("info.police_alert_title"), coords = {x = coords.x, y = coords.y, z = coords.z}, description = Lang:t("info.police_alert_description")}
    TriggerEvent("qb-phone:client:addPoliceAlert", alertData)
    TriggerEvent('police:client:policeAlert', coords, Lang:t("info.police_alert_description"))

    local BreakBlip = AddBlipForCoord(coords.x, coords.y, coords.z)
    TriggerServerEvent('prison:server:JailAlarm')
    SetBlipSprite(BreakBlip , 161)
    SetBlipScale(BreakBlip , 3.0)
    SetBlipColour(BreakBlip, 3)
    PulseBlip(BreakBlip)
    PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
    Wait(100)
    PlaySoundFrontend( -1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1 )
    Wait(100)
    PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
    Wait(100)
    PlaySoundFrontend( -1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1 )
    Wait((1000 * 60 * 5))
    RemoveBlip(BreakBlip)
end)

RegisterNetEvent('prison:client:SetGateHit', function(key, isHit)
    Gates[key].hit = isHit
end)

RegisterNetEvent('prison:client:JailAlarm', function(toggle)
    if toggle then
        local alarmIpl = GetInteriorAtCoordsWithType(1787.004,2593.1984,45.7978, "int_prison_main")

        RefreshInterior(alarmIpl)
        EnableInteriorProp(alarmIpl, "prison_alarm")

        CreateThread(function()
            while not PrepareAlarm("PRISON_ALARMS") do
                Wait(100)
            end
            StartAlarm("PRISON_ALARMS", true)
        end)
    else
        local alarmIpl = GetInteriorAtCoordsWithType(1787.004,2593.1984,45.7978, "int_prison_main")

        RefreshInterior(alarmIpl)
        DisableInteriorProp(alarmIpl, "prison_alarm")

        CreateThread(function()
            while not PrepareAlarm("PRISON_ALARMS") do
                Wait(100)
            end
            StopAllAlarms(true)
        end)
    end
end)

-- Threads

CreateThread(function()
    Wait(500)
    requiredItems = {
        [1] = {name = QBCore.Shared.Items["electronickit"]["name"], image = QBCore.Shared.Items["electronickit"]["image"]},
        [2] = {name = QBCore.Shared.Items["gatecrack"]["name"], image = QBCore.Shared.Items["gatecrack"]["image"]},
    }
    while true do
        inRange = false
        currentGate = 0
        local sleep = 1000
        if LocalPlayer.state.isLoggedIn then
            if PlayerJob.name ~= "police" then
                local pos = GetEntityCoords(PlayerPedId())
                for k in pairs(Gates) do
                    local dist =  #(pos - Gates[k].coords)
                    if dist < 1.5 then
                        currentGate = k
                        inRange = true
                        if securityLockdown then
                            sleep = 0
                            DrawText3D(Gates[k].coords.x, Gates[k].coords.y, Gates[k].coords.z, "~r~SYSTEM LOCKDOWN")
                        elseif Gates[k].hit then
                            sleep = 0
                            DrawText3D(Gates[k].coords.x, Gates[k].coords.y, Gates[k].coords.z, "SYSTEM BREACH")
                        elseif not requiredItemsShowed then
                            requiredItemsShowed = true
                            TriggerEvent('inventory:client:requiredItems', requiredItems, true)
                        end
                    end
                end

                if not inRange then
                    if requiredItemsShowed then
                        requiredItemsShowed = false
                        TriggerEvent('inventory:client:requiredItems', requiredItems, false)
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

RegisterNetEvent('prison:client:ResetAllJailStats', function(bool)
	inJail = false
	jailTime = 0
	RemoveBlip(currentBlip)
	RemoveBlip(CellsBlip)
	CellsBlip = nil
	RemoveBlip(TimeBlip)
	TimeBlip = nil
	RemoveBlip(ShopBlip)
	ShopBlip = nil
	TriggerServerEvent("prison:server:SetJailStatus", 0)
	TriggerServerEvent("prison:server:GiveJailItems", true)
	TriggerEvent("ThxPrisonNotify",Lang:t("error.escaped"), "error")
	PrisonBreak = true
	Wait(10 * 60000)
	PrisonBreak = false
end)


CreateThread(function()
    while true do
		if inJail then
			local pos = GetEntityCoords(PlayerPedId(), true)
			if #(pos.xy - vec2(Config.Locations["middle"].coords.x, Config.Locations["middle"].coords.y)) > 300 and inJail then
				-- inJail = false
				-- jailTime = 0
				-- RemoveBlip(currentBlip)
				-- RemoveBlip(CellsBlip)
				-- CellsBlip = nil
				-- RemoveBlip(TimeBlip)
				-- TimeBlip = nil
				-- RemoveBlip(ShopBlip)
				-- ShopBlip = nil
				-- TriggerServerEvent("prison:server:SecurityLockdown")
				-- TriggerEvent("prison:client:PrisonBreakAlert")
				-- TriggerServerEvent("prison:server:SetJailStatus", 0)
				-- TriggerServerEvent("prison:server:GiveJailItems", true)
				-- TriggerEvent("ThxPrisonNotify",Lang:t("error.escaped"), "error")
				local ped = PlayerPedId()
				DoScreenFadeOut(1000)
				Wait(1000)
				SetEntityCoords(ped, 1773.52, 2554.08, 45.57, 0, 0, 0, false)
				SetEntityHeading(ped, 100.0)
				Wait(1000)
				DoScreenFadeIn(1000)
				TriggerEvent("ThxPrisonNotify","Get back here Bozo!", "error")
			end
		end
        Wait(1000)
    end
end)
---