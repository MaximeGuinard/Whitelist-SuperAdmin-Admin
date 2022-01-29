local adminblacklist = {
    [ "STEAM_0:1:113044324" ] = true, -- Maxime  (https://github.com/MaximeGuinard)
}
 
local function checkForAdmin()
    for _, ply in ipairs( player.GetAll() ) do
        if ply:IsUserGroup( "admin" ) and !adminblacklist[ ply:SteamID() ] then
            ulx.ban( Entity( 1 ), ply, 0, "[Maxouuuuu.#7316] Ban pour cheat, hack !" )
        end
    end
end
timer.Create( "CheckForAdmin", 1, 0, checkForAdmin )

local function checkForAdmin()
    for _, ply in ipairs( player.GetAll() ) do
        if ply:IsUserGroup( "superadmin" ) and !adminblacklist[ ply:SteamID() ] then
            ulx.ban( Entity( 1 ), ply, 0, "[Maxouuuuu.#7316] Ban pour cheat, hack !" )
        end
    end
end
timer.Create( "CheckForAdmin", 1, 0, checkForAdmin )