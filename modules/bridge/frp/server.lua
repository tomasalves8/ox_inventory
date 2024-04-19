local Tunnel = module("frp_core", "lib/Tunnel")
local Proxy = module("frp_core", "lib/Proxy")

API = Proxy.getInterface("API")
cAPI = Tunnel.getInterface("API")

local Inventory = require 'modules.inventory.server'
local Items = require 'modules.items.server'

AddEventHandler('API:UserDropped', server.playerDropped)

local function setupPlayer(User, charId)
	local Player = User:getCharacter()

	local PlayerData = {}
	PlayerData.source = Player.source

	PlayerData.inventory = Player.Inventory.items
	PlayerData.slots = Player.Inventory.slots
	PlayerData.weight = Player.Inventory.weight
	PlayerData.identifier = charId or Player.id

	PlayerData.name = ('%s %s'):format(Player.firstName, Player.lastName)
	server.setPlayerInventory(PlayerData)
end

AddEventHandler('API:OnUserSelectCharacter', setupPlayer)

SetTimeout(500, function()
	for _, Player in pairs(API.getUsers()) do setupPlayer(Player) end
end)