# aoc.data.letter = aoc.data.current.substring(0, 1)
# aoc.data.current = aoc.data.current.substring(1)
# aoc.addnum(aoc.letter)
# $length = aoc.data.current.length
# if ($length == 0) {
#   aoc.substring()   
# }

data modify storage aoc:data letter set string storage aoc:data current 0 1
data modify storage aoc:data current set string storage aoc:data current 1
function aoc:addnum with storage aoc:data
execute store result score $length aoc run data get storage aoc:data current
execute unless score $length aoc matches 0 run function aoc:substring