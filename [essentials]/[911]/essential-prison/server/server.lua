local QBCore = exports[Config.CoreName]:GetCoreObject()
local Chairs = {}
local Tables = {}
print(Tables)

-- Thread Functions
Citizen.CreateThread(function()
	for k, _ in pairs(Config.PrisonChair) do
		Chairs[k] = false
	end
	for k, _ in pairs(Config.CafeteriaTables) do
		Tables[k] = false
	end
end)
-- END

-- Call Backs
-- Search chair cooldown check
QBCore.Functions.CreateCallback('Thx:SVCB:SearchChair', function(source, cb, ChairNum)
    local src = source
	local CanSearch = false
	for _, _ in pairs(Chairs) do
		if not Chairs[ChairNum] then
			CanSearch = true
		end
	end
	Wait(100)
	cb(CanSearch)
end)
-- Table Cleaning cooldown check
QBCore.Functions.CreateCallback('Thx:SVCB:CleanTables', function(source, cb, TablesNum)
	local CanClean = false
	for _, _ in pairs(Tables) do
		if not Tables[TablesNum] then
			CanClean = true
		end
	end
	Wait(100)
	cb(CanClean)
end)
-- Check if the player is in jail or not
QBCore.Functions.CreateCallback('Thx:SVCB:InJailOrNot', function(source, cb)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local injail = Player.PlayerData.metadata["injail"]
	cb(injail)
end)
--ass-meth shop callback
QBCore.Functions.CreateCallback('THX:Prison:HasAssMeth', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    if Ply.Functions.RemoveItem('ass-meth', 1) then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('QBCore:Notify', src, "No goods?..", "error")
    end
end)
-- END
QBCore.Functions.CreateCallback('THX:Server:CookAssMeth', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
	local lighter = Ply.Functions.GetItemByName("prison-lighter")
	local sudafed = Ply.Functions.GetItemByName("sudafed")
	local nailpolish = Ply.Functions.GetItemByName("nailpolish-remover")
	local ephedrine = Ply.Functions.GetItemByName("prison-ephedrine")
	local baggy = Ply.Functions.GetItemByName("prison-baggy")
	if lighter then
		if sudafed then
			if nailpolish then
				if ephedrine then
					if baggy then
						if Ply.Functions.RemoveItem('sudafed', 1) and Ply.Functions.RemoveItem('nailpolish-remover', 1) and Ply.Functions.RemoveItem('prison-ephedrine', 1) and Ply.Functions.RemoveItem('prison-baggy', 1) then
							cb(true) 
						else
							cb(false)
							TriggerClientEvent('QBCore:Notify', src, "No goods?..", "error")
						end
					else
						cb(false)
						TriggerClientEvent('QBCore:Notify', src, "You need a container.", "error")
					end
				else
					cb(false)
					TriggerClientEvent('QBCore:Notify', src, "You need ephedrine.", "error")
				end
			else
				cb(false)
				TriggerClientEvent('QBCore:Notify', src, "You need acetone.", "error")
			end
		else
			cb(false)
			TriggerClientEvent('QBCore:Notify', src, "You need sudo.", "error")
		end
	else
		cb(false)
		TriggerClientEvent('QBCore:Notify', src, "You need some heat.", "error")
	end
end)
QBCore.Functions.CreateCallback('THX:Server:ChargePhone', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
	local brick = Ply.Functions.GetItemByName("charging-brick")
	local cable = Ply.Functions.GetItemByName("charging-cable")
	local deadphone = Ply.Functions.GetItemByName("deadphone")
	if brick then
		if cable then
			if deadphone then
				cb(true)
			else
				cb(false)
				TriggerClientEvent('QBCore:Notify', src, "No phone?..", "error")
			end
		else
			cb(false)
			TriggerClientEvent('QBCore:Notify', src, "You need a cable.", "error")
		end
	else
		cb(false)
		TriggerClientEvent('QBCore:Notify', src, "You need a brick.", "error")
	end
end)
QBCore.Functions.CreateCallback('THX:Server:ChargedPhoneBreakout', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
	local chargedphone = Ply.Functions.GetItemByName("chargedphone")
		if chargedphone then
			cb(true)
		else
			cb(false)
			TriggerClientEvent('QBCore:Notify', src, "No special phone?", "error")
		end
end)
QBCore.Functions.CreateCallback('THX:Server:DepositFoodPrep', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
	local foodprep = Ply.Functions.GetItemByName("prison-foodprep")
		if foodprep then
			cb(true)
		else
			cb(false)
			TriggerClientEvent('QBCore:Notify', src, "No food?", "error")
		end
end)
QBCore.Functions.CreateCallback('THX:Server:FoodPrep', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
	local foodprep = Ply.Functions.GetItemByName("prison-foodsupplies")
		if foodprep then
			cb(true)
		else
			cb(false)
			TriggerClientEvent('QBCore:Notify', src, "No ingredients?", "error")
		end
end)


