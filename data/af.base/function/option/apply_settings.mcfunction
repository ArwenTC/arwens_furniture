# Applies the settings
$scoreboard players set shulker af.settings $(0)
$scoreboard players set entities af.settings $(1)
# Tells user settings have been applied
tellraw @s [{storage:"af.base:string",nbt:"prefix",interpret:true},{"text":"Settings Applied!","color":"white"}]