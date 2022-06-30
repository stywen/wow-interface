-- some combatlogs have integer * percentage math outputs that are not consistent
-- have not been able to explain the discrepancy any other way
-- some of them round in ways that cannot even be explained by a floating point binary math rounding error

local addonName = "TLDRMissions"
local addon = _G[addonName]

local knownErrors = {
  {input = {175, -60}, output = -105.5},
  {input = {180, 130}, output = 234},
  {input = {360, 70}, output = 251},
  {input = {350, 130}, output = 454},
  {input = {120, 80}, output = 95},
  --{input = {165, 40}, output = 65}, -- https://github.com/TLDRMissions/TLDRMissions/issues/412
  {input = {230, 40}, output = 91, restrictTo = {"Resilient Plumage"}},
  {input = {240, 40}, output = 95},
  {input = {145, 40}, output = 57, restrictTo = {"Resilient Plumage"}},
  {input = {180, -60}, output = -109},
  {input = {205, -60}, output = -123.2},
  {input = {210, -60}, output = -126.2},
}

function addon:multiplyPercentageWithErrors(a, b, buffs)
    for _, data in pairs(knownErrors) do
        local continue = true
        if data.restrictTo then
            continue = false
            for _, r in pairs(data.restrictTo) do
                for _, buff in pairs(buffs) do
                    if buff == r then
                        continue = true
                    end
                end
            end
        end
        if continue then
            if (data.input[1] == a) and (data.input[2] == b) then
                return data.output
            end
        end
    end
    return (a*b)/100
end
