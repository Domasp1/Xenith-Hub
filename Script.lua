local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Xenith Hub",
   LoadingTitle = "Xenith Production Team",
   LoadingSubtitle = "by Xenith",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "https://discord.gg/bFsgdrzc", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "Xenith is the key",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Xenith"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main Feutures", 4483362458)


local Button = Tab:CreateButton({
   Name = "Kill GUI",
   Callback = function()
   Rayfield:Destroy()
   end,
})

local Button = Tab:CreateButton({
   Name = "Infinite yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "DEX",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
   end,
})




local Tab = Window:CreateTab("Hubs", 4483362458)

local Button = Tab:CreateButton({
   Name = "Doors",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
   end,

})


local Button = Tab:CreateButton({
   Name = "Doors anti-cheat bypass",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/weszek/Doors/main/Doors%20by'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Evade",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "MM2",
   Callback = function()
   local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
   end,
})

local Tab = Window:CreateTab("Humanoid", 4483362458) -- Title, Image

local Slider = Tab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "WS",
   CurrentValue = 16,
   Flag = "Slider1", 
   Callback = function(wss)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (wss)
   end,
})

local Slider = Tab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 500},
   Increment = 1,
   Suffix = "JP",
   CurrentValue = 50,
   Flag = "Slider1", 
   Callback = function(jps)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = (jps)
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Gravity",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "IDK",
   CurrentValue = 196.2,
   Flag = "Slider1", 
   Callback = function(GS)
      game.Workspace.Gravity = (GS)
   end,
})

local Button = Tab:CreateButton({
   Name = "Reset Walkspeed",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
   end,
})

local Button = Tab:CreateButton({
   Name = "Reset JumpPower",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
   end,
})

local Button = Tab:CreateButton({
   Name = "Reset Gravity",
   Callback = function()
   game.Workspace.Gravity = 196.2
   end,
})
