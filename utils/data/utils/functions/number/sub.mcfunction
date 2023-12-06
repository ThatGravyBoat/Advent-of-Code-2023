data modify storage utils:utils number.sub.params.index set value -1
$data modify storage utils:utils number.sub.params.storage1 set value "$(storage1)"
$data modify storage utils:utils number.sub.params.storage2 set value "$(storage2)"
$data modify storage utils:utils number.sub.params.key1 set value "$(key1)"
$data modify storage utils:utils number.sub.params.key2 set value "$(key2)"

function utils:number/sub/sub with storage utils:utils number.sub.params

scoreboard players set $found_number utils 0
$function utils:foreach/run { storage: "$(storage1)", key: "$(key1)", function: "utils:number/sub/trim_zeros" }
$data modify storage $(storage1) $(key1) set from storage utils:utils number.sub.array

# VERY BROKEN IF THE NUMBER IS THE SAME OR LESS THAN THE NUMBER TO SUBTRACT