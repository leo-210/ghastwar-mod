execute as @e[type=happy_ghast,team=e1,limit=1] store result bossbar ghast1 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e1,limit=1] store result bossbar ghast1 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e1,limit=1] run bossbar remove ghast1

execute as @e[type=happy_ghast,team=e1,limit=1] at @s run tag @a[distance=..48] add gbs1
execute as @e[type=happy_ghast,team=e1,limit=1] at @s run tag @a[distance=48..,team=!e1] remove gbs1

bossbar set ghast1 players @a[tag=gbs1]

#execute if entity @e[type=happy_ghast,team=e1,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t




execute as @e[type=happy_ghast,team=e2,limit=1] store result bossbar ghast2 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e2,limit=1] store result bossbar ghast2 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e2,limit=1] run bossbar remove ghast2

execute as @e[type=happy_ghast,team=e2,limit=1] at @s run tag @a[distance=..48] add gbs2
execute as @e[type=happy_ghast,team=e2,limit=1] at @s run tag @a[distance=48..,team=!e2] remove gbs2

bossbar set ghast2 players @a[tag=gbs2]

#execute if entity @e[type=happy_ghast,team=e2,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t



execute as @e[type=happy_ghast,team=e3,limit=1] store result bossbar ghast3 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e3,limit=1] store result bossbar ghast3 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e3,limit=1] run bossbar remove ghast3

execute as @e[type=happy_ghast,team=e3,limit=1] at @s run tag @a[distance=..48] add gbs3
execute as @e[type=happy_ghast,team=e3,limit=1] at @s run tag @a[distance=48..,team=!e3] remove gbs3

bossbar set ghast3 players @a[tag=gbs3]

#execute if entity @e[type=happy_ghast,team=e3,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t

execute as @e[type=happy_ghast,team=e4,limit=1] store result bossbar ghast4 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e4,limit=1] store result bossbar ghast4 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e4,limit=1] run bossbar remove ghast4

execute as @e[type=happy_ghast,team=e4,limit=1] at @s run tag @a[distance=..48] add gbs4
execute as @e[type=happy_ghast,team=e4,limit=1] at @s run tag @a[distance=48..,team=!e4] remove gbs4

bossbar set ghast4 players @a[tag=gbs4]

#execute if entity @e[type=happy_ghast,team=e4,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t



execute as @e[type=happy_ghast,team=e5,limit=1] store result bossbar ghast5 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e5,limit=1] store result bossbar ghast5 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e5,limit=1] run bossbar remove ghast5

execute as @e[type=happy_ghast,team=e5,limit=1] at @s run tag @a[distance=..48] add gbs5
execute as @e[type=happy_ghast,team=e5,limit=1] at @s run tag @a[distance=48..,team=!e5] remove gbs5

bossbar set ghast5 players @a[tag=gbs5]

#execute if entity @e[type=happy_ghast,team=e5,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t



execute as @e[type=happy_ghast,team=e6,limit=1] store result bossbar ghast6 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e6,limit=1] store result bossbar ghast6 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e6,limit=1] run bossbar remove ghast6

execute as @e[type=happy_ghast,team=e6,limit=1] at @s run tag @a[distance=..48] add gbs6
execute as @e[type=happy_ghast,team=e6,limit=1] at @s run tag @a[distance=48..,team=!e6] remove gbs6

bossbar set ghast6 players @a[tag=gbs6]

#execute if entity @e[type=happy_ghast,team=e6,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t



execute as @e[type=happy_ghast,team=e7,limit=1] store result bossbar ghast7 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e7,limit=1] store result bossbar ghast7 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e7,limit=1] run bossbar remove ghast7

execute as @e[type=happy_ghast,team=e7,limit=1] at @s run tag @a[distance=..48] add gbs7
execute as @e[type=happy_ghast,team=e7,limit=1] at @s run tag @a[distance=48..,team=!e7] remove gbs7

bossbar set ghast7 players @a[tag=gbs7]

#execute if entity @e[type=happy_ghast,team=e7,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t



execute as @e[type=happy_ghast,team=e8,limit=1] store result bossbar ghast8 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e8,limit=1] store result bossbar ghast8 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e8,limit=1] run bossbar remove ghast8

execute as @e[type=happy_ghast,team=e8,limit=1] at @s run tag @a[distance=..48] add gbs8
execute as @e[type=happy_ghast,team=e8,limit=1] at @s run tag @a[distance=48..,team=!e8] remove gbs8

bossbar set ghast8 players @a[tag=gbs8]

#execute if entity @e[type=happy_ghast,team=e8,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t



execute as @e[type=happy_ghast,team=e9,limit=1] store result bossbar ghast9 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e9,limit=1] store result bossbar ghast9 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e9,limit=1] run bossbar remove ghast9

execute as @e[type=happy_ghast,team=e9,limit=1] at @s run tag @a[distance=..48] add gbs9
execute as @e[type=happy_ghast,team=e9,limit=1] at @s run tag @a[distance=48..,team=!e9] remove gbs9

bossbar set ghast9 players @a[tag=gbs9]

#execute if entity @e[type=happy_ghast,team=e9,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t



execute as @e[type=happy_ghast,team=e10,limit=1] store result bossbar ghast10 value run data get entity @s Health

execute as @e[type=happy_ghast,team=e10,limit=1] store result bossbar ghast10 max run data get entity @s attributes[{id:"minecraft:max_health"}].base

execute unless entity @e[type=happy_ghast,team=e10,limit=1] run bossbar remove ghast10

execute as @e[type=happy_ghast,team=e10,limit=1] at @s run tag @a[distance=..48] add gbs10
execute as @e[type=happy_ghast,team=e10,limit=1] at @s run tag @a[distance=48..,team=!e10] remove gbs10

bossbar set ghast10 players @a[tag=gbs10]

#execute if entity @e[type=happy_ghast,team=e10,limit=1] run schedule function rumble:event/ghast/lifebar/update_ghast_health 20t


execute if entity @e[type=happy_ghast] run schedule function rumble:event/ghast/lifebar/update_ghast_health 10t