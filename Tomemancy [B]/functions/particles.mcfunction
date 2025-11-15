execute as @e[type=tome:ignite] run particle tome:flame ^ ^0.1 ^
execute as @e[type=tome:explode] run particle tome:flame ^ ^0.1 ^

execute as @e[type=tome:meteor] run particle tome:fireball ^ ^0.2 ^

execute as @e[type=tome:water_blast] run particle tome:water_dart ^ ^0.1 ^
execute as @e[type=tome:water_blast] run fill ~1 ~-1 ~-1 ~-1 ~1 ~1 air 0 replace fire 51

execute as @e[type=tome:water_ball] run particle tome:water_dart ^ ^0.1 ^
execute as @e[type=tome:water_ball] run fill ~ ~-1 ~ ~ ~ ~ air 0 replace fire 51


execute as @e[type=tome:piercing_water] run particle tome:water_trail ^ ^0.1 ^
execute as @e[type=tome:lunar_shaft] run particle tome:moon ^ ^0.1 ^


execute as @e[type=tome:skeleton_steed_projectile] run particle tome:flame ^ ^0.1 ^
execute as @e[type=tome:skeleton_projectile] run particle tome:flame ^ ^0.1 ^
execute as @e[type=tome:zombie_projectile] run particle tome:flame ^ ^0.1 ^

execute as @e[type=tome:heal] run particle tome:healing_dart ^ ^0.1 ^
execute as @e[type=tome:group_heal] run particle tome:healing_dart ^ ^0.1 ^
execute as @e[type=tome:light_ball] run particle tome:healing_dart ^ ^0.1 ^
execute as @e[type=tome:gigavolt] run particle tome:star ^ ^0.1 ^

execute as @e[type=tome:spider_projectile] run particle tome:poison_dart ^ ^0.1 ^
execute as @e[type=tome:leaf_prison] run particle tome:poison_dart ^ ^0.1 ^

execute as @e[type=tome:poison_field] run particle tome:poison_dart ^ ^0.1 ^

execute as @e[type=tome:toxic_bullet] run particle tome:poison_dart ^ ^0.1 ^
execute as @e[type=tome:fatal_poison] run particle tome:poison_dart ^ ^0.1 ^

execute as @e[type=tome:acid_blast] run particle tome:poison_trail ^ ^0.1 ^
execute as @e[type=tome:druid_ball] run particle tome:poison_trail ^ ^0.1 ^

execute as @e[type=tome:amethyst_blast] run particle tome:light_spell_magenta ^ ^0.1 ^

execute as @e[type=tome:fireball] run particle tome:fireball ^ ^ ^
execute as @e[type=tome:fire_bolt] run particle tome:fireball ^ ^ ^
execute as @e[type=tome:greater_fireball] run particle tome:fireball ^ ^ ^


execute as @e[type=tome:sand_ball] run particle tome:sand ^ ^0.1 ^



execute as @e[type=tome:drown_ball] run particle tome:bubbles ^ ^0.1 ^


execute as @e[type=tome:freezing_bolt] run particle tome:frost ^ ^0.1 ^

execute as @e[type=tome:frost_blast] run particle tome:frost ^ ^0.1 ^
execute as @e[type=tome:frost_blast] if block ~ ~-1 ~ water run fill ~-2 ~ ~2 ~2 ~ ~-2 frosted_ice 0 replace water 0




execute as @e[type=tome:charm] run particle tome:heart_trail ^ ^ ^

execute as @e[type=tome:color_spray] run particle tome:color ^ ^ ^






execute as @e[type=tome:weaken] run particle tome:hex ^ ^0.1 ^
execute as @e[type=tome:wither] run particle tome:hex ^ ^0.1 ^
execute as @e[type=tome:slow] run particle tome:hex ^ ^0.1 ^
execute as @e[type=tome:decay] run particle tome:hex ^ ^0.1 ^
execute as @e[type=tome:decay_orb] run particle tome:hex ^ ^0.1 ^
execute as @e[type=tome:creeper_curse] run particle tome:hex ^ ^0.1 ^
execute as @e[type=tome:hunger] run particle tome:hex ^ ^0.1 ^
execute as @e[type=tome:stunt_heal] run particle tome:hex ^ ^0.1 ^

execute as @e[type=tome:necromantic_bolt] run particle tome:necro ^ ^0.1 ^
execute as @e[type=tome:necro_ball] run particle tome:necro ^ ^0.1 ^
execute as @e[type=tome:enfeeble_bolt] run particle tome:necro ^ ^0.1 ^

