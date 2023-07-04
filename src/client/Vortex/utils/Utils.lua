local Utils = {}
Utils.__index = Utils

function Utils.init()
    local self = setmetatable({}, Utils)
    self:loadGlobals()
    -- You can initialize instance properties here
    print("Utils Loaded.")
    return self
end

function Utils:loadGlobals()
    print("Global Utilities Loaded.")
    -- Your initialization code here
end

return Utils
