# Called from nb_right_click
# As interaction

scoreboard players set @s noteUpdated 0

# Increase note by 4
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=0] run setblock ~ ~ ~ minecraft:note_block[note=4]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=1] run setblock ~ ~ ~ minecraft:note_block[note=5]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=2] run setblock ~ ~ ~ minecraft:note_block[note=6]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=3] run setblock ~ ~ ~ minecraft:note_block[note=7]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=4] run setblock ~ ~ ~ minecraft:note_block[note=8]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=5] run setblock ~ ~ ~ minecraft:note_block[note=9]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=6] run setblock ~ ~ ~ minecraft:note_block[note=10]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=7] run setblock ~ ~ ~ minecraft:note_block[note=11]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=8] run setblock ~ ~ ~ minecraft:note_block[note=12]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=9] run setblock ~ ~ ~ minecraft:note_block[note=13]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=10] run setblock ~ ~ ~ minecraft:note_block[note=14]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=11] run setblock ~ ~ ~ minecraft:note_block[note=15]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=12] run setblock ~ ~ ~ minecraft:note_block[note=16]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=13] run setblock ~ ~ ~ minecraft:note_block[note=17]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=14] run setblock ~ ~ ~ minecraft:note_block[note=18]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=15] run setblock ~ ~ ~ minecraft:note_block[note=19]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=16] run setblock ~ ~ ~ minecraft:note_block[note=20]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=17] run setblock ~ ~ ~ minecraft:note_block[note=21]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=18] run setblock ~ ~ ~ minecraft:note_block[note=22]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=19] run setblock ~ ~ ~ minecraft:note_block[note=23]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=20] run setblock ~ ~ ~ minecraft:note_block[note=24]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=21] run setblock ~ ~ ~ minecraft:note_block[note=0]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=22] run setblock ~ ~ ~ minecraft:note_block[note=1]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=23] run setblock ~ ~ ~ minecraft:note_block[note=2]
execute if score @s noteUpdated matches 0 run execute store success score @s noteUpdated run execute if block ~ ~ ~ minecraft:note_block[note=24] run setblock ~ ~ ~ minecraft:note_block[note=3]

scoreboard players reset @s noteUpdated

# Activate note block
function quinnsbetternoteblocks:gamelogic/nb_powered