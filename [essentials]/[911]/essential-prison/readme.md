# Introduction
Hello!.. Thank you for purchasing my prison script! Just a reminder that this is configured for Gabz prison MLO,
however I plan on updating this in the future to make it configurable with other prison MLOs and the base game map. Be sure to remove
qb-prison from your server before installing this script. 



Below are instructions on how to install the script on to your server properly.

Dependent on qb-core
Other Resources required are:
'ps-ui' by project sloth.

# Add this to your doorlock/main.lua at the bottom. VERY IMPORTANT FOR PRISON BREAK

local function GetDoorLockConfigs()
    return Config.DoorList
end

exports('GetDoorLockConfigs', GetDoorLockConfigs)

# Add these items to your server, the pngs are in the 'images' folder. You will need to add those pictures to your inventory resource.
--THX PRISON ITEMS
["ass-meth"] 		 		 	 = {["name"] = "ass-meth", 					    ["label"] = "Ass Meth", 			    ["weight"] = 1000, 			["type"] = "item", 		["image"] = "ass-meth.png", 				["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,  	 ["description"] = "A batch of some real crappy meth.."},
["magnet-stick"] 		 		 = {["name"] = "magnet-stick", 					["label"] = "Little Magnet", 			["weight"] = 500, 			["type"] = "item", 		["image"] = "magnet-stick.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,  	 ["description"] = "A little magnet on an extendable stick.."},
["charging-brick"] 		 		 = {["name"] = "charging-brick", 			    ["label"] = "Charging Brick", 			["weight"] = 500, 			["type"] = "item", 		["image"] = "charger-brick.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,  	 ["description"] = "A charging brick.."},
["charging-cable"] 		 		 = {["name"] = "charging-cable", 				["label"] = "Charging Cable", 			["weight"] = 500, 			["type"] = "item", 		["image"] = "charger-cable.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,  	 ["description"] = "You can use this to charge your phone."},
["tower-keys"] 		 		 	 = {["name"] = "tower-keys", 					["label"] = "Keys on a ring", 			["weight"] = 500, 			["type"] = "item", 		["image"] = "tower-keys.png", 				["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,  	 ["description"] = "Some of these are bent beyond using"},
["infirmary-key"] 		 		 = {["name"] = "infirmary-key", 				["label"] = "Keycard", 			        ["weight"] = 500, 			["type"] = "item", 		["image"] = "infirmary-key.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,  	 ["description"] = "A keycard that gets you in to a laboratory?"},
['prison-ephedrine'] 			 = {['name'] = 'prison-ephedrine', 				['label'] = 'Ephedrine', 				['weight'] = 1000, 		    ['type'] = 'item', 		['image'] = 'ephedrine.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = false,    ['combinable'] = nil,  	 ['description'] = 'Prescription medicine used to treat the symptoms of low blood pressure'},
["sudafed"] 		 		 	 = {["name"] = "sudafed", 					    ["label"] = "Sudafed", 			        ["weight"] = 500, 			["type"] = "item", 		["image"] = "sudafed.png", 					["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,    ["description"] = "Cold and congestive medicine"},
["nailpolish-remover"] 		 	 = {["name"] = "nailpolish-remover", 			["label"] = "Nail Polish Remover", 		["weight"] = 500, 			["type"] = "item", 		["image"] = "nailpolish-remover.png", 		["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,    ["description"] = "For cleaning your nails. Contains acetone."},
["prison-lighter"] 		 		 = {["name"] = "prison-lighter", 				["label"] = "Lighter", 			        ["weight"] = 500, 			["type"] = "item", 		["image"] = "prison-lighter.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,    ["description"] = "Produces a solid, constant flame."},
["prison-baggy"] 		 		 = {["name"] = "prison-baggy", 					["label"] = "Plastic Bag", 			    ["weight"] = 500, 			["type"] = "item", 		["image"] = "prison-baggy.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,    ["description"] = "Empty bag to put something is.."},
["prison-foodprep"] 		 	 = {["name"] = "prison-foodprep", 				["label"] = "Prepared Food", 			["weight"] = 0, 			["type"] = "item", 		["image"] = "prison-foodprep.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,    ["description"] = "Medicore food ready for mediocre citiznes.."},
["prison-foodsupplies"] 		 = {["name"] = "prison-foodsupplies", 			["label"] = "Ingredients", 			    ["weight"] = 0, 			["type"] = "item", 		["image"] = "prison-foodsupplies.png", 		["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,    ["description"] = "Random food ingredients."},
['deadphone'] 				 	 = {['name'] = 'deadphone', 			  	  	['label'] = 'Dead Smartphone', 			['weight'] = 1000, 			['type'] = 'item', 		['image'] = 'deadphone.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = true,	    ['combinable'] = nil,    ['description'] = 'A nice enough phone, looks like the battery is dead..'},
['chargedphone'] 				 = {['name'] = 'chargedphone', 			  	  	['label'] = 'Charged Smartphone', 		['weight'] = 1000, 			['type'] = 'item', 		['image'] = 'chargedphone.png', 			['unique'] = false, 		['useable'] = false, 	['shouldClose'] = true,	    ['combinable'] = nil,    ['description'] = 'A nice enough phone. This used to belong to a guard?'},
["care-package"] 			     = {["name"] = "care-package", 					["label"] = "Care Package Flare", 		["weight"] = 5000, 			["type"] = "item", 		["image"] = "weapon_flare.png", 			["unique"] = false, 		["useable"] = true, 	["shouldClose"] = true,	    ["combinable"] = nil,    ["description"] = "A prison care package"},
# End Items

# MUG SHOT. For the mugshot to work properly meake sure you go to qb-policejob/server/main.lua and replace your jail command with this.
local timetowait = false
QBCore.Commands.Add("jail", "Jail Player (Police Only)", {{name = "id", help = "Player ID"}, {name = "time", help = "Time they have to be in jail"}, {name = "fine", help = "Fine they have to pay"}}, true, function(source, args)
    if not timetowait then
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if (Player.PlayerData.job.name == "police" or Player.PlayerData.job.name == "bcso" or Player.PlayerData.job.name == "corrections") and Player.PlayerData.job.onduty then
            local playerId = tonumber(args[1])
            local OtherPlayer = QBCore.Functions.GetPlayer(playerId)
            local Ply = QBCore.Functions.GetPlayer(tonumber(args[1]))
            local time = tonumber(args[2])
            local amount = tonumber(args[3])
            local PdPay = amount * 0.1
            local billed = QBCore.Functions.GetPlayer(tonumber(args[1]))
            if OtherPlayer ~= nil then
                if time > 0 and amount and amount >= 0 then
                    TriggerClientEvent('Thx-mugshot:client:trigger', args[1], playerId, time)
                    -- TriggerClientEvent("police:client:JailCommand", src, playerId, time)
                    Ply.Functions.RemoveMoney('bank', amount, "paid-fine")
                    TriggerClientEvent('QBCore:Notify', src, 'Fine has been issued to offender succesfully', 'success')
                    TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'State Debt Recovery has automatically recovered the fines owed...')
                    TriggerEvent('qb-bossmenu:server:addAccountMoney', 'police', PdPay)
                    TriggerEvent('qb-log:server:CreateLog', 'jail', "Officer " .. Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. ' jailed ' .. OtherPlayer.PlayerData.charinfo.firstname .. " " .. OtherPlayer.PlayerData.charinfo.lastname .. " " .. "for " .. time .. " months and a $" .. amount .." fine")
                    timetowait = true
                    Wait(25000)
                    timetowait = false
                else
                    TriggerClientEvent('QBCore:Notify', src, 'Cannot sentence for 0', 'error')
                end
            else
                TriggerClientEvent("QBCore:Notify", source, "no one is present", "error")
            end
        else
            TriggerClientEvent('QBCore:Notify', src, 'For on-duty police only', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'You need to wait for the other suspect to finish getting there mug shot', 'error')
    end
end)

# Prison Door Locks and Gate Locks
If you already have locks on the prison doors/gates where you want them;
all you need to install to your doorlock resource is '1robbery.lua,' drag it into the configs folder in your doorlock resource

Replacing your doorlocks with the ones provided will ensure
they all work together with no issues. 

To install: remove the current locks you have on your server at the prison and add '1robbery.lua' AND 'prison.lua' to your doorlock resource.
Drag them into the configs folder in your doorlock resource


# You can customize the items that the prison guard ped shop(CanteenItems) has for sale at the top of the thx-prison/server/ogprison.lua it is default as a sandwich and bottle of water. The kitchen job has a 51% chance of reducing time AND it will stock that shop.  For the CanteenItems to work properly with counting up and down you will need to add this to you qb-inventory/server/main.lua. EXAMPLE HERE: https://gyazo.com/2fe066f1a110a0f1b897dce5295d9bce .


if Player.Functions.RemoveMoney("cash", price, "unkown-itemshop-bought-item") then
	AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
	TriggerClientEvent('QBCore:Notify', src, itemInfo["label"] .. " bought!", "success")
	TriggerEvent("qb-log:server:CreateLog", "shops", "Shop item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
	if Player.PlayerData.metadata["injail"] >= 1 then
		TriggerEvent("Thx:Server:UpdateFoodItemsAmount", 'remove', fromAmount, itemData.name)
	end
elseif bankBalance >= price then
	Player.Functions.RemoveMoney("bank", price, "unkown-itemshop-bought-item")
	AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
	TriggerClientEvent('QBCore:Notify', src, itemInfo["label"] .. " bought!", "success")
	TriggerEvent("qb-log:server:CreateLog", "shops", "Shop item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
	if Player.PlayerData.metadata["injail"] >= 1 then
		TriggerEvent("Thx:Server:UpdateFoodItemsAmount", 'remove', fromAmount, itemData.name)
	end
else
	TriggerClientEvent('QBCore:Notify', src, Lang:t("notify.notencash"), "error")
end

# Advanced Prison. For any questions please contact THX#4480 here: here https://discord.gg/jYZuWYjfvq.

This script is using escrow encryption. shared.lua client/open.lua and server/server.lua are open for you to edit and configure to your preferences

PREVIEW HERE: https://youtu.be/iJnzHxUKRv0

This completely configurable script consist of:
● Fully configured prison for gabz custom prison mlo. 

● Runs at 0.0 ms resmon.

● This script is completely open source other then client.lua. There is a client/open,lua i can always add more to the open.lua upon request.

●  0 known scuff. Was tested over and over to plug every issue that was found.

●  Peds placed around the prison for various prison work and prison shops. 

●  Drug crafting system in prison. Add 'ass-meth' to your drug sales script to maximize use of the prison. 

●  4 different work opportunities in prison to reduce your sentence as well as a fully fleshed out prison break heist with multiple progression steps. 

●  Working infirmary. Target the desk to be placed in a bed and healed. 

●  Over a dozen immersive prison spawns with emotes on the spawn. Configurable


Things that still need to be done consist of:

● Add a config option for base game and standard prison MLOs

# Prison Break Progression:

● Search lunch table chairs inside of prison cell area for a magnet stick.

● Find the hole in the wall in the yoga room and use the magnet to find a set of tower keys

● Take the keys to guard tower 5 where you will have to knock out and loot a guard. 

● The guard will have a keycard, radio, charging cable and lighter. Take the keycard to the infirmary lab and loot the shelves for ass-meth supplies

● There will be a toilet on the second floor of the prison cells where you can cook ass-meth with supplies found in the infirmary. Random client sided toilet out of all 14 cells every time the resource restarts. 'Config.CookAssMeth' can be found in the shared.lua and the client/open.lua

● You can use ass-meth as a currency at the "Jeph" ped to buy a dead cellphone and a charging brick. If you have the dead phone the brick and the charging cable you can use the brick to get a charged phone. 

● Use charged phone to break into security room in the cells and install a virus onto the prisons security system. 

● Use your radio to get help someone on the outside to trigger the virus on the electrical box that is attached to the builder adjacent to the prison. 

Change Config.PoliceJobScript and Config.EMSJobScript in the shared.lua
The rest of the instructions for the configurations are listed next to their respective configs in the shared.lua

Requirements consist of:
qb-core
ps-ui (included in zip)
+set sv_enforceGameBuild 2372 or higher (older game builds may work but this oen for sure works)