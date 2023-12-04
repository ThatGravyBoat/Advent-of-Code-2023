$execute store result score $math.value utils run data get storage aoc:data cards[$(index)]
$scoreboard players set $math.adder utils $(amount)
scoreboard players operation $math.value utils += $math.adder utils
$execute store result storage aoc:data cards[$(index)] int 1 run scoreboard players get $math.value utils