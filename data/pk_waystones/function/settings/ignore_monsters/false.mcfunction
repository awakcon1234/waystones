#> pk_waystones:settings/ignore_monsters/false

# Logs
execute if score $pk.waystones.settings.ignore_monsters pk.value matches 0 run tellraw @s [{"text":"Thiết đặt \"","color":"red"},{"text":"Ignore Monsters","color":"yellow"},{"text":"\" hiện đã được đặt là ","color":"red"},{"text":"false","color":"yellow"}]
execute unless score $pk.waystones.settings.ignore_monsters pk.value matches 0 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Ignore Monsters","color":"yellow"},{"text":"\" đã được thay đổi thành: ","color":"gray"},{"text":"false","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.waystones.settings.ignore_monsters pk.value 0