#Mark the ray as having found a block.
scoreboard players set #hit vdvcasttemp 1

#Running custom commands since the block was found.
playsound minecraft:block.lever.click player @s
# If there's a marker armor stand within 0.1 blocks of this position, run the function.
execute align xyz positioned ~0.5 ~1.25 ~0.5 run execute as @e[type=text_display,tag=nb_marker,distance=..0.1] run function quinnsbetternoteblocks:actions/increase_octave

# If there isn’t one, spawn a new marker armor stand.
execute align xyz positioned ~0.5 ~1.25 ~0.5 unless entity @e[type=text_display,tag=nb_marker,distance=..0.1] run function quinnsbetternoteblocks:actions/upgrade/check_above

#execute as entity @e[distance=0,type=armor_stand]
#execute if entity @e[type=minecraft:armor_stand,x=,y=,z=,distance=..1] run say armor stand exists!
#execute unless entity @e[type=minecraft:armor_stand,x=,y=,z=,distance=..1] run say no armor stand