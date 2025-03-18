# Raycast code by sourceblock https://sourceblock.net/beta/en-US/tools/data-packs/raycasting-generator

#Mark the ray as having found a block.
scoreboard players set #hit vdvcasttemp 1

# Upgrade noteblock if not already upgraded
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,tag=nb_interaction,distance=..0.1] run function quinnsbetternoteblocks:actions/upgrade/check_above