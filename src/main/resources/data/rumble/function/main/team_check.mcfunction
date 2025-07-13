scoreboard players set e1 teamAlive 0
scoreboard players set e2 teamAlive 0
scoreboard players set e3 teamAlive 0
scoreboard players set e4 teamAlive 0
scoreboard players set e5 teamAlive 0
scoreboard players set e6 teamAlive 0
scoreboard players set e7 teamAlive 0
scoreboard players set e8 teamAlive 0
scoreboard players set e9 teamAlive 0
scoreboard players set e10 teamAlive 0
scoreboard players set global teamAlive 0 

execute if entity @a[team=e1,gamemode=!spectator] run scoreboard players set e1 teamAlive 1
execute if entity @a[team=e2,gamemode=!spectator] run scoreboard players set e2 teamAlive 1
execute if entity @a[team=e3,gamemode=!spectator] run scoreboard players set e3 teamAlive 1
execute if entity @a[team=e4,gamemode=!spectator] run scoreboard players set e4 teamAlive 1
execute if entity @a[team=e5,gamemode=!spectator] run scoreboard players set e5 teamAlive 1
execute if entity @a[team=e6,gamemode=!spectator] run scoreboard players set e6 teamAlive 1
execute if entity @a[team=e7,gamemode=!spectator] run scoreboard players set e7 teamAlive 1
execute if entity @a[team=e8,gamemode=!spectator] run scoreboard players set e8 teamAlive 1
execute if entity @a[team=e9,gamemode=!spectator] run scoreboard players set e9 teamAlive 1
execute if entity @a[team=e10,gamemode=!spectator] run scoreboard players set e10 teamAlive 1

execute if entity @a[team=e1,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e2,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e3,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e4,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e5,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e6,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e7,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e8,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e9,gamemode=!spectator] run scoreboard players add global teamAlive 1
execute if entity @a[team=e10,gamemode=!spectator] run scoreboard players add global teamAlive 1

execute if score global teamAlive matches 1 if score e1 teamAlive matches 1 run return run say Team 1 winner !
execute if score global teamAlive matches 1 if score e2 teamAlive matches 1 run return run say Team 2 winner !
execute if score global teamAlive matches 1 if score e3 teamAlive matches 1 run return run say Team 3 winner !
execute if score global teamAlive matches 1 if score e4 teamAlive matches 1 run return run say Team 4 winner !
execute if score global teamAlive matches 1 if score e5 teamAlive matches 1 run return run say Team 5 winner !
execute if score global teamAlive matches 1 if score e6 teamAlive matches 1 run return run say Team 6 winner !
execute if score global teamAlive matches 1 if score e7 teamAlive matches 1 run return run say Team 7 winner !
execute if score global teamAlive matches 1 if score e8 teamAlive matches 1 run return run say Team 8 winner !
execute if score global teamAlive matches 1 if score e9 teamAlive matches 1 run return run say Team 9 winner !
execute if score global teamAlive matches 1 if score e10 teamAlive matches 1 run return run say Team 10 winner !

schedule function rumble:main/team_check 60t