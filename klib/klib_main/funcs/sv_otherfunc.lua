function Klib:ChatPrint(pl, msg)
    pl:ChatPrint("" .. Klib.ChatTag .. " " .. msg .. "")
end

function Klib:ChatAll(msg)
    for k , pl in pairs(player.GetAll()) do
    pl:ChatPrint("" .. Klib.ChatTag .. " " .. msg .. "")
    end
end