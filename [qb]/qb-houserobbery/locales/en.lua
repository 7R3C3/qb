local Translations = {
    error = {
        ["missing_something"] = "Det ser ud til, at du mangler noget...",
        ["not_enough_police"] = "Ikke nok politi..",
        ["door_open"] = "Døren er allerede åben..",
        ["process_cancelled"] = "Processen er annulleret..",
        ["didnt_work"] = "Det virkede ikke..",
        ["emty_box"] = "Kassen er tom..",
    },
    success = {
        ["worked"] = "Det virkede!",
    }
}
Lang = Locale:new({
phrases = Translations,
warnOnMissing = true})