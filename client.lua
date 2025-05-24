
local displayTime = 7000
local showing = {}

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoord())
    SetTextScale(0.5, 0.5)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    DrawText(_x, _y)
end

function ShowTextAbovePlayer(player, text)
    local ped = GetPlayerPed(GetPlayerFromServerId(player))
    if not showing[player] then
        showing[player] = true
        CreateThread(function()
            local timeout = GetGameTimer() + displayTime
            while GetGameTimer() < timeout do
                local coords = GetEntityCoords(ped)
                DrawText3D(coords.x, coords.y, coords.z + 1.0, text)
                Wait(0)
            end
            showing[player] = nil
        end)
    end
end

RegisterNetEvent("rp:3dme")
AddEventHandler("rp:3dme", function(text, source)
    ShowTextAbovePlayer(source, ("* %s *"):format(text))
end)

RegisterNetEvent("rp:3ddo")
AddEventHandler("rp:3ddo", function(text, source)
    ShowTextAbovePlayer(source, ("~o~%s"):format(text))
end)


RegisterNetEvent("rp:3daction")
AddEventHandler("rp:3daction", function(text, source)
    ShowTextAbovePlayer(source, text)
end)
