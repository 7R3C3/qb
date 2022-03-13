local Translations = {
    error = {
        ["already_mission"] = "Du udfører allerede en NPC-mission",
        ["not_in_taxi"] = "Du er ikke i en taxa",
        ["missing_meter"] = "Dette køretøj har ingen taxamåler",
        ["no_vehicle"] = "Du er ikke i et køretøj",
        ["not_active_meter"] = "Taxaen er ikke aktiv",
        ["no_meter_sight"] = "Ingen taxamåler i sigte",
    },
    success = {},
    info = {
        ["person_was_dropped_off"] = "Person blev afleveret!",
        ["npc_on_gps"] = "NPC'en er angivet på din GPS",
        ["go_to_location"] = "Bring NPC'en til den specificerede placering",
        ["vehicle_parking"] = "[E] Parkering af køretøj",
        ["job_vehicles"] = "[E] Jobbiler",
        ["drop_off_npc"] = "[E] Aflever NPC",
        ["call_npc"] = "[E] Ring til NPC",
        ["blip_name"] = "Downtown Cab",
        ["taxi_label_1"] = "Standard førerhus",
    },
    menu = {
        ["taxi_menu_header"] = "Taxakøretøjer",
        ["close_menu"] = "⬅ Luk menu",
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true,
})