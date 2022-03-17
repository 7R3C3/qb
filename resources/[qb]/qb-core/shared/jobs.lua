QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Politielev',
                payment = 2000
            },
            ['1'] = {
                name = 'Politibetjent',
                payment = 2700
            },
            ['2'] = {
                name = 'Politiassistent',
                payment = 2800
            },
            ['3'] = {
                name = 'Politiassistent_af_første_grad',
                payment = 3000
            },
            ['4'] = {
                name = 'PolitiKommissær',
                payment = 4400
            },
            ['5'] = {
                name = 'Vicepolitiinspektør',
                payment = 4500
            },
			['6'] = {
                name = 'Politiinspektør',
                payment = 4600
            },
			['7'] = {
                name = 'Chefpolitiinspektør',
                payment = 4700
            },
			['8'] = {
                name = 'Politidirektør',
                isboss = true,
                payment = 4800
            },
			['9'] = {
                name = 'Rigspolitichef',
				isboss = true,
                payment = 5000
            },
        },
	},
    ['vanilla'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 2300
            },
			['1'] = {
                name = 'Novice',
                payment = 2400
            },
			['2'] = {
                name = 'Experienced',
                payment = 2500
            },
			['3'] = {
                name = 'Advanced',
                payment = 2600
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 2700
            },
        },
	},

	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'AmbulanceElev',
                payment = 2000
            },
            ['0'] = {
                name = 'Ambulanceredder',
                payment = 2700
            },
            ['0'] = {
                name = 'Akutlæge',
                payment = 4500
            },
			['1'] = {
                name = 'Paramedeciner',
                payment = 4600
            },
			['2'] = {
                name = 'Overlæge',
                payment = 4700
            },
			['3'] = {
                name = 'Stationsleder',
                isboss = true,
                payment = 4800
            },
			['4'] = {
                name = 'Regionschef',
				isboss = true,
                payment = 5000
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 2000
            },
			['1'] = {
                name = 'House Sales',
                payment = 2300
            },
			['2'] = {
                name = 'Business Sales',
                payment = 2400
            },
			['3'] = {
                name = 'Broker',
                payment = 2500
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 3000
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 3000
            },
			['1'] = {
                name = 'Driver',
                payment = 3100
            },
			['2'] = {
                name = 'Event Driver',
                payment = 3200
            },
			['3'] = {
                name = 'Sales',
                payment = 3300
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 3400
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 3000
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 2500
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 2600
            },
			['2'] = {
                name = 'Business Sales',
                payment = 2700
            },
			['3'] = {
                name = 'Finance',
                payment = 2800
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 2900
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 3300
            },
			['1'] = {
                name = 'Novice',
                payment = 3400
            },
			['2'] = {
                name = 'Experienced',
                payment = 3500
            },
			['3'] = {
                name = 'Advanced',
                payment = 4000
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 4500
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 5100
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 5000
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 2500
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 3120
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 5000
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 2800
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 5000
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 2900
            },
        },
	},
}