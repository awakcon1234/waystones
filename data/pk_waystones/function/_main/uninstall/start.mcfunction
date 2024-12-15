#> pk_waystones:_main/uninstall/start

tag @s add pk.waystones.uninstaller
tellraw @s [{"text": "Đang bắt đầu gỡ cài đặt ","color": "gray"},{"text": "KawaMood's Waystones","color": "aqua","bold": true},{"text": "...","color": "gray"}]
execute store result score $pk.waystones.uninstall.waystones.length pk.value run data get storage pk:waystones database.waystones
data modify storage pk:waystones uninstall.waystones set from storage pk:waystones database.waystones
execute if score $pk.waystones.uninstall.waystones.length pk.value matches 0 run function pk_waystones:_main/uninstall/stop
execute if score $pk.waystones.uninstall.waystones.length pk.value matches 1.. run function pk_waystones:_main/uninstall/1