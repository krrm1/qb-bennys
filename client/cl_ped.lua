local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()

  Citizen.Wait(500)
    RequestModel("ig_benny")
    while not HasModelLoaded("ig_benny") do
        Wait(500)
    end
    local ped =  CreatePed(0, 'ig_benny', Config.PedsCoords[1].coords.x, Config.PedsCoords[1].coords.y, Config.PedsCoords[1].coords.z, Config.PedsCoords[1].heading, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_AA_SMOKE', true)

   ------------------------------------------------------------------------------------------------

    exports['qb-target']:AddBoxZone("pedshop1", Config.PedsCoords[1].coords, 1, 1, {
    name = "pedshop1",
    heading=0,
    debugPoly = Config.debug,
    minZ=30.09,
    maxZ=32.09,
  }, {
    options = {
      { 
        num = 1,
        type = "client",
        event = "arabcodingteam:client:BennyShop",
        icon = 'fas fa-shopping-basket ',
        label = 'benny shop',
      },
      { 
        num = 2,
        type = "client",
        event = "arabcodingteam:client:RefuelNitrous",
        icon = 'fas fa-circle',
        label = 'Refuel Nitrous $'..Config.Shop[1].price.. " ",
      },
    },
    distance = 2.5,
  })

end)