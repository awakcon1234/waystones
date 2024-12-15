#> pk_waystones:settings/tp_cooldown/get

# Logs
execute if score $pk.waystones.settings.tp_cooldown pk.value matches 1.. run tellraw @s [{"text":"TP cooldown","color":"yellow"},{"text":" hiện đang được đặt là ","color":"gray"},{"score":{"name":"$pk.waystones.settings.tp_cooldown","objective": "pk.value"},"color":"yellow"},{"text":" tick","color":"gray"}]
execute unless score $pk.waystones.settings.tp_cooldown pk.value matches 1.. run tellraw @s [{"text":"TP cooldown","color":"yellow"},{"text":" hiện ","color":"gray"},{"text":"Đã TẮT","color":"yellow"}]