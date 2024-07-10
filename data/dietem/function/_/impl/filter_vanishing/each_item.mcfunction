#> dietem:_/impl/filter_vanishing/each_item
#--------------------
# @api
#--------------------

execute positioned ~ -1000 ~ summon zombie run function dietem:_/impl/filter_vanishing/each_item.1
data remove storage dietem:in filter_vanishing.items[-1]
execute if data storage dietem:in filter_vanishing.items[] run function dietem:_/impl/filter_vanishing/each_item