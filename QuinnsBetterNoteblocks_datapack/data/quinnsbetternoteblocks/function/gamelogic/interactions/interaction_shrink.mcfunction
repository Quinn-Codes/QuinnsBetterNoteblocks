# Called from interaction_tick
# As interaction entity

# Switch to inactive mode
tag @s remove active
tag @s add inactive
# Decrease size
data merge entity @s {width:0.5f,height:0.5f}
# Hide in the block
tp @s ~ ~0.2 ~