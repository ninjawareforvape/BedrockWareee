local lplr = game:GetService("Players").LocalPlayer
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Installer", HidePremium = false, SaveConfig = false, ConfigFolder = "idk", IntroEnabled = false})
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local playerservice = game:GetService("Players")
local replicatedstorage = game:GetService("ReplicatedStorage")
local BedwarsLobby = game:HttpGet("https://raw.githubusercontent.com/OuterScripts/BedrockWareee/main/6872265039.vapeprofile.txt")
local BedwarsGUI = game:HttpGet("https://raw.githubusercontent.com/OuterScripts/BedrockWareee/main/6872265039GUIPositions.vapeprofile.txt")
local GamePR = game:HttpGet("https://raw.githubusercontent.com/OuterScripts/BedrockWareee/main/6872274481.vapeprofile.txt")


local Tab = Window:MakeTab({
	Name = "Installer",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


Tab:AddButton({
	Name = "Install",
	Callback = function()
		if not isfile("")
        writefile('vape/Profiles/6872265039.vapeprofile.txt', '')
        writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', '')
        writefile('vape/Profiles/6872274481.vapeprofile.txt', '')
    
        task.wait(0.5)
    
        delfile('vape/Profiles/6872265039.vapeprofile.txt')
        delfile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt')
        delfile('vape/Profiles/6872274481.vapeprofile.txt')
      
        task.wait(0.5)
    
        writefile('vape/Profiles/6872265039.vapeprofile.txt', BedwarsLobby)
        writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', BedwarsGUI)
        writefile("vape/Profiles/6872274481.vapeprofile.txt", GamePR)
		
		task.wait(1)

		OrionLib:MakeNotification({
		    Name = "Installer",
			Content = "Done!",
		    Image = "rbxassetid://4483345998",
		    Time = 5
		})
  	end    
})