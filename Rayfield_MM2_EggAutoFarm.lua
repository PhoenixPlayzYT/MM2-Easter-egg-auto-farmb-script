
--[[
    Rayfield GUI - MM2 Easter Egg Auto Farm
    Created by PhoenixPlayzYT
]]

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
	Name = "MM2 Auto Farm | Easter Egg",
	LoadingTitle = "Phoenix MM2 AutoFarm",
	LoadingSubtitle = "by PhoenixPlayzYT",
	ConfigurationSaving = {
		Enabled = false
	},
	KeySystem = false,
})

local MainTab = Window:CreateTab("Main", 4483362458)

MainTab:CreateButton({
	Name = "Start Auto Farm",
	Callback = function()
		getgenv().farm = true
		while farm and task.wait() do
			for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v:IsA("TouchTransmitter") and v.Parent and v.Parent.Name == "Egg" then
					firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
					firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
				end
			end
		end
	end,
})

MainTab:CreateButton({
	Name = "Stop Auto Farm",
	Callback = function()
		getgenv().farm = false
	end,
})
