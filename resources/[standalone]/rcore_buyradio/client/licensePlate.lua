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