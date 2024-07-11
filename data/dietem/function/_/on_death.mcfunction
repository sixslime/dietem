#> dietem:_/on_death
#--------------------
# ./tick
#--------------------

#-- HOOK : dietem:pre_drop --
data modify storage dietem:hook pre_drop append value {}

data modify storage dietem:hook pre_drop[-1].pass.items set value []

data modify storage dietem:hook pre_drop[-1].pass.xp set value 0
execute unless data storage dietem:settings {keep_inventory:true} run data modify storage dietem:hook pre_drop[-1].pass.items set from entity @s Inventory
data remove storage dietem:hook pre_drop[-1].pass.items[{components:{"minecraft:custom_data":{__:true}}}]
execute unless data storage dietem:settings {keep_inventory:true} store result storage dietem:hook pre_drop[-1].pass.xp int 1 run scoreboard players get @s _dietem-xp
function #dietem:hook/pre_drop
#-- > < --

#-- ABSTRACT : dietem:drop --
data modify storage dietem:implement drop append value {}
data modify storage dietem:implement drop[-1].in set from storage dietem:hook pre_drop[-1].pass
function #dietem:implement/drop
#-- > < --

#-- HOOK : dietem:post_drop --
data modify storage dietem:hook post_drop append value {}
data modify storage dietem:hook post_drop[-1].info set from storage dietem:hook pre_drop[-1].pass
function #dietem:hook/post_drop
#-- > < --

execute if data storage dietem:implement drop[-1].in.items[] run function dietem:_/clear/each_item
function dietem:_/clear/xp with storage dietem:implement drop[-1].in

data remove storage dietem:hook pre_drop[-1]
data remove storage dietem:implement drop[-1]
data remove storage dietem:hook post_drop[-1]

scoreboard players reset @s _dietem-die