local QBCore = exports['qb-core']:GetCoreObject()
local closestScrapyard = 0
local emailSend = false
local isBusy = false

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    TriggerServerEvent("qb-scrapyard:server:LoadVehicleList")
end)

CreateThread(function()
	for id, scrapyard in pairs(Config.Locations) do
		local blip = AddBlipForCoord(Config.Locations[id]["main"].x, Config.Locations[id]["main"].y, Config.Locations[id]["main"].z)
        SetBlipSprite(blip, 380)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.7)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, 9)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName("OPhuggewr")
        EndTextCommandSetBlipName(blip)
	end
    Wait(1000)
    while true do
        SetClosestScrapyard()
        Wait(10000)
    end
end)

CreateThread(function()
	while true do
		Wait(1)
		if closestScrapyard ~= 0 then
			local pos = GetEntityCoords(PlayerPedId())
			if #(pos - vector3(Config.Locations[closestScrapyard]["deliver"].x, Config.Locations[closestScrapyard]["deliver"].y, Config.Locations[closestScrapyard]["deliver"].z)) < 10.0 then
				if IsPedInAnyVehicle(PlayerPedId()) then
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
					if vehicle ~= 0 and vehicle ~= nil then
						local vehpos = GetEntityCoords(vehicle)
						if #(pos - vector3(vehpos.x, vehpos.y, vehpos.z)) < 2.5 and not isBusy then
							DrawText3Ds(vehpos.x, vehpos.y, vehpos.z, "~g~E~w~ - Skil bilen ad")
							if IsControlJustReleased(0, 38) then
								if GetPedInVehicleSeat(vehicle, -1) == PlayerPedId() then
									if IsVehicleValid(GetEntityModel(vehicle)) then
										local vehiclePlate = QBCore.Functions.GetPlate(vehicle)
										QBCore.Functions.TriggerCallback('qb-scrapyard:checkOwnerVehicle',function(retval)
											if retval then
												ScrapVehicle(vehicle)
											else
												QBCore.Functions.Notify("Du kan ikke smadre en bil du ikke ejer!.", "error")
											end
										end,vehiclePlate)
									else
										QBCore.Functions.Notify("Dene bil kan ikke blive hugget op!.", "error")
									end
								else
									QBCore.Functions.Notify("Du skal v??re i f??rer siden!", "error")
								end
							end
						end
					end
				end
			end
			if #(pos - vector3(Config.Locations[closestScrapyard]["list"].x, Config.Locations[closestScrapyard]["list"].y, Config.Locations[closestScrapyard]["list"].z)) < 1.5 then
				if not IsPedInAnyVehicle(PlayerPedId()) and not emailSend then
					DrawText3Ds(Config.Locations[closestScrapyard]["list"].x, Config.Locations[closestScrapyard]["list"].y, Config.Locations[closestScrapyard]["list"].z, "~g~E~w~ - Send en liste med dele p?? mail")
					if IsControlJustReleased(0, 38) then
						CreateListEmail()
					end
				end
			end
		end
	end
end)

RegisterNetEvent('qb-scapyard:client:setNewVehicles', function(vehicleList)
	Config.CurrentVehicles = vehicleList
end)

function CreateListEmail()
	if Config.CurrentVehicles ~= nil and next(Config.CurrentVehicles) ~= nil then
		emailSend = true
		local vehicleList = ""
		for k, v in pairs(Config.CurrentVehicles) do
			if Config.CurrentVehicles[k] ~= nil then
				local vehicleInfo = QBCore.Shared.Vehicles[v]
				if vehicleInfo ~= nil then
					vehicleList = vehicleList  .. vehicleInfo["brand"] .. " " .. vehicleInfo["name"] .. "<br />"
				end
			end
		end
		SetTimeout(math.random(15000, 20000), function()
			emailSend = false
			TriggerServerEvent('qb-phone:server:sendNewMail', {
				sender = "Turner???s Auto Wrecking",
				subject = "Vehicle List",
				message = "Du kan kun hugge et vis antal k??ret??jer op.<br />Du kan beholde alt, hvad du hugger for dig selv, s?? l??nge du ikke generer mig.<br /><br /><strong>K??ret??jsliste:</strong><br />".. vehicleList,
				button = {}
			})
		end)
	else
		QBCore.Functions.Notify("Du har ikke tilladelse til at rive k??ret??jer ned nu", "error")
	end
end

function ScrapVehicle(vehicle)
	isBusy = true
	local scrapTime = math.random(28000, 37000)
	ScrapVehicleAnim(scrapTime)
	QBCore.Functions.Progressbar("scrap_vehicle", "Hugger bilen op", scrapTime, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function() -- Done
		StopAnimTask(PlayerPedId(), "mp_car_bomb", "car_bomb_mechanic", 1.0)
		TriggerServerEvent("qb-scrapyard:server:ScrapVehicle", GetVehicleKey(GetEntityModel(vehicle)))
		SetEntityAsMissionEntity(vehicle, true, true)
		DeleteVehicle(vehicle)
		isBusy = false
	end, function() -- Cancel
		StopAnimTask(PlayerPedId(), "mp_car_bomb", "car_bomb_mechanic", 1.0)
		isBusy = false
		QBCore.Functions.Notify("anulleret", "error")
	end)
end

function IsVehicleValid(vehicleModel)
	local retval = false
	if Config.CurrentVehicles ~= nil and next(Config.CurrentVehicles) ~= nil then
		for k, v in pairs(Config.CurrentVehicles) do
			if Config.CurrentVehicles[k] ~= nil and GetHashKey(Config.CurrentVehicles[k]) == vehicleModel then
				retval = true
			end
		end
	end
	return retval
end

function GetVehicleKey(vehicleModel)
	local retval = 0
	if Config.CurrentVehicles ~= nil and next(Config.CurrentVehicles) ~= nil then
		for k, v in pairs(Config.CurrentVehicles) do
			if GetHashKey(Config.CurrentVehicles[k]) == vehicleModel then
				retval = k
			end
		end
	end
	return retval
end

function SetClosestScrapyard()
	local pos = GetEntityCoords(PlayerPedId(), true)
    local current = nil
    local dist = nil
	for id, scrapyard in pairs(Config.Locations) do
		if current ~= nil then
			if #(pos - vector3(Config.Locations[id]["main"].x, Config.Locations[id]["main"].y, Config.Locations[id]["main"].z)) < dist then
				current = id
				dist = #(pos - vector3(Config.Locations[id]["main"].x, Config.Locations[id]["main"].y, Config.Locations[id]["main"].z))
			end
		else
			dist = #(pos - vector3(Config.Locations[id]["main"].x, Config.Locations[id]["main"].y, Config.Locations[id]["main"].z))
			current = id
		end
	end
	closestScrapyard = current
end

function ScrapVehicleAnim(time)
    time = (time / 1000)
    loadAnimDict("mp_car_bomb")
    TaskPlayAnim(PlayerPedId(), "mp_car_bomb", "car_bomb_mechanic" ,3.0, 3.0, -1, 16, 0, false, false, false)
    openingDoor = true
    CreateThread(function()
        while openingDoor do
            TaskPlayAnim(PlayerPedId(), "mp_car_bomb", "car_bomb_mechanic", 3.0, 3.0, -1, 16, 0, 0, 0, 0)
            Wait(2000)
			time = time - 2
            if time <= 0 then
                openingDoor = false
                StopAnimTask(PlayerPedId(), "mp_car_bomb", "car_bomb_mechanic", 1.0)
            end
        end
    end)
end

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
