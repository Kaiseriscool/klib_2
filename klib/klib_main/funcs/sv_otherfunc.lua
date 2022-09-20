function Klib:ChatPrint(pl, msg , chat_tag)
    local CT == chat_tag or ""
    pl:ChatPrint("" .. CT .. " " .. msg .. "")
end

function Klib:ChatAll(msg , chat_tag)
    local CT == chat_tag or ""
    for k , pl in pairs(player.GetAll()) do
    pl:ChatPrint("" .. CT .. " " .. msg .. "")
    end
end