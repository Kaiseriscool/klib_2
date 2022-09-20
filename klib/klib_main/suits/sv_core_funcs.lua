/////////////////////////////////For argon suits////////////////////////////////


function Klib:_IsInClan(pl)
    if pl:GetVFMember() ~= nil then
        return true
    else
        return false
    end
end

function Klib:InSameClan(pl1, pl2)
    if pl1:GetVFMember().faction == pl2:GetVFMember().faction then
        return true
    else
        return false
    end
end

function Klib:HasSuit(targ)
    local suit = Armor:Get(targ.armorSuit)

    if suit ~= nil then
        return true
    else
        return false
    end
end







