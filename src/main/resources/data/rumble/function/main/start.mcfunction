# Announce game start with sound effects and information

# Play a sound to all players
execute at @a run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 1

# Send the main title
title @a title {"text":"Game about to start!","color":"gold","bold":true}

# Send the subtitle
# title @a subtitle {"text":"Informations diverses:","color":"yellow"}

# # Send detailed info as chat messages
# tellraw @a {"text":"La map fait 2048*2048 (spawn en 0 0)","color":"aqua"}
# tellraw @a {"text":"La map va rétrécira jusqu'à une taille de 128*128","color":"aqua"}
# tellraw @a {"text":"Le PVP est actif dès le début","color":"yellow"}
# tellraw @a {"text":"Toutes les 10 minutes vous recevrez de l'xp","color":"yellow"}
# tellraw @a {"text":"Au départ : vies illimitées","color":"red"}
# tellraw @a {"text":"Après 1h30 : plus que 3 vies","color":"dark_red"}
# tellraw @a {"text":"Cross team toléré","color":"green"}
# tellraw @a {"text":"Le cross team doit se faire grâce au chat vocal pas de discord ou de msg chat","color":"green"}
# tellraw @a {"text":"Nether & End autorisés","color":"green"}

# tellraw @a [{"text":"\n"},{"text":"💡 Astuce de départ : ","color":"gold","bold":true},{"text":"vous avez reçu un kit optimisé !\n","color":"white"},{"text":"• ","color":"gray"},{"text":"Épée Looting ","color":"aqua"},{"text":"→ pour augmenter les loots (","color":"white"},{"text":"perles","color":"light_purple"},{"text":" et ","color":"white"},{"text":"blaze rods","color":"gold"},{"text":")\n","color":"white"},{"text":"• ","color":"gray"},{"text":"Pelle Fortune ","color":"aqua"},{"text":"→ pour obtenir du ","color":"white"},{"text":"flint","color":"dark_gray"},{"text":" plus efficacement (","color":"white"},{"text":"flèches","color":"gray"},{"text":"....)\n","color":"white"},{"text":"Utilisez ce kit intelligemment pour préparer vos combats !","color":"yellow"}]
# tellraw @a {"text":"GL ! Et surtout amusez vous ! ","color":"gold"}

time set day

#spreadplayers 0 0 200 950 true @a
clear @a
#execute as @a run function rumble:main/kit

effect give @a minecraft:resistance 60 5 false
effect give @a minecraft:speed 60 2 false



# Play another sound for emphasis
execute at @a run playsound minecraft:ui.toast.challenge_complete master @p ~ ~ ~ 1 1

schedule clear rumble:event/ghast/detection
schedule clear rumble:main/respawn

schedule function rumble:event/ghast/spawn 100t


#execute unless score .config vies matches -100 run function rumble:event/map/config {imo: 4800, start_zone1: 3600, shrink_zone1: 5400, start_zone2: 3600, shrink_zone2: 3600, cargo: 3600, t0: 1024, t1: 512, t2: 128,spread: 300}

#schedule function rumble:event/map/shrink_phase1 3600s
schedule function rumble:event/xp/xp_event 300s