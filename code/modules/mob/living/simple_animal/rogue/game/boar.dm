

/mob/living/simple_animal/hostile/retaliate/rogue/youngboar
	icon = 'icons/roguetown/mob/monster/boar.dmi'
	name = "young boar"
	icon_state = "youngBoar"
	icon_living = "youngBoar"
	icon_dead = "youngBoarDead"
	gender = MALE
	emote_hear = null
	emote_see = list("looks around.", "chews some leaves.")
	speak_chance = 1
	turns_per_move = 3
	see_in_dark = 6
	move_to_delay = 8
	base_intents = list(/datum/intent/simple/headbutt)
	butcher_results = list(
						/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 3,
						/obj/item/reagent_containers/food/snacks/fat = 1,
						/obj/item/natural/hide = 2,
						/obj/item/natural/bundle/bone/full = 1,
						)
	faction = list("boar", "zombie")
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	health = 200
	maxHealth = 200
	melee_damage_lower = 10
	melee_damage_upper = 15
	vision_range = 5
	aggro_vision_range = 7
	environment_smash = ENVIRONMENT_SMASH_NONE
	retreat_distance = 0
	minimum_distance = 0
	milkies = FALSE
	food_type = list(/obj/item/reagent_containers/food/snacks, 
					//obj/item/bodypart, 
					//obj/item/organ, 
					/obj/item/natural/bone, 
					/obj/item/natural/hide)
	footstep_type = FOOTSTEP_MOB_BAREFOOT
	pooptype = null
	STACON = 10
	STASTR = 10
	STASPD = 7
	simple_detect_bonus = 5
	deaggroprob = 0
	defprob = 40
	defdrain = 10
	del_on_deaggro = 44 SECONDS
	retreat_health = 0.2
	food = 0
	attack_sound = list('sound/vo/mobs/cow/aggro (1).ogg','sound/vo/mobs/cow/aggro (2).ogg','sound/vo/mobs/cow/aggro (3).ogg')
	dodgetime = 24
	aggressive = 1

/mob/living/simple_animal/hostile/retaliate/rogue/middleboar
	icon = 'icons/roguetown/mob/monster/boar.dmi'
	name = "boar"
	icon_state = "middleBoar"
	icon_living = "middleBoar"
	icon_dead = "middleBoarDead"
	gender = MALE
	emote_hear = null
	emote_see = list("looks around.", "chews some leaves.")
	speak_chance = 1
	turns_per_move = 3
	see_in_dark = 6
	move_to_delay = 8
	base_intents = list(/datum/intent/simple/headbutt)
	butcher_results = list(
						/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 4,
						/obj/item/reagent_containers/food/snacks/fat = 2,
						/obj/item/natural/hide = 4,
						/obj/item/natural/bundle/bone/full = 1,
						)
	faction = list("boar", "zombie")
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	health = 350
	maxHealth = 350
	melee_damage_lower = 15
	melee_damage_upper = 25
	vision_range = 5
	aggro_vision_range = 7
	environment_smash = ENVIRONMENT_SMASH_NONE
	retreat_distance = 0
	minimum_distance = 0
	milkies = FALSE
	food_type = list(/obj/item/reagent_containers/food/snacks, 
					//obj/item/bodypart, 
					//obj/item/organ, 
					/obj/item/natural/bone, 
					/obj/item/natural/hide)
	footstep_type = FOOTSTEP_MOB_BAREFOOT
	pooptype = null
	STACON = 16
	STASTR = 13
	STASPD = 8
	simple_detect_bonus = 5
	deaggroprob = 0
	defprob = 40
	defdrain = 10
	del_on_deaggro = 44 SECONDS
	retreat_health = 0.1
	food = 0
	attack_sound = list('sound/vo/mobs/cow/aggro (1).ogg','sound/vo/mobs/cow/aggro (2).ogg','sound/vo/mobs/cow/aggro (3).ogg')
	dodgetime = 24
	aggressive = 1

