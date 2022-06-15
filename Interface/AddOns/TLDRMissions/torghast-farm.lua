-- a mini-addon I decided to work on to speed up the button clicking when farming Torghast for the Torghast-exclusive followers
-- bundling it with TLDR Missions cause its not really big or important enough to release separately
addon = {}
    
SlashCmdList["TLDRMISSIONS_TFF_SLASHCMD"] = function(msg)
    addon:Init()
end
_G["SLASH_TLDRMISSIONS_TFF_SLASHCMD1"] = "/tldr-tff"

local frame = CreateFrame("Frame")
local torghastWings = {
        ["fracturechambers"] = true,
        ["skoldushall"] = true,
        ["soulforges"] = true,
        ["coldheartinterstitia"] = true,
        ["mortregar"] = true,
        ["theupperreaches"] = true,
    }

-- 1: kyrian
-- 2: venthyr
-- 3: nightfae
-- 4: necrolord
local runecarverSpeeches = {
        ["A child of Bastion... undeserving of such a fate. Lead them into light."] = 1,
        ["One who aspires has fallen prey. Guide them back upon the path."] = 1,
        ["Even a harvester of pride does not deserve to languish here. Save the venthyr from this fate."] = 2,
        ["The sins of the prideful echo through these halls. A harvester calls for aid."] = 2,
        ["A lost fae, bound in torment. Free them... lest they be consumed by darkness."] = 3,
        ["A cry from your covenant... a fae to be freed. Do not let this one be lost."] = 3,
        ["Even your mightiest allies fall prey to these torments. Aid your covenant."] = 4,
        ["The brave... the mighty... the treacherous. All are bound here. Free them."] = 4,
    }

-- if the map has a puzzle chest on it, it can't spawn a follower too
local treasureNames = {
    ["Rune Locked Vault"] = true,
    ["Lever Locked Chest"] = true,
}
function addon:Init()
    frame:RegisterEvent("GOSSIP_SHOW")
    frame:RegisterEvent("CHAT_MSG_MONSTER_SAY")
    frame:RegisterEvent("VIGNETTE_MINIMAP_UPDATED")
    frame:SetScript("OnEvent", function(self, event, ...)
        if event == "GOSSIP_SHOW" then
            local arg1 = ...
            if not arg1 then return end
            if not torghastWings[arg1] then return end
            C_GossipInfo.SelectOption(5)
        elseif event == "CHAT_MSG_MONSTER_SAY" then
            local text, monsterName = ...
            if monsterName ~= "Runecarver" then return end
            if not runecarverSpeeches[text] then return end
            if C_Covenants.GetActiveCovenantID() ~= runecarverSpeeches[text] then
                C_PartyInfo.LeaveParty()
            end
        elseif event == "VIGNETTE_MINIMAP_UPDATED" then
            local guid = ...
            local info = C_VignetteInfo.GetVignetteInfo(guid)
            if not info then return end
            if treasureNames[info.name] then
                C_PartyInfo.LeaveParty()
                print("[TLDR-TFF]: Treasure Chest detected, leaving...")
            end
        end
    end)
    
    print("[TLDR Torghast Follower Farm]: Enabled. Remember to turn this off when you're finished by logging out or /reload")
end