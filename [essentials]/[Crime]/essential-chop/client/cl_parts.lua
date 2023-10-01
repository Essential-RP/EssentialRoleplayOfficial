RegisterNetEvent('qb-chopshop:StartMenu', function()
    local menu = {
        {
            header = "| Chop Down Parts |",
            icon = 'fas fa-clipboard',
            txt = ""
        },
        {
            id = 2,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['carpart_door'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['carpart_door'].label,
            txt = "1x Part",
            params = {
                event = "qb-chopshop:chopdoor",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 3,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['carpart_wheel'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['carpart_wheel'].label,
            txt = "1x Part",
            params = {
                event = "qb-chopshop:chopwheel",
                args = {
                    number = 1,
                    id = 3
                }
            }
        },
        {
            id = 4,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['carpart_hood'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['carpart_hood'].label,
            txt = "1x Part",
            params = {
                event = "qb-chopshop:chophood",
                args = {
                    number = 1,
                    id = 4
                }
            }
        },
        {
            id = 5,
            header = "<img src=nui://qb-inventory/html/images/"..QBCore.Shared.Items['carpart_trunk'].image.." width=30px onerror='this.onerror=null; this.remove();'>"..QBCore.Shared.Items['carpart_trunk'].label,
            txt = "1x Part",
            params = {
                event = "qb-chopshop:choptrunk",
                args = {
                    number = 1,
                    id = 5
                }
            }
        }
    }

    exports['qb-menu']:openMenu(menu)
    -- Do something with the 'menu' variable here, e.g., show the menu
end)

RegisterNetEvent('qb-chopshop:chopdoor')
AddEventHandler('qb-chopshop:chopdoor', function()
    TriggerServerEvent("qb-chopshop:server:chopdoor")
end)

RegisterNetEvent('qb-chopshop:chopwheel')
AddEventHandler('qb-chopshop:chopwheel', function()
    TriggerServerEvent("qb-chopshop:server:chopwheel")
end)

RegisterNetEvent('qb-chopshop:chophood')
AddEventHandler('qb-chopshop:chophood', function()
    TriggerServerEvent("qb-chopshop:server:chophood")
end)

RegisterNetEvent('qb-chopshop:choptrunk')
AddEventHandler('qb-chopshop:choptrunk', function()
    TriggerServerEvent("qb-chopshop:server:choptrunk")
end)