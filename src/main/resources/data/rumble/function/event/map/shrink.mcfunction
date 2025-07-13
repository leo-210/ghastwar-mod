execute at @a run playsound minecraft:block.note_block.pling master @p ~ ~ ~ 1 1

$tellraw @a {"text":"La zone rétrécit RDV en $(t)*$(t) dans $(d)s !","color":"white"}
$worldborder set $(t) $(d)