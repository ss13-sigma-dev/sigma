/datum/bounty/more_bounties_medium
	name = "More Bounties"
	description = "Complete enough bounties and CentCom will issue new ones!"
	reward = 10 // number of bounties
	var/required_bounties = 15
/datum/bounty/more_bounties_hard
	name = "More Bounties"
	description = "Complete enough bounties and CentCom will issue new ones!"
	reward = 20 // number of bounties
	var/required_bounties = 20

/datum/bounty/more_bounties_medium/can_claim()
	return ..() && completed_bounty_count() >= required_bounties

/datum/bounty/more_bounties_medium/completion_string()
	return "[min(required_bounties, completed_bounty_count())]/[required_bounties] Bounties"

/datum/bounty/more_bounties_medium/reward_string()
	return "Up to [reward] new bounties"

/datum/bounty/more_bounties_medium/claim()
	if(can_claim())
		claimed = TRUE
		for(var/i = 0; i < reward; ++i)
			try_add_bounty(random_bounty())

/datum/bounty/more_bounties_hard/can_claim()
	return ..() && completed_bounty_count() >= required_bounties

/datum/bounty/more_bounties_hard/completion_string()
	return "[min(required_bounties, completed_bounty_count())]/[required_bounties] Bounties"

/datum/bounty/more_bounties_hard/reward_string()
	return "Up to [reward] new bounties"

/datum/bounty/more_bounties_hard/claim()
	if(can_claim())
		claimed = TRUE
		for(var/i = 0; i < reward; ++i)
			try_add_bounty(random_bounty())

// оно мб не работает но кого это волнует если миссий более 50 штук?
