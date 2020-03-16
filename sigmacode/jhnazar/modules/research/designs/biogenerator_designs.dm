///////////////////////////////////
///////Biogenerator Designs ///////
///////////////////////////////////
/datum/design/strange_seed
	name = "Pack of strange seeds"
	id = "strange_seed"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 5000) // use 20% nutriement gene with 100 potency and see what will happen
	build_path = /obj/item/seeds/random
	make_reagents = list()
	category = list("initial","Food")
