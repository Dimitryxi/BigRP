# only change them if you're using a server with multiple network interfaces
endpoint_add_tcp "0.0.0.0:30120"
endpoint_add_udp "0.0.0.0:30120"

#DATABASE
set mysql_connection_string "server-87.244.197.237;database-essentialmode;userid-root;password-"
set es_enebleCustomData 1


# These resources will start by default
ensure mapmanager
ensure chat
ensure spawnmanager
ensure sessionmanager
ensure fivem
ensure hardcap
ensure rconlog
ensure scoreboard

#ESX
start essentialmode
start mysql-async
start esplugin_mysql
start es_extended
start async
start fxmigrant




sv_scriptHookAllowed 1

# change this
rcon_password silver123

sv_hostname "BigRP"

# nested configs!
#exec server_internal.cfg

# loading a server icon (96x96 PNG file)
#load_server_icon myLogo.png

# convars for use from script
set temp_convar "hey world!"

# disable announcing? clear out the master by uncommenting this
#sv_master1 "

# want to only allow players authenticated with a third-party provider like Steam?
#sv_authMaxVariance 1
#sv_authMinTrust 5

# add system admins
add_ace group.admin command allow # allow all commands
add_ace group.admin command.quit deny # but don't allow quit
add_principal identifier.steam:110000112345678 group.admin # add the admin to the group

# remove the # to hide player endpoints in external log output
#sv_endpointprivacy true

# server slots limit (must be between 1 and 31)
sv_maxclients 32

# license key for server (https://keymaster.fivem.net)
sv_licenseKey "8vnuhc3m5dib517a11ktflhtif397gjl"
