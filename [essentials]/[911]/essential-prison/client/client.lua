local QBCore = exports[Config.CoreName]:GetCoreObject()
local bedOccupyingData = nil
local bedOccupying = nil
local bedObject = nil
local canLeaveBed = true
local getOutDict = 'switch@franklin@bed'
local getOutAnim = 'sleep_getup_rubeyes'
local inBedDict = "misslamar1dead_body"
local inBedAnim = "dead_idle"
local isInHospitalBed = false

local function GetAvailableBed(bedId)
    local retval = nil
    if bedId == nil then 
        for k, v in pairs(Config.BedLocations["beds"]) do
            if not Config.BedLocations["beds"][k].taken then
                retval = k
            end
        end
    else
        if not Config.BedLocations["beds"][bedId].taken then
            retval = bedId
        end
    end
    return retval
end
local function loadAnimDict(dict)
	while(not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Wait(1)
	end
end
local function SetBedCam()
    isInHospitalBed = true
    canLeaveBed = false
    local player = PlayerPedId()
    DoScreenFadeOut(1000)
    while not IsScreenFadedOut() do Wait(100) end
	if IsPedDeadOrDying(player) then
		local playerPos = GetEntityCoords(player, true)
		NetworkResurrectLocalPlayer(playerPos, true, true, false)
    end
    bedObject = GetClosestObjectOfType(bedOccupyingData.coords.x, bedOccupyingData.coords.y, bedOccupyingData.coords.z, 1.0, 2117668672, false, false, false)
    FreezeEntityPosition(bedObject, true)
    SetEntityCoords(player, bedOccupyingData.coords.x, bedOccupyingData.coords.y, bedOccupyingData.coords.z + 0.02)
    Wait(500)
    FreezeEntityPosition(player, true)
    loadAnimDict(inBedDict)
    TaskPlayAnim(player, inBedDict , inBedAnim, 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
    SetEntityHeading(player, bedOccupyingData.coords.w)
    DoScreenFadeIn(1000)
    Wait(1000)
    FreezeEntityPosition(player, true)
    Wait(100)
    RequestAnimDict(getOutDict)
    while not HasAnimDictLoaded(getOutDict) do Wait(0) end
    SetEntityNoCollisionEntity(PlayerPedId(), bedObject, false)
    SetEntityCoords(player, bedOccupyingData.coords.x, bedOccupyingData.coords.y, bedOccupyingData.coords.z - 0.7)
    TaskPlayAnim(PlayerPedId(), getOutDict , getOutAnim, 100.0, 1.0, -1, 8, -1, 0, 0, 0)
    SetEntityHeading(player, bedOccupyingData.coords.w+90)
    Wait(3400)
    FreezeEntityPosition(player, false)
    Wait(1000)
    SetEntityNoCollisionEntity(PlayerPedId(), bedObject, true)
end
RegisterNetEvent("THX:Client:AdmitPrison", function()
    TriggerEvent("ThxPrisonNotify","You are seeing nancy now", "success")
    Wait(500)
    local bedId = GetAvailableBed()
    if bedId ~= nil then
        TriggerEvent("Reloadskin")
        SetCurrentPedWeapon(PlayerPedId(), GetHashKey('WEAPON_UNARMED'), true)
        TriggerServerEvent("thx:prison:server:SendToBed", bedId, true)
    else
        TriggerEvent("Reloadskin")
        TriggerEvent("ThxPrisonNotify","Beds are occupied..", "error")
    end
end)
RegisterNetEvent('prison:client:SendToBed', function(id, data, isRevive)
    bedOccupying = id
    bedOccupyingData = data
    SetBedCam()
    CreateThread(function ()
        Wait(5)
        if isRevive then
            TriggerEvent("ThxPrisonNotify","You are being helped..")
            Wait(Config.AIHealTimer * 1000)
            TriggerEvent("hospital:client:Revive")
        else
            canLeaveBed = true
        end
    end)
end)

RegisterNetEvent('prison:client:SetBed', function(id, isTaken)
    Config.BedLocations["beds"][id].taken = isTaken
    Wait(7000)
	Config.BedLocations["beds"][id].taken = false
end)

exports[Config.Target]:AddBoxZone("PrisonNancy", vector3(1769.1, 2571.05, 45.73), 1, 1, {
    name="PrisonNancy",
    heading=45,
    -- debugPoly=true,
    minZ=45.13,
    maxZ=46.53
}, {
    options = {
        {
            event = 'THX:Client:AdmitPrison',
            icon = "fa-solid fa-clipboard",
            label = "Got a boo boo?",
        },
    },
    distance = 1.5
})


-- Glossery
local UsedAllThroughtTheScript = 'UsedAnywhere' -- So now anywhere below this point if the varible 'UsedAllThroughtTheScript' is used The computer will read it as 'UsedAnywhere'
-- The way to use this ^ in a script would be how it is used in the event "ThxEvent"
-- Functions are used and work basically the exact same way as events
-- The difference between an event and a function is only 2 things
-- You can only call a function from the same script it was made in, not from any other script like an event
-- when using a function within an event, the rest of the event will not be read until the function is finished
local function ThxFunction()
    local Thx = 'Thx' -- this is how you make a varable. You make varibles to maniplulate things and make logic.
    -- When a varable is a local it can only be read from top down. if you remove the local you can use it from anywhere within the script. You do locals though when you plan on only using it in the event or function and no where else.
    if Thx == 'Thx' then -- this is a very basic if statement. Idk why these were so hard for me to learn in the begining but very simple.
        TriggerEvent("ThxEvent", Thx) -- When you trigger an event and add a comma and a varible to it, it sends what that verible means to the event node expllained down below
    end
end

-- this is all you will ever need for an event. When you see AddEventHandlers in code 99% of the time it shouldnt have one because AddEventHandlers are basically for duplicating the same event across multiple scripts
-- no need to really know the full logic of AddEventHandlers, you just dont need  them
RegisterNetEvent("ThxEvent", function(node)-- < so where it says node right here, Thet is data being sent through to an event. You can do this exact same thing in functions. You do not need nodes in events its just useful at times
    print(node) -- In lua if you want to see exactly what data the computer reads you use the native print() function and put in the brackets whatever you want it to read.
    -- Waht this does is prints in the F8 console what the script reads or if this was in the server side it prints in the tx admin server console. Anything that has 0 information to it reads as nil
end)

-- im going to skip callbacks because there are exaples above.

-- This is a createthreadfunction
-- The way this works is unlike events or functions or anything else because events and functions need to be triggered by an action.
-- The way threadfunctions work is The second the script turns on whatever is in the thread function gets read and instantly.
Citizen.CreateThread(function()
    -- example if you want to run a function right when the script starts. Here you go...
    ThxFunction() -- now this will trigger the function example right when the script starts
    -- in the function exaple it will trigger the event exaple which prints the node. Simple.
    -- Code is all just a clever sequence of things.
end)

local function CreateActivityZones(zones, name)
    local zone = PolyZone:Create(zones['Zone']['Shape'], {  -- create the zone
        name= name,
        minZ = zones['minZ'],
        maxZ = zones['maxZ'],
        debugPoly = Config.Debug
    })
    zone:onPlayerInOut(function(isPointInside)
        if InFishingTournament then
            if isPointInside then
                if TournamentZone == zone.name then
                    IsInFishingArea = true
                    TriggerEvent("ThxPrisonNotify",Translations.success.EnteredZone, 'success')
                end
            else
                if IsInFishingArea then
                    IsInFishingArea = false
                    TriggerEvent("ThxPrisonNotify",Translations.error.LeftZone, 'error')
                end
            end
        end
    end)
end
for k, v in pairs(Config.ActivityZones) do
    CreateActivityZones(v, k)
end