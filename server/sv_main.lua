RegisterNetEvent('txAdmin:events:scheduledRestart')
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
  local minutes = tonumber(eventData.secondsRemaining) / 60
  TriggerClientEvent('myAnnounce:txAdmin:scheduledRestart', -1, minutes)
end)

RegisterNetEvent('txAdmin:events:announcement')
AddEventHandler('txAdmin:events:announcement', function(eventData)
  TriggerClientEvent('myAnnounce:txAdmin:announcement', -1, eventData.message..' \n ~m~by '..eventData.author..'~q~')
end)