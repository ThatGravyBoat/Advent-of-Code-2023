$data modify storage aoc:data current set value "$(input)"

data modify storage aoc:data checker set string storage aoc:data current 0 8
data modify storage aoc:data current set string storage aoc:data current 8

function utils:equals/run { storage:"aoc:data", key: "checker", value: "'Time:   '" }
execute if score $is_equal utils matches 1 run return run function aoc:processing/process_time

function utils:equals/run { storage:"aoc:data", key: "checker", value: "'Distance'" }
execute if score $is_equal utils matches 1 run return run function aoc:processing/process_distance