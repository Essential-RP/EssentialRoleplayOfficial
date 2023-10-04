local QBCore = exports['qb-core']:GetCoreObject()
local weapons = {
	'WEAPON_KNIFE',
	'WEAPON_NIGHTSTICK',
	'WEAPON_BREAD',
	'WEAPON_FLASHLIGHT',
	'WEAPON_HAMMER',
	'WEAPON_BAT',
	'WEAPON_GOLFCLUB',
	'WEAPON_CROWBAR',
	'WEAPON_BOTTLE',
	'WEAPON_DAGGER',
	'WEAPON_HATCHET',
	'WEAPON_MACHETE',
	'WEAPON_SWITCHBLADE',
	'WEAPON_BATTLEAXE',
	'WEAPON_POOLCUE',
	'WEAPON_WRENCH',
	'WEAPON_PISTOL',
	'WEAPON_PISTOL_MK2',
	'WEAPON_COMBATPISTOL',
	'WEAPON_APPISTOL',
	'WEAPON_PISTOL50',
	'WEAPON_REVOLVER',
	'WEAPON_SNSPISTOL',
	'WEAPON_HEAVYPISTOL',
	'WEAPON_VINTAGEPISTOL',
	'WEAPON_MICROSMG',
	'WEAPON_SMG',
	'WEAPON_ASSAULTSMG',
	'WEAPON_MINISMG',
	'WEAPON_MACHINEPISTOL',
	'WEAPON_COMBATPDW',
	'WEAPON_PUMPSHOTGUN',
	'WEAPON_SAWNOFFSHOTGUN',
	'WEAPON_ASSAULTSHOTGUN',
	'WEAPON_BULLPUPSHOTGUN',
	'WEAPON_HEAVYSHOTGUN',
	'WEAPON_ASSAULTRIFLE',
	'WEAPON_CARBINERIFLE',
	'WEAPON_ADVANCEDRIFLE',
	'WEAPON_SPECIALCARBINE',
	'WEAPON_BULLPUPRIFLE',
	'WEAPON_COMPACTRIFLE',
	'WEAPON_MG',
	'WEAPON_COMBATMG',
	'WEAPON_GUSENBERG',
	'WEAPON_SNIPERRIFLE',
	'WEAPON_HEAVYSNIPER',
	'WEAPON_MARKSMANRIFLE',
	'WEAPON_GRENADELAUNCHER',
	'WEAPON_RPG',
	'WEAPON_STINGER',
	'WEAPON_MINIGUN',
	'WEAPON_GRENADE',
	'WEAPON_STICKYBOMB',
	'WEAPON_SMOKEGRENADE',
	'WEAPON_BZGAS',
	'WEAPON_MOLOTOV',
	'WEAPON_DIGISCANNER',
	'WEAPON_FIREWORK',
	'WEAPON_MUSKET',
	'WEAPON_STUNGUN',
	'WEAPON_HOMINGLAUNCHER',
	'WEAPON_PROXMINE',
	'WEAPON_FLAREGUN',
	'WEAPON_MARKSMANPISTOL',
	'WEAPON_RAILGUN',
	'WEAPON_DBSHOTGUN',
	'WEAPON_AUTOSHOTGUN',
	'WEAPON_COMPACTLAUNCHER',
	'WEAPON_PIPEBOMB',
	'WEAPON_DOUBLEACTION',
	'WEAPON_M6IC',
	'WEAPON_P320b',
	--Custom Weapon
	'WEAPON_AK47',
	'WEAPON_M9',
	'WEAPON_FNX45',
	'WEAPON_DE',
	'WEAPON_GLOCK17',
	'WEAPON_M4',
	'WEAPON_HK416',
	'WEAPON_MK14',
	'WEAPON_HUNTINGRIFLE',
	'WEAPON_AR15',
	'WEAPON_M70',
	'WEAPON_M1911',
	'WEAPON_MAC10',
	'WEAPON_UZI',
	'WEAPON_MP9',
	'WEAPON_M110',
	'WEAPON_MOSSBERG',
	'WEAPON_REMINGTON',
	'WEAPON_SCARH',
	'WEAPON_SHIV',
	'WEAPON_KATANA',
	'WEAPON_SLEDGEHAMMER',
	'WEAPON_COLBATON',
	'WEAPON_KARAMBIT',
	'WEAPON_MP5',
	'WEAPON_GLOCK18C',
	'WEAPON_GLOCK22',
	'WEAPON_AKS74',
	'WEAPON_AK74',
}

