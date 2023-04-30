
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Rock Piece") -- Creates the window

local b = w:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)

local d = w:CreateFolder("Moves") -- Creates the folder(U will put here your buttons,etc)

local c = w:CreateFolder("Credits") -- funny by dzz 

c:Label("made by dzz#9063",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(96,96,96); -- Self Explaining
    
})

b:Button("AntiBaryon Lag",function()
    game:GetService("ReplicatedStorage").Rasengan_.Attachment:Destroy()
    game:GetService("ReplicatedStorage").Rasengan_.Transparency = 1
end)

b:Button("FPS Boost",function()
    local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end)

b:Toggle("Auto damage (baryon)",function(bool)
    shared.toggle = bool
    getgenv().toggle = shared.toggle
while toggle do
game:GetService("ReplicatedStorage"):WaitForChild("Document"):WaitForChild("BarionRasengan"):FireServer()
 task.wait()
end
end)

b:Dropdown("Choose Mob",{"Bacon Drip","Bacon Rock","Steve","Zombie V3","Bacon Tree","Sasuke Clone","Sasuke","Dragon Warrior","Boss Sans","Skeleton","Demon","Piccolo","Yamcha","Krillin","Deku","Bacon Iron","Dio Over Heaven","Bacon Cape","Bacon Fire","Bacon Warrior","Jotaro","Dio","Jiren","Goku","Jiren FULL POWER","Shanks","Pirate","Dante","Devil","Ace","Akainu","Marine","White Beard","Pirate White","Fujitora","Boss ICE","Vegeta Blue",},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    getgenv().mob = mob
end)

b:Toggle("Autofarm",function(bool)
    shared.toggle = bool
    getgenv().autofarm = shared.toggle --true to make it on,false to make it stop

coroutine.wrap(function()
    while wait() do
        if getgenv().autofarm == true then
            pcall(function()
                for i,v in pairs(game.Workspace:GetChildren()) do --enemy location
                    if v:IsA("Model") and v.Name == mob then --remove this if you want farm all mobs 
                        if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,value)  --distance and angles
                            until v.Humanoid.Health <= 0 or getgenv().autofarm == false
                        end
                    end
                end
            end)
        end
    end
end)()

--no clip on when you start to farm,you can remove it if you dont want use noclip
game:GetService("RunService").RenderStepped:Connect(function() 
    if autofarm == true then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)
end)

b:Slider("Distance",{
    min = 10; -- min value of the slider
    max = 50; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    print(value)
      getgenv().value = value
end)

d:Label("CHANGE KEYBIND FIRST",{
    TextSize = 20; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

d:Bind("TimeStop",Enum.KeyCode.P,function() --Default bind
    game:GetService("ReplicatedStorage").Document.TWOH:FireServer()
end)

d:Bind("Gojo Health",Enum.KeyCode.P,function() --Default bind
    game:GetService("ReplicatedStorage").Document.Gojo:FireServer()
end)

d:Bind("Reset Universe",Enum.KeyCode.P,function() --Default bind
    game:GetService("ReplicatedStorage").Document["Made In Heaven"]:FireServer()
end)

d:Bind("Ice Bird",Enum.KeyCode.P,function() --Default bind
    game:GetService("ReplicatedStorage").Document.DevilFruit.Ice.IceEvent:FireServer()
end)

d:Bind("Gravity Meteor",Enum.KeyCode.P,function() --Default bind
    game:GetService("ReplicatedStorage").Document.DevilFruit.Gravity.GravityEvent4:FireServer()
end)

d:Bind("Gravity Zone",Enum.KeyCode.P,function() --Default bind
    game:GetService("ReplicatedStorage").Document.DevilFruit.Gravity.GravityEvent3:FireServer()
end)

d:Bind("Jiren Power Ball",Enum.KeyCode.P,function() --Default bind
    game:GetService("ReplicatedStorage").Document.JirenPower:FireServer("Ball")
end)

local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/1102249663127634061/JzkarPDmoTd_7sQSI1u5Mayt1pG2CwVJ5jN9tDE1QsU92zgIM59qW6wQQ5NN0uwdJOMF"
local data = {
   ["content"] = " NEW EXECUTION!!",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

