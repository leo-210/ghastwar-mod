execute if entity @s[type=happy_ghast] run function cargo:fantomehit
effect give @s water_breathing 3 2 true
execute if entity @s[type=player,nbt=!{active_effects:[{id:"minecraft:blindness"}]}] if data entity @s RootVehicle.Entity.CustomName run tp @s ~ ~ ~