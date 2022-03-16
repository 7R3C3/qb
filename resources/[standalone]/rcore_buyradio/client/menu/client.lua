CachedMenu = {}

function RegisterKey(fc, uniqid, description, key)
    RegisterCommand(uniqid .. "_buyradio", fc, false)
    RegisterKeyMapping(uniqid .. "_buyradio", description, 'keyboard', key)
end
--------------
-- Sending info about changing item in menu
--------------
RegisterKey(function()
    SendNUIMessage({ type = "up" })
end, "menuapiup", "Key up", "UP")

RegisterKey(function()
    SendNUIMessage({ type = "down" })
end, "menuapidown", "Key down", "DOWN")
--------------
-- Sending info about selecting item
--------------
RegisterKey(function()
    SendNUIMessage({ type = "enter" })
end, "menuapie", "Key E", "E")

RegisterKey(function()
    SendNUIMessage({ type = "enter" })
end, "menuapienter", "Key ENTER", "RETURN")
--------------
-- closing menu keys
--------------
RegisterKey(function()
    CloseAll()
end, "menuapiesc", "Key ESC", "escape")

RegisterKey(function()
    CloseAll()
end, "menuapiescaper", "Key backspace", "back")
--------------