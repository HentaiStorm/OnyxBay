GLOBAL_DATUM_INIT(thralls, /datum/antagonist/thrall, new)

/datum/antagonist/thrall
	id = MODE_THRALL
	role_text = "Thrall"
	role_text_plural = "Thralls"
	feedback_tag = "thrall_objective"
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/chaplain)
	welcome_text = "You are a vampire or psionic operant's thrall: a pawn to be commanded by them at will."
	antaghud_indicator = "hudthrall"

/datum/antagonist/thrall/update_antag_mob(datum/mind/player)
	..()
	player.current.vampire_make_thrall()
