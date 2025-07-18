scoreboard objectives add Kills playerKillCount
scoreboard players reset @a Kills

scoreboard objectives setdisplay list Kills
say Rumble V.3 Loaded

# Système de vie avec objectives

# 1. Crée un objectif pour les vies
scoreboard objectives add vies dummy "Vies"
scoreboard objectives add morts deathCount "Morts"

# 2. Donne un nombre de vies de départ à chaque joueur (au départ vies pas limitées)
scoreboard players set @a vies 1000



scoreboard objectives add chooseTeam trigger
scoreboard players enable @a chooseTeam

scoreboard objectives add NORexecuted dummy

scoreboard objectives add teamAlive dummy

scoreboard objectives add cargoCount dummy


scoreboard objectives add Health health {"text":"❤","color":"red"}
scoreboard objectives setdisplay below_name Health

scoreboard players set .config vies 0 

# ------ - -------
setworldspawn 0 0 0
worldborder center 0 0
worldborder set 2048

# - --- ----- ----
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule sendCommandFeedback true

gamerule announceAdvancements false
gamerule disableElytraMovementCheck true
gamerule disablePlayerMovementCheck true

gamerule spectatorsGenerateChunks

gamerule doWeatherCycle false

weather clear


difficulty normal

#- -- -- Teams

team add e1 "display 1"
team modify e1 color aqua
team modify e1 collisionRule pushOtherTeams
team modify e1 friendlyFire false

team add e2 "display 2"
team modify e2 color blue
team modify e2 collisionRule pushOtherTeams
team modify e2 friendlyFire false

team add e3 "display 3"
team modify e3 color green
team modify e3 collisionRule pushOtherTeams
team modify e3 friendlyFire false

team add e4 "display 4"
team modify e4 color yellow
team modify e4 collisionRule pushOtherTeams
team modify e4 friendlyFire false

team add e5 "display 5"
team modify e5 color gold
team modify e5 collisionRule pushOtherTeams
team modify e5 friendlyFire false

team add e6 "display 6"
team modify e6 color red
team modify e6 collisionRule pushOtherTeams
team modify e6 friendlyFire false

team add e7 "display 7"
team modify e7 color light_purple
team modify e7 collisionRule pushOtherTeams
team modify e7 friendlyFire false

team add e8 "display 8"
team modify e8 color dark_purple
team modify e8 collisionRule pushOtherTeams
team modify e8 friendlyFire false

team add e9 "display 9"
team modify e9 color dark_gray
team modify e9 collisionRule pushOtherTeams
team modify e9 friendlyFire false

team add e10 "display 10"
team modify e10 color dark_green
team modify e10 collisionRule pushOtherTeams
team modify e10 friendlyFire false