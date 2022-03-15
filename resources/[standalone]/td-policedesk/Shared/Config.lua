TDPD = {}
TDPD.Config = {}

--------------------------
--   THIRDEYE OPTIONS   --
--------------------------
-- IF YOU PLAN TO USE QB-TARGET (https://github.com/BerkieBb/qb-target)
-- DEFAULT: false
TDPD.Config.ThirdEye = true

--------------------------
-- NON-THIRDEYE OPTIONS --
--------------------------
-- WHERE THE REQUEST POPUP IS LOCATED.
-- DEFAULT: {name='MRPD', coords=vector3(441.73, -982.03, 30.73)}
TDPD.Config.Locations = {
    {name='MRPD', coords=vector3(441.73, -982.03, 30.73)}
}

-- WHAT THE POPUP TEXT CHANGES TO DURING THE COOLDOWN.
TDPD.Config.PleaseWait = 'Der er anmodet om assistance.'

-- THE TEXT DISPLAYED AT THE POLICE DESK.
-- DEFAULT: '[~g~E~w~] Request Officer'
TDPD.Config.PopupText = '[~g~E~w~] Anmod om en betjent'

--------------------------
--   GENERAL  OPTIONS   --
--------------------------
-- COOLDOWN PERIOD TO REQUEST ASSISTANCE AGAIN; THIS IS IN SECONDS.
TDPD.Config.RequestCooldown = 10

-- THE NOTIFICATION MESSAGE SENT TO PLAYER WHEN EMAIL IS SENT TO ON DUTY POLICE.
-- DEFAULT: 'On duty officers have been notified of your assistance request.'
TDPD.Config.SuccessMessage = 'Vagthavere er blevet underrettet om din anmodning om assistance.'

-- THE NOTIFICATION MESSAGE SENT TO PLAYER WHEN THERE IS NO ON DUTY POLICE.
-- DEFAULT: 'There are no on duty police officers at this time.'
TDPD.Config.FailureMessage = 'Der er ingen vagthavende politifolk på nuværende tidspunkt.'

-- JOB NAMES FOR POLICE. DOES ACCEPT MULTIPLE JOBS (lspd, bcso, etc.).
-- DEFAULT: { 'police' }
TDPD.Config.PoliceJobs = {
    'police'
}

--------------------------
--    NOTIF  OPTIONS    --
--------------------------
-- THE EMAIL SENDER FOR THE POLICE EMAIL.
-- DEFAULT: 'Police Dispatcher'
TDPD.Config.EmailSender = 'Alarm centralen'

-- THE EMAIL SUBJECT FOR THE POLICE EMAIL.
-- DEFAULT: 'Assistance Required'
TDPD.Config.EmailSubject = 'Hjælp påkrævet'

-- THE EMAIL MESSAGE FOR THE POLICE EMAIL.
-- DEFAULT: 'Officer,<br/>There is an individual at the police department desk requesting the assistance of a present officer.'
TDPD.Config.EmailMessage = 'Officer,<br/>There is an individual requesting the assistance of a present officer at '

--------------------------
--     MDT  OPTIONS     --
--------------------------
-- If you want the request to show within dispatch and MDT, define true.
-- If you want the request to be emailed to officers, define false.
TDPD.Config.UsingMDT = true