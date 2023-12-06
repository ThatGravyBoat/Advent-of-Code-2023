data remove storage aoc:data current

$data modify storage aoc:data current set value "$(input)"
execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

data modify storage aoc:data checker set string storage aoc:data current 0 6
function utils:equals/run { storage:"aoc:data", key: "checker", value: "'seeds:'" }

execute if score $is_equal utils matches 1 run return run function aoc:processing/process_seeds

scoreboard players operation $old_type aoc = $type aoc

data modify storage aoc:data checker set string storage aoc:data current 0 17
function utils:equals/run { storage:"aoc:data", key: "checker", value: "'seed-to-soil map:'" }
execute if score $is_equal utils matches 1 run scoreboard players set $type aoc 1

data modify storage aoc:data checker set string storage aoc:data current 0 23
function utils:equals/run { storage:"aoc:data", key: "checker", value: "'soil-to-fertilizer map:'" }
execute if score $is_equal utils matches 1 run scoreboard players set $type aoc 2

data modify storage aoc:data checker set string storage aoc:data current 0 24
function utils:equals/run { storage:"aoc:data", key: "checker", value: "'fertilizer-to-water map:'" }
execute if score $is_equal utils matches 1 run scoreboard players set $type aoc 3

data modify storage aoc:data checker set string storage aoc:data current 0 19
function utils:equals/run { storage:"aoc:data", key: "checker", value: "'water-to-light map:'" }
execute if score $is_equal utils matches 1 run scoreboard players set $type aoc 4

data modify storage aoc:data checker set string storage aoc:data current 0 25
function utils:equals/run { storage:"aoc:data", key: "checker", value: "'light-to-temperature map:'" }
execute if score $is_equal utils matches 1 run scoreboard players set $type aoc 5

data modify storage aoc:data checker set string storage aoc:data current 0 28
function utils:equals/run { storage:"aoc:data", key: "checker", value: "'temperature-to-humidity map:'" }
execute if score $is_equal utils matches 1 run scoreboard players set $type aoc 6

data modify storage aoc:data checker set string storage aoc:data current 0 25
function utils:equals/run { storage:"aoc:data", key: "checker", value: "'humidity-to-location map:'" }
execute if score $is_equal utils matches 1 run scoreboard players set $type aoc 7

execute unless score $type aoc = $old_type aoc run return 0

function aoc:map/process