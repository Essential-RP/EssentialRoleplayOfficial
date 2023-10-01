local QBCore = exports['qb-core']:GetCoreObject()

-- local TimeOuts = {
--   [1] = false,
--   [2] = false,
--   [3] = false
-- }

local CachedPoliceAmount = {}
local Flags = {}

local HackCoolDown = false

-------------------------------- FUNCTIONS --------------------------------
local math = math
local os = os
local function randomNum(min, max)
  math.randomseed(os.time())
  return math.floor((math.random() * (max - min) + min) + 0.5)
end

local function exploitBan(id, reason)
  MySQL.insert('INSERT INTO bans (name, license, discord, ip, reason, expire, bannedby) VALUES (?, ?, ?, ?, ?, ?, ?)',
    {
      GetPlayerName(id),
      QBCore.Functions.GetIdentifier(id, 'license'),
      QBCore.Functions.GetIdentifier(id, 'discord'),
      QBCore.Functions.GetIdentifier(id, 'ip'),
      reason,
      2147483647,
      'essential-jewelheistcustom'
    }
  )
  TriggerEvent('qb-log:server:CreateLog', 'jewellery', 'Player Banned', 'red',
  string.format('%s was banned by %s for %s', GetPlayerName(id), 'essential-jewelheistcustom', reason), true)
  DropPlayer(id, 'You were permanently banned by the server for: Exploiting')
end

-------------------------------- EVENTS --------------------------------

RegisterServerEvent('essential-jewelheistcustom:server:RemoveDoorItem', function(door)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local item = not door and Config.DoorItem or Config.BackRoom.Item
  if not Player then return end
  Player.Functions.RemoveItem(item, 1)
end)

RegisterServerEvent('essential-jewelheistcustom:server:RemoveBackitem', function(door)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local item = Config.HackItem
  if not Player then return end
  Player.Functions.RemoveItem(item, 1)
end)

RegisterServerEvent('essential-jewelheistcustom:server:SetVitrineState', function(stateType, state, k)
  if stateType == 'isBusy' and type(state) == 'boolean' and Config.Vitrines[k] then
    Config.Vitrines[k][stateType] = state
    TriggerClientEvent('essential-jewelheistcustom:client:SetVitrineState', -1, stateType, state, k)
  end
end)

RegisterServerEvent('essential-jewelheistcustom:server:SetNecklaceState', function(stateType, state, k)
  if stateType == 'isBusy' and type(state) == 'boolean' and Config.Necklacecases[k] then
    Config.Necklacecases[k][stateType] = state
    TriggerClientEvent('essential-jewelheistcustom:client:SetNecklaceState', -1, stateType, state, k)
  end
end)

RegisterServerEvent('essential-jewelheistcustom:server:StoreHit', function(storeIndex, bool)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  TriggerClientEvent('essential-jewelheistcustom:client:StoreHit', -1, storeIndex, bool)
  if storeIndex == 'all' then Config.Stores[1].hacked = bool end
  for i = 1, #Config.Stores do
    if storeIndex == 'all' then
      Config.Stores[i].hit = bool
    else
      if i == storeIndex then
        Config.Stores[storeIndex].hit = bool
      end
    end
  end
end)

