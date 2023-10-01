Config = {}

Config.OldQBCore = false -- set to true if you are using old QBCore

Config.Core = "QBCore" -- ESX or QBCore or Standalone
Config.CoreFolderName = "qb-core"  -- es_extended || qb-core || standalone

Config.CoreFolder = 'qb-core'

--[[
    * Add coordinates for locations from where the bodycams can be accessed (radius of 4 around the coordinates                                         )
]]--
Config.ComputerLocations = {
    vector3(446.74, -998.69, 34.97),
    vector3(429.15, -967.59, 29.72)
}

--[[
    * Notify Config
    * Set only one to true 
    * Config.QBCoreNotify - Uses default QBCore notify system
    * Config.okokNotify - Uses OkOkNotify system
    * Config.pNotify - Uses pNotify system

    * Config.pNotifyLayout - set layout of where the notification will show. Check the layouts below. 
    * Layouts:
                top
                topLeft
                topCenter
                topRight
                center
                centerLeft
                centerRight
                bottom
                bottomLeft
                bottomCenter
                bottomRight
    
    * Config.OkOkNotifyTitle - Title to show on okokNotify
]]--
Config.QBCoreNotify = true --Set to true if you are using base QBCore notify system
Config.ESXNotify = false -- Set to true if you are using base ESX notify system
Config.okokNotify = false -- Set to true if you are using base OKOK notify system
Config.pNotify = false

Config.pNotifyLayout = "centerRight" --more options can be found in pNotify Readme. Make sure you put the right layout name.
Config.OkOkNotifyTitle = "BodyCam" --Title that displays on okoknotify

--Format of Config.Locale
--[[
    * name = label
    * Do not alter the name (for eg. ["bodycam_on"] -> do not change this)
    * change the label (for eg. "Bodycam Turned On" can be changed to whatever you want.)
]]--
Config.Locale = {
    ["bodycam_on"] = "Bodycam Turned On",
    ["bodycam_off"] = "Bodycam Turned Off",
    ["no_active_bodycam"] = "No active Bodycams found!",
    ["should_be_fpp"] = "You Should be in FPP",
    ["invalid_location"] = "BODYCAM can be access from Control Room only!",
    ["bodycam_offline"] = "BODY-CAM is not reachable, RETRY!",
    ["should_be_onduty"] = "You should be On Duty!",
    ["emergency_services"] = "This is for emergency services only!",
    ["help_text_with_command"] = "Check Active Cam",
    ["header"] = "Active Bodycams"
}

Config.BodyCamItem = "bodycam" --item required ( check assets folder )
Config.BodyCamCommand = "bodycam" -- command to access the active bodycams

Config.JobWithAccess = { 
    ["police"] = { -- job name who can wear bodycams
        ["ui_label"] = "LSPD", -- label to show on the bodycam UI
        ["ui_image"] = "https://cdn.discordapp.com/attachments/1076279342931390524/1153545085762408538/AXON-LOGO.png", -- image to show on the bodycam UI
    },
    ["ambulance"] = {
        ["ui_label"] = "Ambulance",
        ["ui_image"] = "https://cdn.discordapp.com/attachments/704682484847345738/1066726449828081744/ems_badge.png",
    }
} --job names that can wear and access bodycams

Config.ShowJobBasedBodycams = true --show bodycams based on jobs, if false then all bodycams will be shown

Config.Menu = "qb-menu" -- "nh-context" , "qb-menu", "lib" -- you can add your own menu system in cl_customise.lua

Config.PlaySoundFromPlayer = true --play beep sound from players to nearby players if player is wearing the bodycam

----EFFECTS----

Config.SetTimecycleModifier = "CAMERA_BW" --parameter for the native `SetTimecycleModifier`
Config.SetTimecycleModifierStrength = 1.0 -- parameter for the native `SetTimecycleModifierStrength`