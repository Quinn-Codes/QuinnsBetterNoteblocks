# Called from tuning_lc
# As interaction

# Update interaction entity's octave information
execute unless entity @s[tag=modified] run data modify entity @s[tag=o1-3] Tags set value ["nb_interaction", "o7-9", "active", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o3-5] Tags set value ["nb_interaction", "o1-3", "active", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o5-7] Tags set value ["nb_interaction", "o3-5", "active", "modified"]
execute unless entity @s[tag=modified] run data modify entity @s[tag=o7-9] Tags set value ["nb_interaction", "o5-7", "active", "modified"]

tag @s remove modified