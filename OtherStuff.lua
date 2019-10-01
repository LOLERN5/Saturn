local Saturn = {}

Saturn.Stuff = {
ESP = true
}

if Saturn.Stuff.ESP == true then
local NameESPColor = Color3.new(255,0,0)

function AddEsp(objf)
local Size2 = UDim2.new(0,50,0,50)
local obj = game.workspace[objf].Head
local lmao = Instance.new("BillboardGui",obj)
local lol = Instance.new("TextLabel",lmao)
lmao.AlwaysOnTop = true
lol.Text = obj.Parent.Name
lmao.Size = Size2
lmao.Adornee = obj
lmao.MaxDistance = 9999999999
lol.Size = UDim2.new(2, 0, 1, 0)
lmao.ResetOnSpawn = false
lol.BackgroundTransparency = 1
lol.TextColor3 = NameESPColor
lol.Font = Enum.Font.Legacy
end

for i,v in pairs(game.Players:GetPlayers()) do
	if v.Name ~= game.Players.LocalPlayer.Name then 
AddEsp(v.Name)
	end
end

game.Players.PlayerAdded:Connect(function(plr)
wait(0.9)
AddEsp(plr.Name)
end)
else
print("Esp = False.")
end
