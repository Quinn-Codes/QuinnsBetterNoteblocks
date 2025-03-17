# Called from raycast_hit_block

# If the block above isnt air, print an error
execute unless block ~ ~ ~ minecraft:air run tellraw @a[tag=vdvray,distance=..10,limit=1] ["",{"text":"[Wrench Failed]: ","bold":true,"color":"dark_red"},{"text":"Block above must be empty!","bold":true,"color":"red"}]
# Otherwise, upgrade the noteblock
execute if block ~ ~ ~ minecraft:air run function quinnsbetternoteblocks:actions/upgrade/upgrade_noteblock