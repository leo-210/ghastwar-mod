kill @e[tag=cargo]
scoreboard players set .count cargoCount 6
tellraw @a [{text:"[Ghast War] ",color:"gold"},{text:"Des cargos vont apparaîtres, pour les ouvrir utilisez des diamants !",color:"white"}]
title @a title {text: "Cargo !", color: "gold"}
schedule function cargo:spawn 1s

scoreboard players remove .count cargoCount 1
player cargo1 spawn
player cargo2 spawn
player cargo3 spawn
player cargo4 spawn
player cargo5 spawn
player cargo6 spawn
player cargo7 spawn
player cargo8 spawn