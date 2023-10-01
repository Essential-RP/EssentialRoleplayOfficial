local fpv = true
local watp = false

local weaponList = {
    -- PISTOLS
    [GetHashKey("WEAPON_PISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_HEAVYPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_COMBATPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_VINTAGEPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_PISTOL_MK2")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_RAYPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_CERAMICPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_NAVYREVOLVER")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_PISTOLXM3")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_STUNGUN")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_PISTOL50")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SNSPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SNSPISTOL_MK2")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_APPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_FLAREGUN")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_MARKSMANPISTOL")] = { recoil = 1.0 },
    -- SMGS
    [GetHashKey("WEAPON_SMG")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_MICROSMG")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SMG_MK2")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_ASSAULTSMG")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_COMBATPDW")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_MACHINEPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_MINISMG")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_RAYCARBINE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_TECPISTOL")] = { recoil = 1.0 },
    -- RIFLE
    [GetHashKey("WEAPON_ASSAULTRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_CARBINERIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_ADVANCEDRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SPECIALCARBINE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_BULLPUPRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_COMPACTRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_HEAVYRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_TACTICALRIFLE")] = { recoil = 1.0 },
    -- ADDON GUNS
    [GetHashKey("WEAPON_762")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_M4")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_GLOCK18C")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SP45")] = { recoil = 1.0 },
    -- Essential Weapons
    [GetHashKey('weapon_m9')] = { recoil = 1.0 },
    [GetHashKey('weapon_fnx45')] = { recoil = 1.0 },
    [GetHashKey('weapon_browning')] = { recoil = 1.0 },
    [GetHashKey('weapon_l5')] = { recoil = 2.5 },
    [GetHashKey('weapon_springfield')] = { recoil = 1.0 },
    [GetHashKey('weapon_glock17')] = { recoil = 1.2 },
    [GetHashKey('weapon_p320b')] = { recoil = 1.3 },
}

local COMBAT = {
    recoil = function()
        while true do
            local ply = PlayerPedId()
            local wep = GetSelectedPedWeapon(ply)

            if IsPedArmed(ply, 6) then
                Wait(0)
            else
                Wait(125)
            end

            if wep ~= GetHashKey("WEAPON_SNOWBALL") and IsPedShooting(ply) then
                local GamePlayCam = GetFollowPedCamViewMode()
                local MovementSpeed = math.ceil(GetEntitySpeed(ply))

                if MovementSpeed > 69 then
                    MovementSpeed = 69
                end

                local group = GetWeapontypeGroup(wep)
                local p = GetGameplayCamRelativePitch()
                local cameraDistance = #(GetGameplayCamCoord() - GetEntityCoords(ply))
                local recoil = math.random(50, 75 + (math.ceil(MovementSpeed * 1.5))) / 100 -- Over recoil
                local inVehicle = DoesEntityExist(GetVehiclePedIsIn(ply))

                local weaponHash = GetSelectedPedWeapon(ply)
                local recoilMultiplier = weaponList[weaponHash].recoil or 1.0

                if cameraDistance < 5.3 then
                    cameraDistance = 1.5
                else
                    if cameraDistance < 8.0 then
                        cameraDistance = 4.0
                    else
                        cameraDistance = 7.0
                    end
                end

                local verticalMult = GetRandomIntInRange(0, 2) * 2.0 - 1.0 -- vertical recoil for in car
                local horizontalMult = GetRandomIntInRange(0, 4) * 4.0 - 1.0 -- Horizontal recoil for car

                local pitch, heading = GetGameplayCamRelativePitch(), GetGameplayCamRelativeHeading()
                pitch = pitch + (0.1 * verticalMult)
                heading = heading + (3.1 * horizontalMult)

                if inVehicle then
                    if GamePlayCam == 4 then
                        SetGameplayCamRelativeRotation(heading, pitch, 100.0)
                    end
                end

                if GamePlayCam == 4 then
                    recoil = recoil * 0.35
                else
                    recoil = recoil * recoilMultiplier
                end

                local rightleft = math.random(0, 1) 
                local h = GetGameplayCamRelativeHeading()
                local hf = math.random(10, 30 + MovementSpeed) / 100

                if rightleft == 0 then
                    SetGameplayCamRelativeHeading(h + hf)
                else
                    SetGameplayCamRelativeHeading(h - hf)
                end

                local set, shake = p + recoil, math.random(1, 100) / 100
                local vehicle = GetVehiclePedIsIn(ply, false)
                local class = GetVehicleClass(vehicle)
                local setbike = p + math.random(2, 5)
                local isBike = (class == 8 or class == 13)

                if isBike then
                    if math.random(1, 5) >= math.random(1, 5) then
                        SetGameplayCamRelativePitch(setbike, 1.0)
                    else
                        SetGameplayCamRelativePitch(setbike, 1.0)
                    end
                else
                    if math.random(1, 1) >= math.random(1, 1) then
                        SetGameplayCamRelativePitch(set, 1.0)
                    else
                        SetGameplayCamRelativePitch(set, 1.0)
                    end
                end
            end
        end
    end,

    
    camera = function()
        while true do
            Wait(100)
    
            if fpv then
                local playerPed = PlayerPedId()
                local InVehicle = IsPedInAnyVehicle(playerPed, false)
                local viewMode = GetFollowVehicleCamViewMode()
                local isAiming = (IsControlPressed(0, 25) and IsUsingKeyboard(0)) or IsAimCamActive()
    
                if InVehicle and isAiming and not watp then
                    if viewMode ~= 4 then
                        SetFollowVehicleCamViewMode(4)
                        DisableAimCamThisUpdate()
                        watp = viewMode
                    end
                elseif watp and not isAiming then
                    SetFollowVehicleCamViewMode(watp)
                    watp = false
                end
            end
        end
    end,

}

local currentValues = { MaxAmmo = 0, ClipAmmo = 0,}

local HUD = {
    InfoThread = function()
        while true do
            Citizen.Wait(250)
            local plyPed = PlayerPedId()
            local pedWeapon = GetSelectedPedWeapon(PlayerPedId()) or false;
            local weaponMaxAmmo = pedWeapon and GetAmmoInPedWeapon(plyPed, pedWeapon) or 0;
            local a, weaponClipAmmo = GetAmmoInClip(plyPed, pedWeapon);

            currentValues["MaxAmmo"] = weaponMaxAmmo - weaponClipAmmo
            currentValues["ClipAmmo"] = weaponClipAmmo

            SendNUIMessage({ type = "ammo", data = currentValues })
        end
    end,
    
    HideAmmo = function(self)
        while true do
          Wait(0)
            HideHudComponentThisFrame(14) 
            DisplayAmmoThisFrame(false)
        end
    end,
}

CreateThread(function()
    HUD:HideAmmo()
    Citizen.Wait(250)
end)

CreateThread(function()
    HUD:InfoThread()
    Citizen.Wait(250)
end)





Citizen.CreateThread(function()
    COMBAT.recoil()
    Citizen.Wait(1000)
end)

Citizen.CreateThread(function()
    COMBAT.camera()
    Citizen.Wait(0)
end)