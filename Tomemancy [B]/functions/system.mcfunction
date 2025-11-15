execute as @a[tag=!initiated] run loot give @s loot "guide_book"
execute as @a[tag=!initiated] run loot give @s loot "page_selection"
execute as @a[tag=!initiated] run tag @s add initiated

# Magical Specialization

scoreboard objectives add fire dummy
scoreboard objectives add water dummy
scoreboard objectives add plant dummy
scoreboard objectives add wind dummy 
scoreboard objectives add mystic dummy
scoreboard objectives add curse dummy
scoreboard objectives add light dummy
scoreboard objectives add undead dummy


#Death

tag @a add dead
tag @e[type=player] remove dead
tag @a[tag=dead, tag=!last_dead] add last_dead
tag @a[tag=!dead, tag=last_dead] remove last_dead




##Scoreboards

#Floating

scoreboard objectives add float_spell dummy float_spell
execute as @a[scores={float_spell=1..}] run  scoreboard players add @s float_spell 1

execute as @a[scores={float_spell=1..}] run particle tome:floating ~ ~ ~

execute as @a[scores={float_spell=41..}] run scoreboard players set @s float_spell 0
execute as @e[tag=last_dead] run scoreboard players set @s float_spell 0


#Sanded

scoreboard objectives add sanded dummy sanded
execute as @a[scores={sanded=1..}] run  scoreboard players add @s sanded 1
execute as @a[scores={sanded=301..}] run  scoreboard players set @s sanded 0
execute as @e[tag=last_dead] run scoreboard players set @s sanded 0



#Stalactite

scoreboard objectives add stalactite_spell dummy stalactite_spell
execute as @a[scores={stalactite_spell=1..}] run  scoreboard players add @s stalactite_spell 1

execute as @a[scores={stalactite_spell=21..}] run kill @e[r=40, type=item, name="Pointed Dripstone"]

execute as @a[scores={stalactite_spell=21..}] run scoreboard players set @s stalactite_spell 0
execute as @e[tag=last_dead] run scoreboard players set @s stalactite_spell 0



#Flame Jump Particle

scoreboard objectives add flame_jump_spell dummy flame_jump_spell
execute as @a[scores={flame_jump_spell=1..}] run scoreboard players add @s flame_jump_spell 1
execute at @a[scores={flame_jump_spell=1..}] run  particle tome:fireball ~ ~-0.4 ~
execute as @a[scores={flame_jump_spell=41..}] run  scoreboard players set @s flame_jump_spell 0
execute as @e[tag=last_dead] run scoreboard players set @s flame_jump_spell 0



#Resistance to Falling

scoreboard objectives add null_damage dummy null_damage
execute as @a[scores={null_damage=1..}] run  scoreboard players add @s null_damage 1
execute as @a[scores={null_damage=1..}] if block ~~-1~ air run effect @s resistance 3 7 true
execute as @a[scores={null_damage=121..}] run  scoreboard players set @s null_damage 0
execute as @e[tag=last_dead] run scoreboard players set @s null_damage 0



#Armor

scoreboard objectives add aegis_spell dummy aegis_spell
scoreboard objectives add aegis_active dummy aegis_active
execute as @e[scores={aegis_spell=1..}] run scoreboard players add @s aegis_spell 1
execute as @e[scores={aegis_spell=1..}] run scoreboard players add @s aegis_active 1

execute as @e[scores={aegis_active=1}] run item replace entity @s slot.armor.head 0 with tome:magic_helmet 1 0

execute as @e[scores={aegis_active=1}] run item replace entity @s slot.armor.chest 0 with tome:magic_chestplate 1 0

execute as @e[scores={aegis_active=1}] run item replace entity @s slot.armor.legs 0 with tome:magic_leggings 1 0

execute as @e[scores={aegis_active=1}] run item replace entity @s slot.armor.feet 0 with tome:magic_boots 1 0

execute as @e[scores={aegis_spell=500}] run tellraw @s {"rawtext":[{"text":"§d||Your [Aegis] effect has worn off. Your magical armor slowly disintegrates.||§r"}]}

