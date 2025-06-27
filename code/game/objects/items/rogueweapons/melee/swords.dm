//intent datums ฅ^•ﻌ•^ฅ

/datum/intent/sword/cut
	name = "strike"
	icon_state = "incut"
	attack_verb = list("cuts", "slashes")
	animname = "cut"
	blade_class = BCLASS_CUT
	chargetime = 0
	hitsound = list('sound/combat/hits/bladed/genslash (1).ogg', 'sound/combat/hits/bladed/genslash (2).ogg', 'sound/combat/hits/bladed/genslash (3).ogg')
	swingdelay = 0
	damfactor = 1.1
	item_d_type = "slash"

/datum/intent/sword/cut/sabre
	clickcd = 8
	penfactor = 20
	releasedrain = 4

/datum/intent/sword/cut/falchion
	clickcd = 10
	penfactor = 30
	swingdelay = 4


/datum/intent/sword/cut/falx
	penfactor = 30

/datum/intent/sword/thrust
	name = "stab"
	icon_state = "instab"
	attack_verb = list("stabs")
	animname = "stab"
	blade_class = BCLASS_STAB
	hitsound = list('sound/combat/hits/bladed/genstab (1).ogg', 'sound/combat/hits/bladed/genstab (2).ogg', 'sound/combat/hits/bladed/genstab (3).ogg')
	penfactor = 20
	chargetime = 0
	swingdelay = 0
	item_d_type = "stab"

/datum/intent/sword/strike
	name = "pommel strike"
	icon_state = "instrike"
	attack_verb = list("bashes", "clubs")
	animname = "strike"
	blade_class = BCLASS_BLUNT
	hitsound = list('sound/combat/hits/blunt/metalblunt (1).ogg', 'sound/combat/hits/blunt/metalblunt (2).ogg', 'sound/combat/hits/blunt/metalblunt (3).ogg')
	chargetime = 0
	penfactor = 20
	swingdelay = 2
	damfactor = 0.8
	item_d_type = "blunt"
	releasedrain = 4

/datum/intent/sword/chop
	name = "chop"
	icon_state = "inchop"
	attack_verb = list("chops", "hacks")
	animname = "chop"
	blade_class = BCLASS_CHOP
	hitsound = list('sound/combat/hits/bladed/genchop (1).ogg', 'sound/combat/hits/bladed/genchop (2).ogg', 'sound/combat/hits/bladed/genchop (3).ogg')
	penfactor = 30
	swingdelay = 8
	damfactor = 1.0
	item_d_type = "slash"
	releasedrain = 7

/datum/intent/sword/chop/falx
	penfactor = 40

/datum/intent/sword/chop/awful // This is for pure thrusting swords with very little slashing power as an absolute last resort.
	name = "cleave"
	attack_verb = list("awkwardly cleaves", "poorly splits")
	damfactor = 0.5

//sword objs ฅ^•ﻌ•^ฅ

/obj/item/rogueweapon/sword
	slot_flags = ITEM_SLOT_HIP | ITEM_SLOT_BACK
	force = 22
	force_wielded = 25
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust)
	gripped_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	name = "sword"
	desc = "A simple steel sword, clean and effective."
	icon_state = "sword1"
	icon = 'icons/roguetown/weapons/32.dmi'
	lefthand_file = 'icons/mob/inhands/weapons/rogue_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/rogue_righthand.dmi'
	parrysound = "bladedmedium"
	swingsound = BLADEWOOSH_MED
	associated_skill = /datum/skill/combat/swords
	max_blade_int = 100
	max_integrity = 150
	wlength = WLENGTH_NORMAL
	w_class = WEIGHT_CLASS_BULKY
	pickup_sound = 'sound/foley/equip/swordlarge1.ogg'
	sheathe_sound = 'sound/items/wood_sharpen.ogg'
	flags_1 = CONDUCT_1
	throwforce = 10
	thrown_bclass = BCLASS_CUT
	//dropshrink = 0.75
	anvilrepair = /datum/skill/craft/weaponsmithing
	smeltresult = /obj/item/ingot/steel
	minstr = 7
	sellprice = 30
	wdefense = 3.5
	grid_width = 32
	grid_height = 64

/obj/item/rogueweapon/sword/Initialize()
	. = ..()
	if(icon_state == "sword1")
		icon_state = "sword[rand(1,3)]"

/obj/item/rogueweapon/sword/falchion
	name = "falchion"
	desc = "A blade with a quilloned crossguard. Despite its heavy blade, each cut leads naturally into the next."
	force = 25
	parrysound = "bladedmedium"
	possible_item_intents = list(/datum/intent/sword/cut/falchion, /datum/intent/sword/thrust)
	icon_state = "falchion"
	gripped_intents = null
	minstr = 4
	wdefense = 6
	wbalance = -1

/obj/item/rogueweapon/sword/falx
	name = "falx"
	desc = "A blade with an odd curve forward, meant to penetrate armour and slice flesh."
	parrysound = "bladedmedium"
	force = 22
	possible_item_intents = list(/datum/intent/sword/cut/falx,  /datum/intent/sword/chop/falx, /datum/intent/sword/strike)
	icon_state = "falx"
	max_blade_int = 100
	max_integrity = 125
	gripped_intents = null
	minstr = 4
	wdefense = 5

/obj/item/rogueweapon/sword/decorated
	name = "engraved sword"
	desc = "A valuable sword for celebrations and rites."
	icon_state = "decsword1"
	sellprice = 140


/obj/item/rogueweapon/sword/decorated/Initialize()
	. = ..()
	if(icon_state == "decsword1")
		icon_state = "decsword[rand(1,3)]"

