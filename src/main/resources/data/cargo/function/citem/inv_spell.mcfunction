# $tellraw @a[tag=$(tag)] [{"text":"[RUMBLE] ","color":"gold"},{"selector":"@s"},{"text":" a utilisé un sort de discrétion, vous êtes invisible et plus rapide.",color:"white"}]

# $execute as @a[tag=$(tag)] run effect give @s invisibility 45 1 true
# $execute as @a[tag=$(tag)] run effect give @s speed 45 1 true

# $execute as @e[type=happy_ghast,tag=$(tag)] run function cargo:citem/inv_spell_ghast
$scoreboard players operation caster_temp_$(id) chooseTeam = @s chooseTeam
$execute as @a if score @s chooseTeam = caster_temp_$(id) chooseTeam run function cargo:citem/inv_spell_player

$execute as @e[type=happy_ghast] if score @s chooseTeam = caster_temp_$(id) chooseTeam run function cargo:citem/inv_spell_ghast