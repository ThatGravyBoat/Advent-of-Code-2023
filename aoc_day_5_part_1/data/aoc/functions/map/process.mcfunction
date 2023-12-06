# Types:
# 1 = seed to soil
# 2 = soil to fertilizzer
# 3 = fertilizer to water
# 4 = water to light
# 5 = light to temperature
# 6 = temperature to humidity
# 7 = humidity to location

function aoc:number/parse
data modify storage aoc:data mapentry.destination set from storage aoc:data value

function aoc:number/parse
data modify storage aoc:data mapentry.source.start set from storage aoc:data value
data modify storage aoc:data mapentry.source.end set from storage aoc:data value

function aoc:number/parse
data modify storage aoc:data mapentry.length set from storage aoc:data value

function utils:number/add { storage1: "aoc:data", storage2: "aoc:data", key1: "mapentry.source.end", key2: "mapentry.length" }

# Calculate difference between source.start and destination
function utils:number/compare { storage1: "aoc:data", storage2: "aoc:data", key1: "mapentry.source.start", key2: "mapentry.destination"}
execute if score $number.compare utils matches 1 run function utils:number/sub { storage1: "aoc:data", storage2: "aoc:data", key1: "mapentry.source.start", key2: "mapentry.destination"}
execute unless score $number.compare utils matches 1 run function utils:number/sub { storage1: "aoc:data", storage2: "aoc:data", key1: "mapentry.destination", key2: "mapentry.source.start"}



execute if score $type aoc matches 1 run data modify storage aoc:data seed-to-soil append from storage aoc:data mapentry
execute if score $type aoc matches 2 run data modify storage aoc:data soil-to-fertilizer append from storage aoc:data mapentry
execute if score $type aoc matches 3 run data modify storage aoc:data fertilizer-to-water append from storage aoc:data mapentry
execute if score $type aoc matches 4 run data modify storage aoc:data water-to-light append from storage aoc:data mapentry
execute if score $type aoc matches 5 run data modify storage aoc:data light-to-temperature append from storage aoc:data mapentry
execute if score $type aoc matches 6 run data modify storage aoc:data temperature-to-humidity append from storage aoc:data mapentry
execute if score $type aoc matches 7 run data modify storage aoc:data humidity-to-location append from storage aoc:data mapentry