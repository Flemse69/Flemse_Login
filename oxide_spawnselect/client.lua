
AddEventHandler("playerSpawned",function()
    SetEntityInvincible(PlayerPedId(),true)
    SetEntityVisible(PlayerPedId(),false)
    FreezeEntityPosition(PlayerPedId(), true)
    SetTimecycleModifier("hud_def_blur")
    Cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", -1519.3956298828,-1846.9437255859,581.66998291016,-17.98504447937,0.00,0.00, 100.00, false, 0)
    SetCamActive(Cam, true)
    RenderScriptCams(1, 0, 750, 1, 1)
    --TriggerEvent('pogressBar:drawBar', 7500, 'Indlæser...')
    -- Indsæt anden progressbar hvis i ikke bruger progressBars
    exports['progressBars']:startUI(7500, "Indlæser...")
    Wait(8000)
    TriggerEvent('open:disclaimer')
end)

RegisterNetEvent("open:disclaimer")
AddEventHandler("open:disclaimer", function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "container2",
        status = true,
    })
end)

RegisterNUICallback("accept", function (data, callback)
    Wait(1000)
    SetNuiFocus(false, false)
    TriggerEvent("open:spawnselector")
end)

function SetCam(onoff, CamX, CamY, CamZ, CamH)
    if onoff == true then
        if CurrentCam ~= 0 then 
            DestroyCam(CurrentCam)
        end
        CurrentCam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetCamCoord(CurrentCam, CamX, CamY, CamZ, CamH)
        SetCamRot(CurrentCam, -10.98504447937, 0.0, CamH)
        SetCamActive(CurrentCam, true)
        RenderScriptCams(1, 1, 750, 1, 1)
    else
        SetCamActive(CurrentCam, false)
        DestroyCam(CurrentCam)
        DetachCam(CurrentCam)
        RenderScriptCams(false, true, 2000, true, true)
    end
end


RegisterNetEvent("open:spawnselector")
AddEventHandler("open:spawnselector", function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "container",
        status = true,
    })
end)

RegisterNUICallback("paleto", function (data, callback)
    local playerPed = GetPlayerPed(-1)
    local ped = PlayerPedId()
    SetEntityCoords(ped, -113.11251831055,6459.21875,31.468469619751)
    SetCam(false)
    Wait(2000)
    SetEntityInvincible(PlayerPedId(),false)
    SetEntityVisible(PlayerPedId(),true)
    FreezeEntityPosition(PlayerPedId(), false)
    SetCam(false)
    SetTimecycleModifier("default")
    SetNuiFocus(false, false)
end)

RegisterNUICallback("sandy", function (data, callback)
    local playerPed = GetPlayerPed(-1)
    local ped = PlayerPedId()
    SetEntityCoords(ped, 1697.8605957031,3596.2316894531,35.518329620361)
    SetCam(false)
    Wait(2000)
    SetEntityInvincible(PlayerPedId(),false)
    SetEntityVisible(PlayerPedId(),true)
    FreezeEntityPosition(PlayerPedId(), false)
    SetCam(false)
    SetTimecycleModifier("default")
    SetNuiFocus(false, false)
end)

RegisterNUICallback("midtby", function (data, callback)
    local playerPed = GetPlayerPed(-1)
    local ped = PlayerPedId()
    SetEntityCoords(ped, 227.38412475586,-881.18933105469,30.492074966431)
    SetCam(false)
    Wait(2000)
    SetEntityInvincible(PlayerPedId(),false)
    SetEntityVisible(PlayerPedId(),true)
    FreezeEntityPosition(PlayerPedId(), false)
    SetCam(false)
    SetTimecycleModifier("default")
    SetNuiFocus(false, false)
end)

RegisterNUICallback("seneste", function (data, callback)
    SetCam(false)
    Wait(2000)
    SetEntityInvincible(PlayerPedId(),false)
    SetEntityVisible(PlayerPedId(),true)
    FreezeEntityPosition(PlayerPedId(), false)
    SetCam(false)
    SetTimecycleModifier("default")
    SetNuiFocus(false, false)
end)

RegisterNUICallback("Luk", function (data, callback)
    SetNuiFocus(false, false)
end)

