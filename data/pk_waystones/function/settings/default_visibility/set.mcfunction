#> pk_waystones:settings/default_visibility/set
# @input
#   $attempted_value (string): visibility
#      Can be: "discover", "private", "public"
# Example: 
#   function pk_waystones:settings/default_visibility/set {visibility:"discover"} 

$data modify storage pk:common temp.visibility set value $(visibility)

scoreboard players set $attempted_value pk.temp -1
execute if data storage pk:common temp{visibility:"discover"} run scoreboard players set $attempted_value pk.temp 0
execute if data storage pk:common temp{visibility:"private"} run scoreboard players set $attempted_value pk.temp 1
execute if data storage pk:common temp{visibility:"public"} run scoreboard players set $attempted_value pk.temp 2

execute if score $attempted_value pk.temp matches 0 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Trạng thái Mặc định","color":"yellow"},{"text":"\" đã được đặt thành: ","color":"gray"},{"text":"Có Thể Tìm Thấy","color":"yellow"}]
execute if score $attempted_value pk.temp matches 1 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Trạng thái Mặc định","color":"yellow"},{"text":"\" đã được đặt thành: ","color":"gray"},{"text":"Không Công Khai","color":"yellow"}]
execute if score $attempted_value pk.temp matches 2 run tellraw @s [{"text":"Thiết đặt \"","color":"gray"},{"text":"Trạng thái Mặc định","color":"yellow"},{"text":"\" đã được đặt thành: ","color":"gray"},{"text":"Công Khai","color":"yellow"}]

execute if score $attempted_value pk.temp matches -1 run tellraw @s {"text":"Giá trị không hợp lệ. Nó chỉ có thể là \"discover\", \"private\" hoặc là \"public\"","color":"red"}

execute unless score $attempted_value pk.temp matches -1 run scoreboard players operation $pk.waystones.settings.default_visibility pk.value = $attempted_value pk.temp