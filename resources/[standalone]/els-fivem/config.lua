vcf_files = {
	"2003MondeoNyBro.xml",
	"2009MondeoSedan.xml",
	"2009SuperB3Blink.xml",
	"2011passat.xml",
	"2011PassatCivil.xml",
	"2011PassatLysbro.xml",
	"2012mercedes.xml",
	"2012MercedesCivil.xml",
	"2012MondeoHund.xml",
	"2013BMWTouringCivil.xml",
	"2015mercedes.xml",
	"2015MercedesCIVIL.xml",
	"2015PassatCivil.xml",
	"2015passatLED.xml",
	"2016MondeoHund.xml",
	"2016touran.xml",
	"2016TouranHund.xml",
	"SprinterGruppevogn.xml",
	"SprinterKST.xml",
	"T6AKSCIVIL.xml",
	"T6GruppeBlaa.xml",
	"T6GruppeHvid.xml",
	"T6Indsatsleder.xml",
	"ToyotaPrado3Blink.xml",
	"ToyotaPradoAKSCIVIL.xml",
	"ToyotaPradoBro.xml",
	"YamahaPOLITI.xml",
	"ambulance.xml",
	"gul.xml",
	"hvid.xml",
	"speedo.xml",
	"touareg.xml",
	"pskodaw.xml"
}

pattern_files = {
	"WIGWAG.xml",
	"WIGWAG3.xml",
	"FAST.xml",
	"COMPLEX.xml",
	"BACKFOURTH.xml",
	"BACKFOURTH2.xml",
	"T_ADVIS_RIGHT_LEFT.xml",
	"T_ADVIS_LEFT_RIGHT.xml",
	"T_ADVIS_BACKFOURTH.xml",
	"WIGWAG5.xml"
}

modelsWithTrafficAdvisor = {
	"politi1.xml",
	"politi2.xml",
	"politi3.xml",
	"politi4.xml",
	"politi5.xml",
	"politi6.xml",
	"politi7.xml",
	"politi8.xml",
	"politi9.xml",
	"politi10.xml",
	"politi11.xml",
	"politi12.xml",
	"ambulance.xml",
	"gul.xml",
	"hvid.xml",
	"speedo.xml",
	"touareg.xml",
	"pskodaw.xml"
}

modelsWithFireSiren =
{
    "FIRETRUK",
}

modelsWithAmbWarnSiren =
{   
    "AMBULANCE",
    "FIRETRUK",
    "LGUARD",
}

stagethreewithsiren = false
playButtonPressSounds = true
vehicleStageThreeAdvisor = {
	"politi1.xml",
	"politi2.xml",
	"politi3.xml",
	"politi4.xml",
	"politi5.xml",
	"politi6.xml",
	"politi7.xml",
	"politi8.xml",
	"politi9.xml",
	"politi10.xml",
	"politi11.xml",
	"politi12.xml",
	"ambulance.xml",
	"gul.xml",
	"hvid.xml",
	"speedo.xml",
	"touareg.xml",
	"pskodaw.xml"
}


vehicleSyncDistance = 150
envirementLightBrightness = 1.0

build = "master"

shared = {
	horn = 86,
}

keyboard = {
	modifyKey = 132,
	stageChange = 85,
	guiKey = 243,
	takedown = 245,
	siren = {
		tone_one = 157,
		tone_two = 158,
		tone_three = 160,
		dual_toggle = 164,
		dual_one = 165,
		dual_two = 159,
		dual_three = 161,
	},
	pattern = {
		primary = 246,
		secondary = 303,
		advisor = 182,
	},
}

controller = {
	modifyKey = 73,
	stageChange = 80,
	takedown = 74,
	siren = {
		tone_one = 173,
		tone_two = 85,
		tone_three = 172,
	},
}