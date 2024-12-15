#> pk_waystones:settings/display_nameplates/false

# Cancel process if setting is already set on the attempted value
execute unless score $pk.waystones.settings.display_nameplates pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"red"},{"text":"Name Above","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"false","color":"yellow"}]
execute if score $pk.waystones.settings.display_nameplates pk.value matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Name Above","color":"yellow"},{"text":"\" đã được thay đổi thành: ","color":"gray"},{"text":"false","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.waystones.settings.display_nameplates pk.value 0

# Force currently loaded waystones to update
execute as @e[type=marker,tag=pk.waystones.waystone.controller] at @s run function pk_waystones:blocks/waystone/main/on_entity_load