$scoreboard players set $number.sub.index utils $(index)
scoreboard players operation $number.sub.index_length utils = $number.sub.index utils
scoreboard players operation $number.sub.index_length utils %= $1000 utils
scoreboard players operation $number.sub.length utils = $1000 utils
scoreboard players operation $number.sub.length utils -= $number.sub.index_length utils

scoreboard players remove $number.sub.index utils 1
execute store result storage utils:utils number.sub.params.index int 1 run scoreboard players get $number.sub.index utils

scoreboard players set $number.sub.has_value utils 0
scoreboard players set $number.sub.has_subber utils 0

$execute store result score $number.sub.value utils run data get storage $(storage1) $(key1)[$(index)]
$execute store result score $number.sub.subber utils run data get storage $(storage2) $(key2)[$(index)]

$execute store result score $number.sub.number_length utils run data get storage $(storage1) $(key1)
execute if score $number.sub.length utils <= $number.sub.number_length utils run scoreboard players set $number.sub.has_value utils 1
$execute store result score $number.sub.number_length utils run data get storage $(storage2) $(key2)
execute if score $number.sub.length utils <= $number.sub.number_length utils run scoreboard players set $number.sub.has_subber utils 1

$data modify storage utils:utils number.insert.params.index set value $(index)
$data modify storage utils:utils number.insert.params.storage set value "$(storage1)"
$data modify storage utils:utils number.insert.params.key set value "$(key1)"

# Nothing to do
execute \
if score $number.sub.has_value utils matches 0 \
if score $number.sub.has_subber utils matches 0 \
run return 0

scoreboard players set $number.sub.result utils 0

execute if score $number.sub.has_value utils matches 1 run scoreboard players operation $number.sub.result utils += $number.sub.value utils
execute if score $number.sub.has_subber utils matches 1 run scoreboard players operation $number.sub.result utils -= $number.sub.subber utils
scoreboard players operation $number.sub.result utils -= $number.sub.carry utils

execute if score $number.sub.result utils < $0 utils run scoreboard players set $number.sub.carry utils 1
execute if score $number.sub.result utils < $0 utils run scoreboard players operation $number.sub.result utils += $10 utils

scoreboard players operation $number.sub.value utils = $number.sub.result utils

execute store result storage utils:utils number.insert.params.value int 1 run scoreboard players get $number.sub.value utils

function utils:number/sub/insert_value with storage utils:utils number.insert.params

function utils:number/sub/sub with storage utils:utils number.sub.params