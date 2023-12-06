execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

data modify storage aoc:data current set string storage aoc:data current 2

data modify storage aoc:data number set string storage aoc:data current 0 5
function utils:trim/run { storage:"aoc:data", key:"number" }

data modify storage aoc:data push.params.key set value "time"
data modify storage aoc:data push.params.value set from storage aoc:data number

function aoc:processing/push_number with storage aoc:data push.params

data modify storage aoc:data current set string storage aoc:data current 5

function aoc:processing/process_time