local QBCore = exports['kd-core']:GetCoreObject()

RegisterNetEvent('arabcodingteam:client:RefuelNitrous', function()
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
        if result then
            TriggerServerEvent('arabcodigteam:server:RefuelCheck')
            print('ok boss')
        else
            QBCore.Functions.Notify('You Dont Have Empty Nitrous :/', 'error', 4000)
        end
    end, "emptynitrous")
end)

RegisterNetEvent('arabcodingteam:client:BennyShop', function (ShopItems)
	local ShopItems = {}
	ShopItems.label = "Benny Shop"
	ShopItems.items = Config.Shop
	ShopItems.slots = #Config.Shop
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "bennyshop_"..math.random(1, 99), ShopItems) 
end)