/obj/item/rogueweapon/sword/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -10,"sy" = -8,"nx" = 13,"ny" = -8,"wx" = -8,"wy" = -7,"ex" = 7,"ey" = -8,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 90,"sturn" = -90,"wturn" = -80,"eturn" = 81,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 3,"sy" = 4,"nx" = -1,"ny" = 4,"wx" = -8,"wy" = 3,"ex" = 7,"ey" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 15,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.5,"sx" = -4,"sy" = -6,"nx" = 5,"ny" = -6,"wx" = 0,"wy" = -6,"ex" = -1,"ey" = -6,"nturn" = 100,"sturn" = 156,"wturn" = 90,"eturn" = 180,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/sword/stone
	force = 17 //Weaker than a short sword
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/chop)
	gripped_intents = null
	name = "stone sword"
	desc = "A simple stone sword, crude and ineffective."
	icon_state = "stone_sword"
	max_blade_int = 70
	max_integrity = 70
	anvilrepair = /datum/skill/craft/crafting
	smeltresult = null
	minstr = 4
	wdefense = 1.5
	sellprice = 10

/obj/item/rogueweapon/sword/short
	name = "short sword"
	desc = "An archaic steel sword made for stabbing."
	force = 19
	possible_item_intents = list(/datum/intent/sword/cut/short, /datum/intent/sword/thrust/short)
	icon_state = "swordshort"
	gripped_intents = null
	minstr = 4
	wdefense = 4
	wlength = WLENGTH_SHORT
	w_class = WEIGHT_CLASS_NORMAL
	grid_width = 32
	grid_height = 96

/obj/item/rogueweapon/sword/long
	force = 25
	force_wielded = 30
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike, /datum/intent/sword/chop)
	icon_state = "longsword"
	icon = 'icons/roguetown/weapons/64.dmi'
	item_state = "longsword"
	lefthand_file = 'icons/mob/inhands/weapons/roguebig_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/roguebig_righthand.dmi'
	name = "bastard sword"
	desc = "A bastard sword that can chop with ease."
	parrysound = "bladedmedium"
	swingsound = BLADEWOOSH_LARGE
	pickup_sound = 'sound/foley/equip/swordlarge2.ogg'
	bigboy = 1
	wlength = WLENGTH_LONG
	gripsprite = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	associated_skill = /datum/skill/combat/swords
	throwforce = 15
	thrown_bclass = BCLASS_CUT
	dropshrink = 0.75
	smeltresult = /obj/item/ingot/steel
	wdefense = 3

/obj/item/rogueweapon/sword/long/death
	color = CLOTHING_BLACK

/obj/item/rogueweapon/sword/long/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") return list("shrink" = 0.5, "sx" = -14, "sy" = -8, "nx" = 15, "ny" = -7, "wx" = -10, "wy" = -5, "ex" = 7, "ey" = -6, "northabove" = 0, "southabove" = 1, "eastabove" = 1, "westabove" = 0, "nturn" = -13, "sturn" = 110, "wturn" = -60, "eturn" = -30, "nflip" = 1, "sflip" = 1, "wflip" = 8, "eflip" = 1)
			if("wielded") return list("shrink" = 0.6,"sx" = 9,"sy" = -4,"nx" = -7,"ny" = 1,"wx" = -9,"wy" = 2,"ex" = 10,"ey" = 2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 5,"sturn" = -190,"wturn" = -170,"eturn" = -10,"nflip" = 8,"sflip" = 8,"wflip" = 1,"eflip" = 0)
			if("onback") return list("shrink" = 0.5, "sx" = -1, "sy" = 2, "nx" = 0, "ny" = 2, "wx" = 2, "wy" = 1, "ex" = 0, "ey" = 1, "nturn" = 0, "sturn" = 0, "wturn" = 70, "eturn" = 15, "nflip" = 1, "sflip" = 1, "wflip" = 1, "eflip" = 1, "northabove" = 1, "southabove" = 0, "eastabove" = 0, "westabove" = 0)
			if("onbelt") return list("shrink" = 0.4, "sx" = -4, "sy" = -6, "nx" = 5, "ny" = -6, "wx" = 0, "wy" = -6, "ex" = -1, "ey" = -6, "nturn" = 100, "sturn" = 156, "wturn" = 90, "eturn" = 180, "nflip" = 0, "sflip" = 0, "wflip" = 0, "eflip" = 0, "northabove" = 0, "southabove" = 1, "eastabove" = 1, "westabove" = 0)

/obj/item/rogueweapon/sword/long/heirloom
	force = 20
	force_wielded = 30
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike, /datum/intent/sword/chop)
	icon_state = "heirloom"
	icon = 'icons/roguetown/weapons/64.dmi'
	item_state = "longsword"
	lefthand_file = 'icons/mob/inhands/weapons/roguebig_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/roguebig_righthand.dmi'
	name = "old sword"
	desc = "A old steel sword with a green leather grip."
	parrysound = "bladedmedium"
	swingsound = BLADEWOOSH_LARGE
	pickup_sound = 'sound/foley/equip/swordlarge2.ogg'
	bigboy = 1
	wlength = WLENGTH_LONG
	gripsprite = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	associated_skill = /datum/skill/combat/swords
	throwforce = 15
	thrown_bclass = BCLASS_CUT
	dropshrink = 0.75
	smeltresult = /obj/item/ingot/steel

