#return fail

scoreboard objectives add trr.debug dummy
kill @e[type=marker,tag=trr]
execute as @a at @s positioned over ocean_floor run summon marker ~ ~ ~ {Tags:["trr"]}
execute as @a store result score @s trr.debug run data get entity @n[type=marker,tag=trr] Pos[1]
execute as @a run title @s actionbar ["surface level =",{"score":{"name":"@s",objective:"trr.debug"}}]