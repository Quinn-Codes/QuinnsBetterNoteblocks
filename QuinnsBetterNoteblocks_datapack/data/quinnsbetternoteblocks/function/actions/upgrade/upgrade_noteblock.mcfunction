# Called from check_above

# Set block above to barrier
setblock ~ ~1 ~ minecraft:barrier keep

# Summon text display
summon text_display ~ ~1.25 ~ {text:'{"text":"F#1-F#3","color":"#77D700"}',see_through:false,billboard:center,Tags:["nb_text"]}

# Summon interaction entity
summon minecraft:interaction ~ ~ ~ {Tags:["nb_interaction","o1-3","active"],width:1.1f,height:1.1f}

# Play upgrade sound and play note block sound
playsound minecraft:block.sculk.spread record @p ~ ~ ~ 1
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction] run function quinnsbetternoteblocks:gamelogic/nb_powered