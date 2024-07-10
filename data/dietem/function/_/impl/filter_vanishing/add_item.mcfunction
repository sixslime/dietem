#> dietem:_/impl/filter_vanishing/add_item
#--------------------
# ./each_item
#--------------------

data modify storage dietem:out filter_vanishing.result append from storage dietem:var filter_vanishing.original_item
kill @s