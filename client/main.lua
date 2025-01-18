local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('exquisite-vapev2:useVapeJuice')
AddEventHandler('exquisite-vapev2:useVapeJuice', function(juiceType)
    local playerPed = PlayerPedId()
    local armorAmount = math.random(Config.ArmorAmountMin, Config.ArmorAmountMax)
    -- Start the vape emote
    exports["rpemotes"]:EmoteCommandStart('vape2') -- Start vaping emote
    -- Start the progress bar
    QBCore.Functions.Progressbar("use_vape", "Using Vape...", Config.ProgressBarDuration, false, true, {
        disableMovement = false,  -- Allow movement
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,      -- Only disable combat
    }, {}, {}, {}, function() -- Done
        -- Grant armor when progress bar finishes
        SetPedArmour(playerPed, GetPedArmour(playerPed) + armorAmount)
        -- Stop the vape emote and play the completion emote
        exports["rpemotes"]:EmoteCommandStart('c')
        -- Remove the vape juice item
        TriggerServerEvent('exquisite-vapev2:removeVapeJuice', juiceType)
		TriggerEvent('qb-inventory:client:ItemBox', QBCore.Shared.Items[juiceType], "remove") -- Show item removal box
    end, function() -- Cancel
        exports["rpemotes"]:EmoteCommandStart('c')
    end)
end)