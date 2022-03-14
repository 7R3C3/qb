local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/952984951333224458/CnkmnPjqQ7XfxfMViGiqjODytY_FkxxajeqOdW_vcP3pqP5xxksdixU4SmPxvXaY2h7f',
    ['testwebhook'] = 'https://discord.com/api/webhooks/952985008606429195/LyLLVru_CTafdisDTsb9ShzVEicMWCSY2fbyG8eFR9XcLDt9E0bs-yh5sYgenGza9Eif',
    ['playermoney'] = 'https://discord.com/api/webhooks/952985084665929769/1OIxwGx5c0JsJH_nvvpqeRhFexd8JyMLyoLa7RYmJS67fR7rPqg4-iiQ8_xmPpNNiqjQ',
    ['playerinventory'] = 'https://discord.com/api/webhooks/952985208418877471/Cz1M1blrF50QBYfIALSYkPduNKnfsWD9YYL-a6fZXlJGrXDvPKfC9uMcfUNWsQ5624TN',
    ['robbing'] = 'https://discord.com/api/webhooks/952985693506924604/SG5rtP21aZQqipHLCbXwu1Il7qpYSob49RgloHYQ_85gLPrvZasw7YpViskTq1V9oJXA',
    ['cuffing'] = 'https://discord.com/api/webhooks/952986063880736768/VZbW5TtqJ-xN0pB-Ws7XLLYmWvM-9bILD2U1rC4fVi70jVKRd4xzi22rkJDdcMsMJ3vz',
    ['drop'] = 'https://discord.com/api/webhooks/952986063880736768/VZbW5TtqJ-xN0pB-Ws7XLLYmWvM-9bILD2U1rC4fVi70jVKRd4xzi22rkJDdcMsMJ3vz',
    ['trunk'] = 'https://discord.com/api/webhooks/952986437953945710/fp-WQR35fTmW_pv4pasB_FVhYfTPUQeBbScedMb8q6IWS5CgYSOQ_2IYI6hN5lPx2gl2',
    ['stash'] = 'https://discord.com/api/webhooks/952986514382520370/xtSAkdVSUNayOxhEdXASE9iVBa2ATvK6NYaW3eNUl2AlPeW68hTu-Cr-eVxiHmF9TLhU',
    ['glovebox'] = 'https://discord.com/api/webhooks/952986579406823434/klR9dIl1RA5vNbo07796t49qu6h3uVSDQi4oYvObMCzzkWHHTo81rF6_Hj55XEQFVYPQ',
    ['banking'] = 'https://discord.com/api/webhooks/952986637883805756/9LjwtUB8hZQ1snzR06czp69tGLRnZyaugRXmsqSc7qCvoYCI0cKAvZYoDjYMsFEu0ZfU',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/952986710730481725/kCkQgzYUvtBulV7jbms02FmqUtNnCUmnGmZBSmGDouck8KIaSgxqqfPJOmlZWJscP477',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/952986787029078037/TOPgR78-MSBDHojjITJUKl1n8M4jiezcgGMB9qFIILX7gxHvSurs8u6DHO7wvUfQWT_S',
    ['shops'] = 'https://discord.com/api/webhooks/952986848991539240/byNfnfcCJY7gJRpe4LHLREL9wLGX7t-T_oXy7rnW2yGd0Z__bUtI9qqU5tTGgy6Kjg4y',
    ['dealers'] = 'https://discord.com/api/webhooks/952987021415157790/Z5Damsu4403tMH5d7m9jDojIC7p9iK_irYL8bLgkhWVI-KZiX5NmNtE-QH1uEH6P3HTP',
    ['storerobbery'] = 'https://discord.com/api/webhooks/952987730621653012/MCbUjsRgP1Uz2HvMri5HnaxMGqg2zZn50E-XJShqJ1zqUfYnk8WMRMvD46rJR43SEeR5',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/952987777199374436/_cmAwvwaSyati_4-_OcpbdU8QZyZew9HVmF0uZm2zhu3UWr7CHzJ0EfYmqNkiiz6XQH-',
    ['powerplants'] = 'https://discord.com/api/webhooks/952987827124207747/hMcCJuyR5CNcCgkWbT2yHK6URGAzASPsGLNOK9zjeuf8dVv0qRg-V5fNL-a1nLVUUKDO',
    ['death'] = 'https://discord.com/api/webhooks/952987870438760508/n9rLhxzvXeXEDUvhCUr5JS4W7hZtIdZSs8pG3evQoKzMYOlsJnVb1JM74J4o9C8yrmp7',
    ['joinleave'] = 'https://discord.com/api/webhooks/952987906774016040/yt-15k75KjHyTxVOJJSLH87jNkwSyvqq0G3mHGGcHWkDzrc-0ThJObnlaCApQxqciQIM',
    ['ooc'] = 'https://discord.com/api/webhooks/952988011698745414/R3smVnPEvrpv58BgO_Db96I24_M-FKaIlS-jk8uRhpoCXGQ2XoYnvICmiqAtUeppEVr0',
    ['report'] = 'https://discord.com/api/webhooks/952988055374004324/vA7tGWdgjiOrWO1kcqkPvYOxXY-FAAOZzdpDMZ5nQaXZNaaBHGcqqYXJpSUwJAXNZMs4',
    ['me'] = 'https://discord.com/api/webhooks/952988091986083953/mbFjl5m-gpXSPAuwuFinWuPoy30rKWoipEkJEeWlahy7BpG7IzOxmmBBFLATuPR9qLXe',
    ['pmelding'] = 'https://discord.com/api/webhooks/952988133543252058/NVpzofzs_5sQDOng6niU7Tg1Fd07WUKeTT3NONjgvdduW7Z8sW9QZrLgLULGciqR0cJ5',
    ['112'] = 'https://discord.com/api/webhooks/952988176870436897/xjYPkLvNk990k5S05LTRhRqe1XowfSqahn4OzAauaSBxj2rgiDbtvVbYw_M17d0Ec_yQ',
    ['bans'] = 'https://discord.com/api/webhooks/952988221132931102/9TNtwAqL-S7X273fZgVOz39zEBT4Gb2bs19cMzhfzxZHAqoWj7ms1F_tsjUuPNZ7TlN9',
    ['anticheat'] = 'https://discord.com/api/webhooks/952988221132931102/9TNtwAqL-S7X273fZgVOz39zEBT4Gb2bs19cMzhfzxZHAqoWj7ms1F_tsjUuPNZ7TlN9',
    ['weather'] = 'https://discord.com/api/webhooks/952988221132931102/9TNtwAqL-S7X273fZgVOz39zEBT4Gb2bs19cMzhfzxZHAqoWj7ms1F_tsjUuPNZ7TlN9',
    ['moneysafes'] = 'https://discord.com/api/webhooks/952988331866742846/7dP0u_dylcMkef9BKbTwAp9yB5MI7Eryunki-z_Zux8pwlmKoyIRmPck1laweSVvCrmk',
    ['bennys'] = 'https://discord.com/api/webhooks/952988661841010698/3tlinTk6OFuZgv8DIl2mZilvXrsxLBFZFPVvFtd9u3oULPbB4LiHl6ri-ZFyIAlYZHM5',
    ['bossmenu'] = 'https://discord.com/api/webhooks/952988703196848258/RbjTbakC1eLM1QNllfd4-oZxm4tWb83QQQic4s9DiW5rVP4kMjmH8KZwuzslmNId8m0D',
    ['robbery'] = 'https://discord.com/api/webhooks/952988741616693348/LbbEt5AZxpAJCuCoIa63NeqtraC_Njs5sGwcd-US3JszZ42m4ldyKFHyy8O2BJuRFXzg',
    ['casino'] = 'https://discord.com/api/webhooks/952988784159518740/31nkdV-eR-2h76nePCEyximd1UpOpfyM347J7XzaGrK_GZPqlNxurBq8UfdX3grFIrgE',
    ['traphouse'] = 'https://discord.com/api/webhooks/952988826987528282/89PfXzHvekAmq_m14gl50cCqFQ08amafxzCe9MIsIaJ7hG0dRvFVe41fcIh60KN_GCMn',
    ['911'] = 'https://discord.com/api/webhooks/952988864102928505/UxAIvLIsvyn2lNhvnTJCyV9uiyYO6LfMIS_YnBb4fwZBHCg4E7rDilfRYfRVKbnJNQLI',
    ['palert'] = 'https://discord.com/api/webhooks/952988905421033474/YsZza9rnkbOG1GkJivSv270a_P23zjIcrBoxvZU2sryANPjnSIo8wmItJbIIAm8Vm85g',
    ['house'] = 'https://discord.com/api/webhooks/952988947313746010/lev4jdCHrMTGQ6Y9gg_wSZycwtJZpIJMjbAjMXtdsOoyUhf3pcQJ8zEw7WQMS5eSj8Ee',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)        
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'Anonymous Logs',
                ['icon_url'] = 'https://cdn.discordapp.com/icons/823099580962177034/2a43c828f03062ae9ef6e0dd80c2f2af.webp?size=4096&width=671&height=671',
            },
        }
    }
    PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function(source, args)
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
