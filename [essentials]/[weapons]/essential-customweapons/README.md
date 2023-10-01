#######################
-- Tates Weapon Pack --
#######################

--<!>-- qb-core/shared/items.lua --<!>--
```lua
    --<!>-- Essential Weapons --<!>--
    ['weapon_m9']                       = {['name'] = 'weapon_m9',                         ['label'] = 'Beretta M9',                ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_m9a3.png',                 ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
    ['weapon_fnx45']                    = {['name'] = 'weapon_fnx45',                      ['label'] = 'FN FNX-45',                 ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_fnx45.png',                ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
    ['weapon_browning']                 = {['name'] = 'weapon_browning',                   ['label'] = 'Browning Hi-Power',         ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_browning.png',             ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
    ['weapon_l5']                       = {['name'] = 'weapon_l5',                         ['label'] = 'Desert Eagle',              ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_l5.png',                   ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
    ['weapon_springfield']              = {['name'] = 'weapon_springfield',                ['label'] = 'SpringField 1911',          ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_springfield.png',          ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
    ['weapon_glock17']                  = {['name'] = 'weapon_glock17',                    ['label'] = 'Glock 17 (PD Issued)',      ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_glock17.png',              ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
```

--<!>-- qb-core/shared/weapons.lua --<!>--
```lua
    --<!>-- Essential Weapons --<!>--
	[`weapon_m9`] 				 	 = {['name'] = 'weapon_m9', 			['label'] = 'Beretta M9',				['weapontype'] = 'Pistol',	['ammotype'] = 'AMMO_PISTOL',	['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_fnx45`] 				 = {['name'] = 'weapon_fnx45', 			['label'] = 'FN FNX-45',				['weapontype'] = 'Pistol',	['ammotype'] = 'AMMO_PISTOL',	['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_browning`]				 = {['name'] = 'weapon_browning',		['label'] = 'Browning Hi-Power',		['weapontype'] = 'Pistol',	['ammotype'] = 'AMMO_PISTOL',	['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_l5`]				 	 = {['name'] = 'weapon_l5',				['label'] = 'Desert Eagle',				['weapontype'] = 'Pistol',	['ammotype'] = 'AMMO_PISTOL',	['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_springfield`]			 = {['name'] = 'weapon_springfield',	['label'] = 'SpringField 1911',			['weapontype'] = 'Pistol',	['ammotype'] = 'AMMO_PISTOL',	['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_glock17`]			 	 = {['name'] = 'weapon_glock17',		['label'] = 'Glock 17 (PD Issued)',		['weapontype'] = 'Pistol',	['ammotype'] = 'AMMO_PISTOL',	['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
```

--<!>-- essential-weapons/config.lua --<!>--
```lua
    --<!>-- Essential Weapons --<!>--
    ['weapon_m9']                    = 0.15,
    ['weapon_fnx45']                 = 0.15,
    ['weapon_browning']              = 0.15,
    ['weapon_l5']                    = 0.15,
    ['weapon_springfield']           = 0.15,
    ['weapon_glock17']               = 0.15,
```

--<!>-- ps-dispatch/client/events.lua --<!>--
```lua
    --<!>-- Essential Weapons --<!>--
    [GetHashKey('weapon_m9')]           = 'CLASS 1: Beretta M9',
    [GetHashKey('weapon_fnx45')]        = 'CLASS 1: FN FNX-45',
    [GetHashKey('weapon_browning')]     = 'CLASS 1: Browning',
    [GetHashKey('weapon_l5')]           = 'CLASS 1: Desert Eagle',
    [GetHashKey('weapon_springfield')]  = 'CLASS 1: Springfield 1911',
    [GetHashKey('weapon_glock17')]      = 'CLASS 1: Glock 17 (PD Issued)',
```

--<!>-- qb-smallrecources/client/weapdraw.lua --<!>--
```lua
    --<!>-- Essential Weapons --<!>--
    'WEAPON_M9',
    'WEAPON_FNX45',
    'WEAPON_BROWNING',
    'WEAPON_l5',
    'WEAPON_SPRINGFIELD',
    'WEAPON_GLOCK17',
```
