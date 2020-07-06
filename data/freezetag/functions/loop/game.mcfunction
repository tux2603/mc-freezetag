
# Evil turtle yeet monster stuff
effect give @a[team=michaelreeves] minecraft:invisibility 100000 1 true
effect give @a[team=michaelreeves] minecraft:strength 100000 1 true
effect give @a[team=michaelreeves] minecraft:regeneration 10000 255 true
effect give @a[team=michaelreeves] minecraft:health_boost 10000 10 true
effect clear @a[team=michaelreeves] minecraft:glowing
execute at @a[team=michaelreeves] run particle minecraft:flame ~ ~1 ~ 0.05 0.05 0.05 0.01 5
execute at @a[team=michaelreeves] run particle minecraft:dripping_lava ~ ~1 ~ 0.1 0.1 0.1 0.1 10
execute at @a[team=michaelreeves] run particle minecraft:campfire_cosy_smoke ~ ~2.3 ~ 0.0 0.0 0.0 0.01 1

# Other player stuff
effect give @a[team=evilturtles] minecraft:glowing 10000 1 true
effect clear @a[team=evilturtles] minecraft:invisibility 
replaceitem entity @a[team=evilturtles] armor.head minecraft:turtle_helmet{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}
replaceitem entity @a[team=evilturtles] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}
replaceitem entity @a[team=evilturtles] armor.legs minecraft:leather_leggings{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}

execute at @a[team=evilturtles,scores={health=0..18}] if entity @a[team=michaelreeves,distance=..4] run scoreboard players set @a[team=evilturtles,scores={health=0..18}] freeze 1

effect give @a[scores={freeze=1}] minecraft:slowness 5 130 true
effect give @a[scores={freeze=1}] minecraft:blindness 3 255 true
effect give @a[scores={freeze=1}] minecraft:jump_boost 5 130 true
effect give @a[scores={freeze=1}] minecraft:instant_health 1 10 true
clear @a[scores={freeze=1}]
replaceitem entity @a[scores={freeze=1}] armor.head minecraft:leather_helmet{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:0}}
execute if entity @a[scores={freeze=1}] run effect clear @a[team=michaelreeves] minecraft:regeneration
execute if entity @a[scores={freeze=1}] run effect clear @a[team=michaelreeves] minecraft:health_boost
execute if entity @a[scores={freeze=1}] run team join evilturtles @a[team=michaelreeves]
team join michaelreeves @a[scores={freeze=1}] 
scoreboard players set @a freeze 0

say "Test"