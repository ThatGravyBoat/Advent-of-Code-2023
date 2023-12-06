$function utils:number/compare { storage1: "aoc:data", storage2: "aoc:data", key1: "check.source.start", key2: "seeds[$(index)].number"}
scoreboard players operation $upperbound aoc = $number.compare utils
$function utils:number/compare { storage1: "aoc:data", storage2: "aoc:data", key1: "check.source.end", key2: "seeds[$(index)].number"}
scoreboard players operation $lowerbound aoc = $number.compare utils

# If both then that means its not in the range

execute if score $upperbound aoc = $lowerbound aoc run return 0

$execute if score $type aoc matches 1 run data modify storage aoc:data seeds[$(index)].soil set from storage aoc:data seeds[$(index)].number
$execute if score $type aoc matches 2 run data modify storage aoc:data seeds[$(index)].fertilizer set from storage aoc:data seeds[$(index)].number
$execute if score $type aoc matches 3 run data modify storage aoc:data seeds[$(index)].water set from storage aoc:data seeds[$(index)].number
$execute if score $type aoc matches 4 run data modify storage aoc:data seeds[$(index)].light set from storage aoc:data seeds[$(index)].number
$execute if score $type aoc matches 5 run data modify storage aoc:data seeds[$(index)].temperature set from storage aoc:data seeds[$(index)].number
$execute if score $type aoc matches 6 run data modify storage aoc:data seeds[$(index)].humidity set from storage aoc:data seeds[$(index)].number
$execute if score $type aoc matches 7 run data modify storage aoc:data seeds[$(index)].location set from storage aoc:data seeds[$(index)].number

$execute if score $type aoc matches 1 run function utils:number/add { storage1: "aoc:data", storage2: "aoc:data", key1: "seeds[$(index)].soil", key2: "check.difference" }
$execute if score $type aoc matches 2 run function utils:number/add { storage1: "aoc:data", storage2: "aoc:data", key1: "seeds[$(index)].fertilizer", key2: "check.difference" }
$execute if score $type aoc matches 3 run function utils:number/add { storage1: "aoc:data", storage2: "aoc:data", key1: "seeds[$(index)].water", key2: "check.difference" }
$execute if score $type aoc matches 4 run function utils:number/add { storage1: "aoc:data", storage2: "aoc:data", key1: "seeds[$(index)].light", key2: "check.difference" }
$execute if score $type aoc matches 5 run function utils:number/add { storage1: "aoc:data", storage2: "aoc:data", key1: "seeds[$(index)].temperature", key2: "check.difference" }
$execute if score $type aoc matches 6 run function utils:number/add { storage1: "aoc:data", storage2: "aoc:data", key1: "seeds[$(index)].humidity", key2: "check.difference" }
$execute if score $type aoc matches 7 run function utils:number/add { storage1: "aoc:data", storage2: "aoc:data", key1: "seeds[$(index)].location", key2: "check.difference" }