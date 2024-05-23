return {
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['oil_gun'] = {
		label = 'Óleo para arma',
		metadata = {
			durability = 100
		}
	},

	['money'] = {
		label = 'Money',
	},

	["reviver"] =
	{
		["label"] = "Reanimador",
		["description"] = "Revive pessoas gravemente feridas",
		["weight"] = 500,
		["image"] = "reviver",
		consume = 1,
		client = { export = 'frp_death_state.reviverItem' },
		server = { export = 'frp_death_state.reviverItem' },
	},

	-- REMÉDIOS                                 
	["tonico"]  = {
		["label"] = "Garrafa de Tonico",
		["description"] = "Garrafa cheia de Tonico",
		degrade = 15000,
		["weight"] = 500,
		["image"] = "tonico",
		consume = 0,
		server = { export = 'frp_death_state.itemTonic' },
	},

	["tonicop"] = {
		["label"] = "Garrafa de Tonico Potente",
		["description"] = "Garrafa cheia de Tonico Potente",
		degrade = 15000,
		["weight"] = 700,
		["image"] = "tonicoP",
		consume = 0,
		server = { export = 'frp_death_state.itemTonic' },
	},

	["medicine"] =
	{
		["label"] = "Remédio",
		["description"] = "Cura até os mais feridos",
		["weight"] = 700,
		["image"] = "medicine",
		degrade = 15000,
		consume = 1,
		client = { export = 'frp_death_state.itemMedicine' },
		server = { export = 'frp_death_state.itemMedicine' },
	},
}
