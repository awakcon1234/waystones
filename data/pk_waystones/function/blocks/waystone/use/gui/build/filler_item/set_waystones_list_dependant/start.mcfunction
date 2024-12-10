#> pk_waystones:blocks/waystone/use/gui/build/filler_item/set_waystones_list_dependant/start
# @requires
#   $gui.page.waystones.count pk.temp: count of waystones on the GUI current page
#      Set during GUI build
#          @within function pk_waystones:blocks/waystone/use/gui/build/waystones_list/buttons/waystones/start
# @input
#   $slot (int): slot where the filler should be set

# Set the slot param
$data modify storage pk:common temp.args.slot set value $(slot)

# Set the waystones_count param
execute store result storage pk:common temp.args.waystones_count int 1 run scoreboard players get $gui.page.waystones.count pk.temp
function pk_waystones:blocks/waystone/use/gui/build/filler_item/set_waystones_list_dependant/prepare_param_custom_model_data with storage pk:common temp.args

# Set filler
function pk_waystones:blocks/waystone/use/gui/build/filler_item/set_regular with storage pk:common temp.args