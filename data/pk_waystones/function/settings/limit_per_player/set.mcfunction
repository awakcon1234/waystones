#> pk_waystones:settings/limit_per_player/set
# @input
#   count: count
# Example: 
#   function pk_waystones:settings/limit_per_player/set {count:1}

$scoreboard players set $pk.waystones.settings.limit_per_player pk.value $(count)

# Limited
execute if score $pk.waystones.settings.limit_per_player pk.value matches 0.. run tellraw @s [{"text":"Đã đổi giới hạn số đá dịch chuyển thành ","color":"gray"},{"score":{"name":"$pk.waystones.settings.limit_per_player","objective":"pk.value"},"color":"yellow"},{"text":" cho mỗi người chơi","color":"gray"}]
# Unlimited
execute unless score $pk.waystones.settings.limit_per_player pk.value matches 0.. run tellraw @s [{"text":"Đã loại bỏ giới hạn số đá dịch chuyển cho mỗi người chơi","color":"gray"}]