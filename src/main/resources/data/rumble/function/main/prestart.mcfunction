kill @e[type=happy_ghast]
kill 1
kill 2
kill 3
kill 4
kill 5
kill 6
kill 7
kill 8
kill 9
kill 10

scoreboard players enable @a chooseTeam
scoreboard players set @a chooseTeam 0
scoreboard players enable @a chooseTeam

dialog show @a[scores={chooseTeam=0}] rumble:team

execute if entity @a[scores={chooseTeam=0}] run schedule function rumble:main/prestart2 20t