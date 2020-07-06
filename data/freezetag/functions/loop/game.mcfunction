
# Evil turtle yeet monster stuff
effect give @a[team=michaelreeves] minecraft:invisibility 100000 1
effect give @a[team=michaelreeves] minecraft:strength 100000 1
effect give @a[team=michaelreeves] minecraft:regeneration 100000 255
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

scoreboard players set @a[team=evilturtles,scores={health=0..10,frozen=0}] freeze 1

effect give @a[scores={freeze=1}] minecraft:slowness 5 130
effect give @a[scores={freeze=1}] minecraft:jump_boost 5 130
clear @a[scores={freeze=1}]
replaceitem entity @a[scores={freeze=1}] armor.head minecraft:turtle_helmet{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:0}}
execute if @a[scores={freeze=1}] run team join evilturtles @a[team=michaelreeves]
team join michaelreeves @a[scores={freeze=1}] 
scoreboard players set @a[scores={freeze=1}] freeze 0