/obj/item/rogueweapon/sword/long/heirloom/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") return list("shrink" = 0.5, "sx" = -14, "sy" = -8, "nx" = 15, "ny" = -7, "wx" = -10, "wy" = -5, "ex" = 7, "ey" = -6, "northabove" = 0, "southabove" = 1, "eastabove" = 1, "westabove" = 0, "nturn" = -13, "sturn" = 110, "wturn" = -60, "eturn" = -30, "nflip" = 1, "sflip" = 1, "wflip" = 8, "eflip" = 1)
			if("wielded") return list("shrink" = 0.6,"sx" = 9,"sy" = -4,"nx" = -7,"ny" = 1,"wx" = -9,"wy" = 2,"ex" = 10,"ey" = 2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 5,"sturn" = -190,"wturn" = -170,"eturn" = -10,"nflip" = 8,"sflip" = 8,"wflip" = 1,"eflip" = 0)
			if("onback") return list("shrink" = 0.5, "sx" = -1, "sy" = 2, "nx" = 0, "ny" = 2, "wx" = 2, "wy" = 1, "ex" = 0, "ey" = 1, "nturn" = 0, "sturn" = 0, "wturn" = 70, "eturn" = 15, "nflip" = 1, "sflip" = 1, "wflip" = 1, "eflip" = 1, "northabove" = 1, "southabove" = 0, "eastabove" = 0, "westabove" = 0)
			if("onbelt") return list("shrink" = 0.3, "sx" = -4, "sy" = -6, "nx" = 5, "ny" = -6, "wx" = 0, "wy" = -6, "ex" = -1, "ey" = -6, "nturn" = 100, "sturn" = 156, "wturn" = 90, "eturn" = 180, "nflip" = 0, "sflip" = 0, "wflip" = 0, "eflip" = 0, "northabove" = 0, "southabove" = 1, "eastabove" = 1, "westabove" = 0)

/obj/item/rogueweapon/sword/long/malumflamm
	name = "Forgefiend"
	desc = "This sword's creation took a riddle in its own making. A great sacrifice for perfect quality."
	icon_state = "malumflamberge"
	max_integrity = 300
	wbalance = 0.5
	wdefense = 4

/obj/item/rogueweapon/sword/long/zizo
	name = "darksteel longsword"
	desc = "A wicked and red blade. Called forth from the edge of what should be known. In Her name."
	force = 30
	force_wielded = 35
	icon_state = "zizosword"

/obj/item/rogueweapon/sword/long/zizo/pickup(mob/living/user)
	if(!HAS_TRAIT(user, TRAIT_CABAL))
		to_chat(user, "<font color='purple'>UNWORTHY HANDS TOUCH THE SWORD, CEASE OR BE PUNISHED</font>")
		if(loc == user)
			user.adjust_fire_stacks(5)
			user.IgniteMob()
			user.Stun(40)
	..()

/obj/item/rogueweapon/sword/long/judgement
	force = 27
	force_wielded = 32
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike, /datum/intent/sword/chop)
	icon_state = "judgement"
	icon = 'icons/roguetown/weapons/64.dmi'
	item_state = "judgement"
	lefthand_file = 'icons/mob/inhands/weapons/roguebig_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/roguebig_righthand.dmi'
	name = "judgement"
	desc = "A sword with a silver grip, a topaz gem hilt and a steel blade, what more could a noble ask for."
	parrysound = "bladedmedium"
	swingsound = BLADEWOOSH_LARGE
	pickup_sound = 'sound/foley/equip/swordlarge2.ogg'
	bigboy = 1
	wlength = WLENGTH_LONG
	gripsprite = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	associated_skill = /datum/skill/combat/swords
	throwforce = 15
	thrown_bclass = BCLASS_CUT
	dropshrink = 0.75
	smeltresult = /obj/item/ingot/steel
	sellprice = 363
	static_price = TRUE

/obj/item/rogueweapon/sword/long/judgement/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") 
				return list("shrink" = 0.5,"sx" = -14,"sy" = -8,"nx" = 15,"ny" = -7,"wx" = -10,"wy" = -5,"ex" = 7,"ey" = -6,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -13,"sturn" = 110,"wturn" = -60,"eturn" = -30,"nflip" = 1,"sflip" = 1,"wflip" = 8,"eflip" = 1)
			if("onback") 
				return list("shrink" = 0.5,"sx" = -1,"sy" = 2,"nx" = 0,"ny" = 2,"wx" = 2,"wy" = 1,"ex" = 0,"ey" = 1,"nturn" = 0,"sturn" = 0,"wturn" = 70,"eturn" = 15,"nflip" = 1,"sflip" = 1,"wflip" = 1,"eflip" = 1,"northabove" = 1,"southabove" = 0,"eastabove" = 0,"westabove" = 0)
			if("wielded") 
				return list("shrink" = 0.4,"sx" = 3,"sy" = 4,"nx" = -1,"ny" = 4,"wx" = -8,"wy" = 3,"ex" = 7,"ey" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 15,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onbelt") 
				return list("shrink" = 0.4,"sx" = -4,"sy" = -6,"nx" = 5,"ny" = -6,"wx" = 0,"wy" = -6,"ex" = -1,"ey" = -6,"nturn" = 100,"sturn" = 156,"wturn" = 90,"eturn" = 180,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/sword/long/judgement/ascendant //meant to be insanely OP; solo antag wep
	force = 50
	force_wielded = 70
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike, /datum/intent/sword/chop)
	icon_state = "crucified"
	icon = 'icons/roguetown/weapons/64.dmi'
	item_state = "judgement"
	lefthand_file = 'icons/mob/inhands/weapons/roguebig_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/roguebig_righthand.dmi'
	name = "Psydonia Redentor"
	desc = "...for the LORD is my tower, and HE gives me the power to tear down the works of the enemy..."
	parrysound = "bladedmedium"
	swingsound = BLADEWOOSH_LARGE
	pickup_sound = 'sound/foley/equip/swordlarge2.ogg'
	bigboy = 1
	wlength = WLENGTH_LONG
	gripsprite = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	associated_skill = /datum/skill/combat/swords
	throwforce = 15
	thrown_bclass = BCLASS_CUT
	dropshrink = 0.75
	smeltresult = /obj/item/ingot/steel
	sellprice = 999
	static_price = TRUE
	max_integrity = 9999


/obj/item/rogueweapon/sword/long/vlord
	force = 25
	force_wielded = 38
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike, /datum/intent/sword/chop)
	icon_state = "vlord"
	icon = 'icons/roguetown/weapons/64.dmi'
	item_state = "vlord"
	lefthand_file = 'icons/mob/inhands/weapons/roguebig_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/roguebig_righthand.dmi'
	name = "crimson fang"
	desc = "A strange long sword with a green metal composition."
	parrysound = "bladedmedium"
	swingsound = BLADEWOOSH_LARGE
	pickup_sound = 'sound/foley/equip/swordlarge2.ogg'
	bigboy = 1
	wlength = WLENGTH_LONG
	gripsprite = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	associated_skill = /datum/skill/combat/swords
	max_integrity = 9999
	throwforce = 15
	thrown_bclass = BCLASS_CUT
	dropshrink = 0.75
	smeltresult = /obj/item/ingot/steel
	sellprice = 363
	static_price = TRUE

