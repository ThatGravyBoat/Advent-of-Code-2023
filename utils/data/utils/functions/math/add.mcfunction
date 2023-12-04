$execute store result score $math.value utils run data get storage $(storage) $(key)
$scoreboard players set $math.adder utils $(value)
scoreboard players operation $math.value utils += $math.adder utils
$execute store result storage $(storage) $(key) int 1 run scoreboard players get $math.value utils