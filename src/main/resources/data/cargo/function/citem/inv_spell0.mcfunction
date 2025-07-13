# apply_effect.mcfunction
# $tag : Tag de l'équipe (ex. : gbs1, gbs2, etc.)

# Appliquer l'effet aux joueurs ayant le tag spécifié
advancement revoke @s only rumble:use_inv_spell
#data modify storage cargo:temp tag set from entity @s Tags[0]

# with storage cargo:temp
#tellraw @a [{"text":"[RUMBLE] ","color":"gold"},{"selector":"@s"},{"text":" a utilisé un sort de discrétion, vous êtes invisible et plus rapide.",color:"white"}]
execute store result storage id:data id int 1 run random value -10000000..100000000
function cargo:citem/inv_spell with storage id:data