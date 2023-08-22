local sama_dir = function(dir0)
    local samat=false
    return function(dir1)
        local zx=dir0.." "..dir1
        if dir0~=dir1 then
            dir0=dir1
            samat = false
        else samat = true end
        print(samat, zx)
    end
end

local sd = sama_dir('xxx')
sd('xxx')
sd('xy')
sd('xy')
sd('xxx')

