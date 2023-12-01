# aoc.matchong.one = "one"
# aoc.matchong.two = "two"
# aoc.matchong.three = "three"
# aoc.matchong.four = "four"
# aoc.matchong.five = "five"
# aoc.matchong.six = "six"
# aoc.matchong.seven = "seven"
# aoc.matchong.eight = "eight"
# aoc.matchong.nine = "nine"
#
# aoc.data.sub.3 = undefined
# aoc.data.sub.4 = undefined
# aoc.data.sub.5 = undefined
#
# $is_not_1 = true
# $is_not_2 = true
# $is_not_3 = true
# $is_not_4 = true
# $is_not_5 = true
# $is_not_6 = true
# $is_not_7 = true
# $is_not_8 = true
# $is_not_9 = true
#
# aoc.data.sub.3 = aoc.data.current.substring(0, 3)
# aoc.data.sub.4 = aoc.data.current.substring(0, 4)
# aoc.data.sub.5 = aoc.data.current.substring(0, 5)
#
# if (aoc.data.sub.3) $is_not_1 = aoc.matching.one == aoc.data.sub.3
# if (aoc.data.sub.3) $is_not_2 = aoc.matching.two == aoc.data.sub.3
# if (aoc.data.sub.5) $is_not_3 = aoc.matching.three == aoc.data.sub.5
# if (aoc.data.sub.4) $is_not_4 = aoc.matching.four == aoc.data.sub.4
# if (aoc.data.sub.4) $is_not_5 = aoc.matching.five == aoc.data.sub.4
# if (aoc.data.sub.3) $is_not_6 = aoc.matching.six == aoc.data.sub.3
# if (aoc.data.sub.5) $is_not_7 = aoc.matching.seven == aoc.data.sub.5
# if (aoc.data.sub.5) $is_not_8 = aoc.matching.eight == aoc.data.sub.5
# if (aoc.data.sub.4) $is_not_9 = aoc.matching.nine == aoc.data.sub.4
#
# $num = 0
# if (!$is_not_1) $num = 1
# if (!$is_not_2) $num = 2
# if (!$is_not_3) $num = 3
# if (!$is_not_4) $num = 4
# if (!$is_not_5) $num = 5
# if (!$is_not_6) $num = 6
# if (!$is_not_7) $num = 7
# if (!$is_not_8) $num = 8
# if (!$is_not_9) $num = 9

# if ($num != 0) {
#   if ($num1 != -1) {
#       $num2 = parseInt(letter)
#   } else {
#       $num1 = parseInt(letter)
#   }
# }


# Setups
data modify storage aoc2:matching one set value "one"
data modify storage aoc2:matching two set value "two"
data modify storage aoc2:matching three set value "three"
data modify storage aoc2:matching four set value "four"
data modify storage aoc2:matching five set value "five"
data modify storage aoc2:matching six set value "six"
data modify storage aoc2:matching seven set value "seven"
data modify storage aoc2:matching eight set value "eight"
data modify storage aoc2:matching nine set value "nine"

data remove storage aoc2:data sub.3
data remove storage aoc2:data sub.4
data remove storage aoc2:data sub.5

scoreboard players set $is_not_1 aoc2 1
scoreboard players set $is_not_2 aoc2 1
scoreboard players set $is_not_3 aoc2 1
scoreboard players set $is_not_4 aoc2 1
scoreboard players set $is_not_5 aoc2 1
scoreboard players set $is_not_6 aoc2 1
scoreboard players set $is_not_7 aoc2 1
scoreboard players set $is_not_8 aoc2 1
scoreboard players set $is_not_9 aoc2 1

# Substring to values that are length of number words
data modify storage aoc2:data sub.3 set string storage aoc2:data current 0 3
data modify storage aoc2:data sub.4 set string storage aoc2:data current 0 4
data modify storage aoc2:data sub.5 set string storage aoc2:data current 0 5

# Check if they match, if they match it wont successed and will return 0
execute if data storage aoc2:data sub.3 store result score $is_not_1 aoc2 run data modify storage aoc2:matching one set from storage aoc2:data sub.3
execute if data storage aoc2:data sub.3 store result score $is_not_2 aoc2 run data modify storage aoc2:matching two set from storage aoc2:data sub.3
execute if data storage aoc2:data sub.5 store result score $is_not_3 aoc2 run data modify storage aoc2:matching three set from storage aoc2:data sub.5
execute if data storage aoc2:data sub.4 store result score $is_not_4 aoc2 run data modify storage aoc2:matching four set from storage aoc2:data sub.4
execute if data storage aoc2:data sub.4 store result score $is_not_5 aoc2 run data modify storage aoc2:matching five set from storage aoc2:data sub.4
execute if data storage aoc2:data sub.3 store result score $is_not_6 aoc2 run data modify storage aoc2:matching six set from storage aoc2:data sub.3
execute if data storage aoc2:data sub.5 store result score $is_not_7 aoc2 run data modify storage aoc2:matching seven set from storage aoc2:data sub.5
execute if data storage aoc2:data sub.5 store result score $is_not_8 aoc2 run data modify storage aoc2:matching eight set from storage aoc2:data sub.5
execute if data storage aoc2:data sub.4 store result score $is_not_9 aoc2 run data modify storage aoc2:matching nine set from storage aoc2:data sub.4

# Set num based off booleans
scoreboard players set $num aoc2 0
execute if score $is_not_1 aoc2 matches 0 run scoreboard players set $num aoc2 1 
execute if score $is_not_2 aoc2 matches 0 run scoreboard players set $num aoc2 2 
execute if score $is_not_3 aoc2 matches 0 run scoreboard players set $num aoc2 3 
execute if score $is_not_4 aoc2 matches 0 run scoreboard players set $num aoc2 4 
execute if score $is_not_5 aoc2 matches 0 run scoreboard players set $num aoc2 5 
execute if score $is_not_6 aoc2 matches 0 run scoreboard players set $num aoc2 6 
execute if score $is_not_7 aoc2 matches 0 run scoreboard players set $num aoc2 7 
execute if score $is_not_8 aoc2 matches 0 run scoreboard players set $num aoc2 8 
execute if score $is_not_9 aoc2 matches 0 run scoreboard players set $num aoc2 9 

# Add num
execute unless score $num aoc2 matches 0 unless score $num1 aoc2 matches -1 run scoreboard players operation $num2 aoc2 = $num aoc2
execute unless score $num aoc2 matches 0 if score $num1 aoc2 matches -1 run scoreboard players operation $num1 aoc2 = $num aoc2