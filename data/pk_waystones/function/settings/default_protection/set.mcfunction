#> pk_waystones:settings/default_protection/set
# @input
#   $attempted_value (string): protection
#      Can be: "disabled", "enabled"
# Example: 
#   function pk_waystones:settings/default_protection/set {protection:"disabled"} 

$data modify storage pk:common temp.protection set value $(protection)

scoreboard players set $attempted_value pk.temp -1
execute if data storage pk:common temp{protection:"disabled"} run scoreboard players set $attempted_value pk.temp 0
execute if data storage pk:common temp{protection:"enabled"} run scoreboard players set $attempted_value pk.temp 1

execute if score $attempted_value pk.temp matches 0 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Bảo vệ Mặc định","color":"yellow"},{"text":"\" đã được thay đổi thành: ","color":"gray"},{"text":"Đã TẮT","color":"yellow"}]
execute if score $attempted_value pk.temp matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Bảo vệ Mặc định","color":"yellow"},{"text":"\" đã được thay đổi thành: ","color":"gray"},{"text":"Đã BẬT","color":"yellow"}]

execute if score $attempted_value pk.temp matches -1 run tellraw @s {"text":"Giá trị không hợp lệ. Nó chỉ có thể là \"disabled\" hoặc là \"enabled\"","color":"red"}

execute unless score $attempted_value pk.temp matches -1 run scoreboard players operation $pk.waystones.settings.default_protection pk.value = $attempted_value pk.temp