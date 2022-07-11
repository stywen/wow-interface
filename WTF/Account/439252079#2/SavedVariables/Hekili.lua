
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Bydd - Aegwynn"] = "Default",
		["Starplatïnum - Frostmourne"] = "Default",
		["Dfgh - Antonidas"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadClassDefaultOptions_20220306_269"] = true,
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_70"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceReloadClassDefaultOptions_20220306_66"] = true,
				["forceReloadClassDefaultOptions_20220306_71"] = true,
				["forceReloadClassDefaultOptions_20220306_72"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_73"] = true,
				["forceReloadClassDefaultOptions_20220306_268"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[269] = {
					["settings"] = {
						["sef_one_charge"] = false,
						["tok_damage"] = 1,
						["check_wdp_range"] = false,
						["allow_fsk"] = false,
						["optimize_reverse_harm"] = false,
					},
				},
				[73] = {
					["settings"] = {
						["stack_shield_block"] = false,
						["overlap_ignore_pain"] = false,
						["shockwave_interrupt"] = true,
						["free_revenge"] = true,
						["heroic_charge"] = false,
					},
				},
				[70] = {
					["settings"] = {
						["check_wake_range"] = false,
					},
				},
				[72] = {
					["settings"] = {
						["check_ww_range"] = false,
						["heroic_charge"] = false,
					},
				},
				[268] = {
					["settings"] = {
						["purify_stagger_maxhp"] = 6,
						["purify_for_celestial"] = true,
						["bof_percent"] = 50,
						["ox_walker"] = true,
						["eh_percent"] = 65,
						["purify_stagger_currhp"] = 12,
					},
				},
			},
			["packs"] = {
				["Windwalker"] = {
					["builtIn"] = true,
					["date"] = 20220523,
					["spec"] = 269,
					["desc"] = "Windwalker Monk\nMay 23, 2022\n\nCharges:\n- Tweak Fists of Fury interrupt logic.\n- Tweak Spinning Crane Kick logic.\n- Add bossfight checks to many CD entries.\n- Add in-combat Fleshcraft.",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled & chi.max - chi >= 3",
								["action"] = "expel_harm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= 2",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi = 2",
								["action"] = "chi_wave",
							}, -- [4]
							{
								["action"] = "expel_harm",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [6]
						},
						["weapons_of_order"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "cd_sef",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.serenity.enabled",
								["list_name"] = "cd_serenity",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains & cooldown.rising_sun_kick.remains & buff.weapons_of_order_ww.up",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.weapons_of_order_ww.up & buff.storm_earth_and_fire.up & ! set_bonus.tier28_2pc & active_enemies < 2",
								["interrupt"] = "1",
								["interrupt_immediate"] = "1",
								["action"] = "fists_of_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.weapons_of_order_ww.up & buff.storm_earth_and_fire.up & set_bonus.tier28_2pc || active_enemies >= 2 & buff.weapons_of_order_ww.remains < 1",
								["action"] = "fists_of_fury",
							}, -- [7]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies >= 3 & buff.weapons_of_order_ww.up",
								["action"] = "spinning_crane_kick",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "chi = 0 & buff.weapons_of_order_ww.remains < 4 || chi < 3",
								["action"] = "fist_of_the_white_tiger",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= ( 1 + active_enemies > 1 )",
								["action"] = "chi_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "chi = 0 & buff.weapons_of_order_ww.remains < 4 || ( ! talent.hit_combo.enabled || combo_strike ) & chi.max - chi >= 2",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.chi_energy.stack > 30 - 5 * active_enemies",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies <= 3 & chi >= 3 || buff.weapons_of_order_ww.up",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [16]
							{
								["interrupt"] = "1",
								["action"] = "flying_serpent_kick",
								["enabled"] = true,
							}, -- [17]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.remains < 1",
								["action"] = "fists_of_fury",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( active_enemies >= 3 || active_enemies > 1 & ! cooldown.rising_sun_kick.up )",
								["action"] = "spinning_crane_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "fists_of_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.weapons_of_order.up & cooldown.rising_sun_kick.remains > 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["interrupt_if"] = "!cooldown.rising_sun_kick.up",
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & debuff.bonedust_brew_debuff.up",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi < 3",
								["action"] = "fist_of_the_white_tiger",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike || ! talent.hit_combo.enabled",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["action"] = "spinning_crane_kick",
								["enabled"] = true,
							}, -- [11]
						},
						["cd_serenity"] = {
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "serenity_burst",
								["value"] = "cooldown.serenity.remains < 1 || pet.xuen_the_white_tiger.active & cooldown.serenity.remains > 30 || boss & fight_remains < 20",
								["value_else"] = "cooldown.serenity.remains < 1 || cooldown.serenity.remains > 30 || boss & fight_remains < 20",
								["criteria"] = "talent.invoke_xuen.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen || boss & fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "ancestral_call",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "blood_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "fireblood",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "berserking",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "bag_of_tricks",
							}, -- [7]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_xuen.enabled & ( fight_remains > ( 180 - runeforge.fatal_touch.enabled * 120 ) || pet.xuen_the_white_tiger.active & ( ! covenant.necrolord || buff.bonedust_brew.up ) || ( cooldown.invoke_xuen_the_white_tiger.remains > fight_remains ) & buff.bonedust_brew.up || boss & fight_remains < 10 )",
								["action"] = "touch_of_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_xuen.enabled & ( fight_remains > 90 || pet.xuen_the_white_tiger.active || boss & fight_remains < 10 )",
								["action"] = "touch_of_karma",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.invoke_xuen.enabled & ( fight_remains > ( 180 - runeforge.fatal_touch.enabled * 120 ) || buff.bonedust_brew.up || boss & fight_remains < 10 )",
								["action"] = "touch_of_death",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.invoke_xuen.enabled & ( fight_remains > 90 || boss & fight_remains < 16 )",
								["action"] = "touch_of_karma",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains < execute_time",
								["action"] = "weapons_of_order",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "jotungeirr_destinys_call",
								["action"] = "jotungeirr_destinys_call",
								["criteria"] = "variable.serenity_burst || boss & fight_remains < 20",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["action"] = "inscrutable_quantum_device",
								["criteria"] = "variable.serenity_burst || boss & fight_remains < 20",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "wrathstone",
								["action"] = "wrathstone",
								["criteria"] = "variable.serenity_burst || boss & fight_remains < 20",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "overcharged_anima_battery",
								["action"] = "overcharged_anima_battery",
								["criteria"] = "variable.serenity_burst || boss & fight_remains < 20",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "shadowgrasp_totem",
								["action"] = "shadowgrasp_totem",
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20 || ! runeforge.invokers_delight.enabled",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "gladiators_badge",
							}, -- [19]
							{
								["enabled"] = true,
								["name"] = "the_first_sigil",
								["action"] = "the_first_sigil",
								["criteria"] = "variable.serenity_burst || boss & fight_remains < 20",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! variable.xuen_on_use_trinket || cooldown.invoke_xuen_the_white_tiger.remains > 20 || variable.hold_xuen",
								["action"] = "use_items",
							}, -- [21]
							{
								["action"] = "faeline_stomp",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "fallen_order",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < 15 || ( chi >= 2 & ( fight_remains > 60 & ( ( cooldown.serenity.remains > 10 || buff.serenity.up || cooldown.serenity.up ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 10 || variable.hold_xuen ) ) ) || ( fight_remains <= 60 & ( pet.xuen_the_White_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > fight_remains ) ) )",
								["action"] = "bonedust_brew",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains < 2 || boss & fight_remains < 15",
								["action"] = "serenity",
							}, -- [25]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled & ! pet.xuen_the_white_tiger.active & buff.serenity.down & buff.bonedust_brew.down",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [27]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "( buff.primordial_potential.stack < 9 || buff.bonedust_brew.remains < cooldown.rising_sun_kick.remains & buff.bonedust_brew.up & pet.xuen_the_white_tiger.active ) & ( raid_event.adds.in > cooldown.whirling_dragon_punch.duration * 0.8 || spell_targets > 1 )",
								["action"] = "whirling_dragon_punch",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & ( raid_event.adds.in > buff.dance_of_chiji.remains - 2 || raid_event.adds.up )",
								["action"] = "spinning_crane_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.volatile_solvent.enabled & buff.storm_earth_and_fire.down & debuff.bonedust_brew_debuff.down",
								["interrupt_if"] = "buff.volatile_solvent_humanoid.up||energy.time_to_max<3||cooldown.rising_sun_kick.remains<2||cooldown.fists_of_fury.remains<2",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.serenity.remains > 1 || ! talent.serenity.enabled & ( cooldown.weapons_of_order.remains > 4 || ! covenant.kyrian )",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > cooldown.fists_of_fury.duration * 0.8 || raid_event.adds.up ) & ( energy.time_to_max > execute_time - 1 || chi.max - chi <= 1 || buff.storm_earth_and_fire.remains < execute_time + 1 ) || fight_remains < execute_time + 1 || debuff.bonedust_brew_debuff.up || buff.primordial_power.up",
								["action"] = "fists_of_fury",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_emperors_capacitor.stack > 19 & energy.time_to_max > execute_time - 1 & cooldown.rising_sun_kick.remains > execute_time || buff.the_emperors_capacitor.stack > 14 & ( cooldown.serenity.remains < 5 & talent.serenity.enabled || cooldown.weapons_of_order.remains < 5 & covenant.kyrian || fight_remains < 5 )",
								["action"] = "crackling_jade_lightning",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & active_enemies > 1",
								["action"] = "rushing_jade_wind",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi < 3",
								["action"] = "fist_of_the_white_tiger",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 & raid_event.adds.in > 20 || chi.max - chi >= 2 & active_enemies >= 2",
								["action"] = "chi_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.primordial_power.up",
								["action"] = "chi_wave",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= 2 & buff.storm_earth_and_fire.down",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.chi_energy.stack > 30 - 5 * active_enemies & buff.storm_earth_and_fire.down & ( cooldown.rising_sun_kick.remains > 2 & cooldown.fists_of_fury.remains > 2 || cooldown.rising_sun_kick.remains < 3 & cooldown.fists_of_fury.remains > 3 & chi > 3 || cooldown.rising_sun_kick.remains > 3 & cooldown.fists_of_fury.remains < 3 & chi > 4 || chi.max - chi <= 1 & energy.time_to_max < 2 ) || buff.chi_energy.stack > 10 & fight_remains < 7",
								["action"] = "spinning_crane_kick",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( talent.serenity.enabled & cooldown.serenity.remains < 3 || cooldown.rising_sun_kick.remains > 1 & cooldown.fists_of_fury.remains > 1 || cooldown.rising_sun_kick.remains < 3 & cooldown.fists_of_fury.remains > 3 & chi > 2 || cooldown.rising_sun_kick.remains > 3 & cooldown.fists_of_fury.remains < 3 & chi > 3 || chi > 5 || buff.bok_proc.up )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= 2",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "arcane_torrent",
							}, -- [16]
							{
								["enabled"] = true,
								["interrupt"] = "1",
								["action"] = "flying_serpent_kick",
								["criteria"] = "! covenant.necrolord || buff.primordial_potential.up",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains < 3 & chi = 2 & prev_gcd.1.tiger_palm & energy.time_to_50 < 1",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & energy.time_to_max < 2 & ( chi.max - chi <= 1 || prev_gcd.1.tiger_palm )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [19]
						},
						["cd_sef"] = {
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & ( cooldown.rising_sun_kick.remains < 2 || ! covenant.kyrian ) & ( ! covenant.necrolord || cooldown.bonedust_brew.remains < 2 ) || fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_xuen.enabled & ( fight_remains > ( 180 - runeforge.fatal_touch.enabled * 120 ) || buff.storm_earth_and_fire.down & pet.xuen_the_white_tiger.active & ( ! covenant.necrolord || buff.bonedust_brew.up ) || ( cooldown.invoke_xuen_the_white_tiger.remains > fight_remains ) & buff.bonedust_brew.up || boss & fight_remains < 10 )",
								["action"] = "touch_of_death",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.invoke_xuen.enabled & ( fight_remains > ( 180 - runeforge.fatal_touch.enabled * 120 ) || buff.storm_earth_and_fire.down & ( ! covenant.necrolord || buff.bonedust_brew.up ) || boss & fight_remains < 10 )",
								["action"] = "touch_of_death",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 45 || raid_event.adds.up ) & cooldown.rising_sun_kick.remains < execute_time & cooldown.invoke_xuen_the_white_tiger.remains > ( 20 + 20 * runeforge.invokers_delight.enabled ) || boss & fight_remains < 35",
								["action"] = "weapons_of_order",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( raid_event.adds.in > 10 || raid_event.adds.up )",
								["action"] = "faeline_stomp",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 30 || raid_event.adds.up",
								["action"] = "fallen_order",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bonedust_brew.up & ( chi >= 2 & fight_remains > 60 & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > 10 ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 10 || variable.hold_xuen ) || ( chi >= 2 & fight_remains <= 60 & ( pet.xuen_the_White_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > fight_remains ) & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > fight_remains || buff.storm_earth_and_fire.up ) ) || boss & fight_remains < 15 ) || boss & fight_remains < 10 & soulbind.lead_by_example.enabled",
								["action"] = "bonedust_brew",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "conduit.coordinated_offensive.enabled",
								["action"] = "storm_earth_and_fire_fixate",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.storm_earth_and_fire.charges = 2 || fight_remains < 20 || ( raid_event.adds.remains > 15 || ( ! covenant.kyrian & ! covenant.necrolord ) & ( ( raid_event.adds.in > cooldown.storm_earth_and_fire.full_recharge_time || ! raid_event.adds.exists ) & ( cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time || variable.hold_xuen ) ) & cooldown.fists_of_fury.remains <= 9 & chi >= 2 & cooldown.whirling_dragon_punch.remains <= 12 )",
								["action"] = "storm_earth_and_fire",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "covenant.kyrian & ( buff.weapons_of_order.up || ( fight_remains < cooldown.weapons_of_order.remains || cooldown.weapons_of_order.remains > cooldown.storm_earth_and_fire.full_recharge_time ) & cooldown.fists_of_fury.remains <= 9 & chi >= 2 & cooldown.whirling_dragon_punch.remains <= 12 )",
								["action"] = "storm_earth_and_fire",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "covenant.necrolord & ( debuff.bonedust_brew_debuff.up & ! variable.hold_sef ) & debuff.bonedust_brew_debuff.up & ( pet.xuen_the_white_tiger.active || variable.hold_xuen || cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time || cooldown.invoke_xuen_the_white_tiger.remains > 30 )",
								["action"] = "storm_earth_and_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "jotungeirr_destinys_call",
								["action"] = "jotungeirr_destinys_call",
								["criteria"] = "pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 60 & fight_remains > 180 || boss & fight_remains < 20",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["action"] = "inscrutable_quantum_device",
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "wrathstone",
								["action"] = "wrathstone",
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "shadowgrasp_totem",
								["action"] = "shadowgrasp_totem",
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20 || ! runeforge.invokers_delight.enabled",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "overcharged_anima_battery",
								["action"] = "overcharged_anima_battery",
								["criteria"] = "pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 90 || boss & fight_remains < 20",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 15",
								["action"] = "gladiators_badge",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "the_first_sigil",
								["action"] = "the_first_sigil",
								["criteria"] = "pet.xuen_the_white_tiger.remains > 15 || cooldown.invoke_xuen_the_white_tiger.remains > 60 & fight_remains > 300 || boss & fight_remains < 20",
							}, -- [18]
							{
								["enabled"] = true,
								["name"] = "cache_of_acquired_treasures",
								["action"] = "cache_of_acquired_treasures",
								["criteria"] = "active_enemies < 2 & buff.acquired_wand.up || active_enemies > 1 & buff.acquired_axe.up || boss & fight_remains < 20",
							}, -- [19]
							{
								["enabled"] = true,
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
								["criteria"] = "! buff.scars_of_fraternal_strife_4.up || boss & fight_remains < 35",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! variable.xuen_on_use_trinket || cooldown.invoke_xuen_the_white_tiger.remains > 20 & pet.xuen_the_white_tiger.remains < 20 || variable.hold_xuen",
								["action"] = "use_items",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_xuen.enabled & ( fight_remains > 90 || pet.xuen_the_white_tiger.active || variable.hold_xuen || boss & fight_remains < 16 )",
								["action"] = "touch_of_karma",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! talent.invoke_xuen.enabled & ( fight_remains > 159 || variable.hold_xuen )",
								["action"] = "touch_of_karma",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 20",
								["action"] = "ancestral_call",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 20",
								["action"] = "blood_fury",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 10",
								["action"] = "fireblood",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.storm_earth_and_fire.down",
								["action"] = "bag_of_tricks",
							}, -- [28]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled & ! pet.xuen_the_white_tiger.active & buff.storm_earth_and_fire.down & buff.bonedust_brew.down",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [30]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.invoke_xuen_the_white_tiger.remains > fight_remains || fight_remains - cooldown.invoke_xuen_the_white_tiger.remains < 120 & ( ( talent.serenity.enabled & fight_remains > cooldown.serenity.remains & cooldown.serenity.remains > 10 ) || ( cooldown.storm_earth_and_fire.full_recharge_time < fight_remains & cooldown.storm_earth_and_fire.full_recharge_time > 15 ) || ( cooldown.storm_earth_and_fire.charges = 0 & cooldown.storm_earth_and_fire.remains < fight_remains ) )",
								["var_name"] = "hold_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.bonedust_brew.up & cooldown.storm_earth_and_fire.charges < 2 & chi < 3 || buff.bonedust_brew.remains < 8",
								["var_name"] = "hold_sef",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.invoke_xuen.enabled & ( ( buff.serenity.up || buff.storm_earth_and_fire.up ) & pet.xuen_the_white_tiger.active || boss & fight_remains <= 60 )",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.invoke_xuen.enabled & ( ( buff.serenity.up || buff.storm_earth_and_fire.up ) & fight_remains <= 60 )",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up",
								["list_name"] = "serenity",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.weapons_of_order.up",
								["list_name"] = "weapons_of_order",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "time < 4 & chi < 5 & ! pet.xuen_the_white_tiger.active",
								["list_name"] = "opener",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3 & ( energy.time_to_max < 1 || energy.time_to_max < 4 & cooldown.fists_of_fury.remains < 1.5 || cooldown.weapons_of_order.remains < 2 ) & ! debuff.bonedust_brew_debuff.up",
								["action"] = "fist_of_the_white_tiger",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & ( energy.time_to_max < 1 || cooldown.serenity.remains < 2 || energy.time_to_max < 4 & cooldown.fists_of_fury.remains < 1.5 || cooldown.weapons_of_order.remains < 2 ) & ! buff.bonedust_brew.up",
								["action"] = "expel_harm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & chi.max - chi >= 2 & ( energy.time_to_max < 1 || cooldown.serenity.remains < 2 || energy.time_to_max < 4 & cooldown.fists_of_fury.remains < 1.5 || cooldown.weapons_of_order.remains < 2 ) & ! debuff.bonedust_brew_debuff.up",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & cooldown.faeline_stomp.remains > 25 & ( chi.max - chi >= 1 & active_enemies = 1 & raid_event.adds.in > 20 || chi.max - chi >= 2 & active_enemies >= 2 )",
								["action"] = "chi_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.tiger_palm & chi < 4",
								["action"] = "energizing_elixir",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "cd_sef",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.serenity.enabled",
								["list_name"] = "cd_serenity",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 3",
								["list_name"] = "st",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "aoe",
							}, -- [17]
						},
						["precombat"] = {
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.inscrutable_quantum_device || equipped.gladiators_badge || equipped.wrathstone || equipped.overcharged_anima_battery || equipped.shadowgrasp_totem || equipped.the_first_sigil || equipped.cache_of_acquired_treasures",
								["var_name"] = "xuen_on_use_trinket",
							}, -- [2]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! covenant.night_fae",
								["action"] = "chi_burst",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.energizing_elixer.enabled",
								["action"] = "chi_wave",
							}, -- [5]
						},
						["aoe"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( buff.dance_of_chiji.up || debuff.bonedust_brew_debuff.up )",
								["action"] = "spinning_crane_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "energy.time_to_max > execute_time || chi.max - chi <= 1",
								["action"] = "fists_of_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( talent.whirling_dragon_punch.enabled & cooldown.rising_sun_kick.duration > cooldown.whirling_dragon_punch.remains + 4 ) & ( cooldown.fists_of_fury.remains > 3 || chi >= 5 )",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_emperors_capacitor.stack > 19 & energy.time_to_max > execute_time - 1 & cooldown.fists_of_fury.remains > execute_time",
								["action"] = "crackling_jade_lightning",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2 & ( ! talent.hit_combo.enabled || combo_strike )",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "arcane_torrent",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.bonedust_brew.remains > 2 || ! covenant.necrolord ) & ( chi >= 5 || cooldown.fists_of_fury.remains > 6 || cooldown.fists_of_fury.remains > 3 & chi >= 3 & energy.time_to_50 < 1 || energy.time_to_max <= ( 3 + 3 * cooldown.fists_of_fury.remains < 5 ) || buff.storm_earth_and_fire.up )",
								["action"] = "spinning_crane_kick",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "chi_wave",
							}, -- [13]
							{
								["enabled"] = true,
								["interrupt"] = "1",
								["criteria"] = "buff.bok_proc.down",
								["action"] = "flying_serpent_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( buff.bok_proc.up || talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi = 2 & cooldown.fists_of_fury.remains < 3 || chi.max - chi <= 1 & prev_gcd.1.spinning_crane_kick & energy.time_to_max < 3 )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [15]
						},
					},
					["version"] = 20220523,
					["warnings"] = "WARNING:  The import for 'weapons_of_order' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 2: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 13: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'serenity' required some automated changes.\nLine 10: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'cd_serenity' required some automated changes.\nLine 9: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 11: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 18: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 27: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\n\nWARNING:  The import for 'st' required some automated changes.\nLine 3: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 6: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 14: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'cd_sef' required some automated changes.\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 7: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\nLine 15: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 30: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 14: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 15: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'aoe' required some automated changes.\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 10: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 15: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 9 action lists.\n",
					["author"] = "SimC",
					["profile"] = "## Windwalker Monk\n## May 23, 2022\n\n## Charges:\n## - Tweak Fists of Fury interrupt logic.\n## - Tweak Spinning Crane Kick logic.\n## - Add bossfight checks to many CD entries.\n## - Add in-combat Fleshcraft.\n\n## Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/variable,name=xuen_on_use_trinket,op=set,value=equipped.inscrutable_quantum_device||equipped.gladiators_badge||equipped.wrathstone||equipped.overcharged_anima_battery||equipped.shadowgrasp_totem||equipped.the_first_sigil||equipped.cache_of_acquired_treasures\nactions.precombat+=/fleshcraft\nactions.precombat+=/chi_burst,if=!covenant.night_fae\nactions.precombat+=/chi_wave,if=!talent.energizing_elixer.enabled\n\n## Executed every time the actor is available.\nactions=spear_hand_strike\nactions+=/variable,name=hold_xuen,op=set,value=cooldown.invoke_xuen_the_white_tiger.remains>fight_remains||fight_remains-cooldown.invoke_xuen_the_white_tiger.remains<120&((talent.serenity&fight_remains>cooldown.serenity.remains&cooldown.serenity.remains>10)||(cooldown.storm_earth_and_fire.full_recharge_time<fight_remains&cooldown.storm_earth_and_fire.full_recharge_time>15)||(cooldown.storm_earth_and_fire.charges=0&cooldown.storm_earth_and_fire.remains<fight_remains))\nactions+=/variable,name=hold_sef,op=set,value=cooldown.bonedust_brew.up&cooldown.storm_earth_and_fire.charges<2&chi<3||buff.bonedust_brew.remains<8\nactions+=/potion,if=talent.invoke_xuen.enabled&((buff.serenity.up||buff.storm_earth_and_fire.up)&pet.xuen_the_white_tiger.active||boss&fight_remains<=60)\nactions+=/potion,if=!talent.invoke_xuen.enabled&((buff.serenity.up||buff.storm_earth_and_fire.up)&fight_remains<=60)\nactions+=/call_action_list,name=serenity,strict=1,if=buff.serenity.up\nactions+=/call_action_list,name=weapons_of_order,strict=1,if=buff.weapons_of_order.up\nactions+=/call_action_list,name=opener,strict=1,if=time<4&chi<5&!pet.xuen_the_white_tiger.active\nactions+=/fist_of_the_white_tiger,cycle_targets=1,if=chi.max-chi>=3&(energy.time_to_max<1||energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5||cooldown.weapons_of_order.remains<2)&!debuff.bonedust_brew_debuff.up\nactions+=/expel_harm,if=chi.max-chi>=1&(energy.time_to_max<1||cooldown.serenity.remains<2||energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5||cooldown.weapons_of_order.remains<2)&!buff.bonedust_brew.up\nactions+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2&(energy.time_to_max<1||cooldown.serenity.remains<2||energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5||cooldown.weapons_of_order.remains<2)&!debuff.bonedust_brew_debuff.up\nactions+=/chi_burst,if=covenant.night_fae&cooldown.faeline_stomp.remains>25&(chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20||chi.max-chi>=2&active_enemies>=2)\nactions+=/energizing_elixir,if=prev_gcd.1.tiger_palm&chi<4\nactions+=/call_action_list,name=cd_sef,strict=1,if=!talent.serenity\nactions+=/call_action_list,name=cd_serenity,strict=1,if=talent.serenity\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<3\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>=3\n\nactions.aoe=whirling_dragon_punch\nactions.aoe+=/spinning_crane_kick,if=combo_strike&(buff.dance_of_chiji.up||debuff.bonedust_brew_debuff.up)\nactions.aoe+=/fists_of_fury,if=energy.time_to_max>execute_time||chi.max-chi<=1\nactions.aoe+=/rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch&cooldown.rising_sun_kick.duration>cooldown.whirling_dragon_punch.remains+4)&(cooldown.fists_of_fury.remains>3||chi>=5)\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions.aoe+=/expel_harm,if=chi.max-chi>=1\nactions.aoe+=/fist_of_the_white_tiger,cycle_targets=1,if=chi.max-chi>=3\nactions.aoe+=/chi_burst,if=chi.max-chi>=2\nactions.aoe+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.fists_of_fury.remains>execute_time\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(!talent.hit_combo||combo_strike)\nactions.aoe+=/arcane_torrent,if=chi.max-chi>=1\nactions.aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.bonedust_brew.remains>2||!covenant.necrolord)&(chi>=5||cooldown.fists_of_fury.remains>6||cooldown.fists_of_fury.remains>3&chi>=3&energy.time_to_50<1||energy.time_to_max<=(3+3*cooldown.fists_of_fury.remains<5)||buff.storm_earth_and_fire.up)\nactions.aoe+=/chi_wave,if=combo_strike\nactions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&(buff.bok_proc.up||talent.hit_combo&prev_gcd.1.tiger_palm&chi=2&cooldown.fists_of_fury.remains<3||chi.max-chi<=1&prev_gcd.1.spinning_crane_kick&energy.time_to_max<3)\n\nactions.cd_sef=invoke_xuen_the_white_tiger,if=!variable.hold_xuen&(cooldown.rising_sun_kick.remains<2||!covenant.kyrian)&(!covenant.necrolord||cooldown.bonedust_brew.remains<2)||fight_remains<25\nactions.cd_sef+=/touch_of_death,if=talent.invoke_xuen.enabled&(fight_remains>(180-runeforge.fatal_touch*120)||buff.storm_earth_and_fire.down&pet.xuen_the_white_tiger.active&(!covenant.necrolord||buff.bonedust_brew.up)||(cooldown.invoke_xuen_the_white_tiger.remains>fight_remains)&buff.bonedust_brew.up||boss&fight_remains<10)\nactions.cd_sef+=/touch_of_death,if=!talent.invoke_xuen.enabled&(fight_remains>(180-runeforge.fatal_touch*120)||buff.storm_earth_and_fire.down&(!covenant.necrolord||buff.bonedust_brew.up)||boss&fight_remains<10)\nactions.cd_sef+=/weapons_of_order,if=(raid_event.adds.in>45||raid_event.adds.up)&cooldown.rising_sun_kick.remains<execute_time&cooldown.invoke_xuen_the_white_tiger.remains>(20+20*runeforge.invokers_delight)||boss&fight_remains<35\nactions.cd_sef+=/faeline_stomp,if=combo_strike&(raid_event.adds.in>10||raid_event.adds.up)\nactions.cd_sef+=/fallen_order,if=raid_event.adds.in>30||raid_event.adds.up\nactions.cd_sef+=/bonedust_brew,if=!buff.bonedust_brew.up&(chi>=2&fight_remains>60&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>10)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>10||variable.hold_xuen)||(chi>=2&fight_remains<=60&(pet.xuen_the_White_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>fight_remains)&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>fight_remains||buff.storm_earth_and_fire.up))||boss&fight_remains<15)||boss&fight_remains<10&soulbind.lead_by_example\nactions.cd_sef+=/storm_earth_and_fire_fixate,if=conduit.coordinated_offensive.enabled\nactions.cd_sef+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||fight_remains<20||(raid_event.adds.remains>15||(!covenant.kyrian&!covenant.necrolord)&((raid_event.adds.in>cooldown.storm_earth_and_fire.full_recharge_time||!raid_event.adds.exists)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time||variable.hold_xuen))&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12)\nactions.cd_sef+=/storm_earth_and_fire,if=covenant.kyrian&(buff.weapons_of_order.up||(fight_remains<cooldown.weapons_of_order.remains||cooldown.weapons_of_order.remains>cooldown.storm_earth_and_fire.full_recharge_time)&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12)\nactions.cd_sef+=/storm_earth_and_fire,if=covenant.necrolord&(debuff.bonedust_brew_debuff.up&!variable.hold_sef)&debuff.bonedust_brew_debuff.up&(pet.xuen_the_white_tiger.active||variable.hold_xuen||cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time||cooldown.invoke_xuen_the_white_tiger.remains>30)\nactions.cd_sef+=/use_item,name=jotungeirr_destinys_call,if=pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>60&fight_remains>180||boss&fight_remains<20\nactions.cd_sef+=/use_item,name=inscrutable_quantum_device,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20\nactions.cd_sef+=/use_item,name=wrathstone,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20\nactions.cd_sef+=/use_item,name=shadowgrasp_totem,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20||!runeforge.invokers_delight\nactions.cd_sef+=/use_item,name=overcharged_anima_battery,if=pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>90||boss&fight_remains<20\nactions.cd_sef+=/gladiators_badge,if=pet.xuen_the_white_tiger.active||boss&fight_remains<15\nactions.cd_sef+=/use_item,name=the_first_sigil,if=pet.xuen_the_white_tiger.remains>15||cooldown.invoke_xuen_the_white_tiger.remains>60&fight_remains>300||boss&fight_remains<20\nactions.cd_sef+=/use_item,name=cache_of_acquired_treasures,if=active_enemies<2&buff.acquired_wand.up||active_enemies>1&buff.acquired_axe.up||boss&fight_remains<20\nactions.cd_sef+=/use_item,name=scars_of_fraternal_strife,if=!buff.scars_of_fraternal_strife_4.up||boss&fight_remains<35\nactions.cd_sef+=/use_items,if=!variable.xuen_on_use_trinket||cooldown.invoke_xuen_the_white_tiger.remains>20&pet.xuen_the_white_tiger.remains<20||variable.hold_xuen\nactions.cd_sef+=/touch_of_karma,if=talent.invoke_xuen.enabled&(fight_remains>90||pet.xuen_the_white_tiger.active||variable.hold_xuen||boss&fight_remains<16)\nactions.cd_sef+=/touch_of_karma,if=!talent.invoke_xuen.enabled&(fight_remains>159||variable.hold_xuen)\nactions.cd_sef+=/ancestral_call,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<20\nactions.cd_sef+=/blood_fury,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<20\nactions.cd_sef+=/fireblood,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<10\nactions.cd_sef+=/berserking,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<15\nactions.cd_sef+=/bag_of_tricks,if=buff.storm_earth_and_fire.down\nactions.cd_sef+=/lights_judgment\nactions.cd_sef+=/fleshcraft,if=soulbind.pustule_eruption&!pet.xuen_the_white_tiger.active&buff.storm_earth_and_fire.down&buff.bonedust_brew.down,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\n\nactions.cd_serenity=variable,name=serenity_burst,op=setif,condition=talent.invoke_xuen.enabled,value=cooldown.serenity.remains<1||pet.xuen_the_white_tiger.active&cooldown.serenity.remains>30||boss&fight_remains<20,value_else=cooldown.serenity.remains<1||cooldown.serenity.remains>30||boss&fight_remains<20\nactions.cd_serenity+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen||boss&fight_remains<25\nactions.cd_serenity+=/ancestral_call,if=variable.serenity_burst\nactions.cd_serenity+=/blood_fury,if=variable.serenity_burst\nactions.cd_serenity+=/fireblood,if=variable.serenity_burst\nactions.cd_serenity+=/berserking,if=variable.serenity_burst\nactions.cd_serenity+=/bag_of_tricks,if=variable.serenity_burst\nactions.cd_serenity+=/arcane_torrent\nactions.cd_serenity+=/touch_of_death,if=talent.invoke_xuen.enabled&(fight_remains>(180-runeforge.fatal_touch*120)||pet.xuen_the_white_tiger.active&(!covenant.necrolord||buff.bonedust_brew.up)||(cooldown.invoke_xuen_the_white_tiger.remains>fight_remains)&buff.bonedust_brew.up||boss&fight_remains<10)\nactions.cd_serenity+=/touch_of_karma,if=talent.invoke_xuen.enabled&(fight_remains>90||pet.xuen_the_white_tiger.active||boss&fight_remains<10)\nactions.cd_serenity+=/touch_of_death,if=!talent.invoke_xuen.enabled&(fight_remains>(180-runeforge.fatal_touch*120)||buff.bonedust_brew.up||boss&fight_remains<10)\nactions.cd_serenity+=/touch_of_karma,if=!talent.invoke_xuen.enabled&(fight_remains>90||boss&fight_remains<16)\nactions.cd_serenity+=/weapons_of_order,if=cooldown.rising_sun_kick.remains<execute_time\nactions.cd_serenity+=/use_item,name=jotungeirr_destinys_call,if=variable.serenity_burst||boss&fight_remains<20\nactions.cd_serenity+=/use_item,name=inscrutable_quantum_device,if=variable.serenity_burst||boss&fight_remains<20\nactions.cd_serenity+=/use_item,name=wrathstone,if=variable.serenity_burst||boss&fight_remains<20\nactions.cd_serenity+=/use_item,name=overcharged_anima_battery,if=variable.serenity_burst||boss&fight_remains<20\nactions.cd_serenity+=/use_item,name=shadowgrasp_totem,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20||!runeforge.invokers_delight\nactions.cd_serenity+=/gladiators_badge,if=variable.serenity_burst\nactions.cd_serenity+=/use_item,name=the_first_sigil,if=variable.serenity_burst||boss&fight_remains<20\nactions.cd_serenity+=/use_items,if=!variable.xuen_on_use_trinket||cooldown.invoke_xuen_the_white_tiger.remains>20||variable.hold_xuen\nactions.cd_serenity+=/faeline_stomp\nactions.cd_serenity+=/fallen_order\nactions.cd_serenity+=/bonedust_brew,if=boss&fight_remains<15||(chi>=2&(fight_remains>60&((cooldown.serenity.remains>10||buff.serenity.up||cooldown.serenity.up)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>10||variable.hold_xuen)))||(fight_remains<=60&(pet.xuen_the_White_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>fight_remains)))\nactions.cd_serenity+=/serenity,if=cooldown.rising_sun_kick.remains<2||boss&fight_remains<15\nactions.cd_serenity+=/bag_of_tricks\nactions.cd_serenity+=/fleshcraft,if=soulbind.pustule_eruption&!pet.xuen_the_white_tiger.active&buff.serenity.down&buff.bonedust_brew.down,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\n\nactions.opener=fist_of_the_white_tiger,cycle_targets=1,if=chi.max-chi>=3\nactions.opener+=/expel_harm,if=talent.chi_burst.enabled&chi.max-chi>=3\nactions.opener+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2\nactions.opener+=/chi_wave,if=chi.max-chi=2\nactions.opener+=/expel_harm\nactions.opener+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2\n\nactions.serenity=fists_of_fury,if=buff.serenity.remains<1\nactions.serenity+=/spinning_crane_kick,if=combo_strike&(active_enemies>=3||active_enemies>1&!cooldown.rising_sun_kick.up)\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=combo_strike\nactions.serenity+=/fists_of_fury,if=active_enemies>=3\nactions.serenity+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.weapons_of_order.up&cooldown.rising_sun_kick.remains>2\nactions.serenity+=/fists_of_fury,interrupt_if=!cooldown.rising_sun_kick.up\nactions.serenity+=/spinning_crane_kick,if=combo_strike&debuff.bonedust_brew_debuff.up\nactions.serenity+=/fist_of_the_white_tiger,cycle_targets=1,if=chi<3\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike||!talent.hit_combo\nactions.serenity+=/spinning_crane_kick\n\nactions.st=whirling_dragon_punch,if=(buff.primordial_potential.stack<9||buff.bonedust_brew.remains<cooldown.rising_sun_kick.remains&buff.bonedust_brew.up&pet.xuen_the_white_tiger.active)&(raid_event.adds.in>cooldown.whirling_dragon_punch.duration*0.8||spell_targets>1)\nactions.st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&(raid_event.adds.in>buff.dance_of_chiji.remains-2||raid_event.adds.up)\nactions.st+=/fleshcraft,interrupt_immediate=1,interrupt_if=buff.volatile_solvent_humanoid.up||energy.time_to_max<3||cooldown.rising_sun_kick.remains<2||cooldown.fists_of_fury.remains<2,if=soulbind.volatile_solvent&buff.storm_earth_and_fire.down&debuff.bonedust_brew_debuff.down\nactions.st+=/rising_sun_kick,cycle_targets=1,if=cooldown.serenity.remains>1||!talent.serenity&(cooldown.weapons_of_order.remains>4||!covenant.kyrian)\nactions.st+=/fists_of_fury,if=(raid_event.adds.in>cooldown.fists_of_fury.duration*0.8||raid_event.adds.up)&(energy.time_to_max>execute_time-1||chi.max-chi<=1||buff.storm_earth_and_fire.remains<execute_time+1)||fight_remains<execute_time+1||debuff.bonedust_brew_debuff.up||buff.primordial_power.up\nactions.st+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.rising_sun_kick.remains>execute_time||buff.the_emperors_capacitor.stack>14&(cooldown.serenity.remains<5&talent.serenity||cooldown.weapons_of_order.remains<5&covenant.kyrian||fight_remains<5)\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.st+=/fist_of_the_white_tiger,cycle_targets=1,if=chi<3\nactions.st+=/expel_harm,if=chi.max-chi>=1\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20||chi.max-chi>=2&active_enemies>=2\nactions.st+=/chi_wave,if=!buff.primordial_power.up\nactions.st+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2&buff.storm_earth_and_fire.down\nactions.st+=/spinning_crane_kick,if=buff.chi_energy.stack>30-5*active_enemies&buff.storm_earth_and_fire.down&(cooldown.rising_sun_kick.remains>2&cooldown.fists_of_fury.remains>2||cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>3||cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>4||chi.max-chi<=1&energy.time_to_max<2)||buff.chi_energy.stack>10&fight_remains<7\nactions.st+=/blackout_kick,cycle_targets=1,if=combo_strike&(talent.serenity&cooldown.serenity.remains<3||cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>1||cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>2||cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>3||chi>5||buff.bok_proc.up)\nactions.st+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2\nactions.st+=/arcane_torrent,if=chi.max-chi>=1\nactions.st+=/flying_serpent_kick,interrupt=1,if=!covenant.necrolord||buff.primordial_potential.up\nactions.st+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains<3&chi=2&prev_gcd.1.tiger_palm&energy.time_to_50<1\nactions.st+=/blackout_kick,cycle_targets=1,if=combo_strike&energy.time_to_max<2&(chi.max-chi<=1||prev_gcd.1.tiger_palm)\n\nactions.weapons_of_order=call_action_list,name=cd_sef,strict=1,if=!talent.serenity\nactions.weapons_of_order+=/call_action_list,name=cd_serenity,strict=1,if=talent.serenity\nactions.weapons_of_order+=/rising_sun_kick,cycle_targets=1\nactions.weapons_of_order+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains&cooldown.rising_sun_kick.remains&buff.weapons_of_order_ww.up\nactions.weapons_of_order+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.weapons_of_order+=/fists_of_fury,interrupt=1,interrupt_immediate=1,if=buff.weapons_of_order_ww.up&buff.storm_earth_and_fire.up&!set_bonus.tier28_2pc&active_enemies<2\nactions.weapons_of_order+=/fists_of_fury,if=buff.weapons_of_order_ww.up&buff.storm_earth_and_fire.up&set_bonus.tier28_2pc||active_enemies>=2&buff.weapons_of_order_ww.remains<1\nactions.weapons_of_order+=/whirling_dragon_punch\nactions.weapons_of_order+=/spinning_crane_kick,if=combo_strike&active_enemies>=3&buff.weapons_of_order_ww.up\nactions.weapons_of_order+=/fist_of_the_white_tiger,cycle_targets=1,if=chi=0&buff.weapons_of_order_ww.remains<4||chi<3\nactions.weapons_of_order+=/expel_harm,if=chi.max-chi>=1\nactions.weapons_of_order+=/chi_burst,if=chi.max-chi>=(1+active_enemies>1)\nactions.weapons_of_order+=/tiger_palm,cycle_targets=1,if=chi=0&buff.weapons_of_order_ww.remains<4||(!talent.hit_combo||combo_strike)&chi.max-chi>=2\nactions.weapons_of_order+=/spinning_crane_kick,if=buff.chi_energy.stack>30-5*active_enemies\nactions.weapons_of_order+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies<=3&chi>=3||buff.weapons_of_order_ww.up\nactions.weapons_of_order+=/chi_wave\nactions.weapons_of_order+=/flying_serpent_kick,interrupt=1",
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20220302,
					["author"] = "SimC",
					["desc"] = "Brewmaster Monk\nMarch 2, 2022\n\nChanges:\n- 9.1 includes Purifying Brew entries related to Invoke Niuzao that do not using spec settings.  Provide feedback on GitHub.\n- Disregard new target.cooldown.pause_action.remains conditions that don't have an in-game equivalent.\n- Make settings.ox_walker support using SCK on fewer than 3 enemies with conduit.walk_with_the_ox.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_for_celestial & ( time_to_max_charges < gcd.max || buff.purified_chi.up & buff.purified_chi.remains < 1.5 * gcd.max ) || cooldown.celestial_brew.remains < 2 * gcd.max & charges_fractional > 1.5",
								["action"] = "purifying_brew",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.purified_chi.up",
								["action"] = "celestial_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
								["action"] = "fortifying_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.debuff.casting.react",
								["action"] = "spear_hand_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || debuff.conductive_ink_debuff.up & target.health.pct < 31 || time_to_die < 20",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "dreadfire_vessel",
								["action"] = "dreadfire_vessel",
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 6 & cooldown.purifying_brew.charges_fractional < 2",
								["action"] = "invoke_niuzao",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 15 || target.health.current < health.max",
								["action"] = "touch_of_death",
							}, -- [18]
							{
								["action"] = "weapons_of_order",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "fallen_order",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.bonedust_brew_debuff.up",
								["action"] = "bonedust_brew",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp > 0 & group & stagger.pct >= settings.purify_stagger_currhp",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp > 0 & solo & stagger.pct >= settings.purify_stagger_currhp * 0.5",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_maxhp > 0 & group & stagger.pct >= settings.purify_stagger_maxhp",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_maxhp > 0 & solo & stagger.pct >= settings.purify_stagger_maxhp * 0.5",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "stagger.amounttototalpct >= 0.7 & ( cooldown.invoke_niuzao_the_black_ox.remains < 5 || buff.invoke_niuzao_the_black_ox.up )",
								["action"] = "purifying_brew",
								["description"] = "Cast PB during the Niuzao window, but only if recently hit.",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & group & stagger.pct > 20",
								["action"] = "purifying_brew",
								["description"] = "Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & solo & stagger.pct > 10",
								["action"] = "purifying_brew",
								["description"] = "Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.invoke_niuzao_the_black_ox.up & buff.invoke_niuzao_the_black_ox.remains < 8",
								["action"] = "purifying_brew",
								["description"] = "Dump PB charges towards the end of Niuzao: anything is better than nothing.",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.purifying_brew.charges_fractional >= 1.8 & ( cooldown.invoke_niuzao_the_black_ox.remains > 10 || buff.invoke_niuzao_the_black_ox.up )",
								["action"] = "purifying_brew",
								["description"] = "Avoid capping charges, but pool charges shortly before Niuzao comes up and allow dumping to avoid capping during Niuzao.",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.purifying_brew.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
								["description"] = "Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 5 * healing_sphere.count || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
								["description"] = "Healing Elixir",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33",
								["action"] = "healing_elixir",
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.bonedust_brew.remains < 4 & soulbind.pustule_eruption.enabled",
								["action"] = "fleshcraft",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
								["description"] = "Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below",
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "faeline_stomp",
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "buff.weapons_of_order.up",
								["action"] = "keg_smash",
								["description"] = "Cast KS at top prio during WoO buff.",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "tanking & buff.blackout_combo.down & incoming_damage_2999ms > ( health.max * 0.05 + stagger.last_tick_damage_4 ) & buff.elusive_brawler.stack < 2",
								["action"] = "celestial_brew",
								["description"] = "Celestial Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.",
							}, -- [39]
							{
								["enabled"] = true,
								["criteria"] = "tanking & buff.purified_chi.up & ( buff.purified_chi.remains < 1.5 * gcd || cooldown.purifying_brew.remains > buff.purified_chi.remains )",
								["action"] = "celestial_brew",
							}, -- [40]
							{
								["action"] = "detox",
								["enabled"] = true,
							}, -- [41]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2 & buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [42]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.blackout_combo.up & buff.rushing_jade_wind.up",
								["action"] = "tiger_palm",
							}, -- [43]
							{
								["enabled"] = true,
								["criteria"] = "buff.charred_passions.down & runeforge.charred_passions.equipped",
								["action"] = "breath_of_fire",
							}, -- [44]
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [45]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [46]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.faeline_stomp.remains > 2 & spell_targets >= 2",
								["action"] = "chi_burst",
							}, -- [47]
							{
								["action"] = "faeline_stomp",
								["enabled"] = true,
							}, -- [48]
							{
								["enabled"] = true,
								["criteria"] = "buff.gift_of_the_ox.stack >= 3",
								["action"] = "expel_harm",
							}, -- [49]
							{
								["action"] = "touch_of_death",
								["enabled"] = true,
							}, -- [50]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [51]
							{
								["enabled"] = true,
								["criteria"] = "buff.charred_passions.up",
								["action"] = "spinning_crane_kick",
							}, -- [52]
							{
								["enabled"] = true,
								["criteria"] = "dot.concentrated_flame.remains = 0",
								["action"] = "concentrated_flame",
							}, -- [53]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & ( buff.bloodlust.down || ( buff.bloodlust.up & dot.breath_of_fire_dot.refreshable ) )",
								["action"] = "breath_of_fire",
							}, -- [54]
							{
								["enabled"] = true,
								["criteria"] = "! essence.the_crucible_of_flame.major",
								["action"] = "heart_essence",
							}, -- [55]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [56]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [57]
							{
								["action"] = "exploding_keg",
								["enabled"] = true,
							}, -- [58]
							{
								["enabled"] = true,
								["criteria"] = "buff.gift_of_the_ox.stack >= 2",
								["action"] = "expel_harm",
								["description"] = "Expel Harm has higher DPET than TP when you have at least 2 orbs.",
							}, -- [59]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.shaohaos_might.equipped & ( active_enemies >= 3 || settings.ox_walker & conduit.walk_with_the_ox.enabled ) & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + execute_time ) ) ) >= 65 & ( ! talent.spitfire.enabled || ! runeforge.charred_passions.equipped )",
								["action"] = "spinning_crane_kick",
								["description"] = "Cast SCK if enough enemies are around, or if WWWTO is enabled. This is a slight defensive loss over using TP but generally reduces sim variance more than anything else.",
							}, -- [60]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blackout_combo.enabled & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + gcd ) ) ) >= 65",
								["action"] = "tiger_palm",
							}, -- [61]
							{
								["enabled"] = true,
								["criteria"] = "energy < 31",
								["action"] = "arcane_torrent",
							}, -- [62]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [63]
							{
								["action"] = "rushing_jade_wind",
								["enabled"] = true,
							}, -- [64]
						},
						["precombat"] = {
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [5]
						},
					},
					["version"] = 20220302,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 61: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 2 action lists.\n",
					["spec"] = 268,
					["profile"] = "## Brewmaster Monk\n## March 2, 2022\n\n## Changes:\n## - 9.1 includes Purifying Brew entries related to Invoke Niuzao that do not using spec settings.  Provide feedback on GitHub.\n## - Disregard new target.cooldown.pause_action.remains conditions that don't have an in-game equivalent.\n## - Make settings.ox_walker support using SCK on fewer than 3 enemies with conduit.walk_with_the_ox.\n\n## Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/fleshcraft\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/fleshcraft\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n## Executed every time the actor is available.\nactions=spear_hand_strike\n\nactions+=/purifying_brew,if=settings.purify_for_celestial&(time_to_max_charges<gcd.max||buff.purified_chi.up&buff.purified_chi.remains<1.5*gcd.max)||cooldown.celestial_brew.remains<2*gcd.max&charges_fractional>1.5\nactions+=/celestial_brew,if=buff.purified_chi.up\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\n\nactions+=/spear_hand_strike,if=target.debuff.casting.react\nactions+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||debuff.conductive_ink_debuff.up&target.health.pct<31||time_to_die<20\nactions+=/use_item,name=dreadfire_vessel\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>6&cooldown.purifying_brew.charges_fractional<2\nactions+=/touch_of_death,if=target.health.pct<=15||target.health.current<health.max\nactions+=/weapons_of_order\nactions+=/fallen_order\nactions+=/bonedust_brew,if=!debuff.bonedust_brew_debuff.up\n\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp>0&group&stagger.pct>=settings.purify_stagger_currhp\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp>0&solo&stagger.pct>=settings.purify_stagger_currhp*0.5\n\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_maxhp>0&group&stagger.pct>=settings.purify_stagger_maxhp\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_maxhp>0&solo&stagger.pct>=settings.purify_stagger_maxhp*0.5\n\n# Cast PB during the Niuzao window, but only if recently hit.\nactions+=/purifying_brew,if=stagger.amounttototalpct>=0.7&(cooldown.invoke_niuzao_the_black_ox.remains<5||buff.invoke_niuzao_the_black_ox.up)\n\n# Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&group&stagger.pct>20\n# Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&solo&stagger.pct>10\n\n# Dump PB charges towards the end of Niuzao: anything is better than nothing.\nactions+=/purifying_brew,if=buff.invoke_niuzao_the_black_ox.up&buff.invoke_niuzao_the_black_ox.remains<8\n\n# Avoid capping charges, but pool charges shortly before Niuzao comes up and allow dumping to avoid capping during Niuzao.\nactions+=/purifying_brew,if=cooldown.purifying_brew.charges_fractional>=1.8&(cooldown.invoke_niuzao_the_black_ox.remains>10||buff.invoke_niuzao_the_black_ox.up)\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.purifying_brew.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Healing Elixir\nactions+=/expel_harm,if=health.pct<5*healing_sphere.count||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\nactions+=/fleshcraft,if=cooldown.bonedust_brew.remains<4&soulbind.pustule_eruption.enabled\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\nactions+=/faeline_stomp,if=spell_targets>=2\n\n# Cast KS at top prio during WoO buff.\nactions+=/keg_smash,if=buff.weapons_of_order.up\n\n# Celestial Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/celestial_brew,if=tanking&buff.blackout_combo.down&incoming_damage_2999ms>(health.max*0.05+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2\nactions+=/celestial_brew,if=tanking&buff.purified_chi.up&(buff.purified_chi.remains<1.5*gcd||cooldown.purifying_brew.remains>buff.purified_chi.remains)\n\nactions+=/detox\n\nactions+=/rushing_jade_wind,if=spell_targets>=2&buff.rushing_jade_wind.down\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/breath_of_fire,if=buff.charred_passions.down&runeforge.charred_passions.equipped\nactions+=/blackout_kick\nactions+=/keg_smash\nactions+=/chi_burst,if=cooldown.faeline_stomp.remains>2&spell_targets>=2\nactions+=/faeline_stomp\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>=3\nactions+=/touch_of_death\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/spinning_crane_kick,if=buff.charred_passions.up\nactions+=/concentrated_flame,if=dot.concentrated_flame.remains=0\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/heart_essence,if=!essence.the_crucible_of_flame.major\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/exploding_keg\n# Expel Harm has higher DPET than TP when you have at least 2 orbs.\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>=2\n# Cast SCK if enough enemies are around, or if WWWTO is enabled. This is a slight defensive loss over using TP but generally reduces sim variance more than anything else.\nactions+=/spinning_crane_kick,if=!runeforge.shaohaos_might.equipped&(active_enemies>=3||settings.ox_walker&conduit.walk_with_the_ox.enabled)&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+execute_time)))>=65&(!talent.spitfire.enabled||!runeforge.charred_passions.equipped)\nactions+=/tiger_palm,if=!talent.blackout_combo&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/fleshcraft,if=soulbind.volatile_solvent.enabled\nactions+=/rushing_jade_wind",
				},
				["Arms"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20220319,
					["author"] = "SimulationCraft",
					["desc"] = "Arms Warrior\nMarch 19, 2022\n\nChanges:\n- Update for 9.2; add target swapping for Execute/Condemn.",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd",
								["action"] = "rend",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 140",
								["action"] = "conquerors_banner",
							}, -- [2]
							{
								["action"] = "avatar",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "ancient_aftershock",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "spear_of_bastion",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2",
								["action"] = "overpower",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.enduring_blow.enabled || runeforge.battlelord.enabled || buff.overpower.stack >= 2",
								["action"] = "mortal_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.react",
								["action"] = "condemn",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.react",
								["action"] = "execute",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit > 45 & buff.deadly_calm.down",
								["action"] = "skullsplitter",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.deadly_calm.down & rage < 30",
								["action"] = "bladestorm",
							}, -- [14]
							{
								["action"] = "deadly_calm",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "remains < duration * 0.3",
								["action"] = "rend",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1",
								["action"] = "cleave",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.fervor_of_battle.enabled || spell_targets.whirlwind > 4 || spell_targets.whirlwind > 2 & buff.sweeping_strikes.down",
								["action"] = "whirlwind",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fervor_of_battle.enabled & ( rage > 50 || debuff.colossus_smash.up || ! runeforge.enduring_blow.enabled )",
								["action"] = "slam",
							}, -- [21]
						},
						["default"] = {
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0 & debuff.colossus_smash.remains > 8 || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "blood_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.remains > 6",
								["action"] = "berserking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.mortal_strike.remains > 1.5 & rage < 50",
								["action"] = "arcane_torrent",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & cooldown.mortal_strike.remains",
								["action"] = "lights_judgment",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "fireblood",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "ancestral_call",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & cooldown.mortal_strike.remains",
								["action"] = "bag_of_tricks",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "gavel_of_the_first_arbiter",
								["action"] = "gavel_of_the_first_arbiter",
							}, -- [12]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & ( cooldown.bladestorm.remains > 15 || talent.ravager.enabled )",
								["action"] = "sweeping_strikes",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.massacre.enabled & target.health.pct < 35 || target.health.pct < 20 || covenant.venthyr & target.health.pct > 80 || cycle_for_execute || cycle_for_condemn",
								["list_name"] = "execute",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "raid_event.adds.up || spell_targets.whirlwind > 1",
								["list_name"] = "hac",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "single_target",
							}, -- [17]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "impending_victory",
								["enabled"] = true,
							}, -- [19]
						},
						["precombat"] = {
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [1]
						},
						["execute"] = {
							{
								["action"] = "deadly_calm",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "conquerors_banner",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind = 1 & gcd.remains = 0 & ( rage > 75 || rage > 50 & buff.recklessness.up )",
								["action"] = "cancel_buff",
								["buff_name"] = "bladestorm",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0 || target.time_to_die < 20",
								["action"] = "avatar",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "condemn",
								["criteria"] = "buff.ashen_juggernaut.up & buff.ashen_juggernaut.remains < gcd & conduit.ashen_juggernaut.rank > 1",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "execute",
								["criteria"] = "buff.ashen_juggernaut.up & buff.ashen_juggernaut.remains < gcd & conduit.ashen_juggernaut.rank > 1",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd & ( ! talent.warbreaker.enabled & cooldown.colossus_smash.remains < 4 || talent.warbreaker.enabled & cooldown.warbreaker.remains < 4 ) & target.time_to_die > 12",
								["action"] = "rend",
							}, -- [8]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "ancient_aftershock",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "spear_of_bastion",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "condemn",
								["criteria"] = "runeforge.signet_of_tormented_kings.enabled & ( rage.deficit < 25 || debuff.colossus_smash.up & rage > 40 || buff.sudden_death.react || buff.deadly_calm.up )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2",
								["action"] = "overpower",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & dot.deep_wounds.remains < gcd",
								["action"] = "cleave",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "dot.deep_wounds.remains <= gcd || runeforge.enduring_blow.enabled || buff.overpower.stack = 2 & debuff.exploiter.stack = 2 || buff.battlelord.up",
								["action"] = "mortal_strike",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "condemn",
								["criteria"] = "rage.deficit < 25 || buff.deadly_calm.up",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "rage < 45",
								["action"] = "skullsplitter",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.deadly_calm.down & ( rage < 20 || ! runeforge.sinful_surge.enabled & rage < 50 )",
								["action"] = "bladestorm",
							}, -- [19]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "condemn",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "execute",
								["cycle_targets"] = 1,
							}, -- [22]
						},
						["hac"] = {
							{
								["enabled"] = true,
								["criteria"] = "rage < 60 & buff.deadly_calm.down",
								["action"] = "skullsplitter",
							}, -- [1]
							{
								["action"] = "conquerors_banner",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.colossus_smash.remains < 1",
								["action"] = "avatar",
							}, -- [3]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.deep_wounds.remains <= gcd",
								["action"] = "cleave",
							}, -- [6]
							{
								["action"] = "ancient_aftershock",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "spear_of_bastion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "bladestorm",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "remains <= duration * 0.3 & buff.sweeping_strikes.up",
								["action"] = "rend",
							}, -- [11]
							{
								["action"] = "cleave",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.sweeping_strikes.up || dot.deep_wounds.remains < gcd & ! talent.cleave.enabled",
								["action"] = "mortal_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.dreadnaught.enabled",
								["action"] = "overpower",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "condemn",
								["criteria"] = "buff.sweeping_strikes.up || buff.sudden_death.up",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "execute",
								["criteria"] = "buff.sweeping_strikes.up || buff.sudden_death.up",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [18]
						},
					},
					["version"] = 20220319,
					["warnings"] = "WARNING:  The import for 'single_target' required some automated changes.\nLine 10: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 10: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 21: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'execute' required some automated changes.\nLine 13: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 16: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 19: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "## Arms Warrior\n## March 19, 2022\n\n## Changes:\n## - Update for 9.2; add target swapping for Execute/Condemn.\n\n## Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/battle_shout\n\n## Executed every time the actor is available.\nactions=charge\nactions+=/pummel\nactions+=/potion,if=gcd.remains=0&debuff.colossus_smash.remains>8||boss&fight_remains<25\nactions+=/blood_fury,if=debuff.colossus_smash.up\nactions+=/berserking,if=debuff.colossus_smash.remains>6\nactions+=/arcane_torrent,if=cooldown.mortal_strike.remains>1.5&rage<50\nactions+=/lights_judgment,if=debuff.colossus_smash.down&cooldown.mortal_strike.remains\nactions+=/fireblood,if=debuff.colossus_smash.up\nactions+=/ancestral_call,if=debuff.colossus_smash.up\nactions+=/bag_of_tricks,if=debuff.colossus_smash.down&cooldown.mortal_strike.remains\nactions+=/use_item,name=scars_of_fraternal_strife\nactions+=/use_item,name=gavel_of_the_first_arbiter\nactions+=/use_items\nactions+=/sweeping_strikes,if=spell_targets.whirlwind>1&(cooldown.bladestorm.remains>15||talent.ravager.enabled)\nactions+=/call_action_list,name=execute,strict=1,if=talent.massacre.enabled&target.health.pct<35||target.health.pct<20||covenant.venthyr&target.health.pct>80||cycle_for_execute||cycle_for_condemn\nactions+=/call_action_list,name=hac,strict=1,if=raid_event.adds.up||spell_targets.whirlwind>1\nactions+=/call_action_list,name=single_target\nactions+=/victory_rush\nactions+=/impending_victory\n\nactions.execute=deadly_calm\nactions.execute+=/conquerors_banner\nactions.execute+=/cancel_buff,name=bladestorm,if=spell_targets.whirlwind=1&gcd.remains=0&(rage>75||rage>50&buff.recklessness.up)\nactions.execute+=/avatar,if=gcd.remains=0||target.time_to_die<20\nactions.execute+=/condemn,cycle_targets=1,if=buff.ashen_juggernaut.up&buff.ashen_juggernaut.remains<gcd&conduit.ashen_juggernaut.rank>1\nactions.execute+=/execute,cycle_targets=1,if=buff.ashen_juggernaut.up&buff.ashen_juggernaut.remains<gcd&conduit.ashen_juggernaut.rank>1\nactions.execute+=/ravager\nactions.execute+=/rend,if=remains<=gcd&(!talent.warbreaker.enabled&cooldown.colossus_smash.remains<4||talent.warbreaker.enabled&cooldown.warbreaker.remains<4)&target.time_to_die>12\nactions.execute+=/warbreaker\nactions.execute+=/colossus_smash\nactions.execute+=/ancient_aftershock\nactions.execute+=/spear_of_bastion\nactions.execute+=/condemn,cycle_targets=1,if=runeforge.signet_of_tormented_kings&(rage.deficit<25||debuff.colossus_smash.up&rage>40||buff.sudden_death.react||buff.deadly_calm.up)\nactions.execute+=/overpower,if=charges=2\nactions.execute+=/cleave,if=spell_targets.whirlwind>1&dot.deep_wounds.remains<gcd\nactions.execute+=/mortal_strike,if=dot.deep_wounds.remains<=gcd||runeforge.enduring_blow||buff.overpower.stack=2&debuff.exploiter.stack=2||buff.battlelord.up\nactions.execute+=/condemn,cycle_targets=1,if=rage.deficit<25||buff.deadly_calm.up\nactions.execute+=/skullsplitter,if=rage<45\nactions.execute+=/bladestorm,if=buff.deadly_calm.down&(rage<20||!runeforge.sinful_surge&rage<50)\nactions.execute+=/overpower\nactions.execute+=/condemn,cycle_targets=1\nactions.execute+=/execute,cycle_targets=1\n\nactions.hac=skullsplitter,if=rage<60&buff.deadly_calm.down\nactions.hac+=/conquerors_banner\nactions.hac+=/avatar,if=cooldown.colossus_smash.remains<1\nactions.hac+=/warbreaker\nactions.hac+=/colossus_smash\nactions.hac+=/cleave,if=dot.deep_wounds.remains<=gcd\nactions.hac+=/ancient_aftershock\nactions.hac+=/spear_of_bastion\nactions.hac+=/bladestorm\nactions.hac+=/ravager\nactions.hac+=/rend,if=remains<=duration*0.3&buff.sweeping_strikes.up\nactions.hac+=/cleave\nactions.hac+=/mortal_strike,if=buff.sweeping_strikes.up||dot.deep_wounds.remains<gcd&!talent.cleave.enabled\nactions.hac+=/overpower,if=talent.dreadnaught.enabled\nactions.hac+=/condemn,cycle_targets=1,if=buff.sweeping_strikes.up||buff.sudden_death.up\nactions.hac+=/execute,cycle_targets=1,if=buff.sweeping_strikes.up||buff.sudden_death.up\nactions.hac+=/overpower\nactions.hac+=/whirlwind\n\nactions.single_target=rend,if=remains<=gcd\nactions.single_target+=/conquerors_banner,if=fight_remains>140\nactions.single_target+=/avatar\nactions.single_target+=/ravager\nactions.single_target+=/warbreaker\nactions.single_target+=/colossus_smash\nactions.single_target+=/ancient_aftershock\nactions.single_target+=/spear_of_bastion\nactions.single_target+=/overpower,if=charges=2\nactions.single_target+=/mortal_strike,if=runeforge.enduring_blow||runeforge.battlelord||buff.overpower.stack>=2\nactions.single_target+=/condemn,if=buff.sudden_death.react\nactions.single_target+=/execute,if=buff.sudden_death.react\nactions.single_target+=/skullsplitter,if=rage.deficit>45&buff.deadly_calm.down\nactions.single_target+=/bladestorm,if=buff.deadly_calm.down&rage<30\nactions.single_target+=/deadly_calm\nactions.single_target+=/overpower\nactions.single_target+=/mortal_strike\nactions.single_target+=/rend,if=remains<duration*0.3\nactions.single_target+=/cleave,if=spell_targets.whirlwind>1\nactions.single_target+=/whirlwind,if=talent.fervor_of_battle.enabled||spell_targets.whirlwind>4||spell_targets.whirlwind>2&buff.sweeping_strikes.down\nactions.single_target+=/slam,if=!talent.fervor_of_battle.enabled&(rage>50||debuff.colossus_smash.up||!runeforge.enduring_blow)",
					["spec"] = 71,
				},
				["Protection Paladin"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210710,
					["author"] = "SimC",
					["desc"] = "Protection Paladin\nJuly 10, 2021\n\nChanges\n- Added Rebuke.\n- Remove Seraphim restrictions on multiple mitigation abilities.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "rebuke",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power.deficit = 0 & ( ( buff.avenging_wrath.up & ! talent.seraphim.enabled ) || buff.seraphim.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & buff.avenging_wrath.remains < 4 & ! talent.seraphim.enabled ) || ( buff.seraphim.remains < 4 & buff.seraphim.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "holy_power.deficit > 0",
								["action"] = "hammer_of_wrath",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up & buff.seraphim.remains < 3",
								["action"] = "lights_judgment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.judgment.remains < gcd & cooldown.judgment.charges_fractional > 1 & cooldown_react ) || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "avengers_shield",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled || buff.seraphim.up",
								["action"] = "lights_judgment",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "blessed_hammer",
								["strikes"] = "3",
							}, -- [14]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [16]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "Executed before combat begins. Accepts non-harmful actions only.",
								["action"] = "devotion_aura",
							}, -- [1]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "ashen_hallow",
								["enabled"] = true,
							}, -- [5]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "fireblood",
							}, -- [1]
							{
								["action"] = "seraphim",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || cooldown.avenging_wrath.remains > 60",
								["action"] = "holy_avenger",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.down",
								["action"] = "ashen_hallow",
							}, -- [6]
							{
								["action"] = "vanquishers_hammer",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "holy_power.deficit > 0",
								["action"] = "divine_toll",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || ! talent.seraphim.enabled",
								["action"] = "use_items",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.avengers_shield & cooldown.avengers_shield.remains",
								["action"] = "moment_of_glory",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "grongs_primal_rage",
								["criteria"] = "( ( cooldown.judgment.full_recharge_time > 4 || ( ! talent.crusaders_judgment.enabled & prev_gcd.1.judgment ) ) & cooldown.avengers_shield.remains > 4 & buff.seraphim.remains > 4 ) || ( buff.seraphim.remains < 4 )",
								["name"] = "grongs_primal_rage",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "merekthas_fang",
								["criteria"] = "! buff.avenging_wrath.up & ( buff.seraphim.up || ! talent.seraphim.enabled )",
								["name"] = "merekthas_fang",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [13]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_of_the_righteous.down & ( holy_power.deficit = 0 || buff.divine_purpose.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.vanquishers_hammer.up",
								["action"] = "word_of_glory",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.shining_light_full.up & buff.shining_light_full.remains < gcd * 2 & health.pct < 80 & ! covenant.necrolord",
								["action"] = "word_of_glory",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "word_of_glory",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_10000ms < health.max * 1.25 ) & health.pct < 55 & talent.righteous_protector.enabled",
								["action"] = "word_of_glory",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_13000ms < health.max * 1.6 ) & health.pct < 55",
								["action"] = "word_of_glory",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_6000ms < health.max * 0.7 ) & health.pct < 65 & talent.righteous_protector.enabled",
								["action"] = "word_of_glory",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_9000ms < health.max * 1.2 ) & health.pct < 55",
								["action"] = "word_of_glory",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "guardian_of_ancient_kings",
								["description"] = "actions.mitigation+=/shield_of_the_righteous,if=buff.shield_of_the_righteous.down&(holy_power>2||buff.divine_purpose.up)",
								["criteria"] = "incoming_damage_2500ms > health.max * 0.4 & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.final_stand.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "divine_shield",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_2500ms > health.max * 0.4 & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "ardent_defender",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 15",
								["action"] = "lay_on_hands",
							}, -- [12]
						},
						["standard"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.judgment.up",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 5 || buff.holy_avenger.up || holy_power = 4 & talent.sanctified_wrath.enabled & buff.avenging_wrath.up",
								["action"] = "shield_of_the_righteous",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "judgment",
								["criteria"] = "charges = 2 || ! talent.crusaders_judgment.enabled",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "blessing_of_summer",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "blessing_of_autumn",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blessing_of_winter",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "blessing_of_spring",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "avengers_shield",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "judgment",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["action"] = "vanquishers_hammer",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [12]
							{
								["action"] = "divine_toll",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "blessed_hammer",
								["criteria"] = "charges = 3",
								["strikes"] = "2.4",
							}, -- [14]
							{
								["action"] = "ashen_hallow",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2",
								["action"] = "hammer_of_the_righteous",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "blessed_hammer",
								["strikes"] = "2.4",
							}, -- [17]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [21]
						},
					},
					["version"] = 20210710,
					["warnings"] = "Imported 5 action lists.\n",
					["spec"] = 66,
					["profile"] = "# Protection Paladin\n# July 10, 2021\n\n# Changes\n# - Added Rebuke.\n# - Remove Seraphim restrictions on multiple mitigation abilities.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/devotion_aura\nactions.precombat+=/fleshcraft\nactions.precombat+=/consecration\nactions.precombat+=/lights_judgment\nactions.precombat+=/ashen_hallow\n\n# Executed every time the actor is available.\nactions=rebuke\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=standard\n\nactions+=/shield_of_the_righteous,if=holy_power.deficit=0&((buff.avenging_wrath.up&!talent.seraphim.enabled)||buff.seraphim.up)\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&buff.avenging_wrath.remains<4&!talent.seraphim.enabled)||(buff.seraphim.remains<4&buff.seraphim.up)\nactions+=/hammer_of_wrath,if=holy_power.deficit>0\nactions+=/lights_judgment,if=buff.seraphim.up&buff.seraphim.remains<3\nactions+=/consecration,if=!consecration.up\nactions+=/judgment,if=(cooldown.judgment.remains<gcd&cooldown.judgment.charges_fractional>1&cooldown_react)||!talent.crusaders_judgment.enabled\nactions+=/avengers_shield,if=cooldown_react\nactions+=/judgment,if=cooldown_react||!talent.crusaders_judgment.enabled\nactions+=/lights_judgment,if=!talent.seraphim.enabled||buff.seraphim.up\nactions+=/blessed_hammer,strikes=3\nactions+=/hammer_of_the_righteous\nactions+=/consecration\n\nactions.standard=shield_of_the_righteous,if=debuff.judgment.up\nactions.standard+=/shield_of_the_righteous,if=holy_power=5||buff.holy_avenger.up||holy_power=4&talent.sanctified_wrath.enabled&buff.avenging_wrath.up\nactions.standard+=/judgment,cycle_targets=1,if=charges=2||!talent.crusaders_judgment.enabled\nactions.standard+=/hammer_of_wrath\nactions.standard+=/blessing_of_summer\nactions.standard+=/blessing_of_autumn\nactions.standard+=/blessing_of_winter\nactions.standard+=/blessing_of_spring\nactions.standard+=/avengers_shield\nactions.standard+=/judgment,cycle_targets=1\nactions.standard+=/vanquishers_hammer\nactions.standard+=/consecration,if=!consecration.up\nactions.standard+=/divine_toll\nactions.standard+=/blessed_hammer,strikes=2.4,if=charges=3\nactions.standard+=/ashen_hallow\nactions.standard+=/hammer_of_the_righteous,if=charges=2\nactions.standard+=/blessed_hammer,strikes=2.4\nactions.standard+=/hammer_of_the_righteous\nactions.standard+=/lights_judgment\nactions.standard+=/arcane_torrent\nactions.standard+=/consecration\n\nactions.cooldowns=fireblood,if=buff.avenging_wrath.up\nactions.cooldowns+=/seraphim\nactions.cooldowns+=/avenging_wrath\nactions.cooldowns+=/holy_avenger,if=buff.avenging_wrath.up||cooldown.avenging_wrath.remains>60\nactions.cooldowns+=/potion,if=buff.avenging_wrath.up\nactions.cooldowns+=/ashen_hallow,if=buff.avenging_wrath.down\nactions.cooldowns+=/vanquishers_hammer\nactions.cooldowns+=/divine_toll,if=holy_power.deficit>0\nactions.cooldowns+=/use_items,if=buff.seraphim.up||!talent.seraphim.enabled\nactions.cooldowns+=/moment_of_glory,if=prev_gcd.1.avengers_shield&cooldown.avengers_shield.remains\nactions.cooldowns+=/use_item,name=grongs_primal_rage,if=((cooldown.judgment.full_recharge_time>4||(!talent.crusaders_judgment.enabled&prev_gcd.1.judgment))&cooldown.avengers_shield.remains>4&buff.seraphim.remains>4)||(buff.seraphim.remains<4)\nactions.cooldowns+=/use_item,name=merekthas_fang,if=!buff.avenging_wrath.up&(buff.seraphim.up||!talent.seraphim.enabled)\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\n\nactions.mitigation=shield_of_the_righteous,if=buff.shield_of_the_righteous.down&(holy_power.deficit=0||buff.divine_purpose.up)\nactions.mitigation+=/word_of_glory,if=buff.vanquishers_hammer.up\nactions.mitigation+=/word_of_glory,if=buff.shining_light_full.up&buff.shining_light_full.remains<gcd*2&health.pct<80&!covenant.necrolord\nactions.mitigation+=/word_of_glory,if=(health.pct<40)\nactions.mitigation+=/word_of_glory,if=(incoming_damage_10000ms<health.max*1.25)&health.pct<55&talent.righteous_protector.enabled\nactions.mitigation+=/word_of_glory,if=(incoming_damage_13000ms<health.max*1.6)&health.pct<55\nactions.mitigation+=/word_of_glory,if=(incoming_damage_6000ms<health.max*0.7)&health.pct<65&talent.righteous_protector.enabled\nactions.mitigation+=/word_of_glory,if=(incoming_damage_9000ms<health.max*1.2)&health.pct<55\n# actions.mitigation+=/shield_of_the_righteous,if=buff.shield_of_the_righteous.down&(holy_power>2||buff.divine_purpose.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=incoming_damage_2500ms>health.max*0.4&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=talent.final_stand.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=incoming_damage_2500ms>health.max*0.4&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=health.pct<15",
				},
				["Protection Warrior"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20220407,
					["spec"] = 73,
					["desc"] = "Protection Warrior\nApril 7, 2022\n\nChanges\n- Add Mitigation logic to new SimC APL.\n- Lighten Shield Block and Ignore Pain damage intake requirements.\n- Remove rotational usage of Last Stand.\n- Respect \"Free Revenge\" setting and remove other restrictions.\n- Fall back to single-target priority if the AOE action list has nothing to do.",
					["profile"] = "## Protection Warrior\n## April 7, 2022\n\n## Changes\n## - Add Mitigation logic to new SimC APL.\n## - Lighten Shield Block and Ignore Pain damage intake requirements.\n## - Remove rotational usage of Last Stand.\n## - Respect \"Free Revenge\" setting and remove other restrictions.\n## - Fall back to single-target priority if the AOE action list has nothing to do.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=battle_shout\nactions.precombat+=/fleshcraft\nactions.precombat+=/conquerors_banner\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=charge\n# Default APL's \"Heroic Charge\" is a Heroic Leap followed by Charge to do some damage and generate Rage.\nactions+=/heroic_leap,if=settings.heroic_charge&runeforge.reprisal&cooldown.charge.remains<gcd\nactions+=/charge,if=settings.heroic_charge&runeforge.reprisal&prev.1.heroic_leap\nactions+=/pummel\nactions+=/shockwave,if=debuff.casting.up&!target.is_boss\nactions+=/use_items,if=cooldown.avatar.remains<=gcd||buff.avatar.up\nactions+=/blood_fury\nactions+=/berserking\nactions+=/arcane_torrent\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/avatar\nactions+=/potion,if=buff.avatar.up||boss&fight_remains<25\nactions+=/call_action_list,name=mitigation,strict=1,if=incoming_damage_5s>0\nactions+=/conquerors_banner,if=runeforge.glory\nactions+=/avatar\nactions+=/ancient_aftershock\nactions+=/spear_of_bastion\nactions+=/conquerors_banner\nactions+=/shield_block,if=buff.shield_block.down\nactions+=/shield_slam,if=buff.outburst.up\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.thunder_clap>=3\nactions+=/call_action_list,name=generic\n\nactions.aoe=ravager\nactions.aoe+=/dragon_roar\nactions.aoe+=/thunder_clap\nactions.aoe+=/revenge\nactions.aoe+=/shield_slam\n\nactions.generic=ravager\nactions.generic+=/dragon_roar\nactions.generic+=/shield_slam,if=buff.shield_block.up||buff.outburst.up&rage<=55\nactions.generic+=/condemn\nactions.generic+=/execute\nactions.generic+=/shield_slam\nactions.generic+=/thunder_clap,if=spell_targets.thunder_clap>1||cooldown.shield_slam.remains&buff.outburst.down\nactions.generic+=/revenge,if=rage>=60&target.health.pct>20||buff.revenge.up&target.health.pct<=20&rage<=18&cooldown.shield_slam.remains||buff.revenge.up&target.health.pct>20\nactions.generic+=/thunder_clap,if=buff.outburst.down\nactions.generic+=/revenge\nactions.generic+=/victory_rush\nactions.generic+=/impending_victory\nactions.generic+=/devastate\n\nactions.mitigation=ignore_pain,if=rage>50&buff.ignore_pain.down,use_off_gcd=1\nactions.mitigation+=/ignore_pain,if=target.health.pct>=20&(target.health.pct>=80&!covenant.venthyr)&(rage>=85&cooldown.shield_slam.ready||rage>=60&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled||rage>=70&cooldown.avatar.ready||rage>=40&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled&buff.last_stand.up||rage>=55&cooldown.avatar.ready&buff.last_stand.up||rage>=80||rage>=55&cooldown.shield_slam.ready&buff.outburst.up||rage>=30&cooldown.shield_slam.ready&buff.outburst.up&buff.last_stand.up),use_off_gcd=1\nactions.mitigation+=/shield_block,if=(!talent.bolster.enabled||!buff.last_stand.up)&(charges_fractional>1.8||incoming_damage_5s)\nactions.mitigation+=/demoralizing_shout,line_cd=6,if=(target.within10||active_enemies>1)&((incoming_damage_5s>0.15*health.max||health.pct<30)||(!talent.booming_voice.enabled||rage.max-rage<40))\nactions.mitigation+=/last_stand,if=incoming_damage_3s>health&cooldown.anima_of_death.remains<=2\nactions.mitigation+=/shield_wall,if=incoming_damage_5s>health||health.pct<20",
					["version"] = 20220407,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 17: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\n\nImported 5 action lists.\n",
					["lists"] = {
						["generic"] = {
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "dragon_roar",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_block.up || buff.outburst.up & rage <= 55",
								["action"] = "shield_slam",
							}, -- [3]
							{
								["action"] = "condemn",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.thunder_clap > 1 || cooldown.shield_slam.remains & buff.outburst.down",
								["action"] = "thunder_clap",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "rage >= 60 & target.health.pct > 20 || buff.revenge.up & target.health.pct <= 20 & rage <= 18 & cooldown.shield_slam.remains || buff.revenge.up & target.health.pct > 20",
								["action"] = "revenge",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.outburst.down",
								["action"] = "thunder_clap",
							}, -- [9]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "impending_victory",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [13]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "charge",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "settings.heroic_charge & runeforge.reprisal.enabled & cooldown.charge.remains < gcd",
								["action"] = "heroic_leap",
								["description"] = "Default APL's Heroic Charge is a Heroic Leap followed by Charge to do some damage and generate Rage.",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "settings.heroic_charge & runeforge.reprisal.enabled & prev.1.heroic_leap",
								["action"] = "charge",
							}, -- [3]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.casting.up & ! target.is_boss",
								["action"] = "shockwave",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avatar.remains <= gcd || buff.avatar.up",
								["action"] = "use_items",
							}, -- [6]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "avatar",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "incoming_damage_5s > 0",
								["list_name"] = "mitigation",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.glory.enabled",
								["action"] = "conquerors_banner",
							}, -- [17]
							{
								["action"] = "avatar",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "ancient_aftershock",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "spear_of_bastion",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "conquerors_banner",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_block.down",
								["action"] = "shield_block",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.outburst.up",
								["action"] = "shield_slam",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.thunder_clap >= 3",
								["list_name"] = "aoe",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generic",
							}, -- [25]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "Executed before combat begins. Accepts non-harmful actions only.",
								["action"] = "battle_shout",
							}, -- [1]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "conquerors_banner",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["action"] = "ignore_pain",
								["criteria"] = "rage > 50 & buff.ignore_pain.down",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "ignore_pain",
								["criteria"] = "target.health.pct >= 20 & ( target.health.pct >= 80 & ! covenant.venthyr ) & ( rage >= 85 & cooldown.shield_slam.ready || rage >= 60 & cooldown.demoralizing_shout.ready & talent.booming_voice.enabled || rage >= 70 & cooldown.avatar.ready || rage >= 40 & cooldown.demoralizing_shout.ready & talent.booming_voice.enabled & buff.last_stand.up || rage >= 55 & cooldown.avatar.ready & buff.last_stand.up || rage >= 80 || rage >= 55 & cooldown.shield_slam.ready & buff.outburst.up || rage >= 30 & cooldown.shield_slam.ready & buff.outburst.up & buff.last_stand.up )",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.bolster.enabled || ! buff.last_stand.up ) & ( charges_fractional > 1.8 || incoming_damage_5s )",
								["action"] = "shield_block",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "demoralizing_shout",
								["criteria"] = "( target.within10 || active_enemies > 1 ) & ( ( incoming_damage_5s > 0.15 * health.max || health.pct < 30 ) || ( ! talent.booming_voice.enabled || rage.max - rage < 40 ) )",
								["line_cd"] = "6",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_3s > health & cooldown.anima_of_death.remains <= 2",
								["action"] = "last_stand",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > health || health.pct < 20",
								["action"] = "shield_wall",
							}, -- [6]
						},
						["aoe"] = {
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "dragon_roar",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [5]
						},
					},
					["author"] = "SimulationCraft",
				},
				["Retribution"] = {
					["builtIn"] = true,
					["date"] = 20220405,
					["spec"] = 70,
					["desc"] = "Retribution Paladin\nApril 5, 2022\n\nChanges:\n- Integrate new priority split from SimC.\n- Make Seraphim work better with other CDs toggled off.\n- Don't waste medium/large CDs on dying packs unless it's a boss fight.\n- More adjustments to work with CDs shown separately.",
					["profile"] = "## Retribution Paladin\n## April 5, 2022\n\n## Changes:\n## - Integrate new priority split from SimC.\n## - Make Seraphim work better with other CDs toggled off.\n## - Don't waste medium/large CDs on dying packs unless it's a boss fight.\n## - More adjustments to work with CDs shown separately.\n\nactions.precombat=potion\nactions.precombat+=/blessing_of_summer\nactions.precombat+=/blessing_of_autumn\nactions.precombat+=/blessing_of_winter\nactions.precombat+=/blessing_of_spring\nactions.precombat+=/fleshcraft,if=soulbind.pustule_eruption||soulbind.volatile_solvent\nactions.precombat+=/arcane_torrent,if=talent.final_reckoning.enabled&talent.seraphim.enabled\nactions.precombat+=/shield_of_vengeance\n\n## Executed every time the actor is available.\nactions=rebuke\nactions+=/variable,name=fr_ready,value=(holy_power>=4&time<8||holy_power>=3&(time>=8||spell_targets.divine_storm>=2&covenant.kyrian))&cooldown.avenging_wrath.remains>gcd&time_to_hpg=0&(!talent.seraphim||buff.seraphim.up)&(!raid_event.adds.exists||raid_event.adds.up||raid_event.adds.in>40)&(!buff.avenging_wrath.up||holy_power=5||cooldown.hammer_of_wrath.remains||spell_targets.divine_storm>=2&covenant.kyrian)\nactions+=/variable,name=es_ready,value=(buff.crusade.down&cooldown.crusade.remains>10||buff.crusade.stack>=3||cooldown.avenging_wrath.remains>10)&(!talent.final_reckoning||cooldown.final_reckoning.remains>10||holy_power.deficit=0&action.final_reckoning.disabled)&fight_remains>8&spell_targets.divine_storm<5\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=es_fr_pooling,if=(!raid_event.adds.exists||raid_event.adds.up||raid_event.adds.in<9||raid_event.adds.in>30)&(talent.execution_sentence&cooldown.execution_sentence.remains<9&spell_targets.divine_storm<5||talent.final_reckoning&cooldown.final_reckoning.remains<9)&fight_remains>8\nactions+=/call_action_list,name=es_fr_active,strict=1,if=debuff.execution_sentence.up||debuff.final_reckoning.up\nactions+=/call_action_list,name=generators\n\nactions.cooldowns=potion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||boss&fight_remains<25\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||!raid_event.adds.exists||raid_event.adds.in>75||raid_event.adds.up\nactions.cooldowns+=/fireblood,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10)&!talent.execution_sentence\nactions.cooldowns+=/fleshcraft,if=soulbind.pustule_eruption||soulbind.volatile_solvent,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\nactions.cooldowns+=/shield_of_vengeance,if=(!talent.execution_sentence||cooldown.execution_sentence.remains<52)&fight_remains>15\nactions.cooldowns+=/blessing_of_summer\nactions.cooldowns+=/blessing_of_autumn\nactions.cooldowns+=/blessing_of_winter\nactions.cooldowns+=/blessing_of_spring\nactions.cooldowns+=/use_item,name=inscrutable_quantum_device,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||boss&fight_remains<30\nactions.cooldowns+=/use_item,name=overwhelming_power_crystal,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||boss&fight_remains<15\nactions.cooldowns+=/use_item,name=darkmoon_deck_voracity,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||boss&fight_remains<20\nactions.cooldowns+=/use_item,name=macabre_sheet_music,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||boss&fight_remains<20\nactions.cooldowns+=/use_item,name=faulty_countermeasure,if=!talent.crusade||buff.crusade.up||boss&fight_remains<30\nactions.cooldowns+=/use_item,name=dreadfire_vessel\nactions.cooldowns+=/use_item,name=skulkers_wing\nactions.cooldowns+=/use_item,name=grim_codex\nactions.cooldowns+=/use_item,name=memory_of_past_sins\nactions.cooldowns+=/use_item,name=spare_meat_hook\nactions.cooldowns+=/use_item,name=salvaged_fusion_amplifier\nactions.cooldowns+=/use_item,name=giant_ornamental_pearl\nactions.cooldowns+=/use_item,name=windscar_whetstone\nactions.cooldowns+=/use_item,name=scars_of_fraternal_strife\nactions.cooldowns+=/use_item,name=chains_of_domination\nactions.cooldowns+=/use_item,name=earthbreakers_impact\nactions.cooldowns+=/use_item,name=heart_of_the_swarm,if=!buff.avenging_wrath.up&!buff.crusade.up\nactions.cooldowns+=/use_item,name=gladiators_badge,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||cooldown.crusade.remains>45\nactions.cooldowns+=/use_items,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10\nactions.cooldowns+=/use_item,name=gavel_of_the_first_arbiter,if=(buff.avenging_wrath.up||buff.crusade.up)\nactions.cooldowns+=/avenging_wrath,if=(holy_power>=4&time<5||holy_power>=3&(time>5||runeforge.the_magistrates_judgment)||holy_power>=2&runeforge.vanguards_momentum&talent.final_reckoning||talent.holy_avenger&cooldown.holy_avenger.remains=0)&(!talent.seraphim||!talent.final_reckoning||cooldown.seraphim.remains>0)\nactions.cooldowns+=/crusade,if=holy_power>=4&time<5||holy_power>=3&time>5\nactions.cooldowns+=/ashen_hallow\nactions.cooldowns+=/holy_avenger,if=time_to_hpg=0&holy_power<=2&(buff.avenging_wrath.up||talent.crusade&(cooldown.crusade.remains=0||buff.crusade.up)||boss&fight_remains<20)\nactions.cooldowns+=/final_reckoning,if=(holy_power>=4&time<8||holy_power>=3&(time>=8||spell_targets.divine_storm>=2&covenant.kyrian))&cooldown.avenging_wrath.remains>gcd&time_to_hpg=0&(!talent.seraphim||buff.seraphim.up)&(!raid_event.adds.exists||raid_event.adds.up||raid_event.adds.in>40)&(!buff.avenging_wrath.up||holy_power=5||cooldown.hammer_of_wrath.remains||spell_targets.divine_storm>=2&covenant.kyrian)\n\nactions.es_fr_active=fireblood\nactions.es_fr_active+=/call_action_list,name=finishers,if=holy_power=5||debuff.judgment.up||debuff.final_reckoning.up&(debuff.final_reckoning.remains<gcd.max||spell_targets.divine_storm>=2&!talent.execution_sentence)||debuff.execution_sentence.up&debuff.execution_sentence.remains<gcd.max\nactions.es_fr_active+=/divine_toll\nactions.es_fr_active+=/vanquishers_hammer\nactions.es_fr_active+=/wake_of_ashes,if=holy_power<=2&(debuff.final_reckoning.up&debuff.final_reckoning.remains<gcd*2&!runeforge.divine_resonance||debuff.execution_sentence.up&debuff.execution_sentence.remains<gcd||spell_targets.divine_storm>=5&runeforge.divine_resonance&talent.execution_sentence)\nactions.es_fr_active+=/blade_of_justice,if=conduit.expurgation&(!runeforge.divine_resonance&holy_power<=3||holy_power<=2)\nactions.es_fr_active+=/judgment,if=!debuff.judgment.up&(holy_power>=1&runeforge.the_magistrates_judgment||holy_power>=2)\nactions.es_fr_active+=/call_action_list,name=finishers\nactions.es_fr_active+=/wake_of_ashes,if=holy_power<=2\nactions.es_fr_active+=/blade_of_justice,if=holy_power<=3\nactions.es_fr_active+=/judgment,if=!debuff.judgment.up\nactions.es_fr_active+=/hammer_of_wrath\nactions.es_fr_active+=/crusader_strike\nactions.es_fr_active+=/arcane_torrent\nactions.es_fr_active+=/consecration\n\nactions.es_fr_pooling=seraphim,if=holy_power=5&(!talent.final_reckoning||cooldown.final_reckoning.remains<=gcd*3||cooldown.final_reckoning.remains>cooldown)&(!talent.execution_sentence||cooldown.execution_sentence.remains<=gcd*3||cooldown.execution_sentence.remains>cooldown||talent.final_reckoning)&(!covenant.kyrian||cooldown.divine_toll.remains<9||cooldown.divine_toll.remains>cooldown)\nactions.es_fr_pooling+=/call_action_list,name=finishers,if=holy_power=5||debuff.final_reckoning.up||buff.crusade.up&buff.crusade.stack<10\nactions.es_fr_pooling+=/vanquishers_hammer,if=buff.seraphim.up\nactions.es_fr_pooling+=/hammer_of_wrath,if=runeforge.vanguards_momentum\nactions.es_fr_pooling+=/wake_of_ashes,if=holy_power<=2&set_bonus.tier28_4pc\nactions.es_fr_pooling+=/blade_of_justice,if=holy_power<=3\nactions.es_fr_pooling+=/judgment,if=!debuff.judgment.up\nactions.es_fr_pooling+=/hammer_of_wrath\nactions.es_fr_pooling+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2)\nactions.es_fr_pooling+=/seraphim,if=!talent.final_reckoning&cooldown.execution_sentence.remains<=gcd*3&(!covenant.kyrian||cooldown.divine_toll.remains<9)\nactions.es_fr_pooling+=/call_action_list,name=finishers\nactions.es_fr_pooling+=/crusader_strike\nactions.es_fr_pooling+=/arcane_torrent,if=holy_power<=4\nactions.es_fr_pooling+=/seraphim,if=(!talent.final_reckoning||cooldown.final_reckoning.remains<=gcd*3)&(!talent.execution_sentence||cooldown.execution_sentence.remains<=gcd*3||talent.final_reckoning)&(!covenant.kyrian||cooldown.divine_toll.remains<9)\nactions.es_fr_pooling+=/consecration\n\nactions.finishers=variable,name=ds_castable,value=spell_targets.divine_storm=2&!(runeforge.final_verdict||talent.righteous_verdict)||spell_targets.divine_storm>2||buff.empyrean_power.up&!debuff.judgment.up&!buff.divine_purpose.up\nactions.finishers+=/seraphim,if=(cooldown.avenging_wrath.remains>15||cooldown.crusade.remains>15)&(!talent.final_reckoning||cooldown.final_reckoning.remains>cooldown)&(!talent.execution_sentence||cooldown.execution_sentence.remains>cooldown||spell_targets.divine_storm>=5)&(!raid_event.adds.exists||raid_event.adds.in>40||raid_event.adds.in<gcd||raid_event.adds.up)&(!covenant.kyrian||(cooldown.divine_toll.remains<9||cooldown.divine_toll.remains>cooldown))||fight_remains<15&fight_remains>5||buff.crusade.up&buff.crusade.stack<10\nactions.finishers+=/execution_sentence,if=(buff.crusade.down&cooldown.crusade.remains>10||buff.crusade.stack>=3||cooldown.avenging_wrath.remains>10)&(!talent.final_reckoning||cooldown.final_reckoning.remains>10||holy_power.deficit=0&(!variable.fr_ready||action.final_reckoning.disabled))&fight_remains>8&spell_targets.divine_storm<5\nactions.finishers+=/divine_storm,if=variable.ds_castable&!buff.vanquishers_hammer.up&((!talent.crusade||cooldown.crusade.remains>gcd*3)&(!talent.execution_sentence||cooldown.execution_sentence.remains>gcd*6||cooldown.execution_sentence.remains>gcd*4&holy_power>=5||spell_targets.divine_storm>=5||!talent.seraphim&cooldown.execution_sentence.remains>gcd*2||holy_power.deficit=0&(!variable.es_ready||action.execution_sentence.disabled))&(!talent.final_reckoning||cooldown.final_reckoning.remains>gcd*6||cooldown.final_reckoning.remains>gcd*4&holy_power>=5||!talent.seraphim&cooldown.final_reckoning.remains>gcd*2||holy_power.deficit=0&(!variable.fr_ready||action.final_reckoning.disabled))||talent.holy_avenger&cooldown.holy_avenger.remains<gcd*3||buff.holy_avenger.up||buff.crusade.up&buff.crusade.stack<10||fight_remains<8)\nactions.finishers+=/templars_verdict,if=(!talent.crusade||cooldown.crusade.remains>gcd*3)&(!talent.execution_sentence||cooldown.execution_sentence.remains>gcd*8||cooldown.execution_sentence.remains>gcd*6&holy_power>=4||!talent.seraphim&cooldown.execution_sentence.remains>gcd*2||holy_power.deficit=0&(!variable.es_ready||action.execution_sentence.disabled))&(!talent.final_reckoning||cooldown.final_reckoning.remains>gcd*8||cooldown.final_reckoning.remains>gcd*6&holy_power>=4||!talent.seraphim&cooldown.final_reckoning.remains>gcd*2||holy_power.deficit=0&(!variable.fr_ready||action.final_reckoning.disabled))||talent.holy_avenger&cooldown.holy_avenger.remains<gcd*3||buff.holy_avenger.up||buff.crusade.up&buff.crusade.stack<10||fight_remains<8\n\nactions.generators=call_action_list,name=finishers,if=holy_power=5||(debuff.judgment.up||holy_power=4)&buff.divine_resonance.up||buff.holy_avenger.up\nactions.generators+=/vanquishers_hammer,if=!runeforge.dutybound_gavel||!talent.final_reckoning&!talent.execution_sentence||boss&fight_remains<8\nactions.generators+=/hammer_of_wrath,if=runeforge.the_mad_paragon||covenant.venthyr&cooldown.ashen_hallow.remains>210\nactions.generators+=/wake_of_ashes,if=holy_power<=2&set_bonus.tier28_4pc&(cooldown.avenging_wrath.remains||cooldown.crusade.remains)\nactions.generators+=/divine_toll,if=holy_power<=2&!debuff.judgment.up&(!talent.seraphim||buff.seraphim.up)&(!raid_event.adds.exists||raid_event.adds.in>30||raid_event.adds.up)&(!talent.final_reckoning||debuff.final_reckoning.up||cooldown.final_reckoning.remains>20)&(!talent.execution_sentence||fight_remains<8||spell_targets.divine_storm>=5)&(cooldown.avenging_wrath.remains>15||cooldown.crusade.remains>15||fight_remains<8)\nactions.generators+=/judgment,if=!debuff.judgment.up&(holy_power>=1&runeforge.the_magistrates_judgment||holy_power>=2)\nactions.generators+=/wake_of_ashes,if=(holy_power=0||holy_power<=2&cooldown.blade_of_justice.remains>gcd*2)&(!raid_event.adds.exists||raid_event.adds.in>20||raid_event.adds.up)&(!talent.seraphim||cooldown.seraphim.remains>5||covenant.kyrian)&(!talent.execution_sentence||cooldown.execution_sentence.remains>15||fight_remains<8||spell_targets.divine_storm>=5)&(!talent.final_reckoning||cooldown.final_reckoning.remains>15||fight_remains<8)&(cooldown.avenging_wrath.remains||cooldown.crusade.remains)\nactions.generators+=/call_action_list,name=finishers,if=holy_power>=3&buff.crusade.up&buff.crusade.stack<10\nactions.generators+=/blade_of_justice,if=conduit.expurgation&holy_power<=3\nactions.generators+=/judgment,if=!debuff.judgment.up\nactions.generators+=/hammer_of_wrath\nactions.generators+=/blade_of_justice,if=holy_power<=3\nactions.generators+=/call_action_list,name=finishers,if=(target.health.pct<=20||buff.avenging_wrath.up||buff.crusade.up||buff.empyrean_power.up)\nactions.generators+=/consecration,if=!consecration.up&spell_targets.divine_storm>=2\nactions.generators+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2)\nactions.generators+=/call_action_list,name=finishers\nactions.generators+=/consecration,if=!consecration.up\nactions.generators+=/crusader_strike\nactions.generators+=/arcane_torrent\nactions.generators+=/consecration",
					["version"] = 20220405,
					["warnings"] = "WARNING:  The import for 'generators' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (2x).\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (3x).\nLine 6: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 7: Converted 'talent.X' to 'talent.X.enabled' (3x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (2x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 6: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 6: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'cooldowns' required some automated changes.\nLine 3: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 4: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 4: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 14: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 30: Converted 'talent.X' to 'talent.X.enabled' (4x).\nLine 30: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 33: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 34: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'finishers' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 1: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (2x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (6x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (6x).\n\nWARNING:  The import for 'es_fr_active' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 5: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 6: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 7: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'es_fr_pooling' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (3x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 10: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 14: Converted 'talent.X' to 'talent.X.enabled' (3x).\n\nImported 7 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["generators"] = {
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 5 || ( debuff.judgment.up || holy_power = 4 ) & buff.divine_resonance.up || buff.holy_avenger.up",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.dutybound_gavel.enabled || ! talent.final_reckoning.enabled & ! talent.execution_sentence.enabled || boss & fight_remains < 8",
								["action"] = "vanquishers_hammer",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.the_mad_paragon.enabled || covenant.venthyr & cooldown.ashen_hallow.remains > 210",
								["action"] = "hammer_of_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & set_bonus.tier28_4pc & ( cooldown.avenging_wrath.remains || cooldown.crusade.remains )",
								["action"] = "wake_of_ashes",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & ! debuff.judgment.up & ( ! talent.seraphim.enabled || buff.seraphim.up ) & ( ! raid_event.adds.exists || raid_event.adds.in > 30 || raid_event.adds.up ) & ( ! talent.final_reckoning.enabled || debuff.final_reckoning.up || cooldown.final_reckoning.remains > 20 ) & ( ! talent.execution_sentence.enabled || fight_remains < 8 || spell_targets.divine_storm >= 5 ) & ( cooldown.avenging_wrath.remains > 15 || cooldown.crusade.remains > 15 || fight_remains < 8 )",
								["action"] = "divine_toll",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up & ( holy_power >= 1 & runeforge.the_magistrates_judgment.enabled || holy_power >= 2 )",
								["action"] = "judgment",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power = 0 || holy_power <= 2 & cooldown.blade_of_justice.remains > gcd * 2 ) & ( ! raid_event.adds.exists || raid_event.adds.in > 20 || raid_event.adds.up ) & ( ! talent.seraphim.enabled || cooldown.seraphim.remains > 5 || covenant.kyrian ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > 15 || fight_remains < 8 || spell_targets.divine_storm >= 5 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > 15 || fight_remains < 8 ) & ( cooldown.avenging_wrath.remains || cooldown.crusade.remains )",
								["action"] = "wake_of_ashes",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 3 & buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "conduit.expurgation & holy_power <= 3",
								["action"] = "blade_of_justice",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up",
								["action"] = "judgment",
							}, -- [10]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3",
								["action"] = "blade_of_justice",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up || buff.empyrean_power.up )",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up & spell_targets.divine_storm >= 2",
								["action"] = "consecration",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2 )",
								["action"] = "crusader_strike",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [17]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [20]
						},
						["default"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( holy_power >= 4 & time < 8 || holy_power >= 3 & ( time >= 8 || spell_targets.divine_storm >= 2 & covenant.kyrian ) ) & cooldown.avenging_wrath.remains > gcd & time_to_hpg = 0 & ( ! talent.seraphim.enabled || buff.seraphim.up ) & ( ! raid_event.adds.exists || raid_event.adds.up || raid_event.adds.in > 40 ) & ( ! buff.avenging_wrath.up || holy_power = 5 || cooldown.hammer_of_wrath.remains || spell_targets.divine_storm >= 2 & covenant.kyrian )",
								["var_name"] = "fr_ready",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( buff.crusade.down & cooldown.crusade.remains > 10 || buff.crusade.stack >= 3 || cooldown.avenging_wrath.remains > 10 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > 10 || holy_power.deficit = 0 & action.final_reckoning.disabled ) & fight_remains > 8 & spell_targets.divine_storm < 5",
								["var_name"] = "es_ready",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.up || raid_event.adds.in < 9 || raid_event.adds.in > 30 ) & ( talent.execution_sentence.enabled & cooldown.execution_sentence.remains < 9 & spell_targets.divine_storm < 5 || talent.final_reckoning.enabled & cooldown.final_reckoning.remains < 9 ) & fight_remains > 8",
								["action"] = "call_action_list",
								["list_name"] = "es_fr_pooling",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "debuff.execution_sentence.up || debuff.final_reckoning.up",
								["list_name"] = "es_fr_active",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generators",
							}, -- [7]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blessing_of_summer",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "blessing_of_autumn",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "blessing_of_winter",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "blessing_of_spring",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.final_reckoning.enabled & talent.seraphim.enabled",
								["action"] = "arcane_torrent",
							}, -- [7]
							{
								["action"] = "shield_of_vengeance",
								["enabled"] = true,
							}, -- [8]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ! raid_event.adds.exists || raid_event.adds.in > 75 || raid_event.adds.up",
								["action"] = "lights_judgment",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 ) & ! talent.execution_sentence.enabled",
								["action"] = "fireblood",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains < 52 ) & fight_remains > 15",
								["action"] = "shield_of_vengeance",
							}, -- [5]
							{
								["action"] = "blessing_of_summer",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blessing_of_autumn",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "blessing_of_winter",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blessing_of_spring",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "inscrutable_quantum_device",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || boss & fight_remains < 30",
								["name"] = "inscrutable_quantum_device",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "overwhelming_power_crystal",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || boss & fight_remains < 15",
								["name"] = "overwhelming_power_crystal",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "darkmoon_deck_voracity",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || boss & fight_remains < 20",
								["name"] = "darkmoon_deck_voracity",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "macabre_sheet_music",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || boss & fight_remains < 20",
								["name"] = "macabre_sheet_music",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "faulty_countermeasure",
								["criteria"] = "! talent.crusade.enabled || buff.crusade.up || boss & fight_remains < 30",
								["name"] = "faulty_countermeasure",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "dreadfire_vessel",
								["action"] = "dreadfire_vessel",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "skulkers_wing",
								["action"] = "skulkers_wing",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "grim_codex",
								["action"] = "grim_codex",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "memory_of_past_sins",
								["action"] = "memory_of_past_sins",
							}, -- [18]
							{
								["enabled"] = true,
								["name"] = "spare_meat_hook",
								["action"] = "spare_meat_hook",
							}, -- [19]
							{
								["enabled"] = true,
								["name"] = "salvaged_fusion_amplifier",
								["action"] = "salvaged_fusion_amplifier",
							}, -- [20]
							{
								["enabled"] = true,
								["name"] = "giant_ornamental_pearl",
								["action"] = "giant_ornamental_pearl",
							}, -- [21]
							{
								["enabled"] = true,
								["name"] = "windscar_whetstone",
								["action"] = "windscar_whetstone",
							}, -- [22]
							{
								["enabled"] = true,
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
							}, -- [23]
							{
								["enabled"] = true,
								["name"] = "chains_of_domination",
								["action"] = "chains_of_domination",
							}, -- [24]
							{
								["enabled"] = true,
								["name"] = "earthbreakers_impact",
								["action"] = "earthbreakers_impact",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "heart_of_the_swarm",
								["criteria"] = "! buff.avenging_wrath.up & ! buff.crusade.up",
								["name"] = "heart_of_the_swarm",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "gladiators_badge",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || cooldown.crusade.remains > 45",
								["name"] = "gladiators_badge",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10",
								["action"] = "use_items",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "gavel_of_the_first_arbiter",
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up )",
								["name"] = "gavel_of_the_first_arbiter",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power >= 4 & time < 5 || holy_power >= 3 & ( time > 5 || runeforge.the_magistrates_judgment.enabled ) || holy_power >= 2 & runeforge.vanguards_momentum.enabled & talent.final_reckoning.enabled || talent.holy_avenger.enabled & cooldown.holy_avenger.remains = 0 ) & ( ! talent.seraphim.enabled || ! talent.final_reckoning.enabled || cooldown.seraphim.remains > 0 )",
								["action"] = "avenging_wrath",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 4 & time < 5 || holy_power >= 3 & time > 5",
								["action"] = "crusade",
							}, -- [31]
							{
								["action"] = "ashen_hallow",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "time_to_hpg = 0 & holy_power <= 2 & ( buff.avenging_wrath.up || talent.crusade.enabled & ( cooldown.crusade.remains = 0 || buff.crusade.up ) || boss & fight_remains < 20 )",
								["action"] = "holy_avenger",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power >= 4 & time < 8 || holy_power >= 3 & ( time >= 8 || spell_targets.divine_storm >= 2 & covenant.kyrian ) ) & cooldown.avenging_wrath.remains > gcd & time_to_hpg = 0 & ( ! talent.seraphim.enabled || buff.seraphim.up ) & ( ! raid_event.adds.exists || raid_event.adds.up || raid_event.adds.in > 40 ) & ( ! buff.avenging_wrath.up || holy_power = 5 || cooldown.hammer_of_wrath.remains || spell_targets.divine_storm >= 2 & covenant.kyrian )",
								["action"] = "final_reckoning",
							}, -- [34]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.divine_storm = 2 & ! ( runeforge.final_verdict.enabled || talent.righteous_verdict.enabled ) || spell_targets.divine_storm > 2 || buff.empyrean_power.up & ! debuff.judgment.up & ! buff.divine_purpose.up",
								["var_name"] = "ds_castable",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.avenging_wrath.remains > 15 || cooldown.crusade.remains > 15 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > action_cooldown ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > action_cooldown || spell_targets.divine_storm >= 5 ) & ( ! raid_event.adds.exists || raid_event.adds.in > 40 || raid_event.adds.in < gcd || raid_event.adds.up ) & ( ! covenant.kyrian || ( cooldown.divine_toll.remains < 9 || cooldown.divine_toll.remains > action_cooldown ) ) || fight_remains < 15 & fight_remains > 5 || buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "seraphim",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.crusade.down & cooldown.crusade.remains > 10 || buff.crusade.stack >= 3 || cooldown.avenging_wrath.remains > 10 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > 10 || holy_power.deficit = 0 & ( ! variable.fr_ready || action.final_reckoning.disabled ) ) & fight_remains > 8 & spell_targets.divine_storm < 5",
								["action"] = "execution_sentence",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & ! buff.vanquishers_hammer.up & ( ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 3 ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > gcd * 6 || cooldown.execution_sentence.remains > gcd * 4 & holy_power >= 5 || spell_targets.divine_storm >= 5 || ! talent.seraphim.enabled & cooldown.execution_sentence.remains > gcd * 2 || holy_power.deficit = 0 & ( ! variable.es_ready || action.execution_sentence.disabled ) ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > gcd * 6 || cooldown.final_reckoning.remains > gcd * 4 & holy_power >= 5 || ! talent.seraphim.enabled & cooldown.final_reckoning.remains > gcd * 2 || holy_power.deficit = 0 & ( ! variable.fr_ready || action.final_reckoning.disabled ) ) || talent.holy_avenger.enabled & cooldown.holy_avenger.remains < gcd * 3 || buff.holy_avenger.up || buff.crusade.up & buff.crusade.stack < 10 || fight_remains < 8 )",
								["action"] = "divine_storm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 3 ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > gcd * 8 || cooldown.execution_sentence.remains > gcd * 6 & holy_power >= 4 || ! talent.seraphim.enabled & cooldown.execution_sentence.remains > gcd * 2 || holy_power.deficit = 0 & ( ! variable.es_ready || action.execution_sentence.disabled ) ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > gcd * 8 || cooldown.final_reckoning.remains > gcd * 6 & holy_power >= 4 || ! talent.seraphim.enabled & cooldown.final_reckoning.remains > gcd * 2 || holy_power.deficit = 0 & ( ! variable.fr_ready || action.final_reckoning.disabled ) ) || talent.holy_avenger.enabled & cooldown.holy_avenger.remains < gcd * 3 || buff.holy_avenger.up || buff.crusade.up & buff.crusade.stack < 10 || fight_remains < 8",
								["action"] = "templars_verdict",
							}, -- [5]
						},
						["es_fr_active"] = {
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 5 || debuff.judgment.up || debuff.final_reckoning.up & ( debuff.final_reckoning.remains < gcd.max || spell_targets.divine_storm >= 2 & ! talent.execution_sentence.enabled ) || debuff.execution_sentence.up & debuff.execution_sentence.remains < gcd.max",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [2]
							{
								["action"] = "divine_toll",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "vanquishers_hammer",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & ( debuff.final_reckoning.up & debuff.final_reckoning.remains < gcd * 2 & ! runeforge.divine_resonance.enabled || debuff.execution_sentence.up & debuff.execution_sentence.remains < gcd || spell_targets.divine_storm >= 5 & runeforge.divine_resonance.enabled & talent.execution_sentence.enabled )",
								["action"] = "wake_of_ashes",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "conduit.expurgation & ( ! runeforge.divine_resonance.enabled & holy_power <= 3 || holy_power <= 2 )",
								["action"] = "blade_of_justice",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up & ( holy_power >= 1 & runeforge.the_magistrates_judgment.enabled || holy_power >= 2 )",
								["action"] = "judgment",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2",
								["action"] = "wake_of_ashes",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3",
								["action"] = "blade_of_justice",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up",
								["action"] = "judgment",
							}, -- [11]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [15]
						},
						["es_fr_pooling"] = {
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 5 & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains <= gcd * 3 || cooldown.final_reckoning.remains > action_cooldown ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains <= gcd * 3 || cooldown.execution_sentence.remains > action_cooldown || talent.final_reckoning.enabled ) & ( ! covenant.kyrian || cooldown.divine_toll.remains < 9 || cooldown.divine_toll.remains > action_cooldown )",
								["action"] = "seraphim",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 5 || debuff.final_reckoning.up || buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up",
								["action"] = "vanquishers_hammer",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.vanguards_momentum.enabled",
								["action"] = "hammer_of_wrath",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & set_bonus.tier28_4pc",
								["action"] = "wake_of_ashes",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3",
								["action"] = "blade_of_justice",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up",
								["action"] = "judgment",
							}, -- [7]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2 )",
								["action"] = "crusader_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.final_reckoning.enabled & cooldown.execution_sentence.remains <= gcd * 3 & ( ! covenant.kyrian || cooldown.divine_toll.remains < 9 )",
								["action"] = "seraphim",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [11]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "arcane_torrent",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains <= gcd * 3 ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains <= gcd * 3 || talent.final_reckoning.enabled ) & ( ! covenant.kyrian || cooldown.divine_toll.remains < 9 )",
								["action"] = "seraphim",
							}, -- [14]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [15]
						},
					},
				},
				["Fury"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20220319,
					["author"] = "SimC / Archimtiros",
					["desc"] = "Fury Warrior\nMarch 19, 2022\n\nChanges:\n- Added Pummel.\n- Disabled movement / Heroic Leap call (not needed for in-game context).\n- Moved Bladestorm and Dragon Roar above Bloodthirst to improve frequency of recommendations (sims roughly equal).\n- Added Battle Shout to precombat APL.\n- Added Use Items.\n- Tweak for Whirlwind before level 37.\n- Removed Essences.\n- Don't use Siegebreaker if it's already up (Deathmaker).\n- Setup fake sequences for Signet opener.",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "runeforge.will_of_the_berserker.equipped & buff.will_of_the_berserker.remains < gcd",
								["action"] = "raging_blow",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.will_of_the_berserker.equipped & buff.will_of_the_berserker.remains < gcd",
								["action"] = "crushing_blow",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind = 1 & gcd.remains = 0 & ( talent.massacre.enabled || covenant.venthyr ) & variable.execute_phase & ( rage > 90 || ! cooldown.condemn.remains )",
								["action"] = "cancel_buff",
								["buff_name"] = "bladestorm",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.enrage.up || buff.recklessness.up & runeforge.sinful_surge.enabled ) & variable.execute_phase",
								["action"] = "condemn",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.siegebreaker.down & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 )",
								["action"] = "siegebreaker",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up || ( buff.enrage.remains < gcd || rage > 80 ) || buff.frenzy.remains < 1.5",
								["action"] = "rampage",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier28_2pc || charges = 2 || ( buff.recklessness.up & variable.execute_phase & talent.massacre.enabled )",
								["action"] = "crushing_blow",
							}, -- [7]
							{
								["action"] = "condemn",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & cooldown.recklessness.remains > 5 & ( boss & fight_remains > 95 || buff.recklessness.up || boss & fight_remains < 20 ) & raid_event.adds.in > 75",
								["action"] = "ancient_aftershock",
							}, -- [9]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.elysian_might.enabled & buff.enrage.up & cooldown.recklessness.remains > 5 & ( buff.recklessness.up || boss & fight_remains < 20 || debuff.siegebreaker.up || ! talent.siegebreaker.enabled & boss & fight_remains > 68 ) & raid_event.adds.in > 55",
								["action"] = "spear_of_bastion",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( ! buff.recklessness.remains || rage < 50 ) & ( spell_targets.whirlwind = 1 & raid_event.adds.in > 45 || spell_targets.whirlwind = 2 )",
								["action"] = "bladestorm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & cooldown.recklessness.remains > 5 & ( buff.recklessness.up || boss & fight_remains < 20 || debuff.siegebreaker.up || ! talent.siegebreaker.enabled & boss & fight_remains > 68 ) & raid_event.adds.in > 55",
								["action"] = "spear_of_bastion",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || conduit.vicious_contempt.rank > 5 & target.health.pct < 35",
								["action"] = "bloodthirst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || conduit.vicious_contempt.rank > 5 & target.health.pct < 35 & ! talent.cruelty.enabled",
								["action"] = "bloodbath",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.merciless_bonegrinder.up & spell_targets.whirlwind > 1",
								["action"] = "whirlwind",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier28_2pc || charges = 2 || ( buff.recklessness.up & variable.execute_phase & talent.massacre.enabled )",
								["action"] = "raging_blow",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 )",
								["action"] = "dragon_roar",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up",
								["action"] = "onslaught",
							}, -- [19]
							{
								["action"] = "bloodthirst",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "bloodbath",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "raging_blow",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "crushing_blow",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [24]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0 & soulbind.first_strike.enabled & buff.first_strike.remains & buff.enrage.remains < gcd",
								["action"] = "cancel_buff",
								["buff_name"] = "bladestorm",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & cooldown.recklessness.remains > 5",
								["action"] = "ancient_aftershock",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & rage < 40",
								["action"] = "spear_of_bastion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & spell_targets.whirlwind > 2",
								["action"] = "bladestorm",
								["interrupt_if"] = "gcd.remains=0&soulbind.first_strike&buff.first_strike.remains&buff.enrage.remains<gcd",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.enrage.up || buff.recklessness.up & runeforge.sinful_surge.enabled ) & variable.execute_phase",
								["action"] = "condemn",
							}, -- [5]
							{
								["action"] = "siegebreaker",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "rampage",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & cooldown.recklessness.remains > 5",
								["action"] = "spear_of_bastion",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.remains > gcd * 2.5",
								["action"] = "bladestorm",
							}, -- [9]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "time > 8 || talent.double_time.enabled || active_enemies > 1 || covenant.venthyr || ! runeforge.signet_of_tormented_kings.equipped || cooldown.recklessness.remains > gcd",
								["action"] = "charge",
								["description"] = "Charge if we're long past our opener, or we don't need the opener combo for Signet (non-Venthyr).",
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.massacre.enabled & target.health.pct < 35 || target.health.pct < 20 || target.health.pct > 80 & covenant.venthyr",
								["var_name"] = "execute_phase",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "runeforge.signet_of_tormented_kings.enabled || runeforge.sinful_surge.enabled || runeforge.elysian_might.enabled",
								["var_name"] = "unique_legendaries",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "bloodthirst",
								["line_cd"] = "10",
								["criteria"] = "time < 8 & active_enemies = 1 & runeforge.signet_of_tormented_kings.equipped & ( ! covenant.venthyr || cooldown.recklessness.remains <= gcd )",
								["description"] = "Emulates initial Bloodthirst sequence for single-target + Signet.",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "recklessness",
								["line_cd"] = "10",
								["criteria"] = "time < 8 & active_enemies = 1 & covenant.venthyr & runeforge.signet_of_tormented_kings.equipped & prev.bloodthirst",
								["description"] = "Emulates initial Recklessness sequence for single-target + Venthyr + Signet.",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "heroic_leap",
								["line_cd"] = "10",
								["criteria"] = "settings.heroic_charge & time < 5 & active_enemies = 1 & ! covenant.venthyr & runeforge.signet_of_tormented_kings.equipped & prev.bloodthirst & cooldown.charge.remains < 0.5",
								["description"] = "Emulates initial Heroic Leap > Charge sequence for single-target + non-Venthyr + Signet.",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "charge",
								["line_cd"] = "10",
								["criteria"] = "settings.heroic_charge & time < 5 & active_enemies = 1 & ! covenant.venthyr & runeforge.signet_of_tormented_kings.equipped & prev.heroic_leap",
								["description"] = "Emulates initial Heroic Leap > Charge sequence for single-target + non-Venthyr + Signet.",
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "rage > 70",
								["action"] = "conquerors_banner",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & rage < 70",
								["action"] = "spear_of_bastion",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.recklessness.remains < 3 & talent.reckless_abandon.enabled",
								["action"] = "rampage",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down & debuff.siegebreaker.down || fight_remains < 50",
								["action"] = "conquerors_banner",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.sinful_surge.enabled & gcd.remains = 0 & ( variable.execute_phase || ( target.time_to_pct_35 > 40 & talent.anger_management.enabled || target.time_to_pct_35 > 70 & ! talent.anger_management.enabled ) ) & ( spell_targets.whirlwind = 1 || buff.meat_cleaver.up )",
								["action"] = "recklessness",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.elysian_might.enabled & gcd.remains = 0 & ( cooldown.spear_of_bastion.remains < 5 || cooldown.spear_of_bastion.remains > 20 ) & ( ( buff.bloodlust.up || talent.anger_management.enabled || raid_event.adds.in > 10 ) || boss & fight_remains > 100 || variable.execute_phase || boss & fight_remains < 15 & raid_event.adds.in > 10 ) & ( spell_targets.whirlwind = 1 || buff.meat_cleaver.up )",
								["action"] = "recklessness",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! variable.unique_legendaries & gcd.remains = 0 & ( ( buff.bloodlust.up || talent.anger_management.enabled || raid_event.adds.in > 10 ) || boss & fight_remains > 100 || variable.execute_phase || boss & fight_remains < 15 & raid_event.adds.in > 10 ) & ( spell_targets.whirlwind = 1 || buff.meat_cleaver.up ) & ( ! covenant.necrolord || cooldown.conquerors_banner.remains > 20 )",
								["action"] = "recklessness",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.signet_of_tormented_kings.equipped & prev_gcd.1.rampage & ( ( buff.bloodlust.up || talent.anger_management.enabled || raid_event.adds.in > 10 ) || boss & fight_remains > 100 || variable.execute_phase || boss & fight_remains < 15 & raid_event.adds.in > 10 ) & ( spell_targets.whirlwind = 1 || buff.meat_cleaver.up )",
								["action"] = "recklessness",
								["use_off_gcd"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "level > 36 & ( spell_targets.whirlwind > 1 & ! buff.meat_cleaver.up || raid_event.adds.in < gcd & ! buff.meat_cleaver.up )",
								["action"] = "whirlwind",
							}, -- [18]
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["action"] = "inscrutable_quantum_device",
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || boss & fight_remains < 21 || boss & fight_remains > 190 || buff.bloodlust.up )",
							}, -- [19]
							{
								["enabled"] = true,
								["name"] = "wakeners_frond",
								["action"] = "wakeners_frond",
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || boss & fight_remains < 13 || boss & fight_remains > 130 )",
							}, -- [20]
							{
								["enabled"] = true,
								["name"] = "macabre_sheet_music",
								["action"] = "macabre_sheet_music",
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || boss & fight_remains < 25 || boss & fight_remains > 110 )",
							}, -- [21]
							{
								["enabled"] = true,
								["name"] = "overwhelming_power_crystal",
								["action"] = "overwhelming_power_crystal",
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || boss & fight_remains < 16 || boss & fight_remains > 100 )",
							}, -- [22]
							{
								["enabled"] = true,
								["name"] = "instructors_divine_bell",
								["action"] = "instructors_divine_bell",
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || boss & fight_remains < 10 || boss & fight_remains > 95 )",
							}, -- [23]
							{
								["enabled"] = true,
								["name"] = "flame_of_battle",
								["action"] = "flame_of_battle",
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || boss & fight_remains < 11 || boss & fight_remains > 100 )",
							}, -- [24]
							{
								["enabled"] = true,
								["name"] = "gladiators_badge",
								["action"] = "gladiators_badge",
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || boss & fight_remains < 11 || boss & fight_remains > 65 )",
							}, -- [25]
							{
								["enabled"] = true,
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
							}, -- [26]
							{
								["enabled"] = true,
								["name"] = "gavel_of_the_first_arbiter",
								["action"] = "gavel_of_the_first_arbiter",
							}, -- [27]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [28]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "berserking",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down & debuff.siegebreaker.down",
								["action"] = "lights_judgment",
							}, -- [31]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [32]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down & debuff.siegebreaker.down & buff.enrage.up",
								["action"] = "bag_of_tricks",
							}, -- [34]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.whirlwind > 1",
								["list_name"] = "aoe",
							}, -- [35]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [36]
						},
						["precombat"] = {
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.signet_of_tormented_kings.equipped",
								["action"] = "recklessness",
							}, -- [2]
							{
								["action"] = "conquerors_banner",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20220319,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 1: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 5: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'single_target' required some automated changes.\nLine 3: Converted 'covenant.X.enabled' to 'covenant.X' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 11: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 11: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 13: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 6: Converted 'covenant.X.enabled' to 'covenant.X' (1x).\nLine 7: Converted 'covenant.X.enabled' to 'covenant.X' (1x).\nLine 8: Converted 'covenant.X.enabled' to 'covenant.X' (1x).\nLine 14: Converted 'talent.X' to 'talent.X.enabled' (2x).\nLine 14: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 15: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nImported 4 action lists.\n",
					["profile"] = "## Fury Warrior\n## March 19, 2022\n\n## Changes:\n## - Added Pummel.\n## - Disabled movement / Heroic Leap call (not needed for in-game context).\n## - Moved Bladestorm and Dragon Roar above Bloodthirst to improve frequency of recommendations (sims roughly equal).\n## - Added Battle Shout to precombat APL.\n## - Added Use Items.\n## - Tweak for Whirlwind before level 37.\n## - Removed Essences.\n## - Don't use Siegebreaker if it's already up (Deathmaker).\n## - Setup fake sequences for Signet opener.\n\n## Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/battle_shout\nactions.precombat+=/recklessness,if=!runeforge.signet_of_tormented_kings.equipped\nactions.precombat+=/conquerors_banner\n\n## Executed every time the actor is available.\n# Charge if we're long past our opener, or we don't need the opener combo for Signet (non-Venthyr).\nactions=charge,if=time>8||talent.double_time.enabled||active_enemies>1||covenant.venthyr||!runeforge.signet_of_tormented_kings.equipped||cooldown.recklessness.remains>gcd\nactions+=/pummel\nactions+=/variable,name=execute_phase,value=talent.massacre&target.health.pct<35||target.health.pct<20||target.health.pct>80&covenant.venthyr\nactions+=/variable,name=unique_legendaries,value=runeforge.signet_of_tormented_kings||runeforge.sinful_surge||runeforge.elysian_might\n## This is mostly to prevent cooldowns from being accidentally used during movement.\n## actions+=/run_action_list,name=movement,if=movement.distance>5\n## actions+=/heroic_leap,if=(raid_event.movement.distance>25&raid_event.movement.in>45)\n## actions+=/sequence,if=active_enemies=1&covenant.venthyr.enabled&runeforge.signet_of_tormented_kings.equipped,name=BT&Reck:bloodthirst:recklessness\n# Emulates initial Bloodthirst sequence for single-target + Signet.\nactions+=/bloodthirst,line_cd=10,if=time<8&active_enemies=1&runeforge.signet_of_tormented_kings.equipped&(!covenant.venthyr||cooldown.recklessness.remains<=gcd)\n# Emulates initial Recklessness sequence for single-target + Venthyr + Signet.\nactions+=/recklessness,line_cd=10,if=time<8&active_enemies=1&covenant.venthyr.enabled&runeforge.signet_of_tormented_kings.equipped&prev.bloodthirst\n## actions+=/sequence,if=active_enemies=1&!covenant.venthyr.enabled&runeforge.signet_of_tormented_kings.equipped,name=BT&Charge:bloodthirst:heroic_charge\n# Emulates initial Heroic Leap > Charge sequence for single-target + non-Venthyr + Signet.\nactions+=/heroic_leap,line_cd=10,if=settings.heroic_charge&time<5&active_enemies=1&!covenant.venthyr.enabled&runeforge.signet_of_tormented_kings.equipped&prev.bloodthirst&cooldown.charge.remains<0.5\n# Emulates initial Heroic Leap > Charge sequence for single-target + non-Venthyr + Signet.\nactions+=/charge,line_cd=10,if=settings.heroic_charge&time<5&active_enemies=1&!covenant.venthyr.enabled&runeforge.signet_of_tormented_kings.equipped&prev.heroic_leap\nactions+=/potion\nactions+=/conquerors_banner,if=rage>70\nactions+=/spear_of_bastion,if=buff.enrage.up&rage<70\nactions+=/rampage,if=cooldown.recklessness.remains<3&talent.reckless_abandon.enabled\nactions+=/conquerors_banner,if=buff.recklessness.down&debuff.siegebreaker.down||fight_remains<50\nactions+=/recklessness,if=runeforge.sinful_surge&gcd.remains=0&(variable.execute_phase||(target.time_to_pct_35>40&talent.anger_management||target.time_to_pct_35>70&!talent.anger_management))&(spell_targets.whirlwind=1||buff.meat_cleaver.up)\nactions+=/recklessness,if=runeforge.elysian_might&gcd.remains=0&(cooldown.spear_of_bastion.remains<5||cooldown.spear_of_bastion.remains>20)&((buff.bloodlust.up||talent.anger_management.enabled||raid_event.adds.in>10)||boss&fight_remains>100||variable.execute_phase||boss&fight_remains<15&raid_event.adds.in>10)&(spell_targets.whirlwind=1||buff.meat_cleaver.up)\nactions+=/recklessness,if=!variable.unique_legendaries&gcd.remains=0&((buff.bloodlust.up||talent.anger_management.enabled||raid_event.adds.in>10)||boss&fight_remains>100||variable.execute_phase||boss&fight_remains<15&raid_event.adds.in>10)&(spell_targets.whirlwind=1||buff.meat_cleaver.up)&(!covenant.necrolord||cooldown.conquerors_banner.remains>20)\nactions+=/recklessness,use_off_gcd=1,if=runeforge.signet_of_tormented_kings.equipped&prev_gcd.1.rampage&((buff.bloodlust.up||talent.anger_management.enabled||raid_event.adds.in>10)||boss&fight_remains>100||variable.execute_phase||boss&fight_remains<15&raid_event.adds.in>10)&(spell_targets.whirlwind=1||buff.meat_cleaver.up)\nactions+=/whirlwind,if=level>36&(spell_targets.whirlwind>1&!buff.meat_cleaver.up||raid_event.adds.in<gcd&!buff.meat_cleaver.up)\nactions+=/use_item,name=inscrutable_quantum_device,if=cooldown.recklessness.remains>10&(buff.recklessness.up||boss&fight_remains<21||boss&fight_remains>190||buff.bloodlust.up)\nactions+=/use_item,name=wakeners_frond,if=cooldown.recklessness.remains>10&(buff.recklessness.up||boss&fight_remains<13||boss&fight_remains>130)\nactions+=/use_item,name=macabre_sheet_music,if=cooldown.recklessness.remains>10&(buff.recklessness.up||boss&fight_remains<25||boss&fight_remains>110)\nactions+=/use_item,name=overwhelming_power_crystal,if=cooldown.recklessness.remains>10&(buff.recklessness.up||boss&fight_remains<16||boss&fight_remains>100)\nactions+=/use_item,name=instructors_divine_bell,if=cooldown.recklessness.remains>10&(buff.recklessness.up||boss&fight_remains<10||boss&fight_remains>95)\nactions+=/use_item,name=flame_of_battle,if=cooldown.recklessness.remains>10&(buff.recklessness.up||boss&fight_remains<11||boss&fight_remains>100)\nactions+=/use_item,name=gladiators_badge,if=cooldown.recklessness.remains>10&(buff.recklessness.up||boss&fight_remains<11||boss&fight_remains>65)\nactions+=/use_item,name=scars_of_fraternal_strife\nactions+=/use_item,name=gavel_of_the_first_arbiter\nactions+=/use_items\nactions+=/blood_fury\nactions+=/berserking,if=buff.recklessness.up\nactions+=/lights_judgment,if=buff.recklessness.down&debuff.siegebreaker.down\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks,if=buff.recklessness.down&debuff.siegebreaker.down&buff.enrage.up\nactions+=/call_action_list,strict=1,name=aoe,if=spell_targets.whirlwind>1\nactions+=/run_action_list,name=single_target\n\nactions.aoe=cancel_buff,name=bladestorm,if=gcd.remains=0&soulbind.first_strike&buff.first_strike.remains&buff.enrage.remains<gcd\nactions.aoe+=/ancient_aftershock,if=buff.enrage.up&cooldown.recklessness.remains>5\nactions.aoe+=/spear_of_bastion,if=buff.enrage.up&rage<40\nactions.aoe+=/bladestorm,interrupt_if=gcd.remains=0&soulbind.first_strike&buff.first_strike.remains&buff.enrage.remains<gcd,if=buff.enrage.up&spell_targets.whirlwind>2\nactions.aoe+=/condemn,if=(buff.enrage.up||buff.recklessness.up&runeforge.sinful_surge)&variable.execute_phase\nactions.aoe+=/siegebreaker\nactions.aoe+=/rampage\nactions.aoe+=/spear_of_bastion,if=buff.enrage.up&cooldown.recklessness.remains>5\nactions.aoe+=/bladestorm,if=buff.enrage.remains>gcd*2.5\n\nactions.single_target+=/raging_blow,if=runeforge.will_of_the_berserker.equipped&buff.will_of_the_berserker.remains<gcd\nactions.single_target+=/crushing_blow,if=runeforge.will_of_the_berserker.equipped&buff.will_of_the_berserker.remains<gcd\nactions.single_target+=/cancel_buff,name=bladestorm,if=spell_targets.whirlwind=1&gcd.remains=0&(talent.massacre.enabled||covenant.venthyr.enabled)&variable.execute_phase&(rage>90||!cooldown.condemn.remains)\nactions.single_target+=/condemn,if=(buff.enrage.up||buff.recklessness.up&runeforge.sinful_surge)&variable.execute_phase\nactions.single_target+=/siegebreaker,if=debuff.siegebreaker.down&(spell_targets.whirlwind>1||raid_event.adds.in>15)\nactions.single_target+=/rampage,if=buff.recklessness.up||(buff.enrage.remains<gcd||rage>80)||buff.frenzy.remains<1.5\nactions.single_target+=/crushing_blow,if=set_bonus.tier28_2pc||charges=2||(buff.recklessness.up&variable.execute_phase&talent.massacre.enabled)\nactions.single_target+=/condemn\nactions.single_target+=/ancient_aftershock,if=buff.enrage.up&cooldown.recklessness.remains>5&(boss&fight_remains>95||buff.recklessness.up||boss&fight_remains<20)&raid_event.adds.in>75\nactions.single_target+=/execute\nactions.single_target+=/spear_of_bastion,if=runeforge.elysian_might&buff.enrage.up&cooldown.recklessness.remains>5&(buff.recklessness.up||boss&fight_remains<20||debuff.siegebreaker.up||!talent.siegebreaker&boss&fight_remains>68)&raid_event.adds.in>55\nactions.single_target+=/bladestorm,if=buff.enrage.up&(!buff.recklessness.remains||rage<50)&(spell_targets.whirlwind=1&raid_event.adds.in>45||spell_targets.whirlwind=2)\nactions.single_target+=/spear_of_bastion,if=buff.enrage.up&cooldown.recklessness.remains>5&(buff.recklessness.up||boss&fight_remains<20||debuff.siegebreaker.up||!talent.siegebreaker&boss&fight_remains>68)&raid_event.adds.in>55\nactions.single_target+=/bloodthirst,if=buff.enrage.down||conduit.vicious_contempt.rank>5&target.health.pct<35\nactions.single_target+=/bloodbath,if=buff.enrage.down||conduit.vicious_contempt.rank>5&target.health.pct<35&!talent.cruelty.enabled\nactions.single_target+=/whirlwind,if=buff.merciless_bonegrinder.up&spell_targets.whirlwind>1\nactions.single_target+=/raging_blow,if=set_bonus.tier28_2pc||charges=2||(buff.recklessness.up&variable.execute_phase&talent.massacre.enabled)\nactions.single_target+=/dragon_roar,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)\nactions.single_target+=/onslaught,if=buff.enrage.up\nactions.single_target+=/bloodthirst\nactions.single_target+=/bloodbath\nactions.single_target+=/raging_blow\nactions.single_target+=/crushing_blow\nactions.single_target+=/whirlwind",
					["spec"] = 72,
				},
			},
		},
	},
}
