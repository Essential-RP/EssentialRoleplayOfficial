SD = SD or {}
SD.utils = SD.utils or {}

-- Weighted probability function
SD.utils.WeightedChance = function(tbl)
    local total = 0
    for k, reward in pairs(tbl) do
        total = total + reward.chance
    end

    local rand = math.random() * total
    for k, reward in pairs(tbl) do
        rand = rand - reward.chance
        if rand <= 0 then
            return k
        end
    end
end

-- Check if a Value exists in a passed table
SD.utils.Contains = function(table, value)
    for _, v in pairs(table) do
        if v == value then
            return true
        end
    end
    return false
end
