if not TLS.HelmetUI.Enable then return end
local helmets = {}

CreateThread(function()
    for setupname, _ in pairs(TLS.EUPUI.Helmets) do
        helmets[#helmets + 1] = setupname
    end
end)

local function ChangeHelmet(setup)
    local playerPed, Gender = PlayerPedId(), 'Male'
    if GetEntityModel(playerPed) == `mp_f_freemode_01` then Gender = 'Female' end
    if TLS.EUPUI.Helmets[setup][Gender].Helmet[1] == 0 then
        ClearPedProp(playerPed, 0)
    else
        SetPedPropIndex(playerPed, 0, TLS.EUPUI.Helmets[setup][Gender].Helmet[1] - 1, TLS.EUPUI.Helmets[setup][Gender].Helmet[2] - 1, true)
    end
    if TLS.EUPUI.Helmets[setup][Gender].Accessory1[1] == 0 then
        ClearPedProp(playerPed, 1)
    else
        SetPedPropIndex(playerPed, 1, TLS.EUPUI.Helmets[setup][Gender].Accessory1[1] - 1, TLS.EUPUI.Helmets[setup][Gender].Accessory1[2] - 1, true)
    end
    if TLS.EUPUI.Helmets[setup][Gender].Accessory2[1] == 0 then
        ClearPedProp(playerPed, 2)
    else
        SetPedPropIndex(playerPed, 2, TLS.EUPUI.Helmets[setup][Gender].Accessory2[1] - 1, TLS.EUPUI.Helmets[setup][Gender].Accessory2[2] - 1, true)
    end
    SetPedComponentVariation(playerPed, 1, TLS.EUPUI.Helmets[setup][Gender].Mask[1] - 1, TLS.EUPUI.Helmets[setup][Gender].Mask[2] - 1, 0)
    SetPedComponentVariation(playerPed, 5, TLS.EUPUI.Helmets[setup][Gender].Patches[1] - 1, TLS.EUPUI.Helmets[setup][Gender].Patches[2] - 1, 0)
end

RegisterCommand(TLS.HelmetUI.Command, function(data)
    SendNUIMessage({
        action = 'helmetmenu',
        helmets = helmets
    })
    SetNuiFocus(true, true)
    TLS.Camera.Enable('helmet')
end)

RegisterNUICallback('changehelmet', function(data)
    ChangeHelmet(data.setup)
end)

RegisterNUICallback('closehelmet', function(data)
    SetNuiFocus(false, false)
    TLS.Camera.Disable()
end)