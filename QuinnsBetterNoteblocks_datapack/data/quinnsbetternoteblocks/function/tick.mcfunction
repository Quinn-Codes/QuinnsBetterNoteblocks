execute as @a[scores={tuning_wrench_useR=1..}] if predicate quinnsbetternoteblocks:shift_holding_wrench run function quinnsbetternoteblocks:actions/wrench_used

execute as @e[type=text_display,tag=nb_marker] at @s if block ~ ~-1 ~ minecraft:note_block[powered=true] unless entity @s[tag=activated] run function quinnsbetternoteblocks:gamelogic/nb_powered

execute as @e[type=text_display,tag=nb_marker] at @s unless block ~ ~-1 ~ minecraft:note_block[powered=true] run tag @s remove activated
# For each item frame with a written book titled "Octave1":
#execute as @e[type=item_frame] at @s if predicate quinnsbetternoteblocks:written_book_octave5 unless block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:note_block[powered=true] unless entity @s[tag=activated] run function quinnsbetternoteblocks:octave5_on
#execute as @e[type=item_frame] at @s if predicate quinnsbetternoteblocks:written_book_octave1 unless block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:note_block[powered=true] unless entity @s[tag=activated] run function quinnsbetternoteblocks:octave1_on

# Remove the activated tag when the note block is not powered,
# so the rising edge can be detected again later:
#execute as @e[type=item_frame] at @s if predicate quinnsbetternoteblocks:written_book_octave5 unless block ~ ~-2 ~ minecraft:note_block[powered=true] run tag @s remove activated
#execute as @e[type=item_frame] at @s if predicate quinnsbetternoteblocks:written_book_octave1 unless block ~ ~-2 ~ minecraft:note_block[powered=true] run tag @s remove activated
scoreboard players set @a[scores={tuning_wrench_useR=1..}] tuning_wrench_useR 0