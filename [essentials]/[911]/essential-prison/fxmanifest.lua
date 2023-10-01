lua54 'yes'
fx_version 'cerulean'
game 'gta5'

author 'Essential Development'
description 'Essential-Prison'
version '1.0.0'

dependencies {
    "PolyZone"
}

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua'
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

shared_script {
    '@qb-core/shared/locale.lua',
    'shared.lua',
    'locale/en.lua',
    'locales/en.lua'
}

escrow_ignore {
    'shared.lua',
    'client/*.lua',
    'server/*.lua',
    'locales/en.lua',
}
dependency '/assetpacks'