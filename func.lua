local function FindAllDescendantsByName(parent, nameToFind)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant.Name == nameToFind then
            return descendant
        end
    end
end

local PathModule = {}

function PathModule:FindAllDescendantsByName(nameToFind)
    return FindAllDescendantsByName(self, nameToFind)
end

return PathModule
