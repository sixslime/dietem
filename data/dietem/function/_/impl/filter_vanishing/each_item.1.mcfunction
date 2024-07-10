#> dietem:_/impl/filter_vanishing/each_item.1

data merge entity @s {Silent:true, HandDropChances:[2.0f, 0.0f], HandItems:[{id:"minecraft:slime_ball",count:1}, {}], DeathLootTable:"minecraft:empty"}
data modify storage dietem:var filter_vanishing.original_item set from storage dietem:in filter_vanishing.items[-1]
data modify storage dietem:in filter_vanishing.items[-1].components."minecraft:custom_data".dietem set value {_:{vanish_check:true}}
data modify entity @s HandItems[0] set from storage dietem:in filter_vanishing.items[-1]
kill @s
execute as @e[type=item,distance=0..1] if items entity @s container.0 *[minecraft:custom_data~{dietem:{_:{vanish_check:true}}}] run function dietem:_/impl/filter_vanishing/add_item