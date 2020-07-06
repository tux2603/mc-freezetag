
# Evil turtle yeet monster stuff
execute at @a[team=michaelreeves] run particle minecraft:flame ~ ~2 ~ 0.05 0.00 0.05 0.01 5
execute at @a[team=michaelreeves] run particle minecraft:dripping_lava ~ ~1.3 ~ 0.1 0.0 0.1 0.2 10
# execute at @a[team=michaelreeves] run particle minecraft:campfire_cosy_smoke ~ ~2.3 ~ 0.0 0.0 0.0 0.01 1

# Other player stuff
replaceitem entity @a[team=evilturtles] armor.head minecraft:turtle_helmet{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}
replaceitem entity @a[team=evilturtles] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}
replaceitem entity @a[team=evilturtles] armor.legs minecraft:leather_leggings{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}

execute at @a[team=evilturtles,scores={health=0..18}] if entity @a[team=michaelreeves,distance=..5] run scoreboard players set @a[team=evilturtles,scores={health=0..18}] freeze 1

# Freeze the player that was tagged and Make them blind and stuck for a bit
effect clear @a[scores={freeze=1}]
effect give @a[scores={freeze=1}] minecraft:slowness 3 130 true
effect give @a[scores={freeze=1}] minecraft:blindness 3 255 true
effect give @a[scores={freeze=1}] minecraft:jump_boost 3 130 true
effect give @a[scores={freeze=1}] minecraft:instant_health 1 10 true
clear @a[scores={freeze=1}]

# Give the new "it" a black helmet
replaceitem entity @a[scores={freeze=1}] armor.head minecraft:skeleton_skull{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:0}}

# Give the old it turtle stuff
execute if entity @a[scores={freeze=1}] run effect clear @a[team=michaelreeves]
execute if entity @a[scores={freeze=1}] run effect give @a[team=michaelreeves] minecraft:glowing 1000000 1 true
execute if entity @a[scores={freeze=1}] run replaceitem entity @a[team=michaelreeves] armor.head minecraft:turtle_helmet{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}
execute if entity @a[scores={freeze=1}] run replaceitem entity @a[team=michaelreeves] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}
execute if entity @a[scores={freeze=1}] run replaceitem entity @a[team=michaelreeves] armor.legs minecraft:leather_leggings{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}
execute if entity @a[scores={freeze=1}] run team join evilturtles @a[team=michaelreeves]
execute if entity @a[scores={freeze=1}] at @a run execute at @a run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1000
# Apply super michael effects
effect give @a[scores={freeze=1}] minecraft:invisibility 1000000 1 true
effect give @a[scores={freeze=1}] minecraft:strength 1000000 1 true
effect give @a[scores={freeze=1}] minecraft:regeneration 1000000 255 true
effect give @a[scores={freeze=1}] minecraft:health_boost 1000000 10 true
give @a[scores={freeze=1}] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:4,Duration:300}],CustomPotionColor:16147968,display:{Name:"\"Go ZOOOOM\""}} 4
team join michaelreeves @a[scores={freeze=1}] 
scoreboard players set @a freeze 0

effect give @a minecraft:speed 1000000 2