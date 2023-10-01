QBCore = nil
ESX = nil
-- ███████ ██████   █████  ███    ███ ███████ ██     ██  ██████  ██████  ██   ██ 
-- ██      ██   ██ ██   ██ ████  ████ ██      ██     ██ ██    ██ ██   ██ ██  ██  
-- █████   ██████  ███████ ██ ████ ██ █████   ██  █  ██ ██    ██ ██████  █████   
-- ██      ██   ██ ██   ██ ██  ██  ██ ██      ██ ███ ██ ██    ██ ██   ██ ██  ██  
-- ██      ██   ██ ██   ██ ██      ██ ███████  ███ ███   ██████  ██   ██ ██   ██

if Config.Core == "QBCore" then
    QBCore = exports[Config.CoreFolderName]:GetCoreObject()
    Citizen.CreateThread(function()
        while QBCore == nil do
            TriggerEvent(Config.Core..':GetObject', function(obj) QBCore = obj end)
            Citizen.Wait(200)
        end
    end)
elseif Config.Core == "ESX" then
    ESX = exports[Config.CoreFolderName]:getSharedObject()
end

function ShowNotification(msg, type)
    if Config.Core == "QBCore" and Config.QBCoreNotify then
        QBCore.Functions.Notify(msg, type)
    elseif Config.Core == "ESX" and Config.ESXNotify then
        ESX.ShowNotification(msg)
    elseif Config.okokNotify then
        exports['okokNotify']:Alert(Config.OkOkNotifyTitle, msg, 5000, type)
    elseif Config.pNotify then
        exports.pNotify:SendNotification({text = msg, type = type ,layout = Config.pNotifyLayout, timeout = 5000})
    else
        print(msg)
    end
end

RegisterNetEvent("snipe-bodycam:client:toggleCam", function(name, rank, callsign, playerJob)
    if not bodyCamOn then
        bodyCamOn = true
        loadAnimDict("clothingshirt")        
        TaskPlayAnim(PlayerPedId(), "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        Citizen.Wait(3000)
        ClearPedTasks(PlayerPedId())
        ShowNotification(Config.Locale["bodycam_on"], "success")
        TriggerEvent('snipe-bodycam:show', name, rank, callsign, playerJob)
        if Config.PlaySoundFromPlayer then
            playbeep()
        end
        TriggerServerEvent("snipe-bodycam:server:sendLogs", name, playerJob, true)
    else
        bodyCamOn = false
        loadAnimDict("clothingshirt")        
        TaskPlayAnim(PlayerPedId(), "clothingshirt", "try_shirt_negative_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        ShowNotification(Config.Locale["bodycam_off"], "error")
        TriggerEvent('snipe-bodycam:close')
        Citizen.Wait(3000)
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent("snipe-bodycam:server:sendLogs", name, playerJob, false)
    end
end)

RegisterNetEvent("snipe-bodycam:client:offCam", function()
    if bodyCamOn then
        bodyCamOn = false
        Citizen.Wait(1000)
        ShowNotification(Config.Locale["bodycam_off"], "error")
        TriggerEvent('snipe-bodycam:close')
    end
end)
function ShowMenu(activeCams)
    if Config.Menu == "nh-context" then
        menu = {
            {
                header = "Active Bodycams",
                context = ""
            }
        }
        for k, v in pairs(activeCams) do
            table.insert(menu,  {
                header = v.name,
                context = string.upper(v.job).." | "..v.rank.."",
                server = false, -- this passes the event below to the server instead of client
                image = "",
                event = "snipe-bodycam:client:ShowCam",
                args = {
                    {
                        id = v.id, 
                        name = v.name, 
                        job = string.upper(v.job), 
                        jobName = v.job,
                        rank = v.rank
                    },
                }
            })
        end
    elseif Config.Menu == "qb-menu" then
        menu = {
            {
                header = "Active Bodycams",
                isMenuHeader  = true
            },
        }
        for k, v in pairs(activeCams) do
            table.insert(menu, {
                header = v.name,
                text = string.upper(v.job).." | "..v.rank.."",
                params = {
                    event = "snipe-bodycam:client:ShowCam",
                    args = {
                        id = v.id, 
                        name = v.name, 
                        job = string.upper(v.job), 
                        jobName = v.job,
                        rank = v.rank
                    }
                }
            })
        end
    else
        local libOptions = {}
        for k, v in pairs(activeCams) do
            table.insert(libOptions, {
                title = v.name,
                description = string.upper(v.job).." | "..v.rank.."",
                onSelect  = function()
                    TriggerEvent('snipe-bodycam:client:ShowCam', {
                        id = v.id, 
                        name = v.name, 
                        job = string.upper(v.job), 
                        jobName = v.job,
                        rank = v.rank
                    })
                end
            })
        end
        lib.registerContext({
            id = "bodycam_menu",
            title = "Active Bodycams",
            options = libOptions
        })
        lib.showContext('bodycam_menu')
    end

    if Config.Menu == "nh-context" then
        TriggerEvent('nh-context:createMenu', menu)
    elseif Config.Menu == "qb-menu" then
        exports["qb-menu"]:openMenu(menu)
    else
        
    end
end

RegisterNetEvent("snipe-bodycam:showBodyCamForEveryone")
AddEventHandler("snipe-bodycam:showBodyCamForEveryone", function()
    local menu = {}
    TriggerCallback("snipe-bodycam:server:returnAllBodycams", function(activeCams)
        if next(activeCams) ~= nil then      
            ShowMenu(activeCams)
        else
            ShowNotification(Config.Locale["no_active_bodycam"], "error")
        end
    end)
end)