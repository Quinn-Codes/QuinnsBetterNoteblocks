# Run from cleanup.mcfunction

# If the note block or sculk vein is gone, clear the better noteblock
execute unless block ~ ~ ~ minecraft:note_block run function quinnsbetternoteblocks:gamelogic/nb_cleanup
execute unless block ~ ~1 ~ minecraft:sculk_vein run function quinnsbetternoteblocks:gamelogic/nb_cleanup