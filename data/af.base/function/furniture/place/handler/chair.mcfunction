# Creates an interaction entity. This will act as the seat entity for the player
summon interaction ~ ~0.65 ~ {Tags:[af.furniture,af.seat,af.new],width:0,height:0}
# Tags the interation so its behaves as a seat when clicked.
tag @e[tag=af.furniture_interaction,tag=af.new,type=interaction,distance=..10] add af.seat_interaction