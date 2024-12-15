#> pk_waystones:_main/load
# Main load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define storage
#   pk:common | Used to store installed PK Datapacks names and version and for temp data manipulation
#   pk:waystones database | Database of Waystones
#declare storage pk:common
#declare storage pk:waystones

# Initialize PK data packs storage if needed
execute unless data storage pk:common installed_datapacks[{}] run data modify storage pk:common installed_datapacks set value []

# Add current data pack into the PK data packs storage if needed
execute unless data storage pk:common installed_datapacks[{id:"waystones"}] run data modify storage pk:common installed_datapacks append value {name:"Waystones",id:"waystones"}

# Initialize the storage used to store Waystones data
execute unless data storage pk:waystones database.waystones[{}] run data modify storage pk:waystones database.waystones set value []
execute unless data storage pk:waystones database.players[{}] run data modify storage pk:waystones database.players set value []
execute unless data storage pk:waystones database.blacklist.dimensions[{}] run function pk_waystones:_main/install/initialize_blacklisted_dimensions

# Clear temp
data remove storage pk:common temp

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define objectives that are common to each PK data pack:
#   pk.temp only concerns temp values that can be cleared at any time without risks.
#   pk.value is used for fixed values and variable settings, and won't be cleared on uninstallation until there is no PK data pack anymore.
scoreboard objectives add pk.temp dummy
scoreboard objectives add pk.value dummy
scoreboard objectives add pk.custom_block.component.id dummy
scoreboard objectives add pk.custom_block.interaction.id dummy

# Define objective that are specific to the current data pack
#   Tracking players actions:
scoreboard objectives add pk.waystones.mined.barrel mined:barrel
scoreboard objectives add pk.waystones.leave_game custom:leave_game
scoreboard objectives add pk.waystones.in_fight dummy
#   Used for Waystones functioning:
scoreboard objectives add pk.waystones.page dummy
scoreboard objectives add pk.waystones.animations.timer dummy
#   Used to link players with their vehicle or pets
scoreboard objectives add pk.waystones.group.id dummy
#   Used to allow a player to change its ability to see coordinates from the Waystones GUI (safety for video makers):
scoreboard objectives add pk.waystones.hide_coordinates trigger
#   Used to store cooldown before a player can tp to another waystone
scoreboard objectives add pk.waystones.tp_cooldown dummy
#   Used to store gametime to some entities to know when they were loaded last time
scoreboard objectives add pk.waystones.gametime dummy

# Consts
scoreboard players set $-1 pk.value -1
scoreboard players set $18 pk.value 18
scoreboard players set $20 pk.value 20

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Packages:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Air toggling
function pk_waystones:packages/air_toggling/load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Updates:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
function pk_waystones:_main/update/_run

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Logs:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{"text": "Đã tải ","color": "yellow"},{"text": "KawaMood's Waystones ","color": "aqua","bold": true},{"text": "(V.","color": "aqua"},{"nbt":"installed_datapacks[{id:\"waystones\"}].version", "storage": "pk:common","color": "aqua"},{"text": ")","color": "aqua"},{"text": " thành công"}]