Config = {}

-- ESX = 1
-- QBCore = 2
Config.FrameWork = "2"

Config.TrimPlates = true

------------------------------------------------
--  ESX Stuffs
------------------------------------------------
-- ESX object
Config.ESX = "esx:getSharedObject"

-- event for player loaded
Config.PlayerLoaded = "esx:playerLoaded"

-- event for setjob
Config.SetJob = "esx:setJob"

------------------------------------------------
--  QBCore Stuffs
------------------------------------------------
-- bridge for older versions
Config.GetQBCoreObject = function()
    local objectType = "1"
    if objectType == "1" then
        return exports['qb-core']:GetCoreObject()
    end
    if objectType == "2" then
        local QBCore = nil
        local breakPoint = 0
        while not QBCore do
            Wait(100)
            TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)

            breakPoint = breakPoint + 1
            if breakPoint == 25 then
                print(string.format("^1[%s]^7 Could not load the sharedobject, are you sure it is called ^1˙QBCore:GetObject˙^7?", GetCurrentResourceName()))
                break
            end
        end

        return QBCore
    end
    if objectType == "3" then
        return exports['qb-core']:GetSharedObject()
    end
end

-- event for player loaded
Config.OnPlayerLoaded = "QBCore:Client:OnPlayerLoaded"

-- event for setjob
Config.OnJobUpdate = "QBCore:Client:OnJobUpdate"

---------------

Config.RadioPrice = 5000

Config.KeyListToInteract = {38}

-- marker list to buy radio car
Config.MarkerList = {
    {
        job = "mechanic",

        pos = vector3(235.89, -788.46, 30.61),
        onlyInVehicle = false, -- if true the marker will be displayed only if player is in vehicle
        style = 6, -- appearance of the marker

        size = vector3(1.0, 1.0, 1.0),
        color = { r = 0, g = 255, b = 0, a = 125 },

        rotate = true,
        faceCamera = false,
    },
}