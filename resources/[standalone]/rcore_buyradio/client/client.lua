-- will display a help text on left top screen
function showHelpNotification(text)
    BeginTextCommandDisplayHelp("THREESTRINGS")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, 5000)
end

RegisterNetEvent("rcore_buyradio:showNotification", showHelpNotification)

-- We will create a markers around the map that are defined in config
CreateThread(function()
    for k, v in pairs(Config.MarkerList) do
        local marker = createMarker()

        marker.setType(v.style)

        marker.setPosition(v.pos)
        marker.setScale(v.size)
        marker.setColor(v.color)
        marker.setInRadius(2.0)

        marker.setJob(v.job)

        marker.setRotation(v.rotate)
        marker.setFaceCamera(v.faceCamera)

        if v.onlyInVehicle then marker.setOnlyVehicle(v.onlyInVehicle) end

        marker.setKeys(Config.KeyListToInteract)

        -- on enter we will check if player is in vehicle if yes show open message of no show deny message.
        marker.on("enter", function()
            if IsPedInAnyVehicle(PlayerPedId(), false) then
                showHelpNotification("Push ~INPUT_CONTEXT~ to open menu")
            else
                showHelpNotification("You need to be in vehicle!")
            end
        end)

        marker.on("leave", function()
            CloseAll()
        end)

        -- on key event we control if player is in vehicle if yes = open menu, if no = nothing will happen
        marker.on("key", function()
            if IsPedInAnyVehicle(PlayerPedId(), false) then
                local menu = CreateMenu("carbuy")

                menu.SetMenuTitle("The radio will cost: <font color = 'lime'>$" .. Config.RadioPrice .. "</font>")

                menu.SetProperties({
                    float = "right",
                    position = "middle",
                })

                menu.AddItem(1, "Yes! I want the radio!", function()
                    local plate = GetLicensePlate(GetVehiclePedIsIn(PlayerPedId(), false))
                    TriggerServerEvent("rcore_buyradio:BuyRadioVehicle", plate)
                    menu.Close()
                end)

                menu.AddItem(2, "no, I do not want the radio.", function()
                    menu.Close()
                end)

                menu.Open()
            end
        end)

        marker.render()
    end
end)