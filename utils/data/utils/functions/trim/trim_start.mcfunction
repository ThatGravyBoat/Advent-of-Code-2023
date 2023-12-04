data modify storage utils:utils trim.char set string storage utils:utils trim.value 0 1

function utils:equals/run { value: "' '", storage: "utils:utils", key: "trim.char" }

execute if score $is_equal utils matches 0 run return 0

data modify storage utils:utils trim.value set string storage utils:utils trim.value 1

function utils:trim_start