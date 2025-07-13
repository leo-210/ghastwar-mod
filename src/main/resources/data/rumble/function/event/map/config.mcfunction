$tellraw @a "IMO: $(imo), Z1: $(start_zone1), D1: $(shrink_zone1), Z2: $(start_zone2), D2: $(shrink_zone2), Cargo: $(cargo)"
$tellraw @a "Taille Initiale: $(t0) \n Taille après première tempête: $(t1) \n Taille finale: $(t2)"
$tellraw @a "Spread between players :$(spread)"
$tellraw @a "Spread cargo :$(spread_cargo)"
scoreboard players set .count vies -100

function cd_timer:uninstall
function cd_timer:install

$worldborder set $(t0)

schedule clear rumble:event/map/do_shrink_phase1
schedule clear rumble:event/map/do_shrink_phase2
schedule clear cargo:launch


$data modify storage rumble:config z1 set value {t: $(t1),d:$(shrink_zone1)}
$data modify storage rumble:config z2 set value {t: $(t2),d:$(shrink_zone2)}

$schedule function rumble:event/map/do_shrink_phase1 $(start_zone1)s
$schedule function rumble:event/map/do_shrink_phase2 $(start_zone2)s

$data modify storage rumble:spread spread_cargo set value $(spread_cargo)

$function cd_timer:start_timer {imo: $(imo)}


#$scoreboard players set .temp vies $(t0)

execute store result score .temp vies run worldborder get

scoreboard players set .2 vies 2
scoreboard players operation .temp vies /= .2 vies
scoreboard players remove .temp vies 10

execute store result storage rumble:spread max int 1 run scoreboard players get .temp vies
$data modify storage rumble:spread spread set value $(spread)

$schedule function cargo:launch $(cargo)s

function rumble:event/map/sprd with storage rumble:spread

function rumble:main/start