RegisterServerEvent('essential-jewelheistcustom:server:ToggleDoorlocks', function(store, locked, allStores, door, notSec)
  local src = source
  if door then goto door end
  if not allStores then
    if not Config.Stores[store] then return end
    if Config.DoorLock == 'qb' then
      TriggerClientEvent('qb-doorlock:client:setState', -1, src, Config.Stores[store]['Doors'].main, locked, src, false, false)
    elseif Config.DoorLock == 'ox' then
      local door = exports['ox_doorlock']:getDoorFromName('jewellery_stores ' .. Config.Stores[store]['Doors'].main) or exports['ox_doorlock']:getDoorFromName(Config.DoorGroup .. Config.Stores[store]['Doors'].main)
      TriggerEvent('ox_doorlock:setState', door.id, locked)
    elseif Config.DoorLock == 'cd' then
      TriggerClientEvent('cd_doorlock:SetDoorState_name', -1, locked, Config.Stores[store]['Doors'].main, 'Jewellery Stores')
    end
  else
    for i = 1, #Config.Stores do
      if Config.DoorLock == 'qb' then
        TriggerClientEvent('qb-doorlock:client:setState', -1, src, Config.Stores[i]['Doors'].main, locked, src, false, false)
        if not notSec then TriggerClientEvent('qb-doorlock:client:setState', -1, src, Config.Stores[i]['Doors'].sec, locked, src, false, false) end
      elseif Config.DoorLock == 'ox' then
        local main = exports['ox_doorlock']:getDoorFromName('jewellery_stores ' .. Config.Stores[i]['Doors'].main) or exports['ox_doorlock']:getDoorFromName(Config.DoorGroup .. Config.Stores[i]['Doors'].main)
        local sec = not notSec and (exports['ox_doorlock']:getDoorFromName('jewellery_stores ' .. Config.Stores[i]['Doors'].sec) or exports['ox_doorlock']:getDoorFromName(Config.DoorGroup .. Config.Stores[i]['Doors'].sec))
        TriggerEvent('ox_doorlock:setState', main.id, locked)
        if not notSec then TriggerEvent('ox_doorlock:setState', sec.id, locked) end
      elseif Config.DoorLock == 'cd' then
        TriggerClientEvent('cd_doorlock:SetDoorState_name', -1, locked, Config.Stores[i]['Doors'].main, 'Jewellery Stores')
        if not notSec then TriggerClientEvent('cd_doorlock:SetDoorState_name', -1, locked, Config.Stores[i]['Doors'].sec, 'Jewellery Stores') end
      end
    end
  end
  ::door::
  if not Config.Stores[store] or not door then return end
  if Config.DoorLock == 'qb' then
    TriggerClientEvent('qb-doorlock:client:setState', -1, src, Config.Stores[store]['Doors'].sec, locked, src, false, false)
  elseif Config.DoorLock == 'ox' then
    local door = exports['ox_doorlock']:getDoorFromName('jewellery_stores ' .. Config.Stores[store]['Doors'].sec) or exports['ox_doorlock']:getDoorFromName(Config.DoorGroup .. Config.Stores[store]['Doors'].sec)
    TriggerEvent('ox_doorlock:setState', door.id, locked)
  elseif Config.DoorLock == 'cd' then
    TriggerClientEvent('cd_doorlock:SetDoorState_name', -1, locked, Config.Stores[store]['Doors'].sec, 'Jewellery Stores')
  end
end)