-- Wheapons that require the Police holster animation
local holsterableWeapons = {
	--'WEAPON_STUNGUN',
	'WEAPON_PISTOL',
	'WEAPON_PISTOL_MK2',
	'WEAPON_COMBATPISTOL',
	'WEAPON_APPISTOL',
	'WEAPON_PISTOL50',
	'WEAPON_REVOLVER',
	'WEAPON_SNSPISTOL',
	'WEAPON_HEAVYPISTOL',
	'WEAPON_VINTAGEPISTOL',
	--Custom Weapon
	'WEAPON_DE',
	'WEAPON_GLOCK17',
	'WEAPON_M9',
	'WEAPON_M1911',
	'WEAPON_FNX45',
	'WEAPON_GLOCK18C',
	'WEAPON_GLOCK22',
	'WEAPON_P320b',
}

local holstered = true
local canFire = true
local currWeapon = `WEAPON_UNARMED`
local currentHolster = nil
local currentHolsterTexture = nil
local WearingHolster = nil

RegisterNetEvent("QBCore:Client:OnJobUpdate") -- dont edit this unless you don't use qb-core
AddEventHandler("QBCore:Client:OnJobUpdate", function(jobInfo)
    myJob = jobInfo.name
    if isMedic and myJob ~= "ambulance" then isMedic = false end
    if isPolice and myJob ~= "police" then isPolice = false end
    if isTow and myJob ~= "tow" then isTow = false end
    if myJob == "police" then isPolice = true end
    if myJob == "sast" then isPolice = true end
    if myJob == "corrections" then isPolice = true end
	if myJob == "rangers" then isPolice = true end
	if myJob == "troopers" then isPolice = true end
    if myJob == "tow" then isTow = true end
    if myJob == "ambulance" then isMedic = true end
end)

RegisterNetEvent('QBCore:Client:SetDuty') -- dont edit this unless you don't use qb-core
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    myJob = QBCore.Functions.GetPlayerData().job.name
    if isMedic and myJob ~= "ambulance" then isMedic = false end
    if isPolice and myJob ~= "police" then isPolice = false end
    if myJob == "police" then isPolice = true onDuty = duty end
    if myJob == "sast" then isPolice = true onDuty = duty end
	if myJob == "rangers" then isPolice = true onDuty = duty end
	if myJob == "troopers" then isPolice = true onDuty = duty end
    if myJob == "corrections" then isPolice = true onDuty = duty end
    if myJob == "ambulance" then isMedic = true onDuty = duty end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    myJob = QBCore.Functions.GetPlayerData().job.name
    if isMedic and myJob ~= "ambulance" then isMedic = false end
    if isPolice and myJob ~= "police" then isPolice = false end
    if myJob == "police" then isPolice = true onDuty = duty end
    if myJob == "sast" then isPolice = true onDuty = duty end
	if myJob == "rangers" then isPolice = true onDuty = duty end
	if myJob == "troopers" then isPolice = true onDuty = duty end
    if myJob == "corrections" then isPolice = true onDuty = duty end
    if myJob == "ambulance" then isMedic = true onDuty = duty end
end)

local function loadAnimDict(dict)
    if HasAnimDictLoaded(dict) then return end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end

local function CheckWeapon(newWeap)
	for i = 1, #weapons do
		if joaat(weapons[i]) == newWeap then
			return true
		end
	end
	return false
end

local function IsWeaponHolsterable(weap)
	for i = 1, #holsterableWeapons do
		if joaat(holsterableWeapons[i]) == weap then
			return true
		end
	end
	return false
