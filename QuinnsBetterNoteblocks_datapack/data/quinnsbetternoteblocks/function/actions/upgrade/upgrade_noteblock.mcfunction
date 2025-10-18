# Called from check_above

# Set block above to barrier
setblock ~ ~1 ~ minecraft:barrier keep

# Summon text display
summon text_display ~ ~1.25 ~ {text:'{"text":"Octave 3","color":"#77D700"}',see_through:false,billboard:center,Tags:["nb_text"]}

# Summon interaction entity
summon minecraft:interaction ~ ~ ~ {Tags:["nb_interaction","o3-5","active"],width:1.1f,height:1.1f}

# Paste into note block if pasting from offhand
execute as @a[tag=vdvray,limit=1] run execute if score @s qbnb_pasting matches 1 run function quinnsbetternoteblocks:actions/interact/clipboard/clipboard_rc

# Play upgrade sound and play note block sound
playsound minecraft:block.sculk.spread record @p ~ ~ ~ 1
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction] run function quinnsbetternoteblocks:actions/interact/logic/update_text_octave
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction] run function quinnsbetternoteblocks:gamelogic/nb_powered