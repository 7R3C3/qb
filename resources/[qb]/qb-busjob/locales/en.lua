local Translations = {
    error = {
        already_driving_bus = 'Du kører allerede en bus',
        not_in_bus = 'Du er ikke i en bus',
        one_bus_active = 'Du kan kun have én aktiv bus ad gangen',
        drop_off_passengers = 'Sæt passagererne af, før du holder op med at arbejde'
    },
    success = {
        droped_off = 'Personen blev afleveret',
    },
    info = {
        bus = 'Standard Bus',
        goto_busstop = 'Gå til busstoppestedet',
        busstop_text = '~g~E~s~ Busstoppested',
        bus_plate = 'BUS', -- Kan være 3 eller 4 tegn lang (bruger tilfældige 4 cifre)
        bus_depot = 'Busdepot',
        bus_stop_work = '~g~E~s~ Stop med at arbejde',
        bus_job_vehicles = '~g~E~s~ Job Vehicles'
    },
    menu = {
        bus_header = 'Buskøretøjer',
        bus_close = '⬅ Luk menu'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})