/mob/living/simple_animal/hostile/retaliate/rogue/oldboar
	icon = 'icons/roguetown/mob/monster/boar.dmi'
	name = "old boar"
	icon_state = "oldBoar"
	icon_living = "oldBoar"
	icon_dead = "oldBoarDead"
	gender = MALE
	emote_hear = null
	emote_see = list("looks around.", "chews some leaves.")
	speak_chance = 1
	turns_per_move = 3
	see_in_dark = 6
	move_to_delay = 8
	base_intents = list(/datum/intent/simple/headbutt)
	butcher_results = list(
						/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 5,
						/obj/item/reagent_containers/food/snacks/fat = 3,
						/obj/item/natural/hide = 6,
						/obj/item/natural/bundle/bone/full = 1,
						)
	faction = list("boar", "zombie")
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	health = 500
	maxHealth = 500
	melee_damage_lower = 35
	melee_damage_upper = 60
	vision_range = 5
	aggro_vision_range = 7
	environment_smash = ENVIRONMENT_SMASH_NONE
	retreat_distance = 0
	minimum_distance = 0
	milkies = FALSE
	food_type = list(/obj/item/reagent_containers/food/snacks, 
					//obj/item/bodypart, 
					//obj/item/organ, 
					/obj/item/natural/bone, 
					/obj/item/natural/hide)
	footstep_type = FOOTSTEP_MOB_BAREFOOT
	pooptype = null
	STACON = 20
	STASTR = 15
	STASPD = 6
	simple_detect_bonus = 5
	deaggroprob = 0
	defprob = 40
	defdrain = 10
	del_on_deaggro = 44 SECONDS
	retreat_health = 0.1
	food = 0
	attack_sound = list('sound/vo/mobs/cow/aggro (1).ogg','sound/vo/mobs/cow/aggro (2).ogg','sound/vo/mobs/cow/aggro (3).ogg')
	dodgetime = 24
	aggressive = 1

//	stat_attack = UNCONSCIOUS
	remains_type = /obj/effect/decal/remains/boar
	eat_forever = TRUE
	rot_type = null

//new ai, old ai off
	AIStatus = AI_OFF
	can_have_ai = FALSE
	ai_controller = /datum/ai_controller/volf

/obj/effect/decal/remains/boar
	name = "remains"
	gender = PLURAL
	icon_state = "bones"
	icon = 'icons/roguetown/mob/monster/boar.dmi'

/mob/living/simple_animal/hostile/retaliate/rogue/boar/Initialize()
	. = ..()
	AddElement(/datum/element/ai_retaliate)
	AddElement(/datum/element/ai_flee_while_injured, 0.75, 0.4)
	gender = MALE
	if(prob(33))
		gender = FEMALE
	update_icon()
	ai_controller.set_blackboard_key(BB_BASIC_FOODS, food_type)


/mob/living/simple_animal/hostile/retaliate/rogue/boar/death(gibbed)
	..()
	update_icon()

/mob/living/simple_animal/hostile/retaliate/rogue/boar/get_sound(input)
	switch(input)
		if("aggro")
			return pick('sound/vo/mobs/cow/aggro (1).ogg','sound/vo/mobs/cow/aggro (2).ogg','sound/vo/mobs/cow/aggro (3).ogg')
		if("pain")
			return pick('sound/vo/mobs/cow/pain (1).ogg','sound/vo/mobs/cow/pain (2).ogg')
		if("death")
			return pick('sound/vo/mobs/cow/death (1).ogg','sound/vo/mobs/cow/death (2).ogg')
		if("idle")
			return pick('sound/vo/mobs/saiga/idle (1).ogg','sound/vo/mobs/saiga/idle (2).ogg','sound/vo/mobs/saiga/idle (3).ogg','sound/vo/mobs/saiga/idle (4).ogg','sound/vo/mobs/saiga/idle (5).ogg','sound/vo/mobs/saiga/idle (6).ogg','sound/vo/mobs/saiga/idle (7).ogg')

/mob/living/simple_animal/hostile/retaliate/rogue/boar/taunted(mob/user)
	emote("aggro")
	Retaliate()
	GiveTarget(user)
	return

/mob/living/simple_animal/hostile/retaliate/rogue/boar/Life()
	..()
	if(pulledby)
		Retaliate()
		GiveTarget(pulledby)


/mob/living/simple_animal/hostile/retaliate/rogue/boar/simple_limb_hit(zone)
	if(!zone)
		return ""
	switch(zone)
		if(BODY_ZONE_PRECISE_R_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_L_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_NOSE)
			return "nose"
		if(BODY_ZONE_PRECISE_MOUTH)
			return "mouth"
		if(BODY_ZONE_PRECISE_SKULL)
			return "head"
		if(BODY_ZONE_PRECISE_EARS)
			return "head"
		if(BODY_ZONE_PRECISE_NECK)
			return "neck"
		if(BODY_ZONE_PRECISE_L_HAND)
			return "foreleg"
		if(BODY_ZONE_PRECISE_R_HAND)
			return "foreleg"
		if(BODY_ZONE_PRECISE_L_FOOT)
			return "leg"
		if(BODY_ZONE_PRECISE_R_FOOT)
			return "leg"
		if(BODY_ZONE_PRECISE_STOMACH)
			return "stomach"
		if(BODY_ZONE_PRECISE_GROIN)
			return "tail"
		if(BODY_ZONE_HEAD)
			return "head"
		if(BODY_ZONE_R_LEG)
			return "leg"
		if(BODY_ZONE_L_LEG)
			return "leg"
		if(BODY_ZONE_R_ARM)
			return "foreleg"
		if(BODY_ZONE_L_ARM)
			return "foreleg"
	return ..()



