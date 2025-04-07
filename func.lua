local function FindAllDescendantsByName(parent, nameToFind)
    local matchingDescendants = {}
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant.Name == nameToFind then
            table.insert(matchingDescendants, descendant)
        end
    end
    return matchingDescendants
end

local PathModule = {}

function PathModule:FindAllDescendantsByName(nameToFind)
    return FindAllDescendantsByName(self, nameToFind)
end

return PathModule
