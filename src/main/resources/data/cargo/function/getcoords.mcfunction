execute at @s run function cargo:setvault
data modify storage rumble:coords coords merge from entity @s Pos

execute at @s store result storage rumble:coords coords.x int 1 run data get entity @s Pos[0] 1
execute at @s store result storage rumble:coords coords.y int 1 run data get entity @s Pos[1] 1
execute at @s store result storage rumble:coords coords.z int 1 run data get entity @s Pos[2] 1

execute at @s run function cargo:coords with storage rumble:coords coords