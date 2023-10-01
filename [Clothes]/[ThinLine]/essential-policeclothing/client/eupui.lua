if not TLS.EUPUI.Enable then return end

local departments, department, outfitnumber = {}, nil, 1

CreateThread(function()
    for deptname, settings in pairs(TLS.EUPUI.Outfits) do
        if settings.Enabled then
            if not department then department = deptname end
            departments[#departments + 1] = deptname
        end
    end
end)

local function ChangeUniform()
    local playerPed, Gender = PlayerPedId(), 'Male'
    if GetEntityModel(playerPed) == `mp_f_freemode_01` then Gender = 'Female' end
    SendNUIMessage({
        action = 'changename',
        name = TLS.EUPUI.Outfits[department][outfitnumber].Name
    })
    if TLS.EUPUI.Outfits[department][outfitnumber][Gender].Hat[1] == 0 then
        ClearPedProp(playerPed, 0)
    else
        SetPedPropIndex(playerPed, 0, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Hat[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Hat[2] - 1, true)
    end
    if TLS.EUPUI.Outfits[department][outfitnumber][Gender].Glasses[1] == 0 then
        ClearPedProp(playerPed, 1)
    else
        SetPedPropIndex(playerPed, 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Glasses[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Glasses[2] - 1, true)
    end
    if TLS.EUPUI.Outfits[department][outfitnumber][Gender].Ear[1] == 0 then
        ClearPedProp(playerPed, 2)
    else
        SetPedPropIndex(playerPed, 2, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Ear[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Ear[2] - 1, true)
    end
    if TLS.EUPUI.Outfits[department][outfitnumber][Gender].Watch[1] == 0 then
        ClearPedProp(playerPed, 6)
    else
        SetPedPropIndex(playerPed, 6, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Watch[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Watch[2] - 1, true)
    end
    SetPedComponentVariation(playerPed, 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Mask[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Mask[2] - 1, 0)
    SetPedComponentVariation(playerPed, 3, TLS.EUPUI.Outfits[department][outfitnumber][Gender].UpperSkin[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].UpperSkin[2] - 1, 0)
    SetPedComponentVariation(playerPed, 11, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Top[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Top[2] - 1, 0)
    SetPedComponentVariation(playerPed, 10, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Decal[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Decal[2] - 1, 0)
    SetPedComponentVariation(playerPed, 8, TLS.EUPUI.Outfits[department][outfitnumber][Gender].UnderCoat[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].UnderCoat[2] - 1, 0)
    SetPedComponentVariation(playerPed, 4, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Pants[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Pants[2] - 1, 0)
    SetPedComponentVariation(playerPed, 6, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Shoes[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Shoes[2] - 1, 0)
    SetPedComponentVariation(playerPed, 7, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Accessories[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Accessories[2] - 1, 0)
    SetPedComponentVariation(playerPed, 9, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Armor[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Armor[2] - 1, 0)
    SetPedComponentVariation(playerPed, 5, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Parachute[1] - 1, TLS.EUPUI.Outfits[department][outfitnumber][Gender].Parachute[2] - 1, 0)
end

local function NextUniform()
    outfitnumber = outfitnumber + 1
    if outfitnumber > TLS.EUPUI.Outfits[department].Max then
        outfitnumber = 1
    end
    ChangeUniform()
end

local function PrevUniform()
    outfitnumber = outfitnumber - 1
    if outfitnumber <= 0 then
        outfitnumber = TLS.EUPUI.Outfits[department].Max
    end
    ChangeUniform()
end

RegisterCommand(TLS.EUPUI.Command, function(data)
    SendNUIMessage({
        action = 'open',
        departments = departments
    })
    SetNuiFocus(true, true)
    ChangeUniform()
    TLS.Camera.Enable('eupui')
end)

RegisterNUICallback('change', function(data)
    department, outfitnumber = data.department, 1
    ChangeUniform()
end)

RegisterNUICallback('close', function(data)
    SetNuiFocus(false, false)
    TLS.Camera.Disable()
end)

RegisterNUICallback('next', function(data)
    NextUniform()
end)

RegisterNUICallback('prev', function(data)
	PrevUniform()
end)

RegisterNUICallback('RotatePedLeft', function(data)
    local playerPed = PlayerPedId()
    SetEntityHeading(playerPed, (GetEntityHeading(playerPed) - 2.5))
end)

RegisterNUICallback('RotatePedRight', function(data)
    local playerPed = PlayerPedId()
    SetEntityHeading(playerPed, (GetEntityHeading(playerPed) + 2.5))
end)
