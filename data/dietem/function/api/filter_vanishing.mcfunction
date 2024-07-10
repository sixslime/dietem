#> dietem:api > filter_vanishing
#--------------------
# -> items: ItemSlot[]
#--------------------
# <- result: ItemSlot[]
#--------------------
#> simulates the death of an entity to filter out <items> that should vanish.
#--------------------
#- while simply removing items enchanted with 'minecraft:vanishing_curse' may work for most cases, custom enchantments with the 'prevent_equipment_drop' can exist.
#- this function ensures that the 'prevent_equipment_drop' enchantment effect is respected.
#--------------------
# ...
#--------------------
#~ implemented by killing zombies holding each item; this has a large performance impact, use with care.
#--------------------

data modify storage dietem:out filter_vanishing.result set value []
execute if data storage dietem:in filter_vanishing.items[] run function dietem:_/impl/filter_vanishing/each_item

data remove storage dietem:in filter_vanishing
data remove storage dietem:var filter_vanishing