scoreboard objectives remove cd_timer
scoreboard objectives remove chooseTeam
scoreboard objectives remove morts
scoreboard objectives remove Kills
scoreboard objectives remove vies
scoreboard objectives remove NORexecuted

tag @a remove gbs1
tag @a remove gbs2
tag @a remove gbs3
tag @a remove gbs4
tag @a remove gbs5
tag @a remove gbs6
tag @a remove gbs7
tag @a remove gbs8
tag @a remove gbs9
tag @a remove gbs10

team leave @e
function rumble:admin/nuke

schedule clear rumble:event/ghast/detection
schedule clear rumble:main/respawn