
# Evil turtle yeet monster stuff
effect give @a[team=michaelreeves] minecraft:invisibility 100000 1
effect clear @a[team=michaelreeves] minecraft:glowing
execute at @a[team=michaelreeves] run particle minecraft:flame ~ ~1 ~ 0.05 0.05 0.05 0.01 5
execute at @a[team=michaelreeves] run particle minecraft:dripping_lava ~ ~1 ~ 0.1 0.1 0.1 0.1 10
execute at @a[team=michaelreeves] run particle minecraft:campfire_cosy_smoke ~ ~2.3 ~ 0.0 0.0 0.0 0.01 1

# Other player stuff
effect give @a[team=evilturtles] minecraft:glowing 10000 1
effect clear @a[team=evilturtles] minecraft:invisibility
replaceitem entity @a[team=evilturtles] armor.head minecraft:turtle_helmet{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}
replaceitem entity @a[team=evilturtles] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}
replaceitem entity @a[team=evilturtles] armor.legs minecraft:leather_leggings{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}