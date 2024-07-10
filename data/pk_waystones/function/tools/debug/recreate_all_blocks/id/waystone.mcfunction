#> pk_waystones:tools/debug/recreate_all_blocks/id/waystone

# Replace waystone
data modify storage pk:common temp.waystone set from storage pk:common debug.recreate.block
function pk_waystones:blocks/waystone/place/replace/run