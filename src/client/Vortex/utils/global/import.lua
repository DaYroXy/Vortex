local function import(current, path, index, max)

    -- Set the initial value of index if not provided
    index = index or 0
    
    -- set the inital value of max if not provided
    max = max or 0
    -- print(index, max)
    
    -- check if its the first time running the function if yes split the path and set the max
    if(index == 0) then
        local PATH_ARRAY = path:split("/")
        for i,v in ipairs(PATH_ARRAY) do
            if(v:match("^%.$")) then
                table.remove(PATH_ARRAY, i)
            end
        end

        print(PATH_ARRAY)
        max = #PATH_ARRAY
        return import(current, PATH_ARRAY, index + 1, max)
    end

    -- if we are at the end of the path then return the current value
    if index == max + 1 then
        print("Reached max")
        return
    else

        local currentPathElement = path[index]
        
        if(currentPathElement:match("^%..$")) then
            current = current.Parent
            print("PATHHHHHHH:", current)
        else
            current = current[currentPathElement]
        end

        -- Recursive call with updated parameters
        return import(current, path, index + 1, max)
    end
end

return import