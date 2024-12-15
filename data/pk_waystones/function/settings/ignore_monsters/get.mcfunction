#> pk_waystones:settings/ignore_monsters/get

# If true
execute unless score $pk.waystones.settings.ignore_monsters pk.value matches 0 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Ignore Monsters","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"true","color":"yellow"}]
# If false
execute if score $pk.waystones.settings.ignore_monsters pk.value matches 0 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Ignore Monsters","color":"yellow"},{"text":"\" hiện đang được đặt thành: ","color":"gray"},{"text":"false","color":"yellow"}]