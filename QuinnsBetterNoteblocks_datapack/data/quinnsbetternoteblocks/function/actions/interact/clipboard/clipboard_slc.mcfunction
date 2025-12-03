# Called from nb_left_click
# As interacting player
# At note block

# Update scoreboard
execute store result score @s qbnb_rng run random value 0..23

# Random note
execute if score @s qbnb_rng matches 0 run setblock ~ ~ ~ minecraft:note_block[note=0]
execute if score @s qbnb_rng matches 1 run setblock ~ ~ ~ minecraft:note_block[note=1]
execute if score @s qbnb_rng matches 2 run setblock ~ ~ ~ minecraft:note_block[note=2]
execute if score @s qbnb_rng matches 3 run setblock ~ ~ ~ minecraft:note_block[note=3]
execute if score @s qbnb_rng matches 4 run setblock ~ ~ ~ minecraft:note_block[note=4]
execute if score @s qbnb_rng matches 5 run setblock ~ ~ ~ minecraft:note_block[note=5]
execute if score @s qbnb_rng matches 6 run setblock ~ ~ ~ minecraft:note_block[note=6]
execute if score @s qbnb_rng matches 7 run setblock ~ ~ ~ minecraft:note_block[note=7]
execute if score @s qbnb_rng matches 8 run setblock ~ ~ ~ minecraft:note_block[note=8]
execute if score @s qbnb_rng matches 9 run setblock ~ ~ ~ minecraft:note_block[note=9]
execute if score @s qbnb_rng matches 10 run setblock ~ ~ ~ minecraft:note_block[note=10]
execute if score @s qbnb_rng matches 11 run setblock ~ ~ ~ minecraft:note_block[note=11]
execute if score @s qbnb_rng matches 12 run setblock ~ ~ ~ minecraft:note_block[note=12]
execute if score @s qbnb_rng matches 13 run setblock ~ ~ ~ minecraft:note_block[note=13]
execute if score @s qbnb_rng matches 14 run setblock ~ ~ ~ minecraft:note_block[note=14]
execute if score @s qbnb_rng matches 15 run setblock ~ ~ ~ minecraft:note_block[note=15]
execute if score @s qbnb_rng matches 16 run setblock ~ ~ ~ minecraft:note_block[note=16]
execute if score @s qbnb_rng matches 17 run setblock ~ ~ ~ minecraft:note_block[note=17]
execute if score @s qbnb_rng matches 18 run setblock ~ ~ ~ minecraft:note_block[note=18]
execute if score @s qbnb_rng matches 19 run setblock ~ ~ ~ minecraft:note_block[note=19]
execute if score @s qbnb_rng matches 20 run setblock ~ ~ ~ minecraft:note_block[note=20]
execute if score @s qbnb_rng matches 21 run setblock ~ ~ ~ minecraft:note_block[note=21]
execute if score @s qbnb_rng matches 22 run setblock ~ ~ ~ minecraft:note_block[note=22]
execute if score @s qbnb_rng matches 23 run setblock ~ ~ ~ minecraft:note_block[note=23]

# Update scoreboard
execute store result score @s qbnb_rng run random value 0..3

# Random Octave
execute if score @s qbnb_rng matches 0 run function quinnsbetternoteblocks:actions/interact/clipboard/logic/paste_o1-3
execute if score @s qbnb_rng matches 1 run function quinnsbetternoteblocks:actions/interact/clipboard/logic/paste_o3-5
execute if score @s qbnb_rng matches 2 run function quinnsbetternoteblocks:actions/interact/clipboard/logic/paste_o5-7
execute if score @s qbnb_rng matches 3 run function quinnsbetternoteblocks:actions/interact/clipboard/logic/paste_o7-9

# Update octave text
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:actions/interact/tuning/logic/update_text_octave

# Playsound
execute at @s run playsound minecraft:ui.hud.bubble_pop player @s ~ ~ ~ 1 1.2

# Activate note block
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] run function quinnsbetternoteblocks:gamelogic/nb_powered