$scoreboard players set $number.add.index utils $(index)
scoreboard players operation $number.add.index_length utils = $number.add.index utils
scoreboard players operation $number.add.index_length utils %= $1000 utils
scoreboard players operation $number.add.length utils = $1000 utils
scoreboard players operation $number.add.length utils -= $number.add.index_length utils

scoreboard players remove $number.add.index utils 1
execute store result storage utils:utils number.add.params.index int 1 run scoreboard players get $number.add.index utils

scoreboard players set $number.add.has_value utils 0
scoreboard players set $number.add.has_adder utils 0

$execute store result score $number.add.value utils run data get storage $(storage1) $(key1)[$(index)]
$execute store result score $number.add.adder utils run data get storage $(storage2) $(key2)[$(index)]

$execute store result score $number.add.number_length utils run data get storage $(storage1) $(key1)
execute if score $number.add.length utils <= $number.add.number_length utils run scoreboard players set $number.add.has_value utils 1
$execute store result score $number.add.number_length utils run data get storage $(storage2) $(key2)
execute if score $number.add.length utils <= $number.add.number_length utils run scoreboard players set $number.add.has_adder utils 1

# Nothing to do
execute \
if score $number.add.has_value utils matches 0 \
if score $number.add.has_adder utils matches 0 \
if score $number.add.carry utils matches 0 \
run return 0

scoreboard players set $number.add.result utils 0

execute if score $number.add.has_value utils matches 1 run scoreboard players operation $number.add.result utils += $number.add.value utils
execute if score $number.add.has_adder utils matches 1 run scoreboard players operation $number.add.result utils += $number.add.adder utils
scoreboard players operation $number.add.result utils += $number.add.carry utils

scoreboard players operation $number.add.value utils = $number.add.result utils
scoreboard players operation $number.add.value utils %= $10 utils

scoreboard players operation $number.add.carry utils = $number.add.result utils
scoreboard players operation $number.add.carry utils /= $10 utils

$data modify storage utils:utils number.insert.params.index set value $(index)
$data modify storage utils:utils number.insert.params.storage set value "$(storage1)"
$data modify storage utils:utils number.insert.params.key set value "$(key1)"
execute store result storage utils:utils number.insert.params.value int 1 run scoreboard players get $number.add.value utils

function utils:number/add/insert_value with storage utils:utils number.insert.params

function utils:number/add/add with storage utils:utils number.add.params