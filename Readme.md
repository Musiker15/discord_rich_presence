# Discord Rich Presence
Shows some special things to your Discord User Info

![Discord Rich Presence](https://user-images.githubusercontent.com/49867381/144730996-818724ad-f36b-4a06-973c-938d11d5202d.png)

## Config
```lua
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
		SetDiscordRichPresenceAssetSmall(asset)
		SetDiscordRichPresenceAssetSmallText('FlavourV Roleplay')

    	SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/D9bWaybEMC")
    	SetDiscordRichPresenceAction(1, "Verbinden", "fivem://connect/fivem.flavourv.de:30120")

		SetRichPresence(playerCount.."/64 - ID: "..id.." | Name: "..name)
		
	end
end)
```

## My other Scripts
* [[ESX] Armor Script - Usable Armor Vests](https://forum.cfx.re/t/release-esx-armor-script-usable-armor-vests-status-will-be-saved-in-database-and-restore-after-relog/4812243)
* [[ESX] Weapon Ammunition with Clips, Components & Tints](https://forum.cfx.re/t/release-esx-weapon-ammunition-with-clips-components-tints/4793783)
* [[ESX/QBCore] Simcard - Change your phonenumber](https://forum.cfx.re/t/release-esx-qbcore-usable-simcard/4847008)
* [[ESX] Shopsystem - NativeUI & Database Feature](https://forum.cfx.re/t/release-esx-msk-shopsystem-nativeui-database-feature/4853593)
