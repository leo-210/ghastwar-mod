#tellraw @a ["",{"text":"[RUMBLE] ","color":"gold"},{"selector":"@s"},{"text":" s'est fait toucher par la "},{"bold": true,"color": "#FF0D0D","italic": false,"text": "C"},{"color": "#FE0D1A","text": "h"},{"color": "#FD0E26","text": "a"},{"color": "#FB0E33","text": "s"},{"color": "#FA0E40","text": "s"},{"color": "#F90F4D","text": "e"},{"color": "#F80F59","text": "u"},{"color": "#F71066","text": "s"},{"color": "#F51073","text": "e "},{"color": "#F41080","text": "d"},{"color": "#F3118C","text": "e "},{"color": "#F21199","text": "F"},{"color": "#F011A6","text": "a"},{"color": "#EF12B3","text": "n"},{"color": "#EE12BF","text": "t"},{"color": "#ED13CC","text": "ô"},{"color": "#EC13D9","text": "m"},{"color": "#EA13E6","text": "e"},{"color": "#E814FF","text": "s"}]

execute at @s run playsound entity.ghast.scream master @a[distance=..100] ~ ~ ~

execute at @s run execute as @a[distance=..0.00001,team=!bot] run function cargo:citem/tp

execute at @s positioned ~ ~4 ~ run execute as @a[distance=..1.81,limit=1,sort=nearest] run tp @s ~ ~1 ~
effect clear @s minecraft:water_breathing