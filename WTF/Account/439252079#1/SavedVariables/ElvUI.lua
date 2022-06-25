
ElvDB = {
	["profileKeys"] = {
		["Starplatïnum - Antonidas"] = "Default",
		["Dysea - Aegwynn"] = "Default",
		["Nofriend - Aegwynn"] = "Default",
		["Nofriendz - Blackrock"] = "Default",
		["Starplatïnum - Blackrock"] = "Default",
		["Notafriend - Aegwynn"] = "Default",
		["Testyu - Blackrock"] = "Default",
		["Byd - Mal'Ganis"] = "Default",
		["Blyyd - Antonidas"] = "Default",
		["Eshidishii - Blackrock"] = "Default",
		["Dïo - Blackrock"] = "Default",
		["Stywen - Antonidas"] = "Default",
		["Omaewam - Blackrock"] = "Default",
		["Tizeran - Blackrock"] = "Default",
		["Gryyn - Blackrock"] = "Default",
		["Lichkingvult - Blackrock"] = "Default",
		["Magyc - Mal'Ganis"] = "Default",
		["Stylth - Blackrock"] = "Default",
		["Synster - Aegwynn"] = "Default",
		["Byar - Antonidas"] = "Default",
		["Eurotas - Blackrock"] = "Default",
		["Odînaf - Blackrock"] = "Default",
		["Blyyd - Blackrock"] = "Default",
		["Stylth - Antonidas"] = "Default",
		["Buffedbeef - Blackrock"] = "Default",
		["Byd - Aegwynn"] = "Default",
	},
	["DisabledAddOns"] = {
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["Aegwynn"] = {
			["Byd"] = "DRUID",
			["Dysea"] = "DEATHKNIGHT",
			["Synster"] = "PALADIN",
			["Notafriend"] = "WARRIOR",
			["Nofriend"] = "WARRIOR",
		},
		["Mal'Ganis"] = {
			["Byd"] = "ROGUE",
			["Magyc"] = "MAGE",
		},
		["Antonidas"] = {
			["Stywen"] = "WARRIOR",
			["Stylth"] = "ROGUE",
			["Starplatïnum"] = "MONK",
			["Byar"] = "DRUID",
			["Blyyd"] = "DEATHKNIGHT",
		},
		["Blackrock"] = {
			["Dïo"] = "MONK",
			["Gryyn"] = "WARLOCK",
			["Eurotas"] = "WARRIOR",
			["Lichkingvult"] = "DEATHKNIGHT",
			["Eshidishii"] = "WARRIOR",
			["Odînaf"] = "DEMONHUNTER",
			["Buffedbeef"] = "DRUID",
			["Omaewam"] = "PALADIN",
			["Stylth"] = "ROGUE",
			["Starplatïnum"] = "MONK",
			["Tizeran"] = "PALADIN",
			["Testyu"] = "PALADIN",
			["Blyyd"] = "DEATHKNIGHT",
			["Nofriendz"] = "WARRIOR",
		},
	},
	["profiles"] = {
		["Default"] = {
			["databars"] = {
				["threat"] = {
					["width"] = 472,
					["height"] = 24,
				},
				["reputation"] = {
					["enable"] = true,
				},
				["azerite"] = {
					["enable"] = false,
				},
			},
			["general"] = {
				["autoTrackReputation"] = true,
				["valuecolor"] = {
					["r"] = 0.7764688730239868,
					["g"] = 0.6078417897224426,
					["b"] = 0.427450031042099,
				},
				["objectiveFrameHeight"] = 400,
				["minimap"] = {
					["size"] = 220,
				},
				["talkingHeadFrameScale"] = 1,
				["totems"] = {
					["spacing"] = 8,
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
				},
				["bonusObjectivePosition"] = "AUTO",
			},
			["bags"] = {
				["bagSize"] = 42,
				["itemLevelCustomColorEnable"] = true,
				["scrapIcon"] = true,
				["bankSize"] = 42,
				["split"] = {
					["bag4"] = true,
					["bag3"] = true,
					["bagSpacing"] = 7,
					["player"] = true,
					["bag1"] = true,
					["bag2"] = true,
				},
				["bagWidth"] = 474,
				["bankWidth"] = 474,
			},
			["chat"] = {
				["tabSelectorColor"] = {
					["r"] = 0.7764688730239868,
					["g"] = 0.6078417897224426,
					["b"] = 0.427450031042099,
				},
				["panelWidth"] = 472,
				["panelHeight"] = 236,
				["panelSnapLeftID"] = 1,
				["panelSnapRightID"] = 5,
				["copyChatLines"] = true,
			},
			["dbConverted"] = 12.79,
			["convertPages"] = true,
			["tooltip"] = {
				["healthBar"] = {
					["fontSize"] = 12,
					["fontOutline"] = "NONE",
					["height"] = 12,
					["font"] = "PT Sans Narrow",
				},
			},
			["movers"] = {
				["ElvAB_8"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,332",
				["BuffsMover"] = "TOPRIGHT,MMHolder,TOPLEFT,-7,0",
				["MawBuffsBelowMinimapMover"] = "TOP,Minimap,BOTTOM,0,-26",
				["BossButton"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,622,141",
				["LootFrameMover"] = "TOP,UIParent,TOP,-319,-537",
				["ZoneAbility"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,622,195",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["DurabilityFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,141,-4",
				["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUF_Pet,BOTTOMLEFT,0,-1",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["BossBannerMover"] = "TOP,ElvUIParent,TOP,0,-126",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,606,327",
				["LossControlMover"] = "TOP,UIParent,TOP,0,-551",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_4"] = "TOPRIGHT,UIParent,TOPRIGHT,-4,-444",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-40",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-243",
				["ObjectiveFrameMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-132,-327",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ShiftAB"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,490,4",
				["ArenaHeaderMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-953,-432",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-333,262",
				["ElvAB_7"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,298",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_AssistMover"] = "TOPLEFT,UIParent,TOPLEFT,4,-424",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["ThreatBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,1051,154",
				["ElvUF_RaidMover"] = "TOPLEFT,UIParent,TOPLEFT,426,-4",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-6",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["ElvUF_FocusMover"] = "BOTTOM,UIParent,BOTTOM,-606,327",
				["EventToastMover"] = "TOP,ElvUIParent,TOP,0,-150",
				["ExperienceBarMover"] = "BOTTOM,UIParent,BOTTOM,0,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,333,262",
				["ElvUF_Raid40Mover"] = "TOPLEFT,UIParent,TOPLEFT,4,-131",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-43,-375",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,48",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,10",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvUIBagMover"] = "BOTTOMRIGHT,RightChatPanel,BOTTOMRIGHT,0,27",
				["TalkingHeadFrameMover"] = "TOP,UIParent,TOP,0,-4",
				["PowerBarContainerMover"] = "TOP,ElvUIParent,TOP,0,-76",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,100",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,150",
				["VehicleLeaveButton"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,630,72",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,4",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-246",
				["ElvAB_9"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,366",
				["ElvUIBankMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,266",
				["VOICECHAT"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,269",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,UIParent,BOTTOM,0,371",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-251",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,264",
				["ElvAB_10"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,400",
				["ElvUF_TankMover"] = "TOPLEFT,UIParent,TOPLEFT,4,-360",
				["BossHeaderMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-954,-272",
				["ElvUF_PetMover"] = "BOTTOM,UIParent,BOTTOM,-333,223",
				["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUF_Focus,BOTTOMLEFT,0,-1",
				["ElvUF_PartyMover"] = "TOPLEFT,UIParent,TOPLEFT,968,-412",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-20",
				["DebuffsMover"] = "BOTTOMRIGHT,MMHolder,BOTTOMLEFT,-7,0",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-3",
			},
			["unitframe"] = {
				["units"] = {
					["pet"] = {
						["debuffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["iconSize"] = 32,
						},
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 14,
						},
						["disableTargetGlow"] = false,
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
					},
					["party"] = {
						["height"] = 74,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["power"] = {
							["height"] = 13,
						},
						["width"] = 231,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
					},
					["focus"] = {
						["castbar"] = {
							["width"] = 270,
						},
						["width"] = 270,
					},
					["target"] = {
						["height"] = 82,
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 405,
							["height"] = 40,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["orientation"] = "LEFT",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
					},
					["raid"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "BOTTOMLEFT",
							["xOffset"] = 2,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["rdebuffs"] = {
							["xOffset"] = 30,
							["yOffset"] = 25,
							["font"] = "PT Sans Narrow",
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["width"] = 92,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["disableMouseoverGlow"] = true,
						["height"] = 82,
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 405,
							["height"] = 40,
							["enable"] = false,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["classbar"] = {
							["height"] = 14,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = -16,
							["maxDuration"] = 300,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["width"] = 246,
						["infoPanel"] = {
							["height"] = 17,
						},
						["height"] = 60,
						["buffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = 16,
							["maxDuration"] = 300,
						},
					},
				},
				["colors"] = {
					["healthclass"] = true,
					["auraBarBuff"] = {
						["r"] = 0.77646887302399,
						["g"] = 0.60784178972244,
						["b"] = 0.4274500310421,
					},
					["castClassColor"] = true,
				},
				["smoothbars"] = true,
			},
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						[3] = "QuickJoin",
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["visibility"] = "[petbattle] hide; show",
					["buttonSize"] = 50,
					["buttonSpacing"] = 1,
					["buttonsPerRow"] = 10,
				},
				["bar7"] = {
					["enabled"] = true,
					["buttons"] = 6,
				},
				["bar6"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 6,
					["buttonsPerRow"] = 6,
				},
				["bar1"] = {
					["buttonSpacing"] = 1,
					["buttons"] = 6,
					["buttonSize"] = 50,
				},
				["microbar"] = {
					["buttons"] = 11,
				},
				["bar2"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["buttonSpacing"] = 1,
					["buttonSize"] = 38,
					["buttons"] = 6,
				},
				["bar5"] = {
					["visibility"] = "[petbattle] hide; show",
					["buttonSize"] = 50,
					["buttonSpacing"] = 1,
					["buttonsPerRow"] = 12,
				},
				["bar4"] = {
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 6,
				},
			},
			["nameplates"] = {
				["units"] = {
					["ENEMY_PLAYER"] = {
						["portrait"] = {
							["classicon"] = false,
							["enable"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["yOffset"] = 0,
						},
						["health"] = {
							["text"] = {
								["format"] = "",
							},
						},
					},
					["ENEMY_NPC"] = {
						["health"] = {
							["text"] = {
								["format"] = "",
							},
						},
					},
				},
				["colors"] = {
					["threat"] = {
						["goodTransition"] = {
							["r"] = 0.85,
							["g"] = 0.76,
							["b"] = 0.36,
						},
						["goodColor"] = {
							["r"] = 0.29,
							["g"] = 0.67,
							["b"] = 0.3,
						},
						["badColor"] = {
							["r"] = 0.78,
							["g"] = 0.25,
							["b"] = 0.25,
						},
					},
					["reactions"] = {
						["neutral"] = {
							["g"] = 0.76,
						},
						["good"] = {
							["r"] = 0.3,
							["g"] = 0.67,
							["b"] = 0.29,
						},
					},
					["selection"] = {
						nil, -- [1]
						{
							["r"] = 0.85,
							["g"] = 0.76,
							["b"] = 0.36,
						}, -- [2]
						{
							["r"] = 0.29,
							["g"] = 0.67,
							["b"] = 0.3,
						}, -- [3]
						[0] = {
							["r"] = 0.78,
							["g"] = 0.25,
							["b"] = 0.25,
						},
					},
				},
			},
			["auras"] = {
				["debuffs"] = {
					["size"] = 40,
				},
				["buffs"] = {
					["size"] = 40,
				},
			},
		},
	},
	["gold"] = {
		["Aegwynn"] = {
			["Byd"] = 73200,
			["Dysea"] = 45101,
			["Synster"] = 81072807,
			["Notafriend"] = 6680,
			["Nofriend"] = 3250398,
		},
		["Mal'Ganis"] = {
			["Byd"] = 24033,
			["Magyc"] = 37102,
		},
		["Antonidas"] = {
			["Stywen"] = 5783805,
			["Stylth"] = 23439,
			["Starplatïnum"] = 7081,
			["Byar"] = 722463,
			["Blyyd"] = 82893220,
		},
		["Blackrock"] = {
			["Dïo"] = 136289382,
			["Gryyn"] = 2855,
			["Eurotas"] = 13199424,
			["Lichkingvult"] = 18736907,
			["Eshidishii"] = 3368950842,
			["Odînaf"] = 1090198,
			["Buffedbeef"] = 63137,
			["Omaewam"] = 1034802,
			["Stylth"] = 1240,
			["Starplatïnum"] = 340337,
			["Tizeran"] = 21,
			["Testyu"] = 10000,
			["Blyyd"] = 4340253,
			["Nofriendz"] = 10400,
		},
	},
	["global"] = {
		["general"] = {
			["AceGUI"] = {
				["height"] = 608,
				["width"] = 800,
			},
		},
		["ignoreIncompatible"] = true,
		["datatexts"] = {
			["settings"] = {
				["Currencies"] = {
					["tooltipData"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						nil, -- [4]
						nil, -- [5]
						nil, -- [6]
						nil, -- [7]
						nil, -- [8]
						nil, -- [9]
						nil, -- [10]
						nil, -- [11]
						nil, -- [12]
						nil, -- [13]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [14]
						nil, -- [15]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [16]
						[19] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[26] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[28] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
					},
				},
			},
		},
	},
	["faction"] = {
		["Aegwynn"] = {
			["Byd"] = "Alliance",
			["Dysea"] = "Alliance",
			["Synster"] = "Alliance",
			["Notafriend"] = "Alliance",
			["Nofriend"] = "Alliance",
		},
		["Mal'Ganis"] = {
			["Byd"] = "Horde",
			["Magyc"] = "Horde",
		},
		["Antonidas"] = {
			["Stywen"] = "Alliance",
			["Stylth"] = "Alliance",
			["Starplatïnum"] = "Alliance",
			["Byar"] = "Alliance",
			["Blyyd"] = "Alliance",
		},
		["Blackrock"] = {
			["Dïo"] = "Horde",
			["Gryyn"] = "Horde",
			["Eurotas"] = "Horde",
			["Lichkingvult"] = "Horde",
			["Eshidishii"] = "Horde",
			["Odînaf"] = "Horde",
			["Buffedbeef"] = "Horde",
			["Omaewam"] = "Horde",
			["Stylth"] = "Horde",
			["Starplatïnum"] = "Horde",
			["Tizeran"] = "Horde",
			["Testyu"] = "Horde",
			["Blyyd"] = "Horde",
			["Nofriendz"] = "Horde",
		},
	},
	["serverID"] = {
		[3679] = {
			["Aegwynn"] = true,
		},
		[581] = {
			["Blackrock"] = true,
		},
		[3686] = {
			["Antonidas"] = true,
		},
		[3691] = {
			["Mal'Ganis"] = true,
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Starplatïnum - Antonidas"] = "Starplatïnum - Antonidas",
		["Dysea - Aegwynn"] = "Dysea - Aegwynn",
		["Nofriend - Aegwynn"] = "Nofriend - Aegwynn",
		["Nofriendz - Blackrock"] = "Nofriendz - Blackrock",
		["Starplatïnum - Blackrock"] = "Starplatïnum - Blackrock",
		["Notafriend - Aegwynn"] = "Notafriend - Aegwynn",
		["Testyu - Blackrock"] = "Testyu - Blackrock",
		["Byd - Mal'Ganis"] = "Byd - Mal'Ganis",
		["Blyyd - Antonidas"] = "Blyyd - Antonidas",
		["Eshidishii - Blackrock"] = "Eshidishii - Blackrock",
		["Dïo - Blackrock"] = "Dïo - Blackrock",
		["Stywen - Antonidas"] = "Stywen - Antonidas",
		["Omaewam - Blackrock"] = "Omaewam - Blackrock",
		["Tizeran - Blackrock"] = "Tizeran - Blackrock",
		["Gryyn - Blackrock"] = "Gryyn - Blackrock",
		["Lichkingvult - Blackrock"] = "Lichkingvult - Blackrock",
		["Magyc - Mal'Ganis"] = "Magyc - Mal'Ganis",
		["Stylth - Blackrock"] = "Stylth - Blackrock",
		["Synster - Aegwynn"] = "Synster - Aegwynn",
		["Byar - Antonidas"] = "Byar - Antonidas",
		["Eurotas - Blackrock"] = "Eurotas - Blackrock",
		["Odînaf - Blackrock"] = "Odînaf - Blackrock",
		["Blyyd - Blackrock"] = "Blyyd - Blackrock",
		["Stylth - Antonidas"] = "Stylth - Antonidas",
		["Buffedbeef - Blackrock"] = "Buffedbeef - Blackrock",
		["Byd - Aegwynn"] = "Byd - Aegwynn",
	},
	["profiles"] = {
		["Starplatïnum - Antonidas"] = {
			["install_complete"] = 12.79,
		},
		["Dysea - Aegwynn"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Nofriend - Aegwynn"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Nofriendz - Blackrock"] = {
			["install_complete"] = 12.79,
		},
		["Starplatïnum - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Notafriend - Aegwynn"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Testyu - Blackrock"] = {
			["install_complete"] = 12.79,
		},
		["Byd - Mal'Ganis"] = {
			["install_complete"] = 12.79,
		},
		["Blyyd - Antonidas"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Eshidishii - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Dïo - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Stywen - Antonidas"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Omaewam - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Tizeran - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Gryyn - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Lichkingvult - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Magyc - Mal'Ganis"] = {
			["install_complete"] = 12.79,
		},
		["Stylth - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Synster - Aegwynn"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Byar - Antonidas"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Eurotas - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Odînaf - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Blyyd - Blackrock"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Stylth - Antonidas"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
		["Buffedbeef - Blackrock"] = {
			["install_complete"] = 12.79,
		},
		["Byd - Aegwynn"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.79,
		},
	},
}