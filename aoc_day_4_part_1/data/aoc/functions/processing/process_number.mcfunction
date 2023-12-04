data modify storage aoc:data number set string storage aoc:data current 0 2

function utils:equals/run { storage:"aoc:data", key: "number", value: "'| '" }
function utils:trim/run { storage:"aoc:data", key:"number" }

execute store result score $length aoc run data get storage aoc:data number

execute if score $is_equal utils matches 0 run data modify storage aoc:data current set string storage aoc:data current 3
execute if score $is_equal utils matches 1 run data modify storage aoc:data current set string storage aoc:data current 2

execute if score $is_equal utils matches 1 run scoreboard players set $ours aoc 1
execute if score $is_equal utils matches 1 run return run function aoc:processing/process_number

execute if score $ours aoc matches 0 run data modify storage aoc:data winning append from storage aoc:data number
execute if score $ours aoc matches 1 run data modify storage aoc:data ours append from storage aoc:data number

execute if score $last aoc matches 1 run return 0

execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 2 run scoreboard players set $last aoc 1
function aoc:processing/process_number