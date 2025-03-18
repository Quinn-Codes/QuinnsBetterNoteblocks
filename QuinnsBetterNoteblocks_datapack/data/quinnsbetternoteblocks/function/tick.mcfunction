# Executing at every player that is holding a wrench, grow nearby interaction entities
execute as @a at @s if predicate quinnsbetternoteblocks:holding_wrench run execute as @e[type=minecraft:interaction,distance=..7,tag=nb_interaction,tag=inactive] at @s run function quinnsbetternoteblocks:gamelogic/interactions/interaction_grow

# Big interaction boxes trigger every tick to check for clicks
execute as @e[type=minecraft:interaction,tag=nb_interaction,tag=active] run function quinnsbetternoteblocks:gamelogic/interactions/interaction_tick

# Upgrade wrench action (shift+right click on non-upgraded note block) starts raycast
execute as @a[scores={tuning_wrench_useR=1..}] if predicate quinnsbetternoteblocks:holding_wrench if predicate quinnsbetternoteblocks:holding_shift run function quinnsbetternoteblocks:actions/upgrade/wrench_upgrade

# Check for powered note blocks and activate them
execute as @e[type=interaction,tag=nb_interaction] at @s if block ~ ~ ~ minecraft:note_block[powered=true] unless entity @s[tag=activated] run function quinnsbetternoteblocks:gamelogic/nb_powered

# Check for unpowered noteblocks and allow them to trigger again
execute as @e[type=interaction,tag=nb_interaction,tag=activated] at @s unless block ~ ~ ~ minecraft:note_block[powered=true] run tag @s remove activated

# Clear wrench use score
scoreboard players set @a[scores={tuning_wrench_useR=1..}] tuning_wrench_useR 0