/datum/anvil_recipe/engineering
	i_type = "Engineering"
	appro_skill = /datum/skill/craft/engineering
	craftdiff = 1

/datum/anvil_recipe/engineering/jingle_bells
	name = "Jingling Bells"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/jingle_bells
	createditem_num = 5 
	craftdiff = 1

// --------- BRONZE RECIPES -----------

/datum/anvil_recipe/engineering/bronze/locks
	name = "Lock"
	req_bar = /obj/item/ingot/bronze
	created_item = /obj/item/customlock
	craftdiff = 1

/datum/anvil_recipe/engineering/bronze/keys
	name = "Keys 2x"
	req_bar = /obj/item/ingot/bronze
	created_item = /obj/item/customblank
	createditem_num = 2
	craftdiff = 1

/datum/anvil_recipe/engineering/bronze/cog
	name = "Cog"
	req_bar = /obj/item/ingot/bronze
	created_item = /obj/item/roguegear
	craftdiff = 0

/datum/anvil_recipe/engineering/bronze/lamptern
	name = "Bronze Lamptern"
	req_bar = /obj/item/ingot/bronze
	created_item = /obj/item/flashlight/flare/torch/lantern/bronzelamptern
	craftdiff = 3

/datum/anvil_recipe/engineering/bronze/waterpurifier
	name = "Self-Purifying Waterskin"
	req_bar = /obj/item/ingot/bronze
	created_item = /obj/item/reagent_containers/glass/bottle/waterskin/purifier
	additional_items = list(/obj/item/reagent_containers/glass/bottle/waterskin)
	craftdiff = 3

/datum/anvil_recipe/engineering/bronze/coolingbackpack
	name = "Cooling Backpack" // why are these recipes capitalized differently than every other crafting recipe my ocddddddddddd
	req_bar = /obj/item/ingot/bronze
	created_item = /obj/item/storage/backpack/rogue/artibackpack
	additional_items = list(/obj/item/roguegear, /obj/item/roguegear, /obj/item/roguegear, /obj/item/storage/backpack/rogue/backpack)
	craftdiff = 5

/datum/anvil_recipe/engineering/bronze/smokebomb
	name = "Smoke Bomb"
	req_bar = /obj/item/ingot/bronze
	created_item = /obj/item/smokebomb
	additional_items = list(/obj/item/roguegear, /obj/item/ash)
	craftdiff = 3		

/datum/anvil_recipe/engineering/bronze/grappler
	name = "Grappler"
	req_bar = /obj/item/ingot/bronze
	created_item = /obj/item/grapplinghook
	additional_items = list(/obj/item/rogueweapon/pick, /obj/item/roguegear, /obj/item/roguegear, /obj/item/roguegear, /obj/item/rope/chain)
	craftdiff = 5

// ------------ PROSTHETICS ----------------

/datum/anvil_recipe/engineering/bronze/prosthetic/bronzeleftarm
	name = "Bronze Left Arm"
	req_bar = /obj/item/ingot/bronze
	additional_items = list(/obj/item/ingot/bronze, /obj/item/roguegear, /obj/item/roguegear)
	created_item = /obj/item/bodypart/l_arm/prosthetic/bronzeleft
	craftdiff = 4

/datum/anvil_recipe/engineering/bronze/prosthetic/bronzerightarm
	name = "Bronze Right Arm"
	req_bar = /obj/item/ingot/bronze
	additional_items = list(/obj/item/ingot/bronze, /obj/item/roguegear, /obj/item/roguegear)
	created_item = /obj/item/bodypart/r_arm/prosthetic/bronzeright
	craftdiff = 4

/datum/anvil_recipe/engineering/bronze/prosthetic/bronzeleftleg
	name = "Bronze Left Leg"
	req_bar = /obj/item/ingot/bronze
	additional_items = list(/obj/item/ingot/bronze, /obj/item/roguegear, /obj/item/roguegear)
	created_item = /obj/item/bodypart/l_leg/prosthetic/bronzeleft
	craftdiff = 4

/datum/anvil_recipe/engineering/bronze/prosthetic/bronzerightleg
	name = "Bronze Right Leg"
	req_bar = /obj/item/ingot/bronze
	additional_items = list(/obj/item/ingot/bronze, /obj/item/roguegear, /obj/item/roguegear)
	created_item = /obj/item/bodypart/r_leg/prosthetic/bronzeright
	craftdiff = 4
