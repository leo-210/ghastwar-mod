# Send a message to all players that Ghast team 1 has been eliminated
tellraw @a [{"text":"[Rumble] ","color":"gold"},{"text":"Le Ghast de l'équipe 8 a été éliminé !","color":"yellow"}]
execute at 8 run particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 10 1 force
execute at 8 run playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~

# Set the scoreboard 'vies' to 1 for all players on team 'e1'
scoreboard players set ghast_no_respawn_e8 NORexecuted 1
scoreboard players set @a[team=e8] vies 1

execute at @a[team=e8] run playsound minecraft:entity.wither.death master @a[team=e8] ~ ~ ~ 1 1

# Show a red title "Ghast Mort" to all players on team e8
title @a[team=e8] title {"text":"Ghast Mort","color":"red"}

kill 8