--Events
RegisterServerEvent('Thx:server:GiveItem')
AddEventHandler('Thx:server:GiveItem', function(Item, Amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Item then
        if Amount then
            Player.Functions.AddItem(Item, amnt)
        else
            Player.Functions.AddItem(Item, Amount)
        end
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Item], "add")
	end
end)

RegisterNetEvent('Thx:Server:ItemStuff', function(Add, itemName, amount, itembox)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local Amount = amount
	if itembox == nil then itembox = true end
	if not amount then
		Amount = 1
	end
	if Player then
		if Add then
			Player.Functions.AddItem(itemName, Amount)
			if itembox then
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'add', Amount)
			end
		else
			Player.Functions.RemoveItem(itemName, Amount)
			if itembox then
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove', Amount)
			end
		end
	end
end)

RegisterServerEvent("Thx:server:ChairSearchCooldown", function(ChairNum)
	Chairs[ChairNum] = true
	SetTimeout(Config.ChairSearchCooldown * 60000, function()
		Chairs[ChairNum] = false
	end)
end)
RegisterServerEvent("Thx:server:CleanTableCooldown", function(TablesNum)
	Tables[TablesNum] = true
	SetTimeout(Config.CleanTableCooldown * 60000, function()
		Tables[TablesNum] = false
	end)
end)
RegisterServerEvent("Thx:server:BreakoutZone", function()
	TriggerClientEvent('THX:client:BreakoutZone', -1)
end)

RegisterServerEvent("prison:server:SuccesPrisonBreak", function()
	for _,v in pairs(QBCore.Functions.GetPlayers()) do
		local Player = QBCore.Functions.GetPlayer(v)
		if Player.PlayerData.metadata["injail"] >= 1 then
			TriggerClientEvent("prison:client:ResetAllJailStats", v)
		end
	end
end)

RegisterNetEvent('thx:prison:server:SendToBed', function(bedId, isRevive)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent('prison:client:SendToBed', src, bedId, Config.BedLocations["beds"][bedId], isRevive)
	TriggerClientEvent('prison:client:SetBed', -1, bedId, true)
end)
QBCore.Functions.CreateUseableItem("charging-brick", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("THX:Prison:PhoneCharging", src, item.name)
end)

-- Useable Items

QBCore.Functions.CreateUseableItem("care-package", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("Thx:client:UseAirDrop", src)
end)

-- MUGSHOT
local MugShots = {}

RegisterNetEvent('Thx-mugshot:server:MDTupload', function(citizenid, MugShotURLs)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cid = citizenid
    local pfp = MugShotURLs
    local jobtype = Player.PlayerData.job.name
    local fingerprint = Player.PlayerData.metadata["fingerprint"]
    MugShots[citizenid] = Player.PlayerData.metadata["fingerprint"]
    local result = MySQL.query.await('SELECT * FROM mdt_data WHERE cid = ?', { citizenid })
    if result[1] then
	    MySQL.update('UPDATE mdt_data SET pfp = ? WHERE cid = ?', {MugShotURLs, citizenid})
    else
        MySQL.Async.insert('INSERT INTO mdt_data (cid, pfp, jobtype, fingerprint) VALUES (:cid, :pfp, :jobtype, :fingerprint) ON DUPLICATE KEY UPDATE cid = :cid, pfp = :pfp, fingerprint = :fingerprint', {
			cid = cid,
			pfp = pfp,
			jobtype = jobtype,
			fingerprint = fingerprint,
		})
    end
end)

--Allows external resources to pull most recent mugshot urls for a given citizen id
QBCore.Functions.CreateCallback(function(source, cb, citizenid) 
    cb(MugShots[citizenid])
end)

Citizen.CreateThread(function()
    BasketBall = CreateObjectNoOffset("prop_bskball_01", vector3(1725.75, 2537.9, 43.59-0.9), 1, true, 0)
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        if DoesEntityExist(BasketBall) then
            DeleteEntity(BasketBall)
        end
    end
end)