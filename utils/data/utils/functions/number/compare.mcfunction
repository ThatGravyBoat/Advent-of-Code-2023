$data modify storage utils:utils number.params.storage1 set value "$(storage1)"
$data modify storage utils:utils number.params.storage2 set value "$(storage2)"
$data modify storage utils:utils number.params.key1 set value "$(key1)"
$data modify storage utils:utils number.params.key2 set value "$(key2)"

scoreboard players set $number.compare utils 0
$execute store result score $number.length1 utils run data get storage $(storage1) $(key1)
$execute store result score $number.length2 utils run data get storage $(storage2) $(key2)

# if (length1 > length2) compare = 1
# if (length1 < length2) compare = -1
# if (length1 != length2) return
execute if score $number.length1 utils > $number.length2 utils run scoreboard players set $number.compare utils 1
execute if score $number.length1 utils < $number.length2 utils run scoreboard players set $number.compare utils -1
execute unless score $number.compare utils matches 0 run return 0

data modify storage utils:utils number.params.index set value 0
scoreboard players set $number.index utils 0
scoreboard players operation $number.length utils = $number.length1 utils

function utils:number/compare/compare with storage utils:utils number.params