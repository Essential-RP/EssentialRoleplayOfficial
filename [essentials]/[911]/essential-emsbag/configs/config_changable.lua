local QBCore = exports['qb-core']:GetCoreObject()


-- Simple Event's , you can create yours and put on qb-menu :)

RegisterNetEvent('essential-emsbag:Client:GiveRadio')
AddEventHandler("essential-emsbag:Client:GiveRadio", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking a Radio ...")
    TriggerServerEvent("essential-emsbag:Server:AddItem", "radio", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["radio"], "add", 1)
end)

RegisterNetEvent('essential-emsbag:Client:Givebandage')
AddEventHandler("essential-emsbag:Client:Givebandage", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Bandage ...")
    TriggerServerEvent("essential-emsbag:Server:AddItem", "bandage", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bandage"], "add", 1)
end)
RegisterNetEvent('essential-emsbag:Client:Givepainkillers')
AddEventHandler("essential-emsbag:Client:Givepainkillers", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Painkillers ...")
    TriggerServerEvent("essential-emsbag:Server:AddItem", "painkillers", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["painkillers"], "add", 1)
end)
RegisterNetEvent('essential-emsbag:Client:Givefirstaid')
AddEventHandler("essential-emsbag:Client:Givefirstaid", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Firstaid ...")
    TriggerServerEvent("essential-emsbag:Server:AddItem", "firstaid", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["firstaid"], "add", 1)
end)
RegisterNetEvent('essential-emsbag:Client:Giveweapon_flashlight')
AddEventHandler("essential-emsbag:Client:Giveweapon_flashlight", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Flashlight ...")
    TriggerServerEvent("essential-emsbag:Server:AddItem", "weapon_flashlight", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_flashlight"], "add", 1)
end)


RegisterNetEvent('essential-emsbag:Client:MenuAmbulanceBag', function()
    local playerPed = PlayerPedId()
    if IsEntityDead(playerPed) then return Notify("You cannot Open Bag while dead", "error") end
    if IsPedSwimming(playerPed) then return Notify("You cannot Open Bag in the water.", "error") end
    if IsPedSittingInAnyVehicle(playerPed) then return Notify("You cannot Open Bag inside a vehicle", "error") end
    exports['qb-menu']:openMenu({
        { header = "[🚑] Ambulance Box", txt = "", isMenuHeader = true },
        { header = "[👜] Open AmbulanceBag",  params = { event = "essential-emsbag:Client:StorageAmbulanceBag" } },
        { header = "[🩹]Take Bandage ",  params = { event = "essential-emsbag:Client:Givebandage" } },
        { header = "[💊] Take Painkillers ",  params = { event = "essential-emsbag:Client:Givepainkillers" } },
        { header = "[💉] Take Firstaid ",  params = { event = "essential-emsbag:Client:Givefirstaid" } },
        { header = "[🔦] Take FlashLight ",  params = { event = "essential-emsbag:Client:Giveweapon_flashlight" } },
        { header = "[📻] Take Radio",  params = { event = "essential-emsbag:Client:GiveRadio" } },
        -- You can add more menus with your's personal events...
        { header = "", txt = "❌ Close", params = { event = "qb-menu:closeMenu" } },
    })
end)

