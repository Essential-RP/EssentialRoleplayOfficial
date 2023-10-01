QBCore = nil
ESX = nil
local Webhook = ""

if Config.Core == "QBCore" then
    TriggerEvent(Config.Core..':GetObject', function(obj) QBCore = obj end)
    if QBCore == nil then
        QBCore = exports[Config.CoreFolderName]:GetCoreObject()
    end
elseif Config.Core == "ESX" then
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    if ESX == nil then
        ESX = exports[Config.CoreFolderName]:getSharedObject()
    end
elseif Config.Core == "Standalone" then
	print("Running Bodycam on Standalone mode")
else
    print("^1[Invalid Core] ^0You have You have not selected the right Config.Core in framework.lua ^0!")
end

function SendLogs(source, message, enabled)
	
    local colorcode = 16711680
	if enabled then
		colorcode = 65280
	end
    local description = ""
    if source == 0 then
        description = "**"..message.."**"
    else
        description = "**"..GetPlayerName(source).."** ("..source..")\n"..message
    end
    local embedData = {
        {
            ["title"] = "Bodycam Logs" ,
            ["color"] = colorcode,
            ["footer"] = {
                ["text"] = os.date("%c"),
            },
            ["description"] = description,
            ["author"] = {
            ["name"] = 'Bodycam Logs',
            },
        }
    }
    PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({ username = "Snipe Logs",embeds = embedData}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent("snipe-bodycam:server:sendLogs", function(name, playerJob, enabled)
	local src = source
	if enabled then
		SendLogs(src, name.." with job: ".. playerJob.. " has put on their bodycam!", enabled)
	else
		SendLogs(src, name.." with job: ".. playerJob.. " has put off their bodycam!" , enabled)
	end
end)

function ShowNotification(src, msg, type)
	if Config.Core == "QBCore" and Config.QBCoreNotify then
		TriggerClientEvent(Config.Core..':Notify', src, msg, type)
	elseif Config.Core == "ESX" and Config.ESXNotify then
		TriggerClientEvent('esx:showNotification', src, msg)
	elseif Config.okokNotify then
		TriggerClientEvent('okokNotify:Alert', src, Config.OkOkNotifyTitle, msg, 5000, type)
	elseif Config.pNotify then
		TriggerClientEvent("pNotify:SendNotification", src, {
			text = msg,
			type = type,
			timeout = 10000,
			layout = Config.pNotifyLayout
		})
	else
		print("^1[Bodycam] ^0Wrong notify options chosen! ^0!")
	end
end

function isAuthorized(job)
	for k, v in pairs(Config.JobWithAccess) do
		if k == job then
			return true
		end
	end
	return false
end

function GetPlayerCallSign(source)
    --[[
        Add your own logic to return callsign here. I didnt find anything in ESX/Standalone with callsign for players
    ]]--
	if Config.Core == "QBCore" then
		local Player = QBCore.Functions.GetPlayer(source)
		return Player.PlayerData.metadata["callsign"]
	elseif Config.Core == "ESX" then
		return "000"
	elseif Config.Core == "Standalone" then
		return "000"
	end
end

-- returns the job of the player. For eg, "police"
function GetPlayerJob(source)
	if Config.Core == "QBCore" then
		local Player = QBCore.Functions.GetPlayer(source)
		return Player.PlayerData.job.name
	elseif Config.Core == "ESX" then
		local Player = ESX.GetPlayerFromId(source)
		return Player.job.name
	elseif Config.Core == "Standalone" then
		-- Add your own logic to return the job of the player here
		return "police"
	end
end

-- returns the name of the player for eg. "Snipe Test"
function GetPlayerFullName(source)
	if Config.Core == "QBCore" then
		local Player = QBCore.Functions.GetPlayer(source)
		return Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname
	elseif Config.Core == "ESX" then

		local Player = ESX.GetPlayerFromId(source)
		return Player.getName()
	elseif Config.Core == "Standalone" then
		
		-- Add your own logic to return the name of the player here
		return "Snipe Test"
	end
end

-- return the job grade name for eg. "Sergeant"
function GetPlayerRank(source)
	if Config.Core == "QBCore" then
		local Player = QBCore.Functions.GetPlayer(source)
		return Player.PlayerData.job.grade.name
	elseif Config.Core == "ESX" then
		local Player = ESX.GetPlayerFromId(source)
		return Player.job.grade_name
	elseif Config.Core == "Standalone" then
		-- Add your own logic to return the job grade name here
		return "Sergeant"
	end
end

CreateThread(function()
	if Config.Core == "QBCore" then
		QBCore.Functions.CreateUseableItem(Config.BodyCamItem , function(source, item)
			local source = source
			local Player = QBCore.Functions.GetPlayer(source)
			local rank = ""
			if isAuthorized(Player.PlayerData.job.name) then
				if Player.PlayerData.job.onduty then
					local name = GetPlayerFullName(source)
					local callsign = GetPlayerCallSign(source)
					local rank = GetPlayerRank(source)
					TriggerClientEvent("snipe-bodycam:client:toggleCam", source, name, rank, callsign, Player.PlayerData.job.name)
					
				else
					ShowNotification(source, Config.Locale["should_be_onduty"], 'error')
				end
			else
				ShowNotification(source, Config.Locale["emergency_services"], 'error')
			end
		end)

		RegisterCommand("bodycamwear", function(source)
			local source = source
			local PlayerJob = GetPlayerJob(source)
			if isAuthorized(PlayerJob) then
				local name = GetPlayerFullName(source)
				local callsign = GetPlayerCallSign(source)
				local rank = GetPlayerRank(source)
				TriggerClientEvent("snipe-bodycam:client:toggleCam", source, name, rank, callsign, PlayerJob)
				
			else
				ShowNotification(source, Config.Locale["emergency_services"], "error")
			end
		end)
	elseif Config.Core == "ESX" then
		ESX.RegisterUsableItem(Config.BodyCamItem, function(source, item)
			local source = source
			local Player =  ESX.GetPlayerFromId(source)
			local PlayerJob = GetPlayerJob(source)
			if isAuthorized(PlayerJob) then
				local name = GetPlayerFullName(source)
				local callsign = GetPlayerCallSign(source)
				local rank = GetPlayerRank(source)
				TriggerClientEvent("snipe-bodycam:client:toggleCam", source, name, rank, callsign, PlayerJob)
				
			else
				ShowNotification(source, Config.Locale["emergency_services"], "error")
			end
		end)
	elseif Config.Core == "Standalone" then
		RegisterCommand("bodycamwear", function(source)
			local source = source
			local PlayerJob = GetPlayerJob(source)
			if isAuthorized(PlayerJob) then
				local name = GetPlayerFullName(source)
				local callsign = GetPlayerCallSign(source)
				local rank = GetPlayerRank(source)
				TriggerClientEvent("snipe-bodycam:client:toggleCam", source, name, rank, callsign, PlayerJob)
				
			else
				ShowNotification(source, Config.Locale["emergency_services"], "error")
			end
		end)
	end
end)

RegisterCommand(Config.BodyCamCommand, function(source, args)
	local source = source
	local citizenId = nil
	local callsign = GetPlayerCallSign(source)
	local PlayerJob = GetPlayerJob(source)
	local name = GetPlayerName(source)
	local rank = GetPlayerRank(source)
	if isAuthorized(PlayerJob) then
		TriggerClientEvent("snipe-bodycam:showBodyCamMenu", source, name, callsign, rank, PlayerJob)
	else
		ShowNotification(source, Config.Locale["emergency_services"], "error")
	end
end)

CreateCallback('snipe-bodycam:server:returnAllBodycams', function(source, cb)
	local src = source
	cb(BodyCams)
end)

local playerCallsigns = {}

function GetPlayerCallSign(source)
    --[[
        Add your own logic to return callsign here. I didnt find anything in ESX/Standalone with callsign for players
    ]]--
    if Config.Core == "QBCore" then
        local Player = QBCore.Functions.GetPlayer(source)
        return Player.PlayerData.metadata["callsign"]
    elseif Config.Core == "ESX" then
        return "000"
    elseif Config.Core == "Standalone" then
        -- cameraGen1 = string.char(math.random(65, 65 + 25))
        -- cameraGen2 = tostring(math.random(100, 999))
        -- cameraGen3 = string.char(math.random(65, 65 + 25))
        -- cameraGen4 = tostring(math.random(1000, 9999))
        -- cameraID = cameraGen1..cameraGen2..cameraGen3..cameraGen4

		if not playerCallsigns[source] then
			cameraGen1 = string.char(math.random(65, 65 + 25))
			cameraGen2 = tostring(math.random(100, 999))
			cameraGen3 = string.char(math.random(65, 65 + 25))
			cameraGen4 = tostring(math.random(1000, 9999))
			cameraID = cameraGen1..cameraGen2..cameraGen3..cameraGen4
			playerCallsigns[source] = cameraID
		end
        
        return playerCallsigns[source]
    end
end