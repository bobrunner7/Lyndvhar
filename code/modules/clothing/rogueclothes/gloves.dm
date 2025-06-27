
/obj/item/clothing/gloves/roguetown
	slot_flags = ITEM_SLOT_GLOVES
	body_parts_covered = HANDS
	sleeved = 'icons/roguetown/clothing/onmob/gloves.dmi'
	icon = 'icons/roguetown/clothing/gloves.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/gloves.dmi'
	bloody_icon_state = "bloodyhands"
	sleevetype = "shirt"
	max_heat_protection_temperature = 361

/obj/item/clothing/gloves/roguetown/leather
	name = "leather gloves"
	desc = "Rough-hewn leather gloves. Will stop an accidental cut, but certainly not a sword."
	icon_state = "leather_gloves"
	armor = list("blunt" = 15, "slash" = 20, "stab" = 20, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BITE)
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	salvage_result = /obj/item/natural/hide/cured
	sellprice = 7

/obj/item/clothing/gloves/roguetown/leather/black
	color = CLOTHING_BLACK

/obj/item/clothing/gloves/roguetown/fingerless
	name = "fingerless gloves"
	desc = "Cloth gloves to absorb palm sweat while leaving the fingers free for fine manipulation."
	armor = list("blunt" = 15, "slash" = 15, "stab" = 20, "fire" = 0, "acid" = 0)
	icon_state = "fingerless_gloves"
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	sellprice = 5

/obj/item/clothing/gloves/roguetown/fingerless/shadowgloves
	name = "fingerless gloves"
	desc = "Cloth gloves to absorb palm sweat while leaving the fingers free for fine manipulation."
	icon_state = "shadowgloves"
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/gloves/roguetown/angle
	name = "heavy leather gloves"
	desc = "Thick leather gloves, padded with fabric."
	icon_state = "angle"
	armor = list("blunt" = 50, "slash" = 50, "stab" = 45, "piercing" = 35, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT, BCLASS_SMASH, BCLASS_CUT, BCLASS_BITE)
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	max_integrity = 250
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	salvage_result = /obj/item/natural/fur
	sellprice = 25

/obj/item/clothing/gloves/roguetown/fingerless_leather
	name = "fingerless leather gloves"
	desc = "A pair of quality leather gloves favored by lockshimmers, laborers, and smokers for maintaining \
	manual dexterity over regular gloves."
	icon_state = "roguegloves"
	armor = list("blunt" = 15, "slash" = 25, "stab" = 20, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BITE)
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	max_integrity = 250
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	salvage_result = /obj/item/natural/hide/cured
	sellprice = 15

/obj/item/clothing/gloves/roguetown/chain
	name = "chain gauntlets"
	desc = ""
	icon_state = "cgloves"
	armor = list("blunt" = 35, "slash" = 80, "stab" = 85, "piercing" = 85, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BITE, BCLASS_TWIST)
	resistance_flags = FIRE_PROOF
	blocksound = CHAINHIT
	max_integrity = 250
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	sellprice = 50

/obj/item/clothing/gloves/roguetown/chain/psydon
	name = "psydonian gloves"
	desc = "Blacksteel-bound gauntlets. These ritualistic restraints, when left to dangle-and-sway, assist in the deflection of unpredictable blows."
	max_integrity = 350
	icon_state = "psydongloveschain"
	item_state = "psydongloveschains"
	sellprice = 140

/obj/item/clothing/gloves/roguetown/chain/iron
	icon_state = "icgloves"
	armor = list("blunt" = 35, "slash" = 70, "stab" = 70, "piercing" = 70, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BITE, BCLASS_TWIST)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron
	max_integrity = 200
	sellprice = 30

/obj/item/clothing/gloves/roguetown/valorian

	name = "fencer gloves"
	desc = "A pair of small and sturdy leather gloves. Commonly called fencer gloves due to them being commonly seen in fencing tourneys."

	icon_state = "fencergloves"
	item_state = "fencergloves"
	armor = list("blunt" = 55, "slash" = 55, "stab" = 50, "piercing" = 35, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT, BCLASS_SMASH, BCLASS_CUT, BCLASS_BITE)
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	max_integrity = 300
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	sellprice = 40

/obj/item/clothing/gloves/roguetown/valorian/inqgloves
	name = "inquisitorial leather gloves"
	desc = "Masterfully crafted leather gloves, psycross included."
	icon_state = "inqgloves"
	item_state = "inqgloves"
	salvage_result = /obj/item/natural/hide/cured

