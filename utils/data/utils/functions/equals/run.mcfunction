$data modify storage utils:utils equals.value set value $(value)
scoreboard players set $is_equal utils 0
scoreboard players set $is_not_equal utils 1

$execute store success score $is_not_equal utils run data modify storage utils:utils equals.value set from storage $(storage) $(key)

execute if score $is_not_equal utils matches 0 run scoreboard players set $is_equal utils 1
execute if score $is_not_equal utils matches 1 run scoreboard players set $is_equal utils 0