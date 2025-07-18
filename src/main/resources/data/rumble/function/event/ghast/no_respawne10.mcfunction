# Send a message to all players that Ghast team 1 has been eliminated
tellraw @a [{"text":"[Ghast War] ","color":"gold"},{"text":"Le Ghast de l'équipe 10 a été éliminé !","color":"yellow"}]
execute at 10 run particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 10 1 force
execute at 10 run playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~

# Set the scoreboard 'vies' to 1 for all players on team 'e1'
scoreboard players set ghast_no_respawn_e10 NORexecuted 1
scoreboard players set @a[team=e10] vies 1

execute at @a[team=e10] run playsound minecraft:entity.wither.death master @a[team=e10] ~ ~ ~ 1 1

# Show a red title "Ghast Mort" to all players on team e10
title @a[team=e10] title {"text":"Ghast Mort","color":"red"}

kill 10