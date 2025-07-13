# Setup scoreboard and boss bar for countdown timer

scoreboard objectives add cd_timer dummy
bossbar add cd_timer:cd_bar {"color": "yellow", "text": "Ghast Immortality OFF"}
bossbar set cd_timer:cd_bar visible false

scoreboard players set @a vies 1000