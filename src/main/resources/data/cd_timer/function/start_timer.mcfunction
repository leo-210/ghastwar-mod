# Start Timer running.

# 5 Minute default
$execute unless score cdTimer cd_timer matches 1.. run scoreboard players set cdTimer cd_timer $(imo)

execute store result bossbar cd_timer:cd_bar max run scoreboard players get cdTimer cd_timer
execute store result bossbar cd_timer:cd_bar value run scoreboard players get cdTimer cd_timer
bossbar set cd_timer:cd_bar color yellow
bossbar set cd_timer:cd_bar players @a
bossbar set cd_timer:cd_bar visible true

schedule function cd_timer:run_timer 1s
