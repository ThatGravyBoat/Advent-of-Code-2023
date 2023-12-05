execute if score $number.index utils >= $number.length utils run return 0

$execute store result score $number.value1 utils run data get storage $(storage1) $(key1)[$(index)]
$execute store result score $number.value2 utils run data get storage $(storage2) $(key2)[$(index)]

execute if score $number.value1 utils > $number.value2 utils run scoreboard players set $number.compare utils 1
execute if score $number.value1 utils < $number.value2 utils run scoreboard players set $number.compare utils -1
execute if score $number.value1 utils = $number.value2 utils \
run function utils:number/compare/compare with storage utils:utils number.params
