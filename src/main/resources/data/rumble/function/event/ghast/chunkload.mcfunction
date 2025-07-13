team add bot
team modify bot prefix {"text":"[BOT] ","color":"red"}

execute if entity @a[team=e1] run player 1 spawn
attribute 1 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e2] run player 2 spawn
attribute 2 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e3] run player 3 spawn
attribute 3 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e4] run player 4 spawn
attribute 4 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e5] run player 5 spawn
attribute 5 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e6] run player 6 spawn
attribute 6 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e7] run player 7 spawn
attribute 7 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e8] run player 8 spawn
attribute 8 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e9] run player 9 spawn
attribute 9 minecraft:waypoint_transmit_range base set 0

execute if entity @a[team=e10] run player 10 spawn
attribute 10 minecraft:waypoint_transmit_range base set 0

team join bot 1
team join bot 2
team join bot 3
team join bot 4
team join bot 5
team join bot 6
team join bot 7
team join bot 8
team join bot 9
team join bot 10

schedule function rumble:event/ghast/spec 100t