local Translations = {
    error = {
        lockpick_fail = "Mislykkedes",
        door_not_found = "Fik ikke en modelhash, hvis døren er gennemsigtig, så sørg for at sigte mod dørens ramme",
        same_entity = "Begge døre kan ikke være den samme enhed",
        door_registered = "Denne dør er allerede registreret"
    },
    success = {
        lockpick_success = "Succes"
    },
    general = {
        locked = "Låst",
        unlocked = "Ulåst",
        locked_button = "[E] - Låst",
        unlocked_button = "[E] - Ulåst",
        keymapping_description = "Interager med dørlåse",
        locked_menu = "Låst",
        pickable_menu = "Låsbar",
        distance_menu = "Maksimal afstand",
        item_authorisation_menu = "Vareforfattelse",
        citizenid_authorisation_menu = "CitizenID Autorisation",
        gang_authorisation_menu = "Bandeautorisation",
        job_authorisation_menu = "Jobautorisation",
        doortype_title = "Dørtype",
        doortype_door = "Enkeltdør",
        doortype_double = "Dobbeltdør",
        doortype_sliding = "Enkelt skydedør",
        doortype_doublesliding = "Dobbelt skydedør",
        doortype_garage = "Garage",
        doorname_title = "Dørnavn",
        configfile_title = "Konfigurationsfilnavn",
        submit_text = "Send",
        newdoor_menu_title = "Tilføj en ny dør",
        newdoor_command_description = "Tilføj en ny dør til dørlåsesystemet",
        warning = "Advarsel",
        created_by = "skabt af",
        warn_no_permission_newdoor = "%{player} (%{license}) forsøgte at tilføje en ny dør uden tilladelse (kilde: %{source})",
        warn_no_authorisation = "%{player} (%{license}) forsøgte at åbne en dør uden autorisation (Sendt: %{doorID})",
        warn_wrong_doorid = "%{player} (%{license}) forsøgte at opdatere ugyldig dør (Sendt: %{doorID})",
        warn_wrong_state = "%{player} (%{license}) forsøgte at opdatere til en ugyldig tilstand (Sendt: %{state})",
        warn_wrong_doorid_type = "%{player} (%{license}) sendte ikke et passende doorID (Sendt: %{doorID})",
        warn_admin_privilege_used = "%{player} (%{license}) åbnede en dør ved hjælp af administratorrettigheder"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})