/obj/item/rogueweapon/sword/long/vlord/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") 
				return list("shrink" = 0.5,"sx" = -14,"sy" = -8,"nx" = 15,"ny" = -7,"wx" = -10,"wy" = -5,"ex" = 7,"ey" = -6,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -13,"sturn" = 110,"wturn" = -60,"eturn" = -30,"nflip" = 1,"sflip" = 1,"wflip" = 8,"eflip" = 1)
			if("onback") 
				return list("shrink" = 0.5,"sx" = -1,"sy" = 2,"nx" = 0,"ny" = 2,"wx" = 2,"wy" = 1,"ex" = 0,"ey" = 1,"nturn" = 0,"sturn" = 0,"wturn" = 70,"eturn" = 15,"nflip" = 1,"sflip" = 1,"wflip" = 1,"eflip" = 1,"northabove" = 1,"southabove" = 0,"eastabove" = 0,"westabove" = 0)
			if("wielded") 
				return list("shrink" = 0.4,"sx" = 3,"sy" = 4,"nx" = -1,"ny" = 4,"wx" = -8,"wy" = 3,"ex" = 7,"ey" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 15,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onbelt") 
				return list("shrink" = 0.4,"sx" = -4,"sy" = -6,"nx" = 5,"ny" = -6,"wx" = 0,"wy" = -6,"ex" = -1,"ey" = -6,"nturn" = 100,"sturn" = 156,"wturn" = 90,"eturn" = 180,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/sword/long/rider
	force = 26
	force_wielded = 31
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut/falx, /datum/intent/sword/strike, /datum/intent/sword/chop)
	icon_state = "tabi"
	icon = 'icons/roguetown/weapons/64.dmi'
	item_state = "tabi"
	lefthand_file = 'icons/mob/inhands/weapons/roguebig_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/roguebig_righthand.dmi'
	name = "shamshir"
	desc = "A one-handed sword with elegant curves and deadly sharpness."
	parrysound = "bladedmedium"
	swingsound = BLADEWOOSH_LARGE
	pickup_sound = 'sound/foley/equip/swordlarge2.ogg'
	bigboy = 1
	wlength = WLENGTH_LONG
	gripsprite = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	associated_skill = /datum/skill/combat/swords
	throwforce = 15
	thrown_bclass = BCLASS_CUT
	dropshrink = 0.75
	smeltresult = /obj/item/ingot/steel

/obj/item/rogueweapon/sword/long/rider/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -10,"sy" = -8,"nx" = 13,"ny" = -8,"wx" = -8,"wy" = -7,"ex" = 7,"ey" = -8,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 90,"sturn" = -90,"wturn" = -80,"eturn" = 81,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 3,"sy" = 4,"nx" = -1,"ny" = 4,"wx" = -8,"wy" = 3,"ex" = 7,"ey" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 15,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.5,"sx" = -4,"sy" = -6,"nx" = 5,"ny" = -6,"wx" = 0,"wy" = -6,"ex" = -1,"ey" = -6,"nturn" = 100,"sturn" = 156,"wturn" = 90,"eturn" = 180,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/sword/long/marlin
	force = 26
	force_wielded = 31
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut/falx, /datum/intent/sword/strike, /datum/intent/sword/chop)
	icon_state = "marlin"
	icon = 'icons/roguetown/weapons/64.dmi'
	item_state = "marlin"
	lefthand_file = 'icons/mob/inhands/weapons/roguebig_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/roguebig_righthand.dmi'
	name = "shalal saber"
	desc = "Lightweight, slender and curved."
	parrysound = list('sound/combat/parry/bladed/bladedthin (1).ogg', 'sound/combat/parry/bladed/bladedthin (2).ogg', 'sound/combat/parry/bladed/bladedthin (3).ogg')
	swingsound = BLADEWOOSH_SMALL
	pickup_sound = 'sound/foley/equip/swordlarge2.ogg'
	bigboy = 0
	wlength = WLENGTH_LONG
	gripsprite = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	associated_skill = /datum/skill/combat/swords
	throwforce = 15
	thrown_bclass = BCLASS_CUT
	dropshrink = 0.75
	minstr = 6
	sellprice = 42
	smeltresult = /obj/item/ingot/steel

/obj/item/rogueweapon/sword/long/marlin/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -10,"sy" = -8,"nx" = 13,"ny" = -8,"wx" = -8,"wy" = -7,"ex" = 7,"ey" = -8,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 90,"sturn" = -90,"wturn" = -80,"eturn" = 81,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 3,"sy" = 4,"nx" = -1,"ny" = 4,"wx" = -8,"wy" = 3,"ex" = 7,"ey" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 15,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.5,"sx" = -4,"sy" = -6,"nx" = 5,"ny" = -6,"wx" = 0,"wy" = -6,"ex" = -1,"ey" = -6,"nturn" = 100,"sturn" = 156,"wturn" = 90,"eturn" = 180,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/sword/long/exe
	possible_item_intents = list(/datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/axe/chop)
	icon_state = "exe"
	name = "execution sword"
	desc = ""
	minstr = 10
	slot_flags = ITEM_SLOT_BACK //Too big for hip

/obj/item/rogueweapon/sword/long/exe/astrata
	name = "Solar Judge"
	desc = "This wicked executioner's blade calls for order."
	icon_state = "astratasword"
	max_integrity = 200
	force_wielded = 35
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike, /datum/intent/axe/chop/battle)

