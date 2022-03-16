Config = {}

-- ESX = 1
-- QBCore = 2
Config.FrameWork = "2"

-- if you're using older qbcore that does not trim plate please change this to false.
-- please do not mindlessly switch this to false just because you have qbcore, make sure that you really need that or i will really steal your computer.
Config.TrimPlates = true

-- item name
Config.ItemAdder = "radiocar"

-- dismounter
Config.ItemRemover = "radiocar_dismounter"

------------------------------------------------
--  ESX Stuffs
------------------------------------------------
-- ESX object
Config.ESX = "esx:getSharedObject"

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