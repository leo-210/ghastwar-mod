# process second countdown

scoreboard players remove cdTimer cd_timer 1
bossbar set cd_timer:cd_bar players @a
execute store result bossbar cd_timer:cd_bar value run scoreboard players get cdTimer cd_timer

# with one minute to go...
execute if score cdTimer cd_timer matches 60 run say Ghast Immortality OFF in 1 minute !
execute if score cdTimer cd_timer matches 60 run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1000 1.3
execute if score cdTimer cd_timer matches 1..60 run bossbar set cd_timer:cd_bar color red
execute if score cdTimer cd_timer matches 1.. run schedule function cd_timer:run_timer 1s

function cd_timer:warning
execute if score cdTimer cd_timer matches 0 run function cd_timer:timer_end