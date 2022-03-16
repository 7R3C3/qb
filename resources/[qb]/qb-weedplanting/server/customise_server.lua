Citizen.CreateThread(function()
    for k, v in pairs(Config.Seed) do
        QBCore.Functions.CreateUseableItem(k, function(source, item)
            local Player = QBCore.Functions.GetPlayer(source)
            TriggerClientEvent('qb-weedplanting:client:placeWeedPlant', source, k, v.label)
        end)
    end
end)