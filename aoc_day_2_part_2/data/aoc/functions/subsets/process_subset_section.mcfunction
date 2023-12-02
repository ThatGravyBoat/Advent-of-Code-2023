function aoc:subsets/process_subset_num

data modify storage aoc:matching red set value "red"
data modify storage aoc:matching blue set value "blue"
data modify storage aoc:matching green set value "green"
data modify storage aoc:matching semicolon set value ";"
data modify storage aoc:matching comma set value ","

scoreboard players set $is_not_red aoc 1
scoreboard players set $is_not_blue aoc 1
scoreboard players set $is_not_green aoc 1

scoreboard players set $is_not_semicolon aoc 1
scoreboard players set $is_not_comma aoc 1

data remove storage aoc:data sub.3
data remove storage aoc:data sub.4
data remove storage aoc:data sub.5

data modify storage aoc:data sub.3 set string storage aoc:data current 0 3
data modify storage aoc:data sub.4 set string storage aoc:data current 0 4
data modify storage aoc:data sub.5 set string storage aoc:data current 0 5

execute if data storage aoc:data sub.3 store result score $is_not_red aoc run data modify storage aoc:matching red set from storage aoc:data sub.3
execute if data storage aoc:data sub.4 store result score $is_not_blue aoc run data modify storage aoc:matching blue set from storage aoc:data sub.4
execute if data storage aoc:data sub.5 store result score $is_not_green aoc run data modify storage aoc:matching green set from storage aoc:data sub.5

execute if score $is_not_red aoc matches 0 run function aoc:subsets/colors/red
execute if score $is_not_blue aoc matches 0 run function aoc:subsets/colors/blue
execute if score $is_not_green aoc matches 0 run function aoc:subsets/colors/green

data modify storage aoc:data sub.1 set string storage aoc:data current 0 1

execute store result score $is_not_semicolon aoc run data modify storage aoc:matching semicolon set from storage aoc:data sub.1
execute store result score $is_not_comma aoc run data modify storage aoc:matching comma set from storage aoc:data sub.1

execute if score $is_not_semicolon aoc matches 0 run function aoc:subsets/colors/reset_and_update
data modify storage aoc:data current set string storage aoc:data current 2

execute store result score $length aoc run data get storage aoc:data current
execute unless score $length aoc matches 0 run function aoc:subsets/process_subset_section

execute if score $length aoc matches 0 run function aoc:subsets/colors/reset_and_update