/obj/item/rogueweapon/sword/long/exe/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -6,"sy" = 6,"nx" = 6,"ny" = 7,"wx" = 0,"wy" = 5,"ex" = -1,"ey" = 7,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -50,"sturn" = 40,"wturn" = 50,"eturn" = -50,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 9,"sy" = -4,"nx" = -7,"ny" = 1,"wx" = -9,"wy" = 2,"ex" = 10,"ey" = 2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 5,"sturn" = -190,"wturn" = -170,"eturn" = -10,"nflip" = 8,"sflip" = 8,"wflip" = 1,"eflip" = 0)
			if("onback")
				return list("shrink" = 0.6,"sx" = -1,"sy" = 3,"nx" = -1,"ny" = 2,"wx" = 3,"wy" = 4,"ex" = -1,"ey" = 5,"nturn" = 0,"sturn" = 0,"wturn" = 70,"eturn" = 20,"nflip" = 1,"sflip" = 1,"wflip" = 1,"eflip" = 1,"northabove" = 1,"southabove" = 0,"eastabove" = 0,"westabove" = 0)

/obj/item/rogueweapon/sword/long/exe/cloth
	icon_state = "terminusest"
	name = "Terminus Est"

/obj/item/rogueweapon/sword/long/exe/cloth/rmb_self(mob/user)
	user.changeNext_move(CLICK_CD_MELEE)
	playsound(user, "clothwipe", 100, TRUE)
	SEND_SIGNAL(src, COMSIG_COMPONENT_CLEAN_ACT, CLEAN_STRONG)
	user.visible_message(span_warning("[user] wipes [src] down with its cloth."),span_notice("I wipe [src] down with its cloth."))
	return

/obj/item/rogueweapon/sword/long/psysword
	name = "psydonian sword"
	desc = "a silver bastard sword, for the Inquisiton. For when you need to make a point."
	icon_state = "psysword"
	max_blade_int = 200
	wdefense = 5
	is_silver = TRUE
	smeltresult = /obj/item/ingot/silver

/obj/item/rogueweapon/sword/long/psysword/ComponentInitialize()
	. = ..()								//+3 force, +50 int, +1 def, make silver
	AddComponent(/datum/component/psyblessed, FALSE, 3, FALSE, 50, 1, TRUE)

/obj/item/rogueweapon/sword/iron
	name = "sword"
	desc = "A simple iron sword, the most classical war weapon."
	icon_state = "isword"
	minstr = 6
	smeltresult = /obj/item/ingot/iron
	max_integrity = 100
	sellprice = 10

/obj/item/rogueweapon/sword/iron/short
	name = "short sword"
	desc = "An archaic iron sword."
	icon_state = "iswordshort"
	possible_item_intents = list(/datum/intent/sword/cut/short, /datum/intent/sword/thrust/short)
	gripped_intents = null
	minstr = 4
	wdefense = 3
	wlength = WLENGTH_SHORT
	w_class = WEIGHT_CLASS_NORMAL
	grid_width = 32
	grid_height = 96

/obj/item/rogueweapon/sword/iron/short/chipped
	force = 17
	desc = "An ancient-looking iron sword."
	icon_state = "iswordshort_d"
	max_integrity = 75
	wlength = WLENGTH_SHORT

/datum/intent/sword/cut/short
	clickcd = 9
	damfactor = 1
	releasedrain = 3

/datum/intent/sword/thrust/short
	clickcd = 8
	damfactor = 1.1
	penfactor = 25
	releasedrain = 3

/obj/item/rogueweapon/sword/iron/messer
	name = "iron messer"
	desc = "A single edged 'knife' to slice and chop with. For all intents and legalities this is a knife. Not a sword."
	icon_state = "imesser"
	possible_item_intents = list(/datum/intent/sword/cut/sabre, /datum/intent/sword/thrust, /datum/intent/axe/chop)
	gripped_intents = null
	associated_skill = /datum/skill/combat/knives
	minstr = 4
	wdefense = 2

/obj/item/rogueweapon/sword/messer
	name = "steel messer"
	desc = "A single edged 'knife' to slice and chop with. For all intents and legalities this is a knife. Not a sword."
	icon_state = "smesser"
	possible_item_intents = list(/datum/intent/sword/cut/sabre, /datum/intent/sword/thrust, /datum/intent/axe/chop)
	gripped_intents = null
	associated_skill = /datum/skill/combat/knives
	minstr = 4
	wdefense = 2.5

/obj/item/rogueweapon/sword/sabre
	name = "sabre"
	desc = "A swift saber. Parries reliably and strikes swiftly."
	icon_state = "saber"
	possible_item_intents = list(/datum/intent/sword/cut/sabre, /datum/intent/sword/thrust)
	gripped_intents = null
	parrysound = list('sound/combat/parry/bladed/bladedthin (1).ogg', 'sound/combat/parry/bladed/bladedthin (2).ogg', 'sound/combat/parry/bladed/bladedthin (3).ogg')
	swingsound = BLADEWOOSH_SMALL
	minstr = 5
	wdefense = 6
	wbalance = 1

/obj/item/rogueweapon/sword/sabre/elf/nockhopesh
	name = "Moonlight Khopesh"
	icon_state = "nockhopesh"
	desc = "Glittering moonlight upon blued steel."
	force = 25
	max_integrity = 250

/obj/item/rogueweapon/sword/sabre/dec
	icon_state = "decsaber"
	sellprice = 140
	wbalance = 1.2 //ENGRAVINGS, they provide *some* tactical advantage whatsoever.

/obj/item/rogueweapon/sword/sabre/stalker
	possible_item_intents = list(/datum/intent/sword/cut/sabre, /datum/intent/sword/thrust/short)
	desc = "A once elegant blade of mythril, diminishing under the suns gaze"
	icon_state = "spidersaber"

