execute as @a[scores={morts=1..}] run function rumble:main/respawning


execute as @a[scores={vies=0}] run gamemode spectator @s

execute as @a[scores={vies=0}] run tellraw @a {"text":"[Ghast War] ","color":"gold", "extra":[{"selector":"@s"},{"text":" a été éliminé !","color":"red"}]}
scoreboard players set @a[scores={vies=0}] vies -1


schedule function rumble:main/respawn 20t