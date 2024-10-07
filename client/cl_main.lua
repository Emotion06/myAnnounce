local function bigInt(text)
    local string1 =  DataView.ArrayBuffer(16)
    string1:SetInt64(0,text)
    return string1:GetInt64(0)
end

local function Notify(title, text, duration)
    local struct1 = DataView.ArrayBuffer(8*7)
    struct1:SetInt32(8*0,duration)
    --struct1:SetInt64(8*1,bigInt(sound_dict))
    --struct1:SetInt64(8*2,bigInt(sound))
    local string1 = CreateVarString(10, "LITERAL_STRING", title)
    local string2 = CreateVarString(10, "LITERAL_STRING", text)
    local struct2 = DataView.ArrayBuffer(8*7)
    struct2:SetInt64(8*1,bigInt(string1))
    struct2:SetInt64(8*2,bigInt(string2))
    Citizen.InvokeNative(0xA6F4216AB10EB08E,struct1:Buffer(),struct2:Buffer(),1,1)
end

RegisterNetEvent('myAnnounce:txAdmin:scheduledRestart')
AddEventHandler('myAnnounce:txAdmin:scheduledRestart', function(minutes)
    local minutes = tostring(minutes)
    Notify(Translation[Config.Locale]['announcement_title'], Translation[Config.Locale]['announcement_restart'] .. " " .. minutes .. " ".. Translation[Config.Locale]['announcement_minutes'], Config.AnnouncetDuration)
end)

RegisterNetEvent('myAnnounce:txAdmin:announcement')
AddEventHandler('myAnnounce:txAdmin:announcement', function(text)
    Notify(Translation[Config.Locale]['announcement_title'], text, Config.AnnouncetDuration)
end)