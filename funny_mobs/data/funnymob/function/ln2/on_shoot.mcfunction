execute as @e[type=minecraft:arrow,tag=!pfm_ln2_arrow,distance=..2,sort=nearest,limit=1] at @s run function funnymob:ln2/arrow_replace


# execute as @s[type=minecraft:player,nbt={SelectedItem:{tag:{Damage:382}}}] run item replace entity @s weapon.mainhand with minecraft:bow{display:{Name:'{"text":"Liquid Nitrogen Cannon","color":"light_purple","italic":false}',Lore:['{"text":" "}','{"text":"For 6s, hit targets will take 1 hp","color":"gray","italic":true}','[{"text":"of ","color":"gray","italic":true},{"text":"True Damage","color":"white","bold":true,"italic":true},{"text":" per 3m travelled","color":"gray","bold":false,"italic":true}]','{"text":" "}','{"text":"Uses left: 1","color":"red","italic":false}']},RepairCost:9999,Damage:382,pfm_ln2:1b,Enchantments:[{id:"minecraft:punch",lvl:3s}]} 1
# execute as @s[type=minecraft:player,nbt={SelectedItem:{tag:{Damage:381}}}] run item replace entity @s weapon.mainhand with minecraft:bow{display:{Name:'{"text":"Liquid Nitrogen Cannon","color":"light_purple","italic":false}',Lore:['{"text":" "}','{"text":"For 6s, hit targets will take 1 hp","color":"gray","italic":true}','[{"text":"of ","color":"gray","italic":true},{"text":"True Damage","color":"white","bold":true,"italic":true},{"text":" per 3m travelled","color":"gray","bold":false,"italic":true}]','{"text":" "}','{"text":"Uses left: 2","color":"red","italic":false}']},RepairCost:9999,Damage:381,pfm_ln2:1b,Enchantments:[{id:"minecraft:punch",lvl:3s}]} 1
# execute as @s[type=minecraft:player,nbt={SelectedItem:{tag:{Damage:380}}}] run item replace entity @s weapon.mainhand with minecraft:bow{display:{Name:'{"text":"Liquid Nitrogen Cannon","color":"light_purple","italic":false}',Lore:['{"text":" "}','{"text":"For 6s, hit targets will take 1 hp","color":"gray","italic":true}','[{"text":"of ","color":"gray","italic":true},{"text":"True Damage","color":"white","bold":true,"italic":true},{"text":" per 3m travelled","color":"gray","bold":false,"italic":true}]','{"text":" "}','{"text":"Uses left: 3","color":"red","italic":false}']},RepairCost:9999,Damage:380,pfm_ln2:1b,Enchantments:[{id:"minecraft:punch",lvl:3s}]} 1
# execute as @s[type=minecraft:player,nbt={SelectedItem:{tag:{Damage:379}}}] run item replace entity @s weapon.mainhand with minecraft:bow{display:{Name:'{"text":"Liquid Nitrogen Cannon","color":"light_purple","italic":false}',Lore:['{"text":" "}','{"text":"For 6s, hit targets will take 1 hp","color":"gray","italic":true}','[{"text":"of ","color":"gray","italic":true},{"text":"True Damage","color":"white","bold":true,"italic":true},{"text":" per 3m travelled","color":"gray","bold":false,"italic":true}]','{"text":" "}','{"text":"Uses left: 4","color":"red","italic":false}']},RepairCost:9999,Damage:379,pfm_ln2:1b,Enchantments:[{id:"minecraft:punch",lvl:3s}]} 1


execute as @s[type=minecraft:player] run scoreboard players reset @s pfm_ln2_used