execute as @e[scores={aegis_spell=500..}] run item replace entity @s slot.armor.head 0 with air 1 0

execute as @e[scores={aegis_spell=500..}] run item replace entity @s slot.armor.chest 0 with air 1 0

execute as @e[scores={aegis_spell=500..}] run item replace entity @s slot.armor.legs 0 with air 1 0

execute as @e[scores={aegis_spell=500..}] run item replace entity @s slot.armor.feet 0 with air 1 0

execute as @e[scores={aegis_spell=501..}] run scoreboard players set @s aegis_spell 0
execute as @e[scores={aegis_spell=501..}] run scoreboard players set @s aegis_active 0
execute as @a[tag=last_dead] run scoreboard players set @s aegis_spell 0
execute as @a[tag=last_dead] run scoreboard players set @s aegis_active 0


#Fire Ward

scoreboard objectives add fire_ward_spell dummy fire_ward_spell
scoreboard objectives add fire_ward_time dummy fire_ward_time
execute as @e[scores={fire_ward_spell=1..}] run scoreboard players add @s fire_ward_spell 1
execute as @e[scores={fire_ward_spell=1..}] run scoreboard players add @s fire_ward_time 1
execute as @e[scores={fire_ward_time=11..}] run scoreboard players set @s fire_ward_time 0

execute as @e[scores={fire_ward_spell=1.., fire_ward_time=10}] run execute as @e[r=3, family=monster] run damage @s 1 fire

execute as @e[scores={fire_ward_spell=1.., fire_ward_time=10}] if block ~~~ web run setblock ~ ~ ~ air

execute as @e[scores={fire_ward_spell=1.., fire_ward_time=10}] if block ~ ~1 ~ web run setblock ~ ~1 ~ air

execute as @e[scores={fire_ward_spell=1.., fire_ward_time=10}] run particle tome:flame_ward ~ ~1 ~

execute as @e[scores={fire_ward_spell=800}] run tellraw @s {"rawtext":[{"text":"§c||You have 10 seconds of [Flame Ward] remaining.||§r"}]}

execute as @e[scores={fire_ward_spell=900}] run tellraw @s {"rawtext":[{"text":"§c||Your [Flame Ward] effect has worn off.||§r"}]}

execute as @e[scores={fire_ward_spell=900..}] run scoreboard players set @s fire_ward_time 0
execute as @e[scores={fire_ward_spell=901..}] run scoreboard players set @s fire_ward_spell 0
execute as @e[tag=last_dead] run scoreboard players set @s fire_ward_spell 0
execute as @e[tag=last_dead] run scoreboard players set @s fire_ward_time 0



#Stunted Healing

scoreboard objectives add no_health_spell dummy no_health_spell
execute as @e[tag=health_cursed] run scoreboard players add @s no_health_spell 1

execute as @e[tag=health_cursed, scores={no_health_spell=1200}] run tellraw @s {"rawtext":[{"text":"§8||Your [Cursed Vitality] has worn off.||§r"}]}

execute as @e[tag=health_cursed, scores={no_health_spell=1..}] run effect @s regeneration 0 225 true

execute as @e[scores={no_health_spell=1201..}] run tag @s remove health_cursed
execute as @e[scores={no_health_spell=1201..}] run scoreboard players set @s no_health_spell 0
execute as @a[tag=last_dead] run tag @s remove health_cursed
execute as @a[tag=last_dead] run scoreboard players set @s no_health_spell 0





#Creeper's Curse

scoreboard objectives add creep_curse_t dummy creep_curse_t
execute as @e[tag=creeper_cursed] run scoreboard players add @s creep_curse_t 1

execute as @e[tag=creeper_cursed, scores={creep_curse_t=500}] run tellraw @s {"rawtext":[{"text":"§8||Your [Curse of the Creeper] effect has worn off. Sayonara Sucker <3||§r"}]}

