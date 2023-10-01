fx_version 'cerulean'
game 'gta5'

name 'Yonni Containers'
author 'Yonni'
description 'Yonni Container Robberies'

version '1.0.1'

shared_script 'config.lua'

server_script 'server/*.lua'

client_scripts {
    'client/*.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/CircleZone.lua',
}

dependencies {
    'ps-ui'
}

lua54 'yes'