RegisterServerEvent('essential-jewelheistcustom:server:NecklaceReward', function(necklaceIndex)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local cheating = false
  if not Config.Necklacecases[necklaceIndex] or Config.Necklacecases[necklaceIndex].isOpened then 
    exploitBan(src, 'Trying to trigger an exploitable event \"essential-jewelheistcustom:server:VitrineReward\"') 
    return 
  end
  if not CachedPoliceAmount[src] then DropPlayer(src, 'Exploiting') return end

  local plrPed = GetPlayerPed(src)
  local plrCoords = GetEntityCoords(plrPed)
  local necklaceCoords = Config.Necklacecases[necklaceIndex].coords
  if CachedPoliceAmount[src] >= Config.RequiredCops then
    if plrPed then
      local dist = #(plrCoords - necklaceCoords)
      if dist <= 25.0 then
        Config.Necklacecases[necklaceIndex].isOpened = true
        Config.Necklacecases[necklaceIndex].isBusy = false
        TriggerClientEvent('essential-jewelheistcustom:client:SetNecklaceState', -1, 'isOpened', true, necklaceIndex)
        TriggerClientEvent('essential-jewelheistcustom:client:SetNecklaceState', -1, 'isBusy', false, necklaceIndex)

        local reward = Config.NecklaceRewards[randomNum(1, #Config.NecklaceRewards)]
        local amount = randomNum(reward['Amounts'].min, reward['Amounts'].max)
        if Player.Functions.AddItem(reward.item, amount) then
          TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[reward.item], 'add')
          TriggerEvent('qb-log:server:CreateLog', 'donjewellery', 'Jewellery Robbery', 'red', ('**Name:** %s | **License:** ||(%s)||\n **Info:** Robbed a [Jewellery Case] and recieved (%s) %s '):format(GetPlayerName(src), Player.PlayerData.license, amount, reward.item))
        else
          TriggerClientEvent('QBCore:Notify', src, Lang:t('error.to_much'), 'error')
        end
      else
        cheating = true
      end
    end
  else
    cheating = true
  end

  if cheating then
    local license = Player.PlayerData.license
    if Flags[license] then
      Flags[license] = Flags[license] + 1
    else
      Flags[license] = 1
    end
    if Flags[license] >= 3 then
      exploitBan('Getting flagged many times from exploiting the \"essential-jewelheistcustom:server:VitrineReward\" event')
    else
      DropPlayer(src, 'Exploiting')
    end
  end
end)

RegisterServerEvent('essential-jewelheistcustom:server:VitrineReward', function(vitrineIndex)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local cheating = false
  if not Config.Vitrines[vitrineIndex] or Config.Vitrines[vitrineIndex].isOpened then 
    exploitBan(src, 'Trying to trigger an exploitable event \"essential-jewelheistcustom:server:VitrineReward\"') 
    return 
  end
  if not CachedPoliceAmount[src] then DropPlayer(src, 'Exploiting') return end

  local plrPed = GetPlayerPed(src)
  local plrCoords = GetEntityCoords(plrPed)
  local vitrineCoords = Config.Vitrines[vitrineIndex].coords
  if CachedPoliceAmount[src] >= Config.RequiredCops then
    if plrPed then
      local dist = #(plrCoords - vitrineCoords)
      if dist <= 25.0 then
        Config.Vitrines[vitrineIndex].isOpened = true
        Config.Vitrines[vitrineIndex].isBusy = false
        TriggerClientEvent('essential-jewelheistcustom:client:SetVitrineState', -1, 'isOpened', true, vitrineIndex)
        TriggerClientEvent('essential-jewelheistcustom:client:SetVitrineState', -1, 'isBusy', false, vitrineIndex)

        local reward = Config.VitrineRewards[randomNum(1, #Config.VitrineRewards)]
        local amount = randomNum(reward['Amounts'].min, reward['Amounts'].max)
        if Player.Functions.AddItem(reward.item, amount) then
          TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[reward.item], 'add')
          TriggerEvent('qb-log:server:CreateLog', 'donjewellery', 'Jewellery Robbery', 'red', ('**Name:** %s | **License:** ||(%s)||\n **Info:** Robbed a [Jewellery Case] and recieved (%s) %s '):format(GetPlayerName(src), Player.PlayerData.license, amount, reward.item))
        else
          TriggerClientEvent('QBCore:Notify', src, Lang:t('error.to_much'), 'error')
        end
      else
        cheating = true
      end
    end
  else
    cheating = true
  end

  if cheating then
    local license = Player.PlayerData.license
    if Flags[license] then
      Flags[license] = Flags[license] + 1
    else
      Flags[license] = 1
    end
    if Flags[license] >= 3 then
      exploitBan('Getting flagged many times from exploiting the \"essential-jewelheistcustom:server:VitrineReward\" event')
    else
      DropPlayer(src, 'Exploiting')
    end
  end
end)

RegisterServerEvent('essential-jewelheistcustom:server:HackReward', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local cheating = false
  if not CachedPoliceAmount[src] then DropPlayer(src, 'Exploiting') return end
  if CachedPoliceAmount[src] >= Config.RequiredCops then
    local reward = Config.BackRoom.Reward
    local chance = randomNum(1, 100)
    local amount = randomNum(Config.BackRoom.Amount.min, Config.BackRoom.Amount.max)
    if chance > Config.BackRoom.Chance then return end
    if Player.Functions.AddItem(reward, amount) then
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[reward], 'add')
      TriggerEvent('qb-log:server:CreateLog', 'donjewellery', 'Jewellery Robbery', 'red', ('**Name:** %s | **License:** ||(%s)||\n **Info:** Hacked a [Jewellery Store] and recieved (%s) %s '):format(GetPlayerName(src), Player.PlayerData.license, amount, reward))
    else
      TriggerClientEvent('QBCore:Notify', src, Lang:t('error.to_much'), 'error')
    end
  else
    cheating = true
  end

  if cheating then
    local license = Player.PlayerData.license
    if Flags[license] then
      Flags[license] = Flags[license] + 1
    else
      Flags[license] = 1
    end
    if Flags[license] >= 3 then
      exploitBan('Getting flagged many times from exploiting the \"essential-jewelheistcustom:server:HackReward\" event')
    else
      DropPlayer(src, 'Exploiting')
    end
  end
end)

-- RegisterServerEvent('essential-jewelheistcustom:server:SetTimeout', function(vitrine, necklace)
--   print("store has been hit")
--   local store = 0
--   if vitrine >= 1 and vitrine <= 20 then
--     store = 1
--     if necklace >= 1 and necklace <= 10 then
--       store = 1
--     end
--   elseif vitrine >= 21 and vitrine <= 26 then
--     store = 2
--   elseif vitrine >= 27 and vitrine <= 32 then
--     store = 3
--   end
--   if not TimeOuts[store] then
--     TimeOuts[store] = true
--     CreateThread(function()
--       Wait(Config.Timeout)
--       Config.Stores[1].hacked = false
--       for i = 1, #Config.Stores do
--         Config.Stores[i].hit = false
--       end
--       TriggerClientEvent('essential-jewelheistcustom:client:StoreHit', -1, 'all', false)
--       for i = 1, #Config.Vitrines do
--         Config.Vitrines[i].isOpened = false
--         TriggerClientEvent('essential-jewelheistcustom:client:SetVitrineState', -1, 'isOpened', false, i)
--       end
      
--       -- Reset necklace states for store 1
--       if store == 1 then
--         TriggerClientEvent('essential-jewelheistcustom:client:StoreHit', -1, 'all', false)
--         for i = 1, #Config.Necklaces do
--           Config.Necklaces[i].isOpened = false
--           TriggerClientEvent('essential-jewelheistcustom:client:SetNecklaceState', -1, 'isOpened', false, i)
--         end
--       end

--       TriggerClientEvent('essential-jewelheistcustom:client:SetAlertState', -1, false)
--       TriggerEvent('qb-scoreboard:server:SetActivityBusy', 'jewellery', false)
--       TimeOuts[store] = false
--     end)
--   end
-- end)

-------------------------------- CALLBACKS --------------------------------

QBCore.Functions.CreateCallback('essential-jewelheistcustom:server:GetCops', function(source, cb)
  local src = source
	local amount = 0
  for _, v in pairs(QBCore.Functions.GetQBPlayers()) do
    if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
      amount = amount + 1
    end
  end
  CachedPoliceAmount[src] = amount
  cb(amount)
end)

QBCore.Functions.CreateCallback('essential-jewelheistcustom:server:GetJewelleryState', function(_, cb)
  local data = {Locations = Config.Vitrines, Hacks = Config.Stores}
	cb(data)
end)

RegisterServerEvent('essential-jewelheistcustom:server:sethacktimercool', function()
  HackCoolDown = true
  local timer = Config.HackCoolDown * (60 * 1000)
  while timer > 0 do
      Wait(1000)
      timer = timer - 1000
      if timer == 0 then
        HackCoolDown = false
      end
  end
end)

QBCore.Functions.CreateCallback("essential-jewelheistcustom:server:Cooldown",function(source, cb)
    if HackCoolDown then
        cb(true)
    else
        cb(false)
    end
end)





-- QBCore.Functions.CreateCallback('essential-jewelheist:server:checkTime', function(source, cb)
--   local src = source
--   local player = QBCore.Functions.GetPlayer(src)
  
--   if (os.time() - lastrob) < Config.HackCooldown and lastrob ~= 0 then
--       local seconds = Config.HackCooldown - (os.time() - lastrob)
--       TriggerClientEvent('QBCore:Notify', src, "Cooldown Is Still Active. Try Again Later", "error")
--       cb(false)
--   else
--       lastrob = os.time()
--       start = true
--       cb(true)
--   end
-- end)