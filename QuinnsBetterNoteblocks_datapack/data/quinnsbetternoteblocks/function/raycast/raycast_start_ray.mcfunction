# Raycast code by sourceblock https://sourceblock.net/beta/en-US/tools/data-packs/raycasting-generator

#Setting up the raycasting data.
tag @s add vdvray
scoreboard players set #hit vdvcasttemp 0
scoreboard players set #distance vdvcasttemp 0

#Activating the raycast. This function will call itself until it is done.
function quinnsbetternoteblocks:raycast/raycast_ray

#Raycasting finished, removing tag from the raycaster.
tag @s remove vdvray