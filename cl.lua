Citizen.CreateThread(function()
    while true do
        local player = PlayerId()
        for i=0,32 do
            local gtid = 0
            local ped = GetPlayerPed(i)
            if i ~= player then
                gtid = CreateMpGamerTag(ped, GetPlayerName(i), false, false, "", 0)
            end
            RemoveMpGamerTag(gtid)
        end
    end
end)
