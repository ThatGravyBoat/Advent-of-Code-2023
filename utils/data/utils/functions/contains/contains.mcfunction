data modify storage utils:utils contains.check set from storage utils:utils contains.value
scoreboard players set $contains_is_not_value utils 1

$execute store result score $contains_is_not_value utils run data modify storage utils:utils contains.check set value $(value)
execute if score $contains_is_not_value utils matches 0 run scoreboard players set $contained utils 1
execute if score $contains_is_not_value utils matches 0 run return 19201516