advancement revoke @s only rumble:use_rain_star
weather rain
tellraw @a [{"text":"[Ghast War] ","color":"gold"},{"selector":"@s"},{"text":" a déclenché la tempête !",color:"white"}]
schedule function cargo:citem/clearrain 30s