/obj/item/rogueweapon/sword/rapier
	name = "rapier"
	desc = "A duelist's weapon derived from western battlefield instruments, it features a tapered \
	blade with a specialized stabbing tip."
	icon = 'icons/roguetown/weapons/64.dmi'
	icon_state = "rapier"
	bigboy = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	dropshrink = 0.75
	possible_item_intents = list(/datum/intent/sword/thrust/rapier, /datum/intent/sword/cut/rapier)
	gripped_intents = null
	parrysound = list(
		'sound/combat/parry/bladed/bladedthin (1).ogg',
		'sound/combat/parry/bladed/bladedthin (2).ogg',
		'sound/combat/parry/bladed/bladedthin (3).ogg',
		)
	swingsound = BLADEWOOSH_SMALL
	minstr = 6
	wdefense = 6.5
	wbalance = 1

/obj/item/rogueweapon/sword/rapier/vaquero
	name = "cupped rapier"
	desc = "A fairly new development originating in Valoria, the cup hilt design of this weapon is both simpler to produce and more protective than the traditional 'swept' design more common in these lands."
	icon = 'icons/roguetown/weapons/64.dmi'
	icon_state = "cup_hilt_rapier"
	wdefense = 7

/obj/item/rogueweapon/sword/rapier/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") return list(
				"shrink" = 0.5,
				"sx" = -14,
				"sy" = -8,
				"nx" = 15,
				"ny" = -7,
				"wx" = -10,
				"wy" = -5,
				"ex" = 7,
				"ey" = -6,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				"nturn" = -13,
				"sturn" = 110,
				"wturn" = -60,
				"eturn" = -30,
				"nflip" = 1,
				"sflip" = 1,
				"wflip" = 8,
				"eflip" = 1,
				)
			if("onback") return list(
				"shrink" = 0.5,
				"sx" = -1,
				"sy" = 2,
				"nx" = 0,
				"ny" = 2,
				"wx" = 2,
				"wy" = 1,
				"ex" = 0,
				"ey" = 1,
				"nturn" = 0,
				"sturn" = 0,
				"wturn" = 70,
				"eturn" = 15,
				"nflip" = 1,
				"sflip" = 1,
				"wflip" = 1,
				"eflip" = 1,
				"northabove" = 1,
				"southabove" = 0,
				"eastabove" = 0,
				"westabove" = 0,
				)
			if("onbelt") return list(
				"shrink" = 0.4,
				"sx" = -4,
				"sy" = -6,
				"nx" = 5,
				"ny" = -6,
				"wx" = 0,
				"wy" = -6,
				"ex" = -1,
				"ey" = -6,
				"nturn" = 100,
				"sturn" = 156,
				"wturn" = 90,
				"eturn" = 180,
				"nflip" = 0,
				"sflip" = 0,
				"wflip" = 0,
				"eflip" = 0,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				)

/datum/intent/sword/cut/rapier
	clickcd = 10
	damfactor = 0.75
	releasedrain = 3

/datum/intent/sword/thrust/rapier
	clickcd = 8
	damfactor = 1.1
	penfactor = 30

/obj/item/rogueweapon/sword/rapier/dec
	icon_state = "decrapier"
	desc = "A fine duelist's instrument with a tapered thrusting blade. Its hilt is gilt in gold and inlaid, \
	and its blade bears twin inscriptions on either side. One reads, 'CAST IN THE NAME OF GODS' while the \
	obverse reads, 'YE NOT GUILTY'."
	sellprice = 140
	wbalance = 1.2

/obj/item/rogueweapon/sword/rapier/lord
	name = "sword of the Mad Duke"
	desc = "A royal heirloom whose spiraling basket hilt is inlaid with fine cut gems. It bears the burnish of \
	time, where once sharply defined features have been worn down by so many hands. An old rumor ties this implement \
	to the siege that smashed the Mad Duke's keep to rubble, and burnt the Duke himself to cinders."
	icon_state = "lordrap"
	sellprice = 300
	max_integrity = 300
	max_blade_int = 300
	wdefense = 7

/obj/item/rogueweapon/sword/cutlass
	name = "cutlass"
	desc = "A blade commonly used by the pirates and sailors of Lyndhardtia's coast."
	icon_state = "cutlass"
	possible_item_intents = list(/datum/intent/sword/cut/falchion, /datum/intent/sword/thrust)
	gripped_intents = null
	wdefense = 6
	wbalance = 1

/obj/item/rogueweapon/sword/gladius
	force = 22
	name = "gladius"
	desc = "A bronze short sword with a slightly wider end, and no guard. Compliments a shield."
	icon_state = "gladius"
	gripped_intents = null
	smeltresult = /obj/item/ingot/bronze
	smelt_bar_num = 2
	max_blade_int = 100
	max_integrity = 200
	dropshrink = 0.80
	wdefense = 2

/obj/item/rogueweapon/sword/sabre/elf
	force = 25
	name = "elvish saber"
	desc = "This finely crafted saber is of elven design."
	icon_state = "esaber"
	item_state = "esaber"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	last_used = 0
	is_silver = TRUE
	smeltresult = /obj/item/ingot/silver
	smelt_bar_num = 2
	wbalance = 1.5

/obj/item/rogueweapon/sword/silver
	force = 24
	name = "silver sword"
	desc = "A sword forged of pure silver. The guard is fashioned into a cross."
	icon_state = "silversword"
	is_silver = TRUE
	smeltresult = /obj/item/ingot/silver
	smelt_bar_num = 2
	max_blade_int = 150
	max_integrity = 200
	wbalance = 1

/obj/item/rogueweapon/sword/long/blackflamb
	force = 20
	force_wielded = 32
	icon_state = "blackflamb"
	name = "blacksteel flamberge"
	desc = "A strange sword with a winding blade forged of blacksteel and a rontz pommel."
	smeltresult = /obj/item/ingot/blacksteel
	max_integrity = 300
	wdefense = 4.5