execute at @e[tag=creeper_cursed, scores={creep_curse_t=500}] run summon tome:boom ~ ~ ~

execute as @e[scores={creep_curse_t=501..}] run tag @s remove creeper_cursed
execute as @e[scores={creep_curse_t=501..}] run scoreboard players set @s creep_curse_t 0
execute as @a[tag=last_dead] run tag @s remove creeper_cursed
execute as @a[tag=last_dead] run scoreboard players set @s creep_curse_t 0





#Level Up

execute as @a[tag=!novice, l=15, lm=0] run tellraw @s {"rawtext":[{"text":"§aYour magical proficiency is at the Basic Tier"}]}
execute as @a[tag=!novice,  l=15, lm=0] run tag @s add novice
execute as @a[tag=novice, lm=16] run tag @s remove novice

execute as @a[tag=!apprentice, l=30, lm=16] run tellraw @s {"rawtext":[{"text":"§aYour magical proficiency is at the Apprentice Tier"}]}
execute as @a[tag=!apprentice, l=30, lm=16] run tag @s add apprentice
execute as @a[tag=apprentice, l=15, lm=0] run tag @s remove apprentice
execute as @a[tag=apprentice, lm=31] run tag @s remove apprentice

execute as @a[tag=!acolyte, l=45, lm=31] run tellraw @s {"rawtext":[{"text":"§aYour magical proficiency is at the Acolyte Tier"}]}
execute as @a[tag=!acolyte, l=45, lm=31] run tag @s add acolyte
execute as @a[tag=acolyte, l=30, lm=0] run tag @s remove acolyte
execute as @a[tag=acolyte, lm=46] run tag @s remove acolyte

execute as @a[tag=!advanced, lm=46] run tellraw @s {"rawtext":[{"text":"§aYour magical proficiency is at the Advanced Tier"}]}
execute as @a[tag=!advanced, lm=46] run tag @s add advanced
execute as @a[tag=advanced, l=45, lm=0] run tag @s remove advanced





#Water Ward

scoreboard objectives add water_ward_spell dummy water_ward_spell
scoreboard objectives add water_ward_timer dummy water_ward_timer
execute as @e[scores={water_ward_spell=1..}] run scoreboard players add @s water_ward_spell 1
execute as @e[scores={water_ward_spell=1..}] run scoreboard players add @s water_ward_timer 1
execute as @e[scores={water_ward_timer=11..}] run scoreboard players add @s water_ward_timer 0

execute as @e[scores={water_ward_spell=1.., water_ward_timer=10}] run effect @s slowness 0 225 true

execute as @e[scores={water_ward_spell=1..}] run particle tome:water_ward ~ ~1 ~

execute as @e[scores={water_ward_spell=600}] run tellraw @s {"rawtext":[{"text":"§1||You have 1 minute and 30 seconds of Water Ward remaining||§r"}]}

execute as @e[scores={water_ward_spell=1200}] run tellraw @s {"rawtext":[{"text":"§1||You have 1 minute of Water Ward remaining||§r"}]}

execute as @e[scores={water_ward_spell=1800}] run tellraw @s {"rawtext":[{"text":"§1||You have 30 seconds of Water Ward remaining||§r"}]}

execute as @e[scores={water_ward_spell=2400}] run tellraw @s {"rawtext":[{"text":"§1||Your Water Ward effect has worn off||§r"}]}

execute as @e[scores={water_ward_spell=2401}] run scoreboard players set @s water_ward_spell 0
execute as @e[scores={water_ward_spell=2401}] run scoreboard players set @s water_ward_time 0
execute as @a[tag=last_dead] run scoreboard players set @s water_ward_timer 0
execute as @a[tag=last_dead] run scoreboard players set @s water_ward_spell 0






#Candlelight

scoreboard objectives add candle_spell dummy candle_spell
scoreboard objectives add candle_timer dummy candle_timer
execute as @e[scores={candle_spell=1..}] run scoreboard players add @s candle_spell 1
execute as @e[scores={candle_spell=1..}] run scoreboard players add @s candle_timer 1
execute as @e[scores={candle_timer=11..}] run scoreboard players set @s candle_timer 0

