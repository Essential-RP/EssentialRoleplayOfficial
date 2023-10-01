if TLS.Helmet.Enable then 
    CreateThread(function()
        while true do
            Wait(1000)
            local playerPed = PlayerPedId()
            local currentGender, currentHelmet, currentTexture = TLS.Functions.GetPlayerGender(playerPed), TLS.Functions.GetPlayerDrawable(playerPed, 1, false)
            local hasHelmet = false
            for k, v in ipairs(TLS.Helmet[currentGender].Helmets) do
                if currentHelmet == v then
                    hasHelmet = true
                    break
                end
            end
            SetPedSuffersCriticalHits(playerPed, not hasHelmet)
        end
    end)

    CreateThread(function()
        while true do
            Wait(1000)
            local playerPed = PlayerPedId()
            local currentGender, currentRespirator, currentTexture = TLS.Functions.GetPlayerGender(playerPed), TLS.Functions.GetPlayerDrawable(playerPed, 1, false)
            local hasRespirator = false
            for k, v in ipairs(TLS.Helmet[currentGender].Respirators) do
                if currentRespirator == v then
                    hasRespirator = true
                    break
                end
            end
            SetEntityProofs(playerPed, false, false, false, false, false, false, hasRespirator, hasRespirator, false)
        end
    end)

    RegisterCommand(TLS.Helmet.NVGCommand, function()
        local playerPed = PlayerPedId()
        local currentGender, currentNVG, currentTexture = TLS.Functions.GetPlayerGender(playerPed), TLS.Functions.GetPlayerDrawable(playerPed, 1, true)
        local hasNVG = false
        for k, v in ipairs(TLS.Helmet[currentGender].NVG) do
            if currentNVG == v then
                hasNVG = true
                break
            end
        end
        if hasNVG then
            SetNightvision(not GetUsingnightvision())
        end
    end)

    RegisterKeyMapping(TLS.Helmet.NVGCommand, TLS.Helmet.NVGLabel, 'keyboard', TLS.Helmet.NVGKeybind)

    RegisterCommand(TLS.Helmet.SwapCommand, function()
        local playerPed = PlayerPedId()
        local currentGender, currentAsset, currentTexture = TLS.Functions.GetPlayerGender(playerPed), TLS.Functions.GetPlayerDrawable(playerPed, 1, true)
        for k, v in ipairs(TLS.Helmet[currentGender].Alternatives) do
            if v.mainComponent == currentAsset then
                RequestAnimDict('anim@mp_helmets@on_foot')
                while not HasAnimDictLoaded('anim@mp_helmets@on_foot') do
                    Wait(10)
                end
                TaskPlayAnim(playerPed, 'anim@mp_helmets@on_foot', v.anim, 3.0, 3.0, -1, 49, 0, 0, 0, 0)
                Wait(500)
                SetPedPropIndex(playerPed, 1, v.newComponent, currentTexture, 0)
                Wait(100)
                ClearPedTasks(playerPed)
                RemoveAnimDict('anim@mp_helmets@on_foot')
                break
            end
        end
    end)

    RegisterKeyMapping(TLS.Helmet.SwapCommand, TLS.Helmet.SwapLabel, 'keyboard', TLS.Helmet.SwapKeybind)
end