/obj/item/rogueweapon/sword/long/blackflamb/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") return list(
				"shrink" = 0.5,
				"sx" = -14,
				"sy" = -8,
				"nx" = 15,
				"ny" = -7,
				"wx" = -10,
				"wy" = -5,
				"ex" = 7,
				"ey" = -6,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				"nturn" = -13,
				"sturn" = 110,
				"wturn" = -60,
				"eturn" = -30,
				"nflip" = 1,
				"sflip" = 1,
				"wflip" = 8,
				"eflip" = 1,
				)
			if("onback") return list(
				"shrink" = 0.5,
				"sx" = -1,
				"sy" = 2,
				"nx" = 0,
				"ny" = 2,
				"wx" = 2,
				"wy" = 1,
				"ex" = 0,
				"ey" = 1,
				"nturn" = 0,
				"sturn" = 0,
				"wturn" = 70,
				"eturn" = 15,
				"nflip" = 1,
				"sflip" = 1,
				"wflip" = 1,
				"eflip" = 1,
				"northabove" = 1,
				"southabove" = 0,
				"eastabove" = 0,
				"westabove" = 0,
				)
			if("wielded") return list(
				"shrink" = 0.6,
				"sx" = 3,
				"sy" = 5,
				"nx" = -3,
				"ny" = 5,
				"wx" = -9,
				"wy" = 4,
				"ex" = 9,
				"ey" = 1,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				"nturn" = 0,
				"sturn" = 0,
				"wturn" = 0,
				"eturn" = 15,
				"nflip" = 8,
				"sflip" = 0,
				"wflip" = 8,
				"eflip" = 0,
				)
			if("onbelt") return list(
				"shrink" = 0.4,
				"sx" = -4,
				"sy" = -6,
				"nx" = 5,
				"ny" = -6,
				"wx" = 0,
				"wy" = -6,
				"ex" = -1,
				"ey" = -6,
				"nturn" = 100,
				"sturn" = 156,
				"wturn" = 90,
				"eturn" = 180,
				"nflip" = 0,
				"sflip" = 0,
				"wflip" = 0,
				"eflip" = 0,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				)

/obj/item/rogueweapon/sword/long/romphaia
	force = 25
	force_wielded = 30
	possible_item_intents = list(/datum/intent/sword/cut/falx, /datum/intent/sword/strike, /datum/intent/sword/chop/falx)
	gripped_intents = list(/datum/intent/sword/cut/falx, /datum/intent/sword/strike, /datum/intent/sword/chop/falx)
	icon_state = "romphaia"
	name = "romphaia"
	desc = "A longsword with a hooked end for punching through armour."
	smeltresult = /obj/item/ingot/steel
	max_integrity = 175

/obj/item/rogueweapon/sword/long/romphaia/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") return list(
				"shrink" = 0.5,
				"sx" = -14,
				"sy" = -8,
				"nx" = 15,
				"ny" = -7,
				"wx" = -10,
				"wy" = -5,
				"ex" = 7,
				"ey" = -6,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				"nturn" = -13,
				"sturn" = 110,
				"wturn" = -60,
				"eturn" = -30,
				"nflip" = 1,
				"sflip" = 1,
				"wflip" = 8,
				"eflip" = 1,
				)
			if("onback") return list(
				"shrink" = 0.5,
				"sx" = -1,
				"sy" = 2,
				"nx" = 0,
				"ny" = 2,
				"wx" = 2,
				"wy" = 1,
				"ex" = 0,
				"ey" = 1,
				"nturn" = 0,
				"sturn" = 0,
				"wturn" = 70,
				"eturn" = 15,
				"nflip" = 1,
				"sflip" = 1,
				"wflip" = 1,
				"eflip" = 1,
				"northabove" = 1,
				"southabove" = 0,
				"eastabove" = 0,
				"westabove" = 0,
				)
			if("wielded") return list(
				"shrink" = 0.6,
				"sx" = 3,
				"sy" = 5,
				"nx" = -3,
				"ny" = 5,
				"wx" = -9,
				"wy" = 4,
				"ex" = 9,
				"ey" = 1,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				"nturn" = 0,
				"sturn" = 0,
				"wturn" = 0,
				"eturn" = 15,
				"nflip" = 8,
				"sflip" = 0,
				"wflip" = 8,
				"eflip" = 0,
				)
			if("onbelt") return list(
				"shrink" = 0.4,
				"sx" = -4,
				"sy" = -6,
				"nx" = 5,
				"ny" = -6,
				"wx" = 0,
				"wy" = -6,
				"ex" = -1,
				"ey" = -6,
				"nturn" = 100,
				"sturn" = 156,
				"wturn" = 90,
				"eturn" = 180,
				"nflip" = 0,
				"sflip" = 0,
				"wflip" = 0,
				"eflip" = 0,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				)
