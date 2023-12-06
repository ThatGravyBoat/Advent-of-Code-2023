data modify storage utils:utils number.add.params.index set value -1
$data modify storage utils:utils number.add.params.storage1 set value "$(storage1)"
$data modify storage utils:utils number.add.params.storage2 set value "$(storage2)"
$data modify storage utils:utils number.add.params.key1 set value "$(key1)"
$data modify storage utils:utils number.add.params.key2 set value "$(key2)"

function utils:number/add/add with storage utils:utils number.add.params