# Called from raycast_hit_block
data modify entity @s[tag=o1-3] text set value '{"text":"F#2-F#4","color":"#E26500"}'
data modify entity @s[tag=o2-4] text set value '{"text":"F#3-F#5","color":"#FE000F"}'
data modify entity @s[tag=o3-5] text set value '{"text":"F#4-F#6","color":"#AE00A9"}'
data modify entity @s[tag=o4-6] text set value '{"text":"F#5-F#7","color":"#2D00F9"}'
data modify entity @s[tag=o5-7] text set value '{"text":"F#6-F#8","color":"#009ABC"}'
data modify entity @s[tag=o6-8] text set value '{"text":"F#1-F#3","color":"#77D700"}'

execute unless entity @s[tag=modified] run data modify entity @s[tag=o1-3] Tags set value ["nb_marker", "o2-4", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o2-4] Tags set value ["nb_marker", "o3-5", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o3-5] Tags set value ["nb_marker", "o4-6", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o4-6] Tags set value ["nb_marker", "o5-7", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o5-7] Tags set value ["nb_marker", "o6-8", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o6-8] Tags set value ["nb_marker", "o1-3", "modified"]

tag @s remove modified