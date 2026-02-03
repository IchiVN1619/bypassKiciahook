if getfenv(2).script_key then
	getgenv().script_key = getfenv(2).script_key
end

local a = 'discord.gg/kicia'

if not game:IsLoaded() then
	game.Loaded:Wait()
end

setthreadidentity = setthreadidentity or function() end

local b = {
	[7018190066] = {
		FFA = false,
		Freemium = false,
		Unloadable = true,
		Url = [[https://api.luarmor.net/files/v3/loaders/f442f580304e53e183560ff4cfd715fc.lua]],
	},
	[7436755782] = {
		FFA = true,
		Freemium = false,
		Unloadable = true,
		Url = [[https://api.luarmor.net/files/v3/loaders/b7d180acad508c48c140afe43d01ea0c.lua]],
	},
	[7178032757] = {
		FFA = true,
		Freemium = false,
		Unloadable = true,
		Url = [[https://api.luarmor.net/files/v3/loaders/2e6b46bc05af83e8427cd9b5123bba27.lua]],
	},
	[6035872082] = {
		FFA = false,
		Freemium = false,
		Unloadable = true,
		Url = [[https://api.luarmor.net/files/v3/loaders/63d0cd967eb525cdc489809d1537b356.lua]],
	},
	[245662005] = {
		FFA = true,
		Freemium = false,
		Unloadable = false,
		Url = [[https://api.luarmor.net/files/v3/loaders/c7c92198fe99e9b6ea44f3601c77225d.lua]],
	},
	[994732206] = {
		FFA = true,
		Freemium = false,
		Unloadable = false,
		Url = [[https://api.luarmor.net/files/v3/loaders/35da3a3a92dd3b65f8d20528035fc94c.lua]],
	},
	[5166944221] = {
		FFA = true,
		Freemium = false,
		Unloadable = false,
		Url = [[https://api.luarmor.net/files/v3/loaders/023ba9954f152b29a924c57cf1e83053.lua]],
	},
	[66654135] = {
		FFA = true,
		Freemium = false,
		Unloadable = false,
		Url = [[https://api.luarmor.net/files/v3/loaders/24e8cf30a21a49dc9f91b2856f04cd5a.lua]],
	},
	[115797356] = {
		FFA = true,
		Freemium = false,
		Unloadable = false,
		Url = [[https://api.luarmor.net/files/v3/loaders/296e5f51cf7ad143111cfe011ce26503.lua]],
	},
}

local c = b[game.GameId]

if not c then
	game:GetService('Players').LocalPlayer:Kick('This game is not supported!')
	return
end

local d = function()
	pcall(function()
		setthreadidentity(8)
		for e, f in game:GetService('CoreGui'):GetChildren() do
			if f.Name == 'nexlib' then
				f:Destroy()
			end
		end
	end)
	loadstring(game:HttpGet(c.Url))()
end

d()
