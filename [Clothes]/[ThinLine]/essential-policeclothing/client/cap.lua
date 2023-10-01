-- ======= DO NOT EDIT THIS FILE ======= --

if TLS.BaseballHat.Enable then
    RegisterCommand(TLS.BaseballHat.Command, function()
        local playerPed = PlayerPedId()
        local currentGender, currentHat, currentTexture = TLS.Functions.GetPlayerGender(playerPed), TLS.Functions.GetPlayerDrawable(playerPed, 0, true)
        for k, v in ipairs(TLS.BaseballHat[currentGender]) do
            if v.mainComponent == currentHat then
                RequestAnimDict('missheist_agency2ahelmet')
                while not HasAnimDictLoaded('missheist_agency2ahelmet') do
                    Wait(10)
                end
                TaskPlayAnim(playerPed, 'missheist_agency2ahelmet', 'take_off_helmet_stand', 3.0, 3.0, -1, 49, 0, 0, 0, 0)
                Wait(500)
                SetPedPropIndex(playerPed, 0, v.newComponent, currentTexture, 0)
                Wait(100)
                ClearPedTasks(playerPed)
                RemoveAnimDict('missheist_agency2ahelmet')
                break
            end
        end
    end, false)
    
    RegisterKeyMapping(TLS.BaseballHat.Command, TLS.BaseballHat.Label, 'keyboard', TLS.BaseballHat.Keybind)
end
