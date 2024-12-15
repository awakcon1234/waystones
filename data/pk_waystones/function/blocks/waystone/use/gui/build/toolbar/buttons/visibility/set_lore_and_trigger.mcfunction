#> pk_waystones:blocks/waystone/use/gui/build/toolbar/buttons/visibility/set_lore_and_trigger

# Disallow use if no visibility trigger could be set
execute if score $next_visibility pk.temp matches 0 run data modify storage pk:common temp.gui.item.components."minecraft:custom_data".pk_data.trigger_params.allowed set value 0b

# If Public
execute if score $next_visibility pk.temp matches 1 run data modify storage pk:common temp.gui.item.components."minecraft:lore" set value ['{"text":"Nhấn để đổi thành \\"Công Khai\\"","color":"gray","italic":false}']
execute if score $next_visibility pk.temp matches 1 run data modify storage pk:common temp.gui.item.components."minecraft:custom_data".pk_data.trigger_params.visibility set value "public"
# If Private
execute if score $next_visibility pk.temp matches 2 run data modify storage pk:common temp.gui.item.components."minecraft:lore" set value ['{"text":"Nhấn để đổi thành \\"Không Công Khai\\"","color":"gray","italic":false}']
execute if score $next_visibility pk.temp matches 2 run data modify storage pk:common temp.gui.item.components."minecraft:custom_data".pk_data.trigger_params.visibility set value "private"
# If Discover
execute if score $next_visibility pk.temp matches 3 run data modify storage pk:common temp.gui.item.components."minecraft:lore" set value ['{"text":"Nhấn để đổi thành \\"Có Thể Tìm Thấy\\"","color":"gray","italic":false}']
execute if score $next_visibility pk.temp matches 3 run data modify storage pk:common temp.gui.item.components."minecraft:custom_data".pk_data.trigger_params.visibility set value "discover"