execute at @e[scores={candle_spell=1..}] run setblock ~ ~2 ~ tome:candlelight 0 keep
execute at @e[scores={candle_spell=1.., candle_timer=10}] run particle tome:candle_flame ~ ~2 ~

execute as @e[scores={candle_spell=400}] run tellraw @s {"rawtext":[{"text":"§e||You have 20 seconds of Candlelight remaining||§r"}]}

execute as @e[scores={candle_spell=900}] run tellraw @s {"rawtext":[{"text":"§e||Your Candlelight effect has worn off||§r"}]}

execute as @e[scores={candle_spell=901}] run scoreboard players set @s candle_spell 0
execute as @e[scores={candle_spell=901}] run scoreboard players set @s candle_timer 0
execute as @a[tag=last_dead] run scoreboard players set @s candle_spell 0
execute as @a[tag=last_dead] run scoreboard players set @s candle_timer 0







#Decay

scoreboard objectives add decay_timer dummy decay_timer
execute as @e[tag=decay] run scoreboard players add @s decay_timer 1

execute at @e[tag=decay] run effect @e[tag=!decay, rm=1, r=3] wither 20 0 false
execute at @e[tag=decay] run tag @e[tag=!decay, rm=1, r=3] add decay

execute as @e[tag=decay, scores={decay_timer=401..}] run tag @s remove decay
execute as @e[tag=decay, scores={decay_timer=401..}] run scoreboard players set @s decay_timer 0
execute as @a[tag=last_dead] run tag @s remove decay
execute as @a[tag=last_dead] run scoreboard players set @s decay_timer 0


#MARKED LIGHTNING

scoreboard objectives add marked_lightning dummy marked_lightning
execute as @e[scores={marked_lightning=1..}] run scoreboard players add @s marked_lightning 1
execute as @e[scores={marked_lightning=40}] run summon lightning_bolt ~~~
execute as @e[scores={marked_lightning=41..}] run scoreboard players set @s marked_lightning 0
execute as @a[tag=last_dead] run scoreboard players set @s marked_lightning 0


#Freezing

scoreboard objectives add freezing dummy freezing
scoreboard objectives add freezing_time dummy freezing_time
execute as @e[scores={freezing=1..}] run scoreboard players add @s freezing 1
execute as @e[scores={freezing=1..}] run scoreboard players add @s freezing_time 1

execute as @e[scores={freezing_time=20}] run damage @s 1 freezing
execute as @e[scores={freezing_time=20}] run particle tome:freezing ~~~
execute as @e[scores={freezing_time=20}] run effect @s slowness 3 1 true

execute as @e[scores={freezing_time=21..}] run scoreboard players set @s freezing_time 0
execute as @e[scores={freezing=401..}] run scoreboard players set @s freezing_time 0
execute as @e[scores={freezing=401..}] run scoreboard players set @s freezing 0

execute as @a[tag=last_dead] run scoreboard players set @s freezing 0
execute as @a[tag=last_dead] run scoreboard players set @s freezing_time 0



#Drowning

scoreboard objectives add drown dummy drown
scoreboard objectives add drown_time dummy drown_time
execute as @e[scores={drown=1..}] run scoreboard players add @s drown 1
execute as @e[scores={drown=1..}] run scoreboard players add @s drown_time 1

execute as @e[scores={drown_time=20}] run damage @s 1 drowning
execute as @e[scores={drown_time=20}] run particle tome:water_drown ~~~

execute as @e[scores={drown_time=21..}] run scoreboard players set @s drown_time 0
execute as @e[scores={drown=301..}] run scoreboard players set @s drown_time 0
execute as @e[scores={drown=301..}] run scoreboard players set @s drown 0

execute as @a[tag=last_dead] run scoreboard players set @s drown 0
execute as @a[tag=last_dead] run scoreboard players set @s drown_time 0


