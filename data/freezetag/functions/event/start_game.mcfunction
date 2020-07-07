scoreboard players set @a callstack00 0
scoreboard players set @a[limit=1,sort=random] callstack00 1


# All players join the evel turtles
effect clear @a
scoreboard players set @a timeit 0
clear @a
effect give @a minecraft:glowing 1000000 1 true
replaceitem entity @a armor.head minecraft:turtle_helmet{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}
replaceitem entity @a armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}
replaceitem entity @a armor.legs minecraft:leather_leggings{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:4635721}}
team join evilturtles @a

# Have michael rejoin michael's team

# Give all the super powers
effect give @a[scores={callstack00=1}] minecraft:invisibility 1000000 1 true
effect give @a[scores={callstack00=1}] minecraft:strength 1000000 1 true
effect give @a[scores={callstack00=1}] minecraft:regeneration 1000000 255 true
effect give @a[scores={callstack00=1}] minecraft:health_boost 1000000 10 true

# Give the right inventory
clear @a[scores={callstack00=1}]
replaceitem entity @a[scores={callstack00=1}] armor.head minecraft:skeleton_skull{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{color:0}}
give @a[scores={callstack00=1}] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:4,Duration:300}],CustomPotionColor:16147968,display:{Name:"\"Go ZOOOOM\""}} 4

# Have them be blind for a bit
effect give @a[scores={callstack00=1}] minecraft:slowness 3 130 true
effect give @a[scores={callstack00=1}] minecraft:blindness 3 255 true
effect give @a[scores={callstack00=1}] minecraft:jump_boost 3 130 true
effect give @a[scores={callstack00=1}] minecraft:instant_health 1 10 true

# And join the team
team join michaelreeves @a[scores={callstack00=1}] 

# # Clear the stack and play a sound
scoreboard players set @a callstack00 0
execute at @a run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1000

team modify evilturtles color green
team modify michaelreeves color black
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule fallDamage false