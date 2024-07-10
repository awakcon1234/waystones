#> pk_waystones:blocks/waystone/place/components/skins/parts/middle/default_set

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $temp pk.custom_block.component.id

# Set data
$data merge entity @s {Tags:["pk.custom_block","pk.waystones.waystone","pk.waystones.waystone.component","pk.part.middle","pk.part.middle.$(i)"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"$(value)"}]}}},transformation:{translation:$(translation),scale:[1.002f,1.002f,1.002f]}}