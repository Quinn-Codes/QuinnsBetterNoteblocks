# Called from nb_right_click
# As interaction

# Update text display
execute if entity @s[tag=o1-3] run execute positioned ~ ~1.25 ~ as @e[type=text_display,distance=..0.25,tag=nb_text] run data modify entity @s text set value '{"text":"F#2-F#4","color":"#E26500"}'
execute if entity @s[tag=o2-4] run execute positioned ~ ~1.25 ~ as @e[type=text_display,distance=..0.25,tag=nb_text] run data modify entity @s text set value '{"text":"F#3-F#5","color":"#FE000F"}'
execute if entity @s[tag=o3-5] run execute positioned ~ ~1.25 ~ as @e[type=text_display,distance=..0.25,tag=nb_text] run data modify entity @s text set value '{"text":"F#4-F#6","color":"#AE00A9"}'
execute if entity @s[tag=o4-6] run execute positioned ~ ~1.25 ~ as @e[type=text_display,distance=..0.25,tag=nb_text] run data modify entity @s text set value '{"text":"F#5-F#7","color":"#2D00F9"}'
execute if entity @s[tag=o5-7] run execute positioned ~ ~1.25 ~ as @e[type=text_display,distance=..0.25,tag=nb_text] run data modify entity @s text set value '{"text":"F#6-F#8","color":"#009ABC"}'
execute if entity @s[tag=o6-8] run execute positioned ~ ~1.25 ~ as @e[type=text_display,distance=..0.25,tag=nb_text] run data modify entity @s text set value '{"text":"F#1-F#3","color":"#77D700"}'

# Update interaction entity's octave information
execute unless entity @s[tag=modified] run data modify entity @s[tag=o1-3] Tags set value ["nb_interaction", "o2-4", "active", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o2-4] Tags set value ["nb_interaction", "o3-5", "active", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o3-5] Tags set value ["nb_interaction", "o4-6", "active", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o4-6] Tags set value ["nb_interaction", "o5-7", "active", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o5-7] Tags set value ["nb_interaction", "o6-8", "active", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o6-8] Tags set value ["nb_interaction", "o1-3", "active", "modified"]

tag @s remove modified

# Activate note block
function quinnsbetternoteblocks:gamelogic/nb_powered