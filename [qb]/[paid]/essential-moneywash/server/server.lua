local QBCore = exports['qb-core']:GetCoreObject()
local cooldown = false

function GetWasherItems(WasherID)
	local items = {}
	local result = MySQL.Sync.fetchScalar('SELECT items FROM stashitems WHERE stash = ?', {'MoneyWasher'..WasherID})
	if result then
		local stashItems = json.decode(result)
		if stashItems then
			for k, item in pairs(stashItems) do
				local itemInfo = QBCore.Shared.Items[item.name:lower()]
				if itemInfo then
					items[item.slot] = {
						name = itemInfo["name"],
						amount = tonumber(item.amount),
						info = item.info or "",
						label = itemInfo["label"],
						description = itemInfo["description"] or "",
						weight = itemInfo["weight"],
						type = itemInfo["type"],
						unique = itemInfo["unique"],
						useable = itemInfo["useable"],
						image = itemInfo["image"],
						slot = item.slot,
					}
				end
			end
		end
	end
	return items
end

RegisterNetEvent('kevin-moneywasher:server:checkbills', function (WasherID)
    local PlayerId = source
	local CleanedMoney = 0
    for k, v in pairs(GetWasherItems(WasherID)) do
		if v.name == Config.DirtyMoney[1].itemname or v.name == Config.DirtyMoney[2].itemname then
			if v.name == Config.DirtyMoney[1].itemname then
				if Config.UseSetAmount then
					CleanedMoney = CleanedMoney + (Config.DirtyMoney[1].setamountworth * v.amount)
				else
					CleanedMoney = CleanedMoney + (v.info.worth * v.amount)
				end
			elseif v.name == Config.DirtyMoney[2].itemname then
				if Config.UseSetAmount then
					CleanedMoney = CleanedMoney + (Config.DirtyMoney[2].setamountworth * v.amount)
				else
					CleanedMoney = CleanedMoney + (v.info.worth * v.amount)
				end
			end
		end
    end
	
	if CleanedMoney > 0 then
		MySQL.Sync.fetchAll("UPDATE stashitems SET items = '[]' WHERE stash = ?", { 'MoneyWasher'..WasherID })
		TriggerClientEvent('kevin-moneywasher:client:billschecked', PlayerId, CleanedMoney)
	end
end)

RegisterNetEvent('kevin-moneywasher:server:collectbills', function (Cleaned)
	local PlayerId = source
	local Player = QBCore.Functions.GetPlayer(PlayerId)
	local PlayerCoords = GetEntityCoords(GetPlayerPed(PlayerId))
	local Money = Cleaned * Config.PercentageGiven
	local dist = #(PlayerCoords - vector3(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z))
	if dist < 10.0 then
		Player.Functions.AddMoney('cash', math.floor(Money), 'Cleaned Money')
		TriggerEvent('qb-log:server:CreateLog', 'washer', 'Money Washer', 'green', "**"..GetPlayerName(Player.PlayerData.source) .. " (citizenid: "..Player.PlayerData.citizenid.." | id: "..Player.PlayerData.source..")** Gave washer bills worth: "..Cleaned.. " | Collected Amount :"..math.floor(Money)..' | Location :'..PlayerCoords)
		TriggerClientEvent('kevin-moneywasher:client:removeped', PlayerId)
	end
end)


RegisterServerEvent('kevin-moneywasher:server:setcooldown', function()
	cooldown = true
	local timer = Config.Cooldown * (60 * 1000)
	while timer > 0 do
		Wait(1000)
		timer = timer - 1000
		if timer == 0 then
		  cooldown = false
		end
	end
  end)

QBCore.Functions.CreateCallback("kevin-moneywasher:server:Cooldown",function(source, cb)
    if cooldown then
        cb(true)
    else
        cb(false)
    end
end)