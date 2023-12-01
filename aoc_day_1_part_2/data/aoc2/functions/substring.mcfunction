# aoc.data.letter = aoc.data.current.substring(0, 1)
# aoc.check_number_digit(aoc.letter)
# aoc.check_number_word()
# aoc.data.current = aoc.data.current.substring(1)
# $length = aoc.data.current.length
# if ($length == 0) {
#   aoc.substring()   
# }

data modify storage aoc2:data letter set string storage aoc2:data current 0 1

function aoc2:check_number_digit with storage aoc2:data
function aoc2:check_number_word

data modify storage aoc2:data current set string storage aoc2:data current 1
execute store result score $length aoc2 run data get storage aoc2:data current
execute unless score $length aoc2 matches 0 run function aoc2:substring