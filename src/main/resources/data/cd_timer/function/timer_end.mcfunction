# End Timer
schedule clear cd_timer:run_timer
bossbar set cd_timer:cd_bar visible false
scoreboard players set cdTimer cd_timer 0

execute at @a run playsound minecraft:item.goat_horn.sound.6 master @p ~ ~ ~ 0.9
title @a title [{"text":"Ghast Immortality OFF","color":"dark_red","bold":true}]


function rumble:admin/imo_off
function rumble:event/ghast/detection
function rumble:main/team_check