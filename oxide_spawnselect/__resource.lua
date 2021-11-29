resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

dependency "vrp"

auther "Flemse#1616"

client_scripts {
    "client.lua"
}

server_scripts {
    "@vrp/lib/utils.lua",
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/script.js',
    'ui/style.css',
    'ui/images/seneste.png',
	'ui/images/midtby.png',
    'ui/images/paleto.png',
    'ui/images/sandy.png'
}