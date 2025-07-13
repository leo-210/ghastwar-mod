effect clear @s glowing
effect give @s invisibility 45 1 true
attribute @s flying_speed base set 0.096
schedule function cargo:citem/inv_spell_ghast 45s
execute if entity @e[type=happy_ghast,nbt={active_effects:[{id:"minecraft:invisibility"}]}] run schedule function cargo:citem/inv_spell_ghast 10t
execute as @e[type=happy_ghast,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] run function cargo:citem/ghast_unsprint