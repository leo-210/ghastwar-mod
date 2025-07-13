execute if score cdTimer cd_timer matches 3600 run say Ghast Immortality OFF in 1 Hour.
execute if score cdTimer cd_timer matches 3600 run execute at @a run playsound minecraft:entity.evoker.prepare_summon master @p ~ ~ ~ 1000 0.8
execute if score cdTimer cd_timer matches 1800 run say Ghast Immortality OFF in 30 minutes.
execute if score cdTimer cd_timer matches 1800 run execute at @a run playsound minecraft:entity.evoker.prepare_summon master @p ~ ~ ~ 1000 0.9
execute if score cdTimer cd_timer matches 900 run say Ghast Immortality OFF in 15 minutes.
execute if score cdTimer cd_timer matches 900 run execute at @a run playsound minecraft:entity.evoker.prepare_summon master @p ~ ~ ~ 1000 1