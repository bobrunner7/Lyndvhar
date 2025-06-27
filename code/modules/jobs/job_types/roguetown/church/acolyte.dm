/datum/job/roguetown/acolyte
	title = "Acolyte"
	flag = ACOLYTE
	department_flag = CHURCHMEN
	faction = "Station"
	total_positions = 6
	spawn_positions = 6

	allowed_races = RACES_SHUNNED_UP
	allowed_patrons = ALL_ACOLYTE_PATRONS
	allowed_sexes = list(MALE, FEMALE)
	outfit = /datum/outfit/job/roguetown/acolyte
	tutorial = "Chores, some more chores- Even more chores.. Oh how the life of a humble acolyte is exhausting… You have faith, but even you know you gave up a life of adventure for that of the security in the Church. Assist the Priest in their daily tasks, maybe today will be the day something interesting happens."

	display_order = JDO_ACOLYTE
	give_bank_account = TRUE
	min_pq = 0
	max_pq = null
	round_contrib_points = 2

/datum/outfit/job/roguetown/acolyte
	name = "Acolyte"
	jobtype = /datum/job/roguetown/acolyte

	allowed_patrons = list(/datum/patron/divine/pestra, /datum/patron/divine/astrata, /datum/patron/divine/eora, /datum/patron/divine/noc, /datum/patron/divine/necra, /datum/patron/divine/abyssor, /datum/patron/divine/malum) //Eora content from Stonekeep


/datum/outfit/job/roguetown/acolyte/pre_equip(mob/living/carbon/human/H)
	..()
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/storage/keyring/churchie
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/ritechalk)
	switch(H.patron?.type)
		if(/datum/patron/divine/astrata)
			head = /obj/item/clothing/head/roguetown/roguehood/astrata
			neck = /obj/item/clothing/neck/roguetown/psicross/astrata
			wrists = /obj/item/clothing/wrists/roguetown/wrappings
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/astrata
		if(/datum/patron/divine/noc)
			head = /obj/item/clothing/head/roguetown/nochood
			neck = /obj/item/clothing/neck/roguetown/psicross/noc
			wrists = /obj/item/clothing/wrists/roguetown/nocwrappings
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/noc
			shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
		if(/datum/patron/divine/abyssor) // the deep calls!
			shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			pants = /obj/item/clothing/under/roguetown/tights
			neck = /obj/item/clothing/neck/roguetown/psicross/abyssor
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/abyssor
			head = /obj/item/clothing/head/roguetown/roguehood/abyssor		
		if(/datum/patron/divine/dendor) //Dendorites all busted. Play Druid.
			head = /obj/item/clothing/head/roguetown/dendormask
			neck = /obj/item/clothing/neck/roguetown/psicross/dendor
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/dendor
		if(/datum/patron/divine/necra)
			head = /obj/item/clothing/head/roguetown/necrahood
			neck = /obj/item/clothing/neck/roguetown/psicross/necra
			shoes = /obj/item/clothing/shoes/roguetown/boots
			pants = /obj/item/clothing/under/roguetown/trou/leather/mourning
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/necra
			shirt = /obj/item/clothing/suit/roguetown/armor/leather/vest/black
			cloak = /obj/item/clothing/cloak/raincloak/mortus
		if(/datum/patron/divine/pestra) //PLEASE add leper gear later, this SUCKS dude
			head = /obj/item/clothing/head/roguetown/necrahood
			neck = /obj/item/clothing/neck/roguetown/psicross/pestra
			shoes = /obj/item/clothing/shoes/roguetown/boots
			pants = /obj/item/clothing/under/roguetown/trou/leather/mourning
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/necra
		if(/datum/patron/divine/eora) //Eora content from Stonekeep
			head = /obj/item/clothing/head/roguetown/eoramask
			neck = /obj/item/clothing/neck/roguetown/psicross/eora
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/eora
		if(/datum/patron/divine/malum)
			head = /obj/item/clothing/head/roguetown/roguehood
			neck = /obj/item/clothing/neck/roguetown/psicross/malum
			shoes = /obj/item/clothing/shoes/roguetown/boots
			wrists = /obj/item/clothing/wrists/roguetown/wrappings
			pants = /obj/item/clothing/under/roguetown/trou
			cloak = /obj/item/clothing/cloak/templar/malumite
			armor = /obj/item/clothing/suit/roguetown/armor/leather/vest
		else
			head = /obj/item/clothing/head/roguetown/roguehood/astrata
			neck = /obj/item/clothing/neck/roguetown/psicross/astrata
			wrists = /obj/item/clothing/wrists/roguetown/wrappings
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/astrata
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/alchemy, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 3, TRUE)
		ADD_TRAIT(H, TRAIT_RITUALIST, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_GRAVEROBBER, TRAIT_GENERIC)
		if(H.patron?.type == /datum/patron/divine/astrata)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		if(H.patron?.type == /datum/patron/divine/pestra)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/alchemy, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 1, TRUE)
			ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
		if(H.patron?.type == /datum/patron/divine/malum)
			H.mind.adjust_skillrank(/datum/skill/craft/blacksmithing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/armorsmithing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/weaponsmithing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/smelting, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE) //Hammer time.
		if(H.patron?.type == /datum/patron/divine/noc)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 2, TRUE)
		if(H.patron?.type == /datum/patron/divine/necra)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE) //Church needs folk who can actually climb worth a poop as the dedicated corpse recovery person.
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		if(H.patron?.type == /datum/patron/divine/abyssor)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		if(H.patron?.type == /datum/patron/divine/eora)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 4, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.change_stat("intelligence", 3)
		H.change_stat("endurance", 2)
		H.change_stat("speed", 1)
		H.cmode_music = 'sound/music/combat_holy.ogg'
		if(H.patron?.type == /datum/patron/divine/necra)
			ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_SOUL_EXAMINE, TRAIT_GENERIC)
		if(H.patron?.type == /datum/patron/divine/eora)
			ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)
		if(H.patron?.type == /datum/patron/divine/abyssor)
			H.mind.adjust_skillrank(/datum/skill/labor/fishing, 3, TRUE)
			ADD_TRAIT(H, TRAIT_WATERBREATHING, TRAIT_GENERIC)

	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_spells_monk(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
