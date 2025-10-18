# Called from advancement reward detect_paste_place
# As player
scoreboard players set Ghubby qbnb_pasting 1

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function quinnsbetternoteblocks:raycast/raycast_start_ray

scoreboard players set Ghubby qbnb_pasting 0

advancement revoke @s only quinnsbetternoteblocks:detect_paste_place 