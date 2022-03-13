local Translations = {
    error = {
        negative = 'Forsøger du at sælge et negativt beløb?',
        no_melt = 'Du gav mig ikke noget at smelte...',
        no_items = 'Ikke nok varer',
    },
    success = {
        sold = 'Du har solgt %{value} x %{value2} for $%{value3}',
        items_received = 'Du modtog %{value} x %{value2}',
    },
    info = {
        title = 'Pawn Shop',
        subject = 'Smeltende emner',
        message = 'Vi er færdige med at smelte dine genstande. Du kan komme og hente dem når som helst.',
        open_pawn = 'Åbn pantelånerbutikken',
        sell = 'Sælg varer',
        sell_pawn = 'Sælg varer til pantelånerbutikken',
        melt = 'Smelte emner',
        melt_pawn = 'Åbn smelteværkstedet',
        melt_pickup = 'Afhent smeltede varer',
        pawn_closed = 'Pawnshop er lukket. Kom tilbage mellem %{value}:00 AM - %{value2}:00 PM',
        sell_items = 'Salgspris $%{value}',
        back = '⬅ Gå tilbage',
        melt_item = 'Smelte %{value}',
        max = 'Maks. beløb %{value}',
        submit = 'Smelt',
        melt_wait = 'Giv mig %{value} minutter og jeg har smeltet dine ting!',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})