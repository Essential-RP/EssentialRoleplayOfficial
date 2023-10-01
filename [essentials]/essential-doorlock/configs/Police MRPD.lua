

-- cell #1 created by yax
Config.DoorList['Police MRPD-cell #1'] = {
    fixText = false,
    objYaw = 0.0,
    distance = 1,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    locked = true,
    objCoords = vec3(477.912598, -1012.188660, 26.480055),
    doorRate = 1.0,
    doorType = 'door',
    objName = -53345114,
}

-- cell #2 created by yax
Config.DoorList['Police MRPD-cell #2'] = {
    fixText = false,
    objYaw = 0.0,
    distance = 1,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    locked = true,
    objCoords = vec3(480.912811, -1012.188660, 26.480055),
    doorRate = 1.0,
    doorType = 'door',
    objName = -53345114,
}

-- cell #3 created by yax
Config.DoorList['Police MRPD-cell #3'] = {
    fixText = false,
    objYaw = 0.0,
    distance = 1,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    locked = true,
    objCoords = vec3(483.912720, -1012.188660, 26.480055),
    doorRate = 1.0,
    doorType = 'door',
    objName = -53345114,
}

-- cell #4 created by yax
Config.DoorList['Police MRPD-cell #4'] = {
    fixText = false,
    objYaw = 0.0,
    distance = 1,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    locked = true,
    objCoords = vec3(486.913116, -1012.188660, 26.480055),
    doorRate = 1.0,
    doorType = 'door',
    objName = -53345114,
}

-- cell #5 created by yax
Config.DoorList['Police MRPD-cell #5'] = {
    doorRate = 1.0,
    locked = true,
    doorType = 'door',
    objName = -53345114,
    objYaw = 180.00001525879,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    fixText = false,
    distance = 1,
    objCoords = vec3(484.176422, -1007.734375, 26.480055),
}

-- lawyer cell exit created by yax
Config.DoorList['Police MRPD-lawyer cell exit'] = {
    locked = true,
    doorRate = 1.0,
    objName = -53345114,
    objCoords = vec3(481.008362, -1004.117981, 26.480055),
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    fixText = false,
    objYaw = 180.00001525879,
    distance = 1,
    doorType = 'door',
}

-- Interegation Main Door created by yax
Config.DoorList['Police MRPD-Interegation Main Door'] = {
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorType = 'double',
    doors = {
        {objName = 149284793, objYaw = 180.00001525879, objCoords = vec3(482.068573, -997.909973, 26.406504)},
        {objName = 149284793, objYaw = 0.0, objCoords = vec3(479.663757, -997.909973, 26.406504)}
    },
    doorRate = 1.0,
    locked = true,
    distance = 1,
}

-- Interegation Door 2 created by yax
Config.DoorList['Police MRPD-Interegation Door 2'] = {
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorType = 'double',
    doors = {
        {objName = 149284793, objYaw = 89.999977111816, objCoords = vec3(479.062408, -987.437561, 26.405483)},
        {objName = 149284793, objYaw = 270.00003051758, objCoords = vec3(479.062408, -985.032349, 26.405483)}
    },
    locked = true,
    doorRate = 1.0,
    distance = 1,
}

-- EvidenceRoom created by yax
Config.DoorList['Police MRPD-EvidenceRoom'] = {
    distance = 2,
    doorType = 'door',
    objYaw = 134.97177124023,
    objCoords = vec3(475.832336, -990.483948, 26.405483),
    objName = -692649124,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorRate = 1.0,
    locked = true,
    fixText = false,
}

-- Evidence and Identification Door created by yax
Config.DoorList['Police MRPD-Evidence and Identification Door'] = {
    locked = false,
    doors = {
        {objName = -96679321, objYaw = 270.00003051758, objCoords = vec3(471.375305, -987.437378, 26.405483)},
        {objName = -1406685646, objYaw = 270.00003051758, objCoords = vec3(471.375305, -985.031921, 26.405483)}
    },
    doorType = 'double',
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    distance = 2,
    doorRate = 1.0,
}

-- Garage To Jail Cells Main Door created by yax
Config.DoorList['Police MRPD-Garage To Jail Cells Main Door'] = {
    locked = false,
    doors = {
        {objName = -288803980, objYaw = 0.0, objCoords = vec3(467.522217, -1000.543701, 26.405483)},
        {objName = -288803980, objYaw = 180.00001525879, objCoords = vec3(469.927368, -1000.543701, 26.405483)}
    },
    doorType = 'double',
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    distance = 2,
    doorRate = 1.0,
}

-- Parking Garage Door 1 created by Rickey
Config.DoorList['Police MRPD-Parking Garage Door 1'] = {
    locked = true,
    doorType = 'door',
    objYaw = 89.870010375977,
    fixText = false,
    objCoords = vec3(464.156555, -997.509277, 26.370705),
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    distance = 2,
    objName = 1830360419,
    doorRate = 1.0,
}

-- Outback Impound Area created by yax
Config.DoorList['Police MRPD-Outback Impound Area'] = {
    distance = 2,
    doors = {
        {objName = -692649124, objYaw = 0.0, objCoords = vec3(467.368622, -1014.406006, 26.483816)},
        {objName = -692649124, objYaw = 180.00001525879, objCoords = vec3(469.774261, -1014.406006, 26.483816)}
    },
    locked = true,
    doorRate = 1.0,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorType = 'double',
}

-- Parking garage door 2 created by Rickey
Config.DoorList['Police MRPD-Parking garage door 2'] = {
    doorRate = 1.0,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    objYaw = 269.79000854492,
    distance = 2,
    fixText = false,
    locked = true,
    objCoords = vec3(464.159058, -974.665588, 26.370705),
    doorType = 'door',
    objName = 1830360419,
}

