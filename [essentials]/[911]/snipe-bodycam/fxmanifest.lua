fx_version 'cerulean'
game 'gta5'

author 'Grudge & Snipe'
description 'Body Cam Script (One Sync Compatibility)'
version '2.0.0'

lua54 'yes'

files {
    'ui/app.js',
    'ui/index.html',
	'ui/logo.png',
    'ui/axon.png',
}

ui_page {
    'ui/index.html'
}

shared_scripts { 
    '@ox_lib/init.lua',
	'config.lua'
}

client_scripts {
    "utils/cl_utils.lua",
    "client/cl_main.lua",
    "client/cl_customise.lua",
}

server_scripts {
    "utils/sv_utils.lua",
    "server/sv_main.lua",
    "server/sv_customise.lua",
}


escrow_ignore {
    "utils/sv_utils.lua",
    "server/sv_customise.lua",
    "utils/cl_utils.lua",
    "client/cl_customise.lua",
    'config.lua',
}

dependency '/assetpacks'