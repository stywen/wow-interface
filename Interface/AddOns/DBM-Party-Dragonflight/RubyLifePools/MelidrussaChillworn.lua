local mod	= DBM:NewMod(2488, "DBM-Party-Dragonflight", 7, 1202)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20220719030754")
mod:SetCreatureID(188252)
mod:SetEncounterID(2609)
--mod:SetUsedIcons(1, 2, 3)
--mod:SetHotfixNoticeRev(20220322000000)
--mod:SetMinSyncRevision(20211203000000)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 372851 373528 373680 373046",
--	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED 372682 373022 372988",
	"SPELL_AURA_APPLIED_DOSE 372682",
	"SPELL_AURA_REMOVED 372682 372988",
	"SPELL_AURA_REMOVED_DOSE 372682",
	"SPELL_PERIODIC_DAMAGE 372963",
	"SPELL_PERIODIC_MISSED 372963"
--	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

--TODO, https://www.wowhead.com/beta/spell=372808/frost-missile just seems like something she just casts over and over at tank, leaving out for now
--TODO, target scan Blistering Froststorm if boss looks at victim, Same for Ice Blast
--TODO, update timers around Frost Overload?
local warnFrozenSolid							= mod:NewTargetNoFilterAnnounce(373022, 4, nil, "Healer")
local warnBlisteringFroststorm					= mod:NewSpellAnnounce(372851, 3)
local warnIceBulwark							= mod:NewSpellAnnounce(372988, 4)

local specWarnPrimalChill						= mod:NewSpecialWarningStack(372682, nil, 8, nil, nil, 1, 6)
local specWarnIceBlast							= mod:NewSpecialWarningDodge(373528, nil, nil, nil, 2, 2)
--local yellInfusedStrikes						= mod:NewYell(361966)
local specWarnFrostOverload						= mod:NewSpecialWarningInterrupt(373680, "HasInterrupt", nil, nil, 1, 2)
local specWarnAwakenWhelps						= mod:NewSpecialWarningSwitch(373046, "-Healer", nil, nil, 1, 2)
local specWarnGTFO								= mod:NewSpecialWarningGTFO(372851, nil, nil, nil, 1, 8)

local timerBlisteringFroststormCD				= mod:NewAITimer(35, 372851, nil, nil, nil, 3)
local timerIceBlastCD							= mod:NewAITimer(35, 373528, nil, nil, nil, 3)
local timerFrostOverloadCD						= mod:NewAITimer(35, 373680, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
local timerAwakenWhelpsCD						= mod:NewAITimer(35, 373046, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON..DBM_COMMON_L.DAMAGE_ICON)

--local berserkTimer							= mod:NewBerserkTimer(600)

--mod:AddRangeFrameOption("8")
mod:AddInfoFrameOption(372682, true)
--mod:AddSetIconOption("SetIconOnStaggeringBarrage", 361018, true, false, {1, 2, 3})

local chillStacks = {}

function mod:OnCombatStart(delay)
	table.wipe(chillStacks)
	timerBlisteringFroststormCD:Start(1-delay)
	timerIceBlastCD:Start(1-delay)
	timerFrostOverloadCD:Start(1-delay)
	timerAwakenWhelpsCD:Start(1-delay)
	if self.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellInfo(372682))
		DBM.InfoFrame:Show(5, "table", chillStacks, 1)
	end
end

function mod:OnCombatEnd()
--	if self.Options.RangeFrame then
--		DBM.RangeCheck:Hide()
--	end
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 372851 then
		warnBlisteringFroststorm:Show()
		timerBlisteringFroststormCD:Start()
	elseif spellId == 373528 then
		specWarnIceBlast:Show()
		specWarnIceBlast:Play("shockwave")
		timerIceBlastCD:Start()
	elseif spellId == 373680 then
		timerFrostOverloadCD:Start()
	elseif spellId == 373046 then
		specWarnAwakenWhelps:Show()
		specWarnAwakenWhelps:Play("killmob")
		timerAwakenWhelpsCD:Start()
	end
end

--[[
function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 362805 then

	end
end
--]]

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 372682 then
		local amount = args.amount or 1
		chillStacks[args.destName] = amount
		if self.Options.InfoFrame then
			DBM.InfoFrame:UpdateTable(chillStacks, 0.2)
		end
		if args:IsPlayer() and amount >= 8 then
			specWarnPrimalChill:Cancel()--Possible to get multiple applications at once so we throttle by scheduling
			specWarnPrimalChill:Schedule(0.2, amount)
			specWarnPrimalChill:ScheduleVoice(0.2, "stackhigh")
		end
	elseif spellId == 373022 then
		warnFrozenSolid:CombinedShow(1, args.destName)--Slower aggregation to reduce spam
	elseif spellId == 373680 and self:IsNormal() then--Interruptable at any time on normal
		specWarnFrostOverload:Show(args.destName)
		specWarnFrostOverload:Play("kickcast")
		--Stop other timers on Overload channel beginning?
	elseif spellId == 372988 then
		warnIceBulwark:Show()
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 372682 then
		chillStacks[args.destName] = nil
		if self.Options.InfoFrame then
			DBM.InfoFrame:UpdateTable(chillStacks, 0.2)
		end
	elseif spellId == 372988 then--Ice Bulwark Removed, now can interrupt on heroic and mythic
		specWarnFrostOverload:Show(args.destName)
		specWarnFrostOverload:Play("kickcast")
	end
end

function mod:SPELL_AURA_REMOVED_DOSE(args)
	local spellId = args.spellId
	if spellId == 372682 then
		chillStacks[args.destName] = args.amount or 1
		if self.Options.InfoFrame then
			DBM.InfoFrame:UpdateTable(chillStacks, 0.2)
		end
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 372963 and destGUID == UnitGUID("player") and self:AntiSpam(2, 4) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 353193 then

	end
end
--]]
