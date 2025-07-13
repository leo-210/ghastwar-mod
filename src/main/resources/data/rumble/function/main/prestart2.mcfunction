execute if entity @a[scores={chooseTeam=0}] run schedule function rumble:main/prestart2 20t
execute unless entity @a[scores={chooseTeam=0}] run function rumble:main/assign_team
#execute unless entity @a[scores={chooseTeam=0}] run function rumble:main/start