/obj/item/rogueweapon/sword/long/oathkeeper
	name = "Oathkeeper"
	desc = "An ornate golden blade with a ruby embedded in the hilt. Granted to the Knight Commander for their valiant service to the crown."
	sellprice = 140
	force = 25
	force_wielded = 32
	possible_item_intents = list(/datum/intent/sword/cut/sabre, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	icon_state = "kingslayer"

/obj/item/rogueweapon/sword/long/oathkeeper/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") 
				return list("shrink" = 0.5,"sx" = -14,"sy" = -8,"nx" = 15,"ny" = -7,"wx" = -10,"wy" = -5,"ex" = 7,"ey" = -6,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -13,"sturn" = 110,"wturn" = -60,"eturn" = -30,"nflip" = 1,"sflip" = 1,"wflip" = 8,"eflip" = 1)
			if("onbelt") 
				return list("shrink" = 0.4,"sx" = -4,"sy" = -6,"nx" = 5,"ny" = -6,"wx" = 0,"wy" = -6,"ex" = -1,"ey" = -6,"nturn" = 100,"sturn" = 156,"wturn" = 90,"eturn" = 180,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/sword/long/holysee
	force = 34
	force_wielded = 50
	possible_item_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike)
	gripped_intents = list(/datum/intent/sword/cut, /datum/intent/sword/thrust, /datum/intent/sword/strike, /datum/intent/sword/chop)
	icon_state = "eclipsum"
	name = "eclipsum sword"
	desc = "A Pantheon relic and mutual effort of Noc and Astrata's followers, this blade was forged with both silver and gold alike. Blessed to hold strength and bring hope. Whether dae or nite."
	is_silver = TRUE
	smeltresult = /obj/item/ingot/silver
	smelt_bar_num = 2
	max_integrity = 999
	wdefense = 6
	wbalance = 1

/obj/item/rogueweapon/sword/long/holysee/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen") return list(
				"shrink" = 0.65,
				"sx" = -14,
				"sy" = -8,
				"nx" = 15,
				"ny" = -7,
				"wx" = -10,
				"wy" = -5,
				"ex" = 7,
				"ey" = -6,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				"nturn" = -13,
				"sturn" = 110,
				"wturn" = -60,
				"eturn" = -30,
				"nflip" = 1,
				"sflip" = 1,
				"wflip" = 8,
				"eflip" = 1,
				)
			if("onback") return list(
				"shrink" = 0.65,
				"sx" = -1,
				"sy" = 2,
				"nx" = 0,
				"ny" = 2,
				"wx" = 2,
				"wy" = 1,
				"ex" = 0,
				"ey" = 1,
				"nturn" = 0,
				"sturn" = 0,
				"wturn" = 70,
				"eturn" = 15,
				"nflip" = 1,
				"sflip" = 1,
				"wflip" = 1,
				"eflip" = 1,
				"northabove" = 1,
				"southabove" = 0,
				"eastabove" = 0,
				"westabove" = 0,
				)
			if("wielded") return list(
				"shrink" = 0.6,
				"sx" = 3,
				"sy" = 5,
				"nx" = -3,
				"ny" = 5,
				"wx" = -9,
				"wy" = 4,
				"ex" = 9,
				"ey" = 1,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				"nturn" = 0,
				"sturn" = 0,
				"wturn" = 0,
				"eturn" = 15,
				"nflip" = 8,
				"sflip" = 0,
				"wflip" = 8,
				"eflip" = 0,
				)
			if("onbelt") return list(
				"shrink" = 0.4,
				"sx" = -4,
				"sy" = -6,
				"nx" = 5,
				"ny" = -6,
				"wx" = 0,
				"wy" = -6,
				"ex" = -1,
				"ey" = -6,
				"nturn" = 100,
				"sturn" = 156,
				"wturn" = 90,
				"eturn" = 180,
				"nflip" = 0,
				"sflip" = 0,
				"wflip" = 0,
				"eflip" = 0,
				"northabove" = 0,
				"southabove" = 1,
				"eastabove" = 1,
				"westabove" = 0,
				)

// Hoplite Kophesh
/obj/item/rogueweapon/sword/khopesh
	name = "ancient khopesh"
	desc = "A bronze weapon of war from the era of Bloodwake. This blade is older than a few elven generations, but has been very well-maintained and still keeps a good edge."
	force = 22 // Unique weapon from rare job, slightly more force than most one-handers
	possible_item_intents = list(/datum/intent/sword/cut/sabre, /datum/intent/sword/chop, /datum/intent/sword/strike)
	gripped_intents = null
	icon = 'icons/roguetown/weapons/64.dmi'
	icon_state = "khopesh"
	item_state = "khopesh"
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	pixel_y = -16
	pixel_x = -16
	dropshrink = 0.75
	bigboy = 1 // WHY DOES THIS FUCKING VARIABLE CONTROL WHETHER THE BLOOD OVERLAY WORKS ON 64x64 WEAPONS
	slot_flags = ITEM_SLOT_BACK|ITEM_SLOT_HIP
	smeltresult = null // No bronze ingots yet
	max_blade_int = 300
	max_integrity = 300
	minstr = 10 // Even though it's technically one-handed, you gotta have some muscle to wield this thing
	wdefense = 3 // Lower than average sword defense (meant to pair with a shield)
	wbalance = -1 // Likely weighted towards the blade, for deep cuts and chops
	sellprice = 200 // A noble collector would love to get his/her hands on one of these blades

//................ Kriegsmesser ............... //
/obj/item/rogueweapon/sword/long/kriegsmesser
	name = "elven kriegsmesser"
	desc = "A long, curved elven blade. It's metal is of a high quality, yet still light, crafted by the greatest elven bladesmiths."
	icon_state = "kriegsmesser"
	wdefense = 4
	minstr = 8
	sellprice = 120
	force = 20
	force_wielded = 32
	max_integrity = 300
	possible_item_intents = list(/datum/intent/sword/cut/sabre, /datum/intent/sword/thrust, /datum/intent/sword/strike)

/obj/item/rogueweapon/sword/long/kriegsmesser/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -6,"sy" = 6,"nx" = 6,"ny" = 7,"wx" = 0,"wy" = 5,"ex" = -1,"ey" = 7,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -50,"sturn" = 40,"wturn" = 50,"eturn" = -50,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 9,"sy" = -4,"nx" = -7,"ny" = 1,"wx" = -9,"wy" = 2,"ex" = 10,"ey" = 2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 5,"sturn" = -190,"wturn" = -170,"eturn" = -10,"nflip" = 4,"sflip" = 4,"wflip" = 1,"eflip" = 0)
			if("onback")
				return list("shrink" = 0.6,"sx" = -1,"sy" = 3,"nx" = -1,"ny" = 2,"wx" = 3,"wy" = 4,"ex" = -1,"ey" = 5,"nturn" = 0,"sturn" = 0,"wturn" = 70,"eturn" = 20,"nflip" = 1,"sflip" = 1,"wflip" = 1,"eflip" = 1,"northabove" = 1,"southabove" = 0,"eastabove" = 0,"westabove" = 0)
