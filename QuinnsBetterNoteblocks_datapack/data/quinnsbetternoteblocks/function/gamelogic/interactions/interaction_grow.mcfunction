# Called from tick
# As interaction entity

# Switch to active mode
tag @s remove inactive
tag @s add active
# Increase size
data merge entity @s {width:1.1f,height:1.1f}
# Teleport outside the block
tp @s ~ ~-0.2 ~