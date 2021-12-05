local WaitTime = 30000 -- How often do you want to update the status (In MS)
local appid = '705481659721711661' -- Make an application @ https://discordapp.com/developers/applications/ ID can be found there.
local asset = 'logo_name' -- Go to https://discordapp.com/developers/applications/APPID/rich-presence/assets

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(WaitTime)

		local id = GetPlayerServerId(PlayerId())
		local name = GetPlayerName(PlayerId())
		local playerCount = #GetActivePlayers()

		SetDiscordAppId(appid)
		SetDiscordRichPresenceAsset(asset)
		SetDiscordRichPresenceAssetText('FlavourV Roleplay')
		SetDiscordRichPresenceAssetSmall('logo_name')

    	SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/D9bWaybEMC")
    	SetDiscordRichPresenceAction(1, "Verbinden", "fivem://connect/fivem.flavourv.de:30120")

		SetRichPresence(playerCount.."/64 - ID: "..id.." | Name: "..name)
		
	end
end)