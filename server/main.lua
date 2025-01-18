QBCore = exports['qb-core']:GetCoreObject()

for _, juice in pairs(Config.VapeJuices) do
    QBCore.Functions.CreateUseableItem(juice, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.GetItemByName(Config.VapeItem) then
            TriggerClientEvent('exquisite-vapev2:useVapeJuice', source, juice)
        else
            TriggerClientEvent('QBCore:Notify', source, 'You need a vape to use this item.', 'error')
        end
    end)
end

-- Event to remove the vape juice item upon completion
RegisterNetEvent('exquisite-vapev2:removeVapeJuice')
AddEventHandler('exquisite-vapev2:removeVapeJuice', function(juice)
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem(juice, 1)
end)