local Translations = {
    error = {
        no_money = 'Ikke penge nok',
        too_far = 'Du er for langt fra din pølsevogn',
        no_stand = 'Du har ikke en pølsevogn',
        cust_refused = 'Kunde nægtede!',
        no_stand_found = 'Din pølsevogn var ingen steder at se, du vil ikke modtage dit depositum tilbage!',
        no_more = 'Du har ikke %{value} mere om dette foran rådet',
        deposit_notreturned = 'Du havde ikke en pølsevogn',
    },
    success = {
        deposit = 'Du har betalt et depositum på $%{deposit}!',
        deposit_returned = 'Din $%{deposit} indbetaling er blevet returneret!',
        sold_hotdogs = '%{value} x Hotdog(\'s) solgt for $%{value2}',
        made_hotdog = 'Du har lavet en %{value} hotdogs',
        made_luck_hotdog = 'Du lavede %{value} x %{value2} hotdogs',
    },
    info = {
        command = "Slet stand (kun administrator)",
        blip_name = 'Pølsevogn',
        start_working = '[~g~E~s~] Begynd at arbejde',
        start_work = 'Begynd at arbejde',
        stop_working = '[~g~E~s~] Stop med at arbejde',
        stop_work = 'Stop med at arbejde',
        grab_stall = '[~g~G~s~] Grib stall',
        drop_stall = '[~g~G~s~] Release Stall',
        grab = 'Grib stall',
        selling_prep = '[~g~E~s~] Hotdog forberede [Sale: ~g~Selling~w~]',
        not_selling = '[~g~E~s~] Hotdog forberede [Salg: ~r~Not Selling~w~]',
        sell_dogs = '[~g~7~s~] Sælg %{value} x HotDogs for $%{value2} / [~g~8~s~] Afvis',
        admin_removed = "Pølsevogn fjernet",
        label_a = "Perfect (A)",
        label_b = "Rare (B)",
        label_c = "Common (C)"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})