end

RegisterNetEvent('weapons:ResetHolster', function()
	holstered = true
	canFire = true
	currWeapon = `WEAPON_UNARMED`
	currentHolster = nil
	currentHolsterTexture = nil
	WearingHolster = nil
end)

CreateThread(function()
	if GetResourceState('qb-inventory') == 'missing' then return end -- This part is only made to work with qb-inventory, other inventories might conflict
	local sleep
	while true do
		local ped = PlayerPedId()
		sleep = 250
		if DoesEntityExist(ped) and not IsEntityDead(ped) and not IsPedInParachuteFreeFall(ped) and not IsPedFalling(ped) and (GetPedParachuteState(ped) == -1 or GetPedParachuteState(ped) == 0) then
			sleep = 0
			if currWeapon ~= GetSelectedPedWeapon(ped) then

				local newWeap = GetSelectedPedWeapon(ped)
				SetCurrentPedWeapon(ped, currWeapon, true)
				loadAnimDict("reaction@intimidation@1h")
				loadAnimDict("reaction@intimidation@cop@unarmed")
				loadAnimDict("rcmjosh4")
				loadAnimDict("weapons@pistol@")
				if isPolice then
					local HolsterVariant = GetPedDrawableVariation(ped, 7)
					if IsPedModel(PlayerPedId(), "mp_m_freemode_01") then
						if HolsterVariant == 8 or HolsterVariant == 2 or HolsterVariant == 215 or HolsterVariant == 209 or HolsterVariant == 133 or HolsterVariant == 134 or HolsterVariant == 135 or HolsterVariant == 136 or HolsterVariant == 144 or HolsterVariant == 145 then
							WearingHolster = true
						else
							WearingHolster = false
						end
					else
						if HolsterVariant == 8 or HolsterVariant == 2 or HolsterVariant == 214 or HolsterVariant == 215 or HolsterVariant == 216 or HolsterVariant == 217 then
							WearingHolster = true
						else
							WearingHolster = false
						end
					end
				end
				if CheckWeapon(newWeap) then
					if holstered then
						if WearingHolster then
							--TaskPlayAnim(ped, "rcmjosh4", "josh_leadout_cop2", 8.0, 2.0, -1, 48, 10, 0, 0, 0 )
							canFire = false
							currentHolster = GetPedDrawableVariation(ped, 7)
							currentHolsterTexture = GetPedTextureVariation(ped, 7)
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "rcmjosh4", "josh_leadout_cop2", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
							Wait(300)
							SetCurrentPedWeapon(ped, newWeap, true)

							if IsWeaponHolsterable(newWeap) then
								if IsPedModel(PlayerPedId(), "mp_m_freemode_01") then
									SetPedComponentVariation(ped, 7, currentHolster == 8 and 2 or currentHolster == 215 and 209 or currentHolster == 133 and 134 or currentHolster == 135 and 136 or currentHolster == 144 and 145, currentHolsterTexture, 2)
								else
									SetPedComponentVariation(ped, 7,currentHolster == 8 and 2 or currentHolster == 214 and 215 or currentHolster == 216 and 217, currentHolsterTexture, 2)
								end
							end
							currWeapon = newWeap
							Wait(300)
							ClearPedTasks(ped)
							holstered = false
							canFire = true
						else
							canFire = false
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
							Wait(1000)
							SetCurrentPedWeapon(ped, newWeap, true)
							currWeapon = newWeap
							Wait(1400)
							ClearPedTasks(ped)
							holstered = false
							canFire = true
						end
					elseif newWeap ~= currWeapon and CheckWeapon(currWeapon) then
						if WearingHolster then
							canFire = false
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "reaction@intimidation@cop@unarmed", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
							Wait(500)

							if IsWeaponHolsterable(currWeapon) then
								SetPedComponentVariation(ped, 7, currentHolster, currentHolsterTexture, 2)
							end

							SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
							currentHolster = GetPedDrawableVariation(ped, 7)
							currentHolsterTexture = GetPedTextureVariation(ped, 7)
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "rcmjosh4", "josh_leadout_cop2", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
							Wait(300)
							SetCurrentPedWeapon(ped, newWeap, true)

							if IsWeaponHolsterable(newWeap) then
								if IsPedModel(PlayerPedId(), "mp_m_freemode_01") then
									SetPedComponentVariation(ped, 7, currentHolster == 8 and 2 or currentHolster == 215 and 209 or currentHolster == 133 and 134 or currentHolster == 135 and 136 or currentHolster == 144 and 145, currentHolsterTexture, 2)
								else
									SetPedComponentVariation(ped, 7, currentHolster == 8 and 2 or currentHolster == 214 and 215 or currentHolster == 216 and 217, currentHolsterTexture, 2)
								end
							end

							Wait(500)
							currWeapon = newWeap
							ClearPedTasks(ped)
							holstered = false
							canFire = true
						else
							canFire = false
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "outro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
							Wait(1600)
							SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
							Wait(1000)
							SetCurrentPedWeapon(ped, newWeap, true)
							currWeapon = newWeap
							Wait(1400)
							ClearPedTasks(ped)
							holstered = false
							canFire = true
						end
					else
						if WearingHolster then
							SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
							currentHolster = GetPedDrawableVariation(ped, 7)
							currentHolsterTexture = GetPedTextureVariation(ped, 7)
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "rcmjosh4", "josh_leadout_cop2", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
							Wait(300)
							SetCurrentPedWeapon(ped, newWeap, true)

							if IsWeaponHolsterable(newWeap) then
								if IsPedModel(PlayerPedId(), "mp_m_freemode_01") then
									SetPedComponentVariation(ped, 7, currentHolster == 8 and 2 or currentHolster == 215 and 209 or currentHolster == 133 and 134 or currentHolster == 135 and 136 or currentHolster == 144 and 145, currentHolsterTexture, 2)
								else
									SetPedComponentVariation(ped, 7, currentHolster == 8 and 2 or currentHolster == 214 and 215 or currentHolster == 216 and 217, currentHolsterTexture, 2)
								end
							end

							currWeapon = newWeap
							Wait(300)
							ClearPedTasks(ped)
							holstered = false
							canFire = true
						else
							SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
							Wait(1000)
							SetCurrentPedWeapon(ped, newWeap, true)
							currWeapon = newWeap
							Wait(1400)
							ClearPedTasks(ped)
							holstered = false
							canFire = true
						end
					end
				else
					if not holstered and CheckWeapon(currWeapon) then
						if WearingHolster then
							canFire = false
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "reaction@intimidation@cop@unarmed", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
							Wait(500)

							if IsWeaponHolsterable(currWeapon) then
								SetPedComponentVariation(ped, 7, currentHolster, currentHolsterTexture, 2)
							end

							SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
							ClearPedTasks(ped)
							SetCurrentPedWeapon(ped, newWeap, true)
							holstered = true
							canFire = true
							currWeapon = newWeap
						else
							canFire = false
							local pos = GetEntityCoords(ped, true)
							local rot = GetEntityHeading(ped)
							TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "outro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
							Wait(1400)
							SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
							ClearPedTasks(ped)
							SetCurrentPedWeapon(ped, newWeap, true)
							holstered = true
							canFire = true
							currWeapon = newWeap
						end
					else
						SetCurrentPedWeapon(ped, newWeap, true)
						holstered = false
						canFire = true
						currWeapon = newWeap
					end
				end
			end
		end

		Wait(sleep)
	end
end)

CreateThread(function()
	if GetResourceState('qb-inventory') == 'missing' then return end -- This part is only made to work with qb-inventory, other inventories might conflict
	local sleep
	while true do
		sleep = 250
		if not canFire then
			sleep = 0
			DisableControlAction(0, 25, true)
			DisablePlayerFiring(PlayerId(), true)
		end
		Wait(sleep)
	end
end)
