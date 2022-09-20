///////For bubble_Shields 2 ////////////////


function Klib:AddShieldCoolDown(pl, time)
    pl.shieldcd = true

    timer.Create("shield_cd" .. pl:Nick() .. "", time, 1, function()
        pl.shieldcd = false
    end)
end

function Klib:GetShieldCd(pl)
    if not timer.Exists("shield_cd" .. pl:Nick() .. "") then return end

    return timer.TimeLeft("shield_cd" .. pl:Nick() .. "")
end

function Klib:HasShieldCD(pl)
    if timer.Exists("shield_cd" .. pl:Nick() .. "") then
        return true
    else
        return false
    end
end

