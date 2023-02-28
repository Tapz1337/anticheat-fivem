   Citizen.CreateThread(function()
    while true do
      local specCam = GetRenderingCam()
        local specCamFov = GetCamFov(specCam)
       print(NetworkIsInSpectatorMode(), specCamFov)
      if NetworkIsInSpectatorMode() or specCamFov == 120 then
        TriggerServerEvent("tapz:ban", "Spectator Mode")
        elseif specCamFov == 50 then
          TriggerServerEvent("tapz:ban", "Freecam")
      end
      Wait(1000)
    end
  end)
