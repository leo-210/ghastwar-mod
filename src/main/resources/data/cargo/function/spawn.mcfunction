

function cargo:spawn2 with storage rumble:spread

#spreadplayers 0.0 0.0 100 500 false @a[tag=cargo]
#summon armor_stand ~ ~1 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["cargo"],CustomName:{"color":"gold","text":"Cargo"}}

#execute unless score .count cargoCount matches 0 run return run schedule function cargo:spawn 10t

#execute if score .count cargoCount matches 0 run spreadplayers ~ ~ 1 10 false @e[tag=cargo]

#execute as @e[tag=cargo,tag=!spotted] if entity @s run execute as @s run function cargo:getcoords
schedule function cargo:clear 5s