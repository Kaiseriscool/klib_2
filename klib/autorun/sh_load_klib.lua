Klib = Klib or {}
local function AddFile(File, dir)
    local fileSide = string.lower(string.Left(File , 3))

    if SERVER and fileSide == "sv_" then
        include(dir..File)
        print("[AUTOLOAD] SV INCLUDE: " .. File)
    elseif fileSide == "sh_" then
        if SERVER then 
            AddCSLuaFile(dir..File)
            print("[AUTOLOAD] SH ADDCS: " .. File)
        end
        include(dir..File)
        print("[AUTOLOAD] SH INCLUDE: " .. File)
    elseif fileSide == "cl_" then
        if SERVER then 
            AddCSLuaFile(dir..File)
            print("[AUTOLOAD] CL ADDCS: " .. File)
        elseif CLIENT then
            include(dir..File)
            print("[AUTOLOAD] CL INCLUDE: " .. File)
        end
    end
end

local function IncludeDir(dir)
    dir = dir .. "/"
    local File, Directory = file.Find(dir.."*", "LUA")

    for k, v in ipairs(File) do
        if string.EndsWith(v, ".lua") then
            AddFile(v, dir)
        end
    end
    
    for k, v in ipairs(Directory) do
        print("[AUTOLOAD] Directory: " .. v)
        IncludeDir(dir..v)
    end

end
IncludeDir("klib_main")