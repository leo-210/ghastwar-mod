execute at @e[type=happy_ghast,team=e1] as @a[distance=..20] if entity @s[team=e1] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e2] as @a[distance=..20] if entity @s[team=e2] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e3] as @a[distance=..20] if entity @s[team=e3] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e4] as @a[distance=..20] if entity @s[team=e4] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e5] as @a[distance=..20] if entity @s[team=e5] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e6] as @a[distance=..20] if entity @s[team=e6] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e7] as @a[distance=..20] if entity @s[team=e7] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e8] as @a[distance=..20] if entity @s[team=e8] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e9] as @a[distance=..20] if entity @s[team=e9] run function rumble:event/ghast/buff
execute at @e[type=happy_ghast,team=e10] as @a[distance=..20] if entity @s[team=e10] run function rumble:event/ghast/buff



execute unless entity @e[type=happy_ghast,team=e1] if entity @a[team=e1] unless score ghast_no_respawn_e1 NORexecuted matches 1 run function rumble:event/ghast/no_respawne1
execute unless entity @e[type=happy_ghast,team=e2] if entity @a[team=e2] unless score ghast_no_respawn_e2 NORexecuted matches 1 run function rumble:event/ghast/no_respawne2
execute unless entity @e[type=happy_ghast,team=e3] if entity @a[team=e3] unless score ghast_no_respawn_e3 NORexecuted matches 1 run function rumble:event/ghast/no_respawne3
execute unless entity @e[type=happy_ghast,team=e4] if entity @a[team=e4] unless score ghast_no_respawn_e4 NORexecuted matches 1 run function rumble:event/ghast/no_respawne4
execute unless entity @e[type=happy_ghast,team=e5] if entity @a[team=e5] unless score ghast_no_respawn_e5 NORexecuted matches 1 run function rumble:event/ghast/no_respawne5
execute unless entity @e[type=happy_ghast,team=e6] if entity @a[team=e6] unless score ghast_no_respawn_e6 NORexecuted matches 1 run function rumble:event/ghast/no_respawne6
execute unless entity @e[type=happy_ghast,team=e7] if entity @a[team=e7] unless score ghast_no_respawn_e7 NORexecuted matches 1 run function rumble:event/ghast/no_respawne7
execute unless entity @e[type=happy_ghast,team=e8] if entity @a[team=e8] unless score ghast_no_respawn_e8 NORexecuted matches 1 run function rumble:event/ghast/no_respawne8
execute unless entity @e[type=happy_ghast,team=e9] if entity @a[team=e9] unless score ghast_no_respawn_e9 NORexecuted matches 1 run function rumble:event/ghast/no_respawne9
execute unless entity @e[type=happy_ghast,team=e10] if entity @a[team=e10] unless score ghast_no_respawn_e10 NORexecuted matches 1 run function rumble:event/ghast/no_respawne10


#execute as @e[type=minecraft:happy_ghast] if entity @s[nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:2b}]}] run function cargo:fantomehit

execute if entity @e[type=happy_ghast] run schedule function rumble:event/ghast/detection 3s