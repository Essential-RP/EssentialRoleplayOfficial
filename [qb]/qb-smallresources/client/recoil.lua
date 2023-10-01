-- local weaponList = {
--     -- PISTOLS
--     [GetHashKey("WEAPON_PISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_HEAVYPISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_COMBATPISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_VINTAGEPISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_PISTOL_MK2")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_RAYPISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_CERAMICPISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_NAVYREVOLVER")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_PISTOLXM3")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_STUNGUN")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_PISTOL50")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_SNSPISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_SNSPISTOL_MK2")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_APPISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_FLAREGUN")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_MARKSMANPISTOL")] = { recoil = 1.0 },
--     -- SMGS
--     [GetHashKey("WEAPON_SMG")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_MICROSMG")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_SMG_MK2")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_ASSAULTSMG")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_COMBATPDW")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_MACHINEPISTOL")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_MINISMG")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_RAYCARBINE")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_TECPISTOL")] = { recoil = 1.0 },
--     -- RIFLE
--     [GetHashKey("WEAPON_ASSAULTRIFLE")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_CARBINERIFLE")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_ADVANCEDRIFLE")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_SPECIALCARBINE")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_BULLPUPRIFLE")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_COMPACTRIFLE")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_HEAVYRIFLE")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_TACTICALRIFLE")] = { recoil = 1.0 },
--     -- ADDON GUNS
--     [GetHashKey("WEAPON_762")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_M4")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_GLOCK18C")] = { recoil = 1.0 },
--     [GetHashKey("WEAPON_SP45")] = { recoil = 1.0 },
-- }

-- local COMBAT = {
--     recoil = function()
--         while true do
--             local ply = PlayerPedId()
--             local wep = GetSelectedPedWeapon(ply)

--             if IsPedArmed(ply, 6) then
--                 Wait(0)
--             else
--                 Wait(125)
--             end

--             if wep ~= GetHashKey("WEAPON_SNOWBALL") and IsPedShooting(ply) then
--                 local GamePlayCam = GetFollowPedCamViewMode()
--                 local MovementSpeed = math.ceil(GetEntitySpeed(ply))

--                 if MovementSpeed > 69 then
--                     MovementSpeed = 69
--                 end

--                 local group = GetWeapontypeGroup(wep)
--                 local p = GetGameplayCamRelativePitch()
--                 local cameraDistance = #(GetGameplayCamCoord() - GetEntityCoords(ply))
--                 local recoil = math.random(50, 75 + (math.ceil(MovementSpeed * 1.5))) / 100 -- Over recoil
--                 local inVehicle = DoesEntityExist(GetVehiclePedIsIn(ply))

--                 local weaponHash = GetSelectedPedWeapon(ply)
--                 local recoilMultiplier = weaponList[weaponHash].recoil or 1.0

--                 if cameraDistance < 5.3 then
--                     cameraDistance = 1.5
--                 else
--                     if cameraDistance < 8.0 then
--                         cameraDistance = 4.0
--                     else
--                         cameraDistance = 7.0
--                     end
--                 end

--                 local verticalMult = GetRandomIntInRange(0, 2) * 2.0 - 1.0 -- vertical recoil for in-car
--                 local horizontalMult = GetRandomIntInRange(0, 4) * 4.0 - 1.0 -- Horizontal recoil for 

--                 local pitch, heading = GetGameplayCamRelativePitch(), GetGameplayCamRelativeHeading()
--                 pitch = pitch + (0.1 * verticalMult)
--                 heading = heading + (3.1 * horizontalMult)

--                 if inVehicle then
--                     if GamePlayCam == 4 then
--                         SetGameplayCamRelativeRotation(heading, pitch, 100.0)
--                     end
--                 end

--                 if GamePlayCam == 4 then
--                     recoil = recoil * 0.35
--                 else
--                     recoil = recoil * recoilMultiplier
--                 end

--                 local rightleft = math.random(0, 1) 
--                 local h = GetGameplayCamRelativeHeading()
--                 local hf = math.random(10, 30 + MovementSpeed) / 100

--                 if rightleft == 0 then
--                     SetGameplayCamRelativeHeading(h + hf)
--                 else
--                     SetGameplayCamRelativeHeading(h - hf)
--                 end

--                 local set, shake = p + recoil, math.random(1, 100) / 100
--                 local vehicle = GetVehiclePedIsIn(ply, false)
--                 local class = GetVehicleClass(vehicle)
--                 local setbike = p + math.random(2, 5)
--                 local isBike = (class == 8 or class == 13)

--                 if isBike then
--                     if math.random(1, 5) >= math.random(1, 5) then
--                         SetGameplayCamRelativePitch(setbike, 1.0)
--                     else
--                         SetGameplayCamRelativePitch(setbike, 1.0)
--                     end
--                 else
--                     if math.random(1, 1) >= math.random(1, 1) then
--                         SetGameplayCamRelativePitch(set, 1.0)
--                     else
--                         SetGameplayCamRelativePitch(set, 1.0)
--                     end
--                 end
--             end
--         end
--     end,

-- }

-- Citizen.CreateThread(function()
--     COMBAT.recoil()
-- end)


















-- -- local recoils = {
-- -- 	-- Melee
-- -- 	-- [-1834847097] = 0.3,		--['weapon_dagger']
-- -- 	-- [-1786099057] = 0.3,		--['weapon_bat']
-- -- 	-- [-102323637] = 0.3,		--['weapon_bottle']
-- -- 	-- [2067956739] = 0.3,		--['weapon_crowbar']
-- -- 	-- [-1951375401] = 0.3,		--['weapon_flashlight']
-- -- 	-- [1141786504] = 0.3,		--['weapon_golfclub']
-- -- 	-- [1317494643] = 0.3,		--['weapon_hammer']
-- -- 	-- [-102973651] = 0.3,		--['weapon_hatchet']
-- -- 	-- [-656458692] = 0.3,		--['weapon_knuckle']
-- -- 	-- [-1716189206] = 0.3,		--['weapon_knife']
-- -- 	-- [-581044007] = 0.3,		--['weapon_machete']
-- -- 	-- [-538741184] = 0.3,		--['weapon_switchblade']
-- -- 	-- [1737195953] = 0.3,		--['weapon_nightstick']
-- -- 	-- [419712736] = 0.3,		--['weapon_wrench']
-- -- 	-- [-853065399] = 0.3,		--['weapon_battleaxe']
-- -- 	-- [-1810795771] = 0.3,		--['weapon_poolcue']
-- -- 	-- [-2000187721] = 0.0,		--['weapon_briefcase']
-- -- 	-- [28811031] = 0.0,		--['weapon_briefcase_02']
-- -- 	-- [-499989876] = 0.0,		--['weapon_garbagebag']
-- -- 	-- [-800287667] = 0.0,		--['weapon_handcuffs']
-- -- 	-- [1309015656] = 0.0,		--['weapon_bread']
-- -- 	-- [940833800] = 0.3,		--['weapon_stone_hatchet']

-- -- 	-- Handguns
-- -- 	[453432689] = 1.0,			--['weapon_pistol']
-- -- 	[-1075685676] = 1.0,		--['weapon_pistol_mk2']
-- -- 	[1593441988] = 1.0,			--['weapon_combatpistol']
-- -- 	[584646201] = 1.0,			--['weapon_appistol']
-- -- 	[911657153] = 0.1,			--['weapon_stungun']
-- -- 	[-1716589765] = 1.5,		--['weapon_pistol50']
-- -- 	[-1076751822] = 0.5,		--['weapon_snspistol']
-- -- 	[-771403250] = 0.7,			--['weapon_heavypistol']
-- -- 	[137902532] = 0.4,			--['weapon_vintagepistol']
-- -- 	[1198879012] = 0.9,			--['weapon_flaregun']
-- -- 	[-598887786] = 0.9,			--['weapon_marksmanpistol']
-- -- 	[-1045183535] = 0.6,		--['weapon_revolver']
-- -- 	[-879347409] = 0.6,			--['weapon_revolver_mk2']
-- -- 	[-1746263880] = 0.3,		--['weapon_doubleaction']
-- -- 	[-2009644972] = 0.3,		--['weapon_snspistol_mk2']
-- -- 	[-1355376991] = 0.3,		--['weapon_raypistol']
-- -- 	[727643628] = 0.3,			--['weapon_ceramicpistol']
-- -- 	[-1853920116] = 0.3,		--['weapon_navyrevolver']
-- -- 	[1470379660] = 0.3,			--['weapon_gadgetpistol']

-- -- 	-- Submachine Guns
-- -- 	[324215364] = 0.5,			--['weapon_microsmg']
-- -- 	[736523883] = 0.4,			--['weapon_smg']
-- -- 	[2024373456] = 0.1,			--['weapon_smg_mk2']
-- -- 	[-270015777] = 0.1,			--['weapon_assaultsmg']
-- -- 	[171789620] = 0.2,			--['weapon_combatpdw']
-- -- 	[-619010992] = 0.3,			--['weapon_machinepistol']
-- -- 	[-1121678507] = 0.1,		--['weapon_minismg']
-- -- 	[1198256469] = 0.3,			--['weapon_raycarbine']

-- -- 	-- Shotguns
-- -- 	[487013001] = 0.4,			--['weapon_pumpshotgun']
-- -- 	[2017895192] = 0.7,			--['weapon_sawnoffshotgun']
-- -- 	[-494615257] = 0.4,			--['weapon_assaultshotgun']
-- -- 	[-1654528753] = 0.2,		--['weapon_bullpupshotgun']
-- -- 	[-1466123874] = 0.7,		--['weapon_musket']
-- -- 	[984333226] = 0.2,			--['weapon_heavyshotgun']
-- -- 	[-275439685] = 0.7,			--['weapon_dbshotgun']
-- -- 	[317205821] = 0.2,			--['weapon_autoshotgun']
-- -- 	[1432025498] = 0.4,			--['weapon_pumpshotgun_mk2']
-- -- 	[94989220] = 0.0,			--['weapon_combatshotgun']

-- -- 	-- Assault Rifles
-- -- 	[-1074790547] = 1.5,		--['weapon_assaultrifle']
-- -- 	[961495388] = 1.2,			--['weapon_assaultrifle_mk2']
-- -- 	[-2084633992] = 1.3,		--['weapon_carbinerifle']
-- -- 	[-86904375] = 1.1,			--['weapon_carbinerifle_mk2']
-- -- 	[-1357824103] = 1.1,		--['weapon_advancedrifle']
-- -- 	[-1063057011] = 1.2,		--['weapon_specialcarbine']
-- -- 	[2132975508] = 1.2,			--['weapon_bullpuprifle']
-- -- 	[1649403952] = 1.3,			--['weapon_compactrifle']
-- -- 	[-1768145561] = 1.2,		--['weapon_specialcarbine_mk2']
-- -- 	[-2066285827] = 1.2,		--['weapon_bullpuprifle_mk2']
-- -- 	[-1658906650] = 1.0,		--['weapon_militaryrifle']

-- -- 	-- Light Machine Guns
-- -- 	[-1660422300] = 0.1,		--['weapon_mg']
-- -- 	[2144741730] = 0.1,			--['weapon_combatmg']
-- -- 	[1627465347] = 0.1,			--['weapon_gusenberg']
-- -- 	[-608341376] = 0.1,			--['weapon_combatmg_mk2']

-- -- 	-- Sniper Rifles
-- -- 	[100416529] = 0.5,			--['weapon_sniperrifle']
-- -- 	[205991906] = 0.7,			--['weapon_heavysniper']
-- -- 	[-952879014] = 0.3,			--['weapon_marksmanrifle']
-- -- 	[856002082] = 1.2,			--['weapon_remotesniper']
-- -- 	[177293209] = 0.6,			--['weapon_heavysniper_mk2']
-- -- 	[1785463520] = 0.3,			--['weapon_marksmanrifle_mk2']

-- -- 	-- Heavy Weapons
-- -- 	[-1312131151] = 0.0,		--['weapon_rpg']
-- -- 	[-1568386805] = 1.0,		--['weapon_grenadelauncher']
-- -- 	[1305664598] = 1.0,			--['weapon_grenadelauncher_smoke']
-- -- 	[1119849093] = 0.1,			--['weapon_minigun']
-- -- 	[2138347493] = 0.3,			--['weapon_firework']
-- -- 	[1834241177] = 2.4,			--['weapon_railgun']
-- -- 	[1672152130] = 0.0,			--['weapon_hominglauncher']
-- -- 	[125959754] = 0.5,			--['weapon_compactlauncher']
-- -- 	[-1238556825] = 0.3,		--['weapon_rayminigun']

-- -- 	-- Throwables
-- -- 	-- [-1813897027] = 0.3,		--['weapon_grenade']
-- -- 	-- [-1600701090] = 0.3,		--['weapon_bzgas']
-- -- 	-- [615608432] = 0.3,		--['weapon_molotov']
-- -- 	-- [741814745] = 0.3,		--['weapon_stickybomb']
-- -- 	-- [-1420407917] = 0.3,		--['weapon_proxmine']
-- -- 	-- [126349499] = 0.3,		--['weapon_snowball']
-- -- 	-- [-1169823560] = 0.3,		--['weapon_pipebomb']
-- -- 	-- [600439132] = 0.3,		--['weapon_ball']
-- -- 	-- [-37975472] = 0.3,		--['weapon_smokegrenade']
-- -- 	-- [1233104067] = 0.3,		--['weapon_flare']

-- -- 	-- Miscellaneous
-- -- 	-- [883325847] = 0.3,		--['weapon_petrolcan']
-- -- 	-- [101631238] = 0.3,		--['weapon_fireextinguisher']
-- -- 	-- [-1168940174] = 0.3,		--['weapon_hazardcan']
	
-- -- 	-- CUSTOM WEAPONS
-- -- 	[GetHashKey("weapon_ak47")] = 0.5,
-- -- 	[GetHashKey("weapon_de")] = 0.5,
-- -- 	[GetHashKey("weapon_fnx45")] = 0.6,
-- -- 	[GetHashKey("weapon_glock17")] = 0.9,
-- -- 	[GetHashKey("weapon_m4")] = 0.3,
-- -- 	[GetHashKey("weapon_hk416")] = 0.3,
-- -- 	[GetHashKey("weapon_mk14")] = 0.4,
-- -- 	[GetHashKey("weapon_m110")] = 0.4,
-- -- 	[GetHashKey("weapon_huntingrifle")] = 0.4,
-- -- 	[GetHashKey("weapon_ar15")] = 0.4,
-- -- 	[GetHashKey("weapon_m9")] = 0.4,
-- -- 	[GetHashKey("weapon_m70")] = 0.5,
-- -- 	[GetHashKey("weapon_m1911")] = 0.4,
-- -- 	[GetHashKey("weapon_mac10")] = 0.7,
-- -- 	[GetHashKey("weapon_uzi")] = 0.7,
-- -- 	[GetHashKey("weapon_mp9")] = 0.7,
-- -- 	[GetHashKey("weapon_mossberg")] = 0.7,
-- -- 	[GetHashKey("weapon_remington")] = 0.7,
-- -- 	[GetHashKey("weapon_scarh")] = 0.5,
-- -- 	[GetHashKey("weapon_dp9")] = 0.4,
-- -- 	[GetHashKey("weapon_browning")] = 0.3,
-- -- }

-- -- CreateThread(function()
-- -- 	while true do
-- -- 		local ped = PlayerPedId()
-- -- 		if IsPedShooting(ped) then
-- -- 			local _, wep = GetCurrentPedWeapon(ped)
-- -- 			_, cAmmo = GetAmmoInClip(ped, wep)
-- -- 			if recoils[wep] and recoils[wep] ~= 0 then
-- -- 				if IsPedDoingDriveby(ped) then
-- -- 					ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.05)
-- -- 				else
-- -- 					-- luacheck: ignore
-- -- 					local tv = 0
-- -- 					if GetFollowPedCamViewMode() ~= 4 then
-- -- 						repeat
-- -- 							Wait(0)
-- -- 							local p = GetGameplayCamRelativePitch()
-- -- 							SetGameplayCamRelativePitch(p+0.1, 0.2)
-- -- 							ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.01)
-- -- 							tv += 0.1
-- -- 						until tv >= recoils[wep]
-- -- 					else
-- -- 						repeat
-- -- 							Wait(0)
-- -- 							local p = GetGameplayCamRelativePitch()
-- -- 							if recoils[wep] > 0.1 then
-- -- 								SetGameplayCamRelativePitch(p+0.6, 1.2)
-- -- 								tv += 0.6
-- -- 							else
-- -- 								SetGameplayCamRelativePitch(p+0.016, 0.333)
-- -- 								tv += 0.1
-- -- 							end
-- -- 						until tv >= recoils[wep]
-- -- 					end
-- -- 				end
-- -- 			end
-- -- 		end
-- -- 		Wait(0)
-- -- 	end
-- -- end)
