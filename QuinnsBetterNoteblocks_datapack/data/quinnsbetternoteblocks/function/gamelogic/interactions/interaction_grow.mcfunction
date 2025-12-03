# Called from tick
# As interaction entity
# At interaction entity

# Switch to active mode
tag @s remove inactive
tag @s add active
# Increase size
data merge entity @s {width:1.05f,height:1.05f}
# Teleport outside the block
#tp @s ~ ~-0.2 ~

# Spawn better noteblock
execute at @s positioned ~ ~1 ~ align y run function quinnsbetternoteblocks:gamelogic/nb_display/displayentity_spawn