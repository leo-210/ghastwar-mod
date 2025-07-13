#besoin de cette fonction pour laisser le temps au joueurs cargos de se co
tag @e remove spotted
tag cargo1 add cargo
tag cargo2 add cargo
tag cargo3 add cargo
tag cargo4 add cargo
tag cargo5 add cargo
tag cargo6 add cargo
tag cargo7 add cargo
tag cargo8 add cargo
gamemode survival @a[tag=cargo]

$spreadplayers 0.0 0.0 $(spread) $(max) false @a[tag=cargo]

execute as @a[tag=cargo,tag=!spotted] if entity @s run execute as @s run function cargo:getcoords