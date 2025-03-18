# Raycast code by sourceblock https://sourceblock.net/beta/en-US/tools/data-packs/raycasting-generator

# Run a function if a block was successfully detected.
execute if block ~ ~ ~ #quinnsbetternoteblocks:blocks run function quinnsbetternoteblocks:raycast/raycast_hit_block
scoreboard players add #distance vdvcasttemp 1

# If the raycast failed, change wrench mode
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches 46.. run function quinnsbetternoteblocks:actions/change_mode/wrench_change_mode

#Advance forward and run the ray again if no entity and/or block was found.
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..45 positioned ^ ^ ^0.1 run function quinnsbetternoteblocks:raycast/raycast_ray