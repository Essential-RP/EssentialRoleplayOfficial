fx_version "cerulean"
lua54 'yes'

games { "gta5", "rdr3" }

ui_page 'money/money.html'

server_script "sv_main.lua"
client_script "cl_main.lua"

files {
  'money/money.html',
  'money/money.css',
  'money/money.js',
}