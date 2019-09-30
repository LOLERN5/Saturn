-- Saturn ok
local Saturn = {}
local LP = game.Players.LocalPlayer
 
-- Stuff
Saturn.Whitelists = {}
Saturn.Settings = {
UseWhitelist = true,
WhitelistMethod = "playername",
Url = "https://pastebin.com/raw/blahblahblah"
}

Saturn.Whitelists.pname = {"player1","player2","player3"} -- Yeah Just add a ,"plrname" then you'll be fine.

function StartSaturn()
loadstring(game:HttpGet(Saturn.Settings.Url))()
end

function StartCheck(wlmethod,plr)
if wlmethod == "playername" then
for _,v in pairs(Saturn.Whitelists.pname) do
if plr == v then
StartSaturn()
     end
   end
 end
end

if Saturn.Settings.UseWhitelist == true then
 if Saturn.Settings.WhitelistMethod == "playername" then
 StartCheck("playername",LP.Name)
 end
end