-- Enter Jailcells MAIN FRONT created by yax
Config.DoorList['Police MRPD-Enter Jailcells MAIN FRONT'] = {
    doorRate = 1.0,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    objYaw = 270.13998413086,
    distance = 2,
    fixText = false,
    locked = true,
    objCoords = vec3(476.615692, -1008.875427, 26.480055),
    doorType = 'door',
    objName = -53345114,
}

-- garage door 1 created by Rickey
Config.DoorList['Police MRPD-garage door 1'] = {
    doorRate = 1.0,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    objYaw = 0.0,
    distance = 6,
    fixText = false,
    locked = true,
    objCoords = vec3(452.300507, -1000.771667, 26.696609),
    doorType = 'garage',
    objName = 2130672747,
}

-- Processing,Mugshot,Cells created by yax
Config.DoorList['Police MRPD-Processing,Mugshot,Cells'] = {
    distance = 2,
    doors = {
        {objName = 149284793, objYaw = 89.999977111816, objCoords = vec3(471.375824, -1010.197876, 26.405483)},
        {objName = 149284793, objYaw = 270.19003295898, objCoords = vec3(471.367859, -1007.793396, 26.405483)}
    },
    locked = true,
    doorRate = 1.0,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorType = 'double',
}

-- garage door 2 created by Rickey
Config.DoorList['Police MRPD-garage door 2'] = {
    doorRate = 1.0,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    objYaw = 0.0,
    distance = 6,
    fixText = false,
    locked = true,
    objCoords = vec3(431.411926, -1000.771667, 26.696609),
    doorType = 'garage',
    objName = 2130672747,
}

-- Door 69 created by yax
Config.DoorList['Police MRPD-Door 69'] = {
    locked = true,
    doors = {
        {objName = -1547307588, objYaw = 180.00001525879, objCoords = vec3(443.061768, -998.746216, 30.815304)},
        {objName = -1547307588, objYaw = 0.0, objCoords = vec3(440.739197, -998.746216, 30.815304)}
    },
    distance = 2,
    doorType = 'double',
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorRate = 1.0,
}

-- lobby door 1 created by yax
Config.DoorList['Police MRPD-lobby door 1'] = {
    locked = true,
    doorRate = 1.0,
    objCoords = vec3(440.520081, -986.233459, 30.823193),
    objYaw = 180.00001525879,
    objName = -96679321,
    distance = 2,
    doorType = 'door',
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    fixText = false,
}

-- lobby door 2 created by Rickey
Config.DoorList['Police MRPD-lobby door 2'] = {
    locked = true,
    doorRate = 1.0,
    objCoords = vec3(440.520081, -977.601074, 30.823193),
    objYaw = 0.0,
    objName = -1406685646,
    distance = 2,
    doorType = 'door',
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    fixText = false,
}

-- Captain Room created by yax
Config.DoorList['Police MRPD-Captain Room'] = {
    fixText = false,
    doorType = 'door',
    locked = true,
    distance = 2,
    objCoords = vec3(458.654327, -990.649780, 30.823193),
    objName = -96679321,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    objYaw = 270.00003051758,
    doorRate = 1.0,
}

-- Side door 2 created by Rickey
Config.DoorList['Police MRPD-Side door 2'] = {
    doors = {
        {objName = -1547307588, objYaw = 0.0, objCoords = vec3(455.886169, -972.254272, 30.815308)},
        {objName = -1547307588, objYaw = 180.00001525879, objCoords = vec3(458.208740, -972.254272, 30.815308)}
    },
    doorRate = 1.0,
    locked = true,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorType = 'double',
    distance = 2,
}

-- MCD created by yax
Config.DoorList['Police MRPD-MCD'] = {
    doors = {
        {objName = -288803980, objYaw = 89.999977111816, objCoords = vec3(469.440613, -987.437683, 30.823193)},
        {objName = -288803980, objYaw = 270.00003051758, objCoords = vec3(469.440613, -985.031311, 30.823193)}
    },
    doorRate = 1.0,
    locked = true,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorType = 'double',
    distance = 2,
}

-- Heli Pad created by Rickey
Config.DoorList['Police MRPD-Heli Pad'] = {
    fixText = false,
    doorType = 'door',
    locked = true,
    distance = 2,
    objCoords = vec3(464.308563, -984.528442, 43.771240),
    objName = -692649124,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    objYaw = 89.999977111816,
    doorRate = 1.0,
}

-- Labortory created by yax
Config.DoorList['Police MRPD-Labortory'] = {
    doors = {
        {objName = -96679321, objYaw = 270.00003051758, objCoords = vec3(479.753387, -988.620361, 30.823193)},
        {objName = -1406685646, objYaw = 270.00003051758, objCoords = vec3(479.753387, -986.215088, 30.823193)}
    },
    doorRate = 1.0,
    locked = true,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    doorType = 'double',
    distance = 2,
}

-- armory door 2 created by Rickey
Config.DoorList['Police MRPD-armory door 2'] = {
    fixText = false,
    doorType = 'door',
    locked = true,
    distance = 2,
    objCoords = vec3(487.437836, -1000.189270, 30.786972),
    objName = -692649124,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    objYaw = 181.28001403809,
    doorRate = 1.0,
}

-- Armory door 1 created by yax
Config.DoorList['Police MRPD-Armory door 1'] = {
    fixText = false,
    doorType = 'door',
    locked = true,
    distance = 2,
    objCoords = vec3(479.750732, -999.629028, 30.789167),
    objName = -692649124,
       authorizedJobs = { ['sast'] = 0, ['police'] = 0, ['bcso'] = 0, ['corrections'] = 0,['troopers'] = 0 },
    objYaw = 89.999977111816,
    doorRate = 1.0,
}