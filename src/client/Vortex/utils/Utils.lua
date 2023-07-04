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
    -- Get Global Folder
    local GLOBAL_FOLDER = script.parent.global

    -- Loop Threw Files Inside Folder
    for Index, File in ipairs(GLOBAL_FOLDER:GetChildren()) do
        _G[File.Name] = require(File)
    end

    print("Global Utilities Loaded.")
    -- Your initialization code here
end

return Utils
