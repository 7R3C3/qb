-- We will preload ESX module into local variable
if Config.FrameWork == "1" then
    ESX = nil
    TriggerEvent(Config.ESX, function(esx) ESX = esx end)
end

ESX.RegisterUsableItem(Config.ItemRemover, function(source)
    TriggerClientEvent("rcore_itemradio:fetchLicensePlate", source, false)
end)

ESX.RegisterUsableItem(Config.ItemAdder, function(source)
    TriggerClientEvent("rcore_itemradio:fetchLicensePlate", source, true)
end)

RegisterNetEvent("rcore_itemradio:sendLicensePlate", function(plate, install)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if install then
        if xPlayer.getInventoryItem(Config.ItemAdder).count ~= 0 then
            if not exports.rcore_radiocar:HasCarRadio(plate) then
                xPlayer.removeInventoryItem(Config.ItemAdder, 1)
                exports.rcore_radiocar:GiveRadioToCar(plate)
                TriggerClientEvent("rcore_itemradio:showNotification", source, "Your vehicle has now a radio! Enjoy it!")
            else
                TriggerClientEvent("rcore_itemradio:showNotification", source, "Dont be silly, your vehicle already has a radio. :D")
            end
        end
    else
        if xPlayer.getInventoryItem(Config.ItemRemover).count ~= 0 then
            if exports.rcore_radiocar:HasCarRadio(plate) then
                xPlayer.removeInventoryItem(Config.ItemRemover, 1)
                xPlayer.addInventoryItem(Config.ItemAdder, 1)
                exports.rcore_radiocar:RemoveRadioFromCar(plate)
                TriggerClientEvent("rcore_itemradio:showNotification", source, "You removed the radio from this vehicle")
            else
                TriggerClientEvent("rcore_itemradio:showNotification", source, "Dude no no no, this vehicle does not have any radio!")
            end
        end
    end
end)