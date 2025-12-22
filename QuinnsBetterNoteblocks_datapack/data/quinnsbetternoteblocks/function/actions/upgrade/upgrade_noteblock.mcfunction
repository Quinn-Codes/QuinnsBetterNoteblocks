# Called from check_above

# Set block above to barrier
setblock ~ ~1 ~ minecraft:sculk_vein[down=true] keep

# Summon text display (temporarily removed- may be added back as an optional setting)
#summon minecraft:text_display ~ ~1.25 ~ {text:'{"text":"Octave 3","color":"#77D700"}',see_through:false,billboard:center,Tags:["nb_text"]}

# Summon interaction entity
summon minecraft:interaction ~ ~-0.025 ~ {Tags:["nb_interaction","o3-5","active"],width:1.01f,height:1.125f}

# Paste into note block if pasting from offhand
execute as @a[tag=vdvray,limit=1] run execute if predicate quinnsbetternoteblocks:holding_wrench_clipboard run scoreboard players set @s qbnb_pasting 1
execute as @a[tag=vdvray,limit=1] run execute if score @s qbnb_pasting matches 1 run function quinnsbetternoteblocks:actions/interact/clipboard/clipboard_rc
execute as @a[tag=vdvray,limit=1] run scoreboard players set @s qbnb_pasting 0

# Summon display entity
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction,limit=1] at @s positioned ~ ~1 ~ align y run function quinnsbetternoteblocks:gamelogic/nb_display/displayentity_spawn

# Update text display
#execute as @e[type=interaction,distance=..0.1,tag=nb_interaction] run function quinnsbetternoteblocks:actions/interact/logic/update_text_octave

# Play upgrade sound and play note block sound
playsound minecraft:block.sculk.spread record @p ~ ~ ~ 1
execute as @e[type=interaction,distance=..0.1,tag=nb_interaction] run function quinnsbetternoteblocks:gamelogic/nb_powered