RegisterNetEvent("rcore_itemradio:fetchLicensePlate", function(install)
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local plate = GetLicensePlate(vehicle)
    if DoesEntityExist(vehicle) then
        TriggerServerEvent("rcore_itemradio:sendLicensePlate", plate, install)
    end
end)

function showHelpNotification(text)
    BeginTextCommandDisplayHelp("THREESTRINGS")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, 5000)
end

RegisterNetEvent("rcore_itemradio:showNotification", showHelpNotification)

function GetLicensePlate(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    if Config.TrimPlates then
        plate = Trim(plate)
    end
    return plate
end

function Trim(value)
    return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
end