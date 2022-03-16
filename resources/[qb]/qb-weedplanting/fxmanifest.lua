fx_version 'cerulean'
game 'gta5'

author 'Grudge & Snipe'
description 'Script for Planting Weed Plants anywhere in the soil'
version '1.1.0'

lua54 'yes'

ui_page "html/index.html"

shared_scripts{
	'config.lua',
}

server_scripts {
	'server/main.lua',
	'server/customise_server.lua',
}

client_scripts {
	'client/main.lua',
}

files {
    'html/index.html',
    'html/assets/css/*.css',
    'html/assets/js/*.js',
}

escrow_ignore{
	'config.lua',
	'server/customise_server.lua',
}


dependency 'qb-core'
dependency '/assetpacks'