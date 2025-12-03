# Called as interaction, at note block
execute store result score #Note qbnb_temp run data get storage quinnsbetternoteblocks:noteblock_data note
execute if entity @s[tag=o1-3] run execute if score #Note qbnb_temp matches 0..5 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 1
execute if entity @s[tag=o1-3] run execute if score #Note qbnb_temp matches 6..17 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 2
execute if entity @s[tag=o1-3] run execute if score #Note qbnb_temp matches 18..24 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 3
execute if entity @s[tag=o3-5] run execute if score #Note qbnb_temp matches 0..5 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 3
execute if entity @s[tag=o3-5] run execute if score #Note qbnb_temp matches 6..17 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 4
execute if entity @s[tag=o3-5] run execute if score #Note qbnb_temp matches 18..24 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 5
execute if entity @s[tag=o5-7] run execute if score #Note qbnb_temp matches 0..5 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 5
execute if entity @s[tag=o5-7] run execute if score #Note qbnb_temp matches 6..17 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 6
execute if entity @s[tag=o5-7] run execute if score #Note qbnb_temp matches 18..24 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 7
execute if entity @s[tag=o7-9] run execute if score #Note qbnb_temp matches 0..5 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 7
execute if entity @s[tag=o7-9] run execute if score #Note qbnb_temp matches 6..17 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 8
execute if entity @s[tag=o7-9] run execute if score #Note qbnb_temp matches 18..24 run data modify storage quinnsbetternoteblocks:noteblock_data octave set value 9