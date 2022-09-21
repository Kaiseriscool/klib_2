///////For bubble_Shields 2 ////////////////


function Klib:AddShieldCoolDown(pl, time_)
    pl.shieldcd = true

    timer.Create("shield_cd" .. pl:Nick() .. "", time_, 1, function()
    pl.shieldcd = false
    end)
end

function Klib:GetShieldCd(pl)
    if not timer.Exists("shield_cd" .. pl:Nick() .. "") then return end

    return timer.TimeLeft("shield_cd" .. pl:Nick() .. "")
end

function Klib:HasShieldCD(pl)
    if timer.Exists("shield_cd" .. pl:Nick() .. "") and pl.shieldcd then
        return true
    else
        return false
    end
end

function Klib:ShieldCDNotify(pl)
    if !Klib:HasShieldCD(pl) then pl:ChatPrint("ERROR:Doesnt Have Cooldown Ending Function") return end
    pl:ChatPrint("You have shield cooldown for "..Klib:GetShieldCd(pl).."(s)")
end