//rogtodo sprites for this
/obj/item/clothing/gloves/roguetown/plate
	name = "plate gauntlets"
	desc = ""
	icon_state = "gauntlets"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 90, "piercing" = 95, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = FIRE_PROOF
	blocksound = PLATEHIT
	max_integrity = 300
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

	grid_width = 64
	grid_height = 32
	sellprice = 60

/obj/item/clothing/gloves/roguetown/plate/matthios
	name = "gilded gauntlets"
	desc = "Many a man his life hath sold,"
	icon_state = "matthiosgloves"
	max_integrity = 500

/obj/item/clothing/gloves/roguetown/plate/matthios/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/gloves/roguetown/plate/matthios/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/gloves/roguetown/plate/zizo
	name = "darksteel gauntlets"
	desc = "Darksteel plate gauntlets. Called forth from the edge of what should be known. In Her name."
	icon_state = "zizogauntlets"
	max_integrity = 500
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST)

/obj/item/clothing/gloves/roguetown/plate/zizo/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/gloves/roguetown/plate/zizo/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)


/obj/item/clothing/gloves/roguetown/grenzelgloves
	name = "grenzelhoft gloves"
	desc = "Doppelsoldners hailing from Grenzelhoft are quite fond of this particular design, which affords reasonable insulation and excellent durability."
	icon_state = "grenzelgloves"
	item_state = "grenzelgloves"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	armor = list("blunt" = 50, "slash" = 50, "stab" = 50, "piercing" = 40, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT, BCLASS_SMASH, BCLASS_CUT, BCLASS_BITE)
	max_integrity = 250
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	sellprice = 35

/obj/item/clothing/gloves/roguetown/chain/iron/shadowgauntlets
	name = "darkplate gauntlets"
	desc = "Gauntlets with gilded fingers fashioned into talons. The tips are all too dull to be of harm."
	icon_state = "shadowgauntlets"
	allowed_race = list(/datum/species/elf/dark, /datum/species/elf/wood)
	max_integrity = 300

/obj/item/clothing/gloves/roguetown/grenzelgloves/blacksmith
	name = "forge gauntlets"
	desc = "Cured leather with plenty of internal padding to insulate against the forge's heat."

//---------------- BLACKSTEEL ---------------------

/obj/item/clothing/gloves/roguetown/blacksteel/plategloves
	name = "blacksteel plate gauntlets"
	desc = "A set of plate gauntlets forged of blacksteel. Unbending, unyielding."
	icon = 'icons/roguetown/clothing/special/blkknight.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/blkknight.dmi'
	icon_state = "bkgloves"
	item_state = "bkgloves"
	armor = list("blunt" = 105, "slash" = 100, "stab" = 95, "piercing" = 100, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_STAB, BCLASS_SMASH, BCLASS_TWIST)
	resistance_flags = FIRE_PROOF
	blocksound = PLATEHIT
	max_integrity = 400
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/blacksteel
	sellprice = 180

/obj/item/clothing/gloves/roguetown/angle/pontifex
	name = "rune-scrybed wrappings"
	desc = "Paper and cloth bandages enscrybed with Khazumian runes. They do an ample job of protecting their user's hands in combat."
	icon_state = "clothwraps"
	item_state = "clothwraps"

/obj/item/clothing/gloves/roguetown/rare
	icon = 'icons/roguetown/clothing/Racial_Armour.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/onmob_racial.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/onmob_racial.dmi'
	equip_sound = 'sound/foley/equip/equip_armor_plate.ogg'
	pickup_sound = "rustle"
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	sleevetype = null
	blocksound = PLATEHIT
	body_parts_covered = HANDS
	blade_dulling = DULLING_BASH
	sewrepair = FALSE
	anvilrepair = /datum/skill/craft/armorsmithing
	
/obj/item/clothing/gloves/roguetown/rare/elfplate
    name = "dark elf plate gauntlets"
    desc = "Plate gauntlets of mystic dark elven alloy, lightweight yet incredibly protective. Typically worn by elite bladesingers."
    icon_state = "elfhand"
    item_state = "elfhand"
    allowed_race = list(/datum/species/elf/dark)
    armor = list("blunt" = 90, "slash" = 100, "stab" = 90, "piercing" = 95, "fire" = 0, "acid" = 0)
    prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
    resistance_flags = FIRE_PROOF
    blocksound = PLATEHIT
    max_integrity = 300
    blade_dulling = DULLING_BASH
    break_sound = 'sound/foley/breaksound.ogg'
    drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
    anvilrepair = /datum/skill/craft/armorsmithing
