/obj/item/weapon/material/star
	name = "shuriken"
	desc = "A sharp, perfectly weighted piece of metal."
	icon_state = "star"
	randpixel = 12
	force_divisor = 0.1 // 6 with hardness 60 (steel)
	thrown_force_divisor = 0.75 // 15 with weight 20 (steel)
	throw_speed = 10
	throw_range = 15
	sharp = 1
	edge =  1

/obj/item/weapon/material/star/New()
	..()

/obj/item/weapon/material/star/throw_impact(atom/hit_atom)
	..()
	if(material.radioactivity>0 && istype(hit_atom,/mob/living))
		var/mob/living/M = hit_atom
		var/urgh = material.radioactivity
		M.adjustToxLoss(rand(urgh/2,urgh))

/obj/item/weapon/material/star/ninja
	default_material = "uranium"

/obj/item/weapon/material/knife/throwing
	name = "throwing knife"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "tacknife"
	desc = "Knife designed specially for throwing"
	force_divisor = 0.15
	thrown_force_divisor = 0.80
	throw_speed = 8
	throw_range = 15
	sharp = 1
	edge = 1
	randpixel = 12