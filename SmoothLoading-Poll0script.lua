

--Halloween Event - Auto TileSkip/HalloweenShop TP/MiniGame TP


--DELETE THIS TOMORROW!! only temporary override of serverhop settings!
getgenv().ServerHopperWaitOVERRIDE = math.random(2700, 5400)

--ENABLE DEVELOPMENT TAB WITH TOOLS
--getgenv().development = false


repeat wait() until game:IsLoaded()
local StartTime = tick()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Poll0none/Poll0script/main/bin/functions"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Poll0none/Poll0script/main/bin/anti-cheat"))()

--Set getgenv().ServerHopperWait = math.random(10800, 14400) in your file before calling this script via loadstring

local ServerHopper = function(time)
    if time then
        print("ServerHopper called and will jump to next server in: " .. time)
    wait(time)
        ServerHop()
    else
        print("AutoKick detected errors. ServerHopping now...")
        ServerHop()
    end
end
--If server Times Out then serverhop
game.NetworkClient.ChildRemoved:Connect(function()
   ServerHop()
end)

--Make the ServerHop with getgenv().ServerHopperWait = math.random(7200, 10800) on autoexec file
spawn(function()
    ServerHopper(ServerHopperWaitOVERRIDE)
end)
--Check if error or disconnect the serverhop
spawn(function()
    while wait() do
            wait(60)
        pcall(function()

                --if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then

                game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                if child.Name == 'ErrorPrompt' then

                    -- Create an array of delay values in seconds
                    local delayValues = {0, 20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300}

                    -- Select a random delay value from the array
                    local randomIndex = math.random(1, #delayValues)
                    local selectedDelay = delayValues[randomIndex]

                    -- Wait for the selected delay
                    wait(selectedDelay)

                    -- Now you've waited for a random delay based on the values in the array
                    ServerHopper()

                end
            end)
        end)
    end
end)

wait(45)

--[[
START BULIDING SCRIPT´S ENGINE
]]--
local VirtualUser = VirtualUser
Player.Idled:connect(
    function()
        VirtualUser:ClickButton2(Vector2.new())
    end
)

for i,v in pairs(getconnections(Player.Idled)) do
    v:Disable()
end
repeat wait() until Player.PlayerGui:FindFirstChild("PlayButton",true)
RunService.Stepped:Connect(function()
    pcall(function()
        if Player.PlayerGui:FindFirstChild("NewsApp",true).Enabled then
            for i,v in pairs(getconnections(Player.PlayerGui:FindFirstChild("PlayButton",true).MouseButton1Click)) do
                v:Fire()
            end
        end
        if Player.PlayerGui:FindFirstChild("ChooseParent",true) then
            for i,v in pairs(getconnections(Player.PlayerGui:FindFirstChild("ChooseParent",true).MouseButton1Click)) do
                v:Fire()
            end
        end

        local events = { "MouseButton1Click", "MouseButton1Down", "Activated" }
        local robuxDialog = Player.PlayerGui.DialogApp.Dialog.RobuxProductDialog
        -- Check if the GUI element is visible
        local robuxDialogisVisible = robuxDialog.Visible
        repeat wait() until robuxDialogisVisible
        if robuxDialogisVisible then
            local robuxDialogButton = Player.PlayerGui.DialogApp.Dialog.RobuxProductDialog.Buttons.ButtonTemplate
            for i, v in next, events do firesignal(robuxDialogButton[v]) end
        end

        local dailyLogin = Player.PlayerGui.DailyLoginApp.Frame
        -- Check if the GUI element is visible
        local dailyLoginisVisible = dailyLogin.Visible
        repeat wait() until dailyLoginisVisible
        if dailyLoginisVisible then
            local dailyLoginButton = Player.PlayerGui.DailyLoginApp.Frame.Body.Buttons.ClaimButton
            for i, v in next, events do firesignal(dailyLoginButton[v]) end
        end

        if Workspace:FindFirstChild("ServerSidedMapSeats") then
            Workspace.ServerSidedMapSeats:Destroy()
        end
    end)
end)

local Table = {6152116144, 185655149}
local Set = setfpscap
local getupvalue = getupvalue or debug.getupvalue
local getconstant = getconstant or debug.getconstant
local getconstants = getconstants or debug.getconstants
local getgc = getgc or get_gc_objects or debug.getgc
local getreg = getreg or getregistry or debug.getregistry
local get_thread_context = get_thread_context or getthreadcontext or getidentity or syn.get_thread_identity
local get_thread_identity = get_thread_context
local set_thread_context = set_thread_context or setthreadcontext or setidentity or syn.set_thread_identity
local set_thread_identity = set_thread_context
local Remotes = {}
local Inventorys = ReplicatedStorage.ClientDB.Inventory
local InventoryGiftsSubDB = require(Inventorys.InventoryGiftsSubDB)

local Stores = {
    "FireDimension",
    "CoffeeShop",
    "Supermarket",
    "PizzaShop",
    "ToyShop",
    "Obbies",
    "Neighborhood",
    "CampingShop",
    "AutoShop",
    "Nursery",
    "Cave",
    "IceCream",
    "PotionShop",
    "SkyCastle",
    "Hospital",
    "HatShop",
    "PetShop",
    "School",
    "BabyShop",
    "HotSpringHouse",
    "SafetyHub",
    "DebugInterior",
    "VIP",
    "Salon",
    "SpleefMinigame",
    "SimonSaysMinigame",
    "WinterCastle"
}

local Baths = {
    "StylishShower",
    "CheapBathtub",
    "ModernShower",
    "Bathtub",
    "GingerbreadShower",
    "HotTub"
}

local FreeFoods = {
    "ham_vip",
    "water_vip",
    "chocolate_milk_vip",
    "popcorn_vip",
    "marshmallow_on_a_stick",
    "healing_apple",
    "teachers_apple"
}
local IgnoreFoods = {
    "pet_age_potion",
    "sandwich",
    "sandwich-default",
    "hotdog",
    "cheese",
    "apple",
    "pizza",
    "ham",
    "water",
    "raspberry_pie",
    "tea",
    "chocolate_milk",
    "donut",
    "ham_vip",
    "water_vip",
    "chocolate_milk_vip",
    "popcorn_vip",
    "marshmallow_on_a_stick",
    "healing_apple",
    "teachers_apple"
}

local Beds = {
    "FancyPetBed",
    "ModernPetBed",
    "CircularPetBed",
    "RectangularPetBed",
    "NormalCrib",
    "BasicCrib",
    "RoyalCrib",
    "PoshCrib",
}
local Tasks = {
    "hungry",
    "sleepy",
    "thirsty",
    "bored",
    "dirty",
    "camping",
    "sick",
    "school",
    "pool_party",
    "salon",
    "pizza_party"
}

local Buypets = {
    "halloween_2023_dire_stag",
    "halloween_2023_cuteacabra",
    "halloween_2023_ghost_dog",
    "halloween_2023_nightmare_owl",
    "halloween_2023_undead_elk",
    "halloween_2023_ghost",
    "random_pets_sept_2023_eel",
    "sky_ux_2023_grinmoire",
    "chiprac_2023_chipmunk",
    "chiprac_2023_raccoon"
}

local Eggs = {
    "urban_2023_egg",
    "royal_egg",
    "regular_pet_egg",
    "retired_egg",
    "cracked_egg"
}

local gifts = {
    "wings_2022_bucks_wing_chest",
    "legend_hat_2022_regal_chest",
    "legend_hat_2022_simple_chest",
    "massivegift",
    "biggift",
    "smallgift"
}


local Obbys = {
    "miniworld",
    "coastal_climb",
    "shipwreck_bay",
    "ancient_ruins",
    "lonelypeak",
    "pyramid",
    "tinyisles"
}

local RetardedBullShit = {
    "CashRegister",
    "GoldenCashRegister"
}

local PP = {}

local Part = Instance.new("Part")
Part.Name = "P"
Part.Size = Vector3.new(9e9,0,9e9)
Part.Anchored = true
Part.Transparency = 0.5
Part.CFrame = CFrame.new(5000,5000,5000)
Part.Parent = Workspace
ReplicatedStorage:WaitForChild("ClientModules"):WaitForChild("Core"):WaitForChild("InteriorsM"):WaitForChild("InteriorsM")
local Location = nil
for i, v in pairs(getgc()) do
    if type(v) == "function" then
        if getfenv(v).script == ReplicatedStorage.ClientModules.Core.InteriorsM.InteriorsM then
            if table.find(getconstants(v), "LocationAPI/SetLocation") then
                Location = v
                break
            end
        end
    end
end

local SetLocation = function(A, B, C)
    local O = get_thread_identity()
    set_thread_identity(2)
    Location(A, B, C)
    set_thread_identity(O)
end

local SetLocation = function(A, B, C)
    local O = get_thread_identity()
    set_thread_identity(2)
    Location(A, B, C)
    set_thread_identity(7)
end

local Home = function()
    if Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model") then
        return Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model").Name
    else
        return false
    end
end
local PersonHome = function()
    if Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model") then
        return Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model").Name
    else
        return false
    end
end
local Store = function()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if not string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name,"MainMap") and not
            string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name,"Neighborhood")
        then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

local MainMap = function()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name,"MainMap") then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

local Neighborhood = function()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name,"Neighborhood") then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

local GoToStore = function(Name, spawn_cframe)
    if Store() == Name then
        return true
    end

    SetLocation(Name, "MainDoor", {})

    while Store() ~= Name do
        wait()
    end
    if Home() then
        return true
    end
    return false
end

local GoToHome = function()
    SetLocation("housing", "MainDoor", {["house_owner"] = Player})
    while not Home() do
        wait()

    end
    if Home() then

        return true
    end

    return false

end

local GoToNeighborhood = function()
    SetLocation("Neighborhood", "MainDoor", {})
    while not Neighborhood() do
        wait()

    end
    if Neighborhood() then

        return true
    end
    return false
end

local GoToMainMap = function()
    SetLocation("MainMap", "Neighborhood/MainDoor", {})
    while not MainMap() do

        wait()
    end
    if MainMap() then

        return true
    end
    return false
end

local GoToPersonsHouse = function(Name)
    SetLocation("housing","MainDoor",{["house_owner"] = Players[Name]})
    while not PersonHome() do

        wait()
    end
    if PersonHome() then

        return true
    end
    return false
end
local Bed = function(Name)
    GoToHome()
    Player.Character.HumanoidRootPart.CFrame = Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA('Model'):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6)) 
    for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
        if v:FindFirstChildWhichIsA("Model") and (table.find(Beds, v:FindFirstChildWhichIsA("Model").Name)) then
            local String = string.split(v.Name,"/f")[2]
            print(String)
            return "f".. String
        end
    end
end
local Cash = function()
    for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
        if v:FindFirstChildWhichIsA("Model") and (table.find(RetardedBullShit, v:FindFirstChildWhichIsA("Model").Name)) then
            local String = string.split(v.Name,"/f")[2]
            print(String)
            return "f".. String
        end
    end
end

local Showers = function(Name)
    GoToHome()
    Player.Character.HumanoidRootPart.CFrame = Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA('Model'):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6)) 
    for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
        if v:FindFirstChildWhichIsA("Model") and (table.find(Baths, v:FindFirstChildWhichIsA("Model").Name)) then
            local String = string.split(v.Name,"true/")[2]
            print(String)
            return String
        end
    end
end

local NoCliper = function()
    for i,v in next, Player.Character:GetChildren() do
        if v:IsA("BasePart") then
            v.CanCollide = false
            v.Velocity = Vector3.new(0,0,0)
        end
    end
    return Player.Character
end

local Neons = {}
local AilmentFurnitues = {}
local Neon = {}
local Spec = {}
local Key = {}
local Key3 = {}
local PetID
local Pet
local PetsShow = {}
local List = {}
local JoJo = {}
local GGO = {}
local Fgpet ={}
local Fgpetlist = {}
for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
    local key = tostring(v["id"]) .. " - " .. tostring(v["properties"]["age"]) .. " years old"
    if not table.find(List, Key) and v.kind ~= "practice_dog" then
        PetsShow[key] = v
        table.insert(List, key)
        table.sort(List)
    end
end

--Lists only fullgrown pets
for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
    local key3 = tostring(v["id"]) .. " - " .. tostring(v["properties"]["age"]) .. " years old"
    if not table.find(Fgpetlist, Key3) and v.properties.age == 6 and v.kind ~= "practice_dog" then
        Fgpet[key3] = v
        table.insert(Fgpetlist, key3)
        table.sort(Fgpetlist)
    end
end

--Scans inventory and groups all pets into Species NOT individual pet count
for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
    if not table.find(JoJo,tostring(v["id"])) and v.kind ~= "practice_dog" then
        local Key2 = tostring(v["id"])
        GGO[Key2] = v
        table.insert(JoJo,Key2)
        table.sort(JoJo)
    end
end


UserInputService.WindowFocusReleased:Connect(function()
    if Render then
        RunService:Set3dRenderingEnabled(false)
        if table.find(Table, game.PlaceId) then
            Set(30)
        else
            Set(15)
        end
    end
end)
UserInputService.WindowFocused:Connect(function()
    if Render then
        RunService:Set3dRenderingEnabled(true)
        Set(100)
    end
end)

for i, v in pairs(getupvalue(require(ReplicatedStorage.Fsys).load("RouterClient").init, 4)) do
    v.Name = i
end
pcall(function()
    ReplicatedStorage.API:FindFirstChild("DailyLoginAPI/ClaimDailyReward"):InvokeServer()
end)

local a = {
    ["sleepy"] = function(c)
        spawn(function()
            while wait(3) and c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments and PetFarm do
                if c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments then
                    ReplicatedStorage:FindFirstChild('HousingAPI/ActivateFurniture',true):InvokeServer(Player, Bed(), 'UseBlock', {['cframe'] = Player.Character.HumanoidRootPart.CFrame}, C)
                end
            end
        end)
        repeat wait(0) until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ['dirty'] = function(c)
        spawn(function()
            while wait(3) and c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments and PetFarm do
                if c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments then
                    ReplicatedStorage:FindFirstChild("HousingAPI/ActivateFurniture",true):InvokeServer(game:GetService("Players").LocalPlayer, Showers(), 'UseBlock', {['cframe'] = Player.Character.HumanoidRootPart.CFrame}, C)
                end
            end
        end)
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
        end,
    ["hungry"] = function(c)
        ReplicatedStorage:FindFirstChild("ShopAPI/BuyItem",true):InvokeServer('food', 'pizza', {})
        ReplicatedStorage:FindFirstChild("ToolAPI/BakeItem",true):InvokeServer()
        while Player.Character:FindFirstChild('PizzaTool') do wait() end
        while not Player.Character:FindFirstChild('PizzaTool') do wait() end
        local Foods = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
        local Pizza
        for i,v in pairs(Foods) do
            if v.id == 'pizza' then
                Pizza = v.unique
                break
            end
        end
        if not Pizza then
            return
        end
        wait(2)
        ReplicatedStorage:FindFirstChild("PetObjectAPI/CreatePetObject",true):InvokeServer("__Enum_PetObjectCreatorType_2", {["unique_id"] = Pizza})
        ReplicatedStorage:FindFirstChild("PetAPI/ConsumeFoodItem",true):FireServer(Pizza)
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["thirsty"] = function(c)
        ReplicatedStorage:FindFirstChild("ShopAPI/BuyItem",true):InvokeServer('food', 'tea', {})
        local Foods = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
        local Tea
        for i, v in pairs(Foods) do
            if v.id == 'tea' then
                Tea = v.unique
                break
            end
        end
        if not Tea then
            return
        end
        wait(2)
        ReplicatedStorage:FindFirstChild("PetObjectAPI/CreatePetObject",true):InvokeServer("__Enum_PetObjectCreatorType_2", {["unique_id"] = Tea})
        ReplicatedStorage:FindFirstChild("PetAPI/ConsumeFoodItem",true):FireServer(Tea)
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments    
    end,
    ["sick"] = function(c)
        repeat wait(0) ReplicatedStorage:FindFirstChild("MonitorAPI/HealWithDoctor",true):FireServer() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["adoption_party"] = function(c)
        GoToStore('Nursery')
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["school"] = function(c)
        GoToStore('School')
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["pizza_party"] = function(c)
        GoToStore("PizzaShop")
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["salon"] = function(c)
        GoToStore("Salon")
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["pool_party"] = function(c)
        GoToMainMap()
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.StaticMap.Pool.PoolOrigin.Position + Vector3.new(0, 5, 0))
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["camping"] = function(c)
        GoToMainMap()
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.StaticMap.Campsite.CampsiteOrigin.Position + Vector3.new(0, 5, 0))
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ['bored'] = function(c)
        GoToMainMap()
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.StaticMap.Park.AilmentTarget.Position + Vector3.new(0, 5, 0))
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end
}
--[[
FINISHED BUILDING SCRIPT´S ENGINE
]]--


--[[
START LOADING GUI DEPENDENCIES
]]--
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Poll0none/Ray-Custom/main/Custom%20Ray.lua'))()
    local Window = Rayfield:CreateWindow({
    Name = "🔮 Adopt Me! Premium Script 🔮 By: Poll0none",
    LoadingTitle = "🔮 Adopt Me! Premium Script 🔮 By: Poll0none",
    LoadingSubtitle = "Credits: Dekudimz for being #1",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "Big Hub"
    },

    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
        Title = "🔮 Adopt Me! Premium Script 🔮 KeySystem",
        Subtitle = "By: Poll0none",
        Note = "Join the discord (discord.gg/sirius)",
        FileName = "SiriusKey",
        SaveKey = true,
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = "Hello"
    }
    })
--[[
END LOADING GUI DEPENDENCIES
]]--




--[[PETHUNTLOOP FUNCTIONS
function PetHuntListAll()
    for i, v in pairs(game:GetService("Workspace").Pets:GetChildren()) do
        OrionLib:MakeNotification({
            Name = "This server has a: ",
            Content = v.Name,
            Image = "rbxassetid://4483345998",
            Time = 2
        })
        wait(3)
    end
end

function PetHuntPrintString()
    spawn (function()
        -- create an empty table to store the names
        local pets = {}
        table.insert(pets, "---------------------------------------")
        table.insert(pets, "🔽 IN CURRENT LOCATION 🔽")
        table.insert(pets, "---------------------------------------")
        -- get the pets' names
        local playersArray = game:GetService("Workspace").Pets:GetChildren()
        for i, pet in ipairs(playersArray) do
            table.insert(pets, pet.Name)
        end

        -- join all the names together into a string
        local petList = table.concat(pets, "\n")

        -- pint all pets into a Notification
        OrionLib:MakeNotification({
            Name = "📋LISTING PETS📋",
            Content = petList,
            Image = "rbxassetid://4483345998",
            Time = 15
        })
    end)
end

function PetHuntLoopSearch(selectedPet)
    spawn (function()
        while not Neighborhood() do
            GoToNeighborhood()
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-5990.49268, 4023.15088, -4000.80444, -0.987853885, -0.0416535847, -0.14969869, 2.34350654e-08, 0.963400602, -0.2680659, 0.155385703, -0.264809936, -0.9516990)  
            wait()
        end
        if Neighborhood() then 
            wait(2)
            local pets = {}
            table.insert(pets, "--------------------------------------------")
            table.insert(pets, "🔽    PETS IN Neighborhood    🔽")
            table.insert(pets, "--------------------------------------------")
            -- get the pets' names
            local playersArray = game:GetService("Workspace").Pets:GetChildren()
            for i, pet in ipairs(playersArray) do
                table.insert(pets, pet.Name)
            end

            -- join all the names together into a string
            local petListNeighborhood = table.concat(pets, "\n")

            -- Look for pets in the area and print if found
            if selectedPet and string.find(petListNeighborhood, selectedPet) then
                OrionLib:MakeNotification({
                    Name = "✅     FOUND WANTED PET     ✅",
                    Content = selectedPet,
                    Image = "rbxassetid://4483345998",
                    Time = 15
                })
            else
                while not MainMap() do
                    GoToMainMap()
                    Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA("Model"):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6))
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-247.35408, 17.3820152, -1518.88879)  
                    wait()
                end
                if MainMap() then
                    wait(2)
                    local pets = {}
                    table.insert(pets, "--------------------------------------------")
                    table.insert(pets, "🔽        PETS IN Main Map        🔽")
                    table.insert(pets, "--------------------------------------------")
                    -- get the pets' names
                    local playersArray = game:GetService("Workspace").Pets:GetChildren()
                    for i, pet in ipairs(playersArray) do
                        table.insert(pets, pet.Name)
                    end
        
                    -- join all the names together into a string
                    petListMainMap = table.concat(pets, "\n")

                    if selectedPet and string.find(petListMainMap, selectedPet) then
                        OrionLib:MakeNotification({
                            Name = "✅     FOUND WANTED PET     ✅",
                            Content = selectedPet,
                            Image = "rbxassetid://4483345998",
                            Time = 15
                        })
                    else
                    SetLocation("Cave", "MainDoor", {})
                        Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA('Model').Doors.MainDoor.WorkingParts.TouchToEnter.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))    
                        Player.Character.HumanoidRootPart.CFrame = CFrame.new(1907.20605, 4007.0249, -10136.4375, 0.986310959, 0.0369677879, 0.160699427, 1.95991046e-08, 0.974546075, -0.224187627, -0.164896742, 0.221118718, 0.96120524)  
                        wait(3)
                        local pets = {}
                            table.insert(pets, "--------------------------------------------")
                            table.insert(pets, "🔽      PETS IN NEON Cave       🔽")
                            table.insert(pets, "--------------------------------------------")
                            -- get the pets' names
                            local playersArray = game:GetService("Workspace").Pets:GetChildren()
                            for i, pet in ipairs(playersArray) do
                                table.insert(pets, pet.Name)
                            end

                            -- join all the names together into a string
                            petListCave = table.concat(pets, "\n")

                            -- pint all pets into a Notification
                            if selectedPet and string.find(petListCave, selectedPet) then
                                OrionLib:MakeNotification({
                                    Name = "✅     FOUND WANTED PET     ✅",
                                    Content = selectedPet,
                                    Image = "rbxassetid://4483345998",
                                    Time = 15
                                })
                            else
                            print(selectedPet)
                            GoToHome()
                            Player.Character.HumanoidRootPart.CFrame = Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA('Model'):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6))
                            wait(5)


                            --SERVERHOP NEEDS TO BE SAVED AND LOADED ON EACH ganeload event

                            ServerHop()

                            --TESTING SERVERHOP, JUST REMOVE IF YOU DONT WANT TO SERVER HOP
                        end
                    end
                end
            end
        end
    end)
end

function PetHuntLoop(selectedPet)
    spawn (function()

        if selectedPet then
            local isittrue = true
            if isittrue then
                print("You selected: ", selectedPet)
            end
        else
            print("You didn´t select any pet")
        end

        while not Neighborhood() do
            GoToNeighborhood()
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-5990.49268, 4023.15088, -4000.80444, -0.987853885, -0.0416535847, -0.14969869, 2.34350654e-08, 0.963400602, -0.2680659, 0.155385703, -0.264809936, -0.9516990)  
            wait()
        end
        if Neighborhood() then 
            wait(2)
            local pets = {}
            table.insert(pets, "--------------------------------------------")
            table.insert(pets, "🔽    PETS IN Neighborhood    🔽")
            table.insert(pets, "--------------------------------------------")
            -- get the pets' names
            local playersArray = game:GetService("Workspace").Pets:GetChildren()
            for i, pet in ipairs(playersArray) do
                table.insert(pets, pet.Name)
            end

            -- join all the names together into a string
            local petListNeighborhood = table.concat(pets, "\n")
                -- pint all pets into a Notification
            if selectedPet and string.find(petListNeighborhood, selectedPet) then

                Rayfield:Notify({
                Title = "📋FOUND YOUR PET📋",
                Content = selectedPet,
                Duration = 9.5,
                Image = 4483362458,
                Actions = { -- Notification Buttons
                    Ignore = {
                        Name = "Okay!",
                        Callback = function()
                        print("The user tapped Okay!")
                    end
                },
                },
                })
            else
                Rayfield:Notify({
                Title = "📋FOUND YOUR PET📋",
                Content = petListNeighborhood,
                Duration = 9.5,
                Image = 4483362458,
                Actions = { -- Notification Buttons
                    Ignore = {
                        Name = "Okay!",
                        Callback = function()
                        print("The user tapped Okay!")
                    end
                },
                },
                })
                while not MainMap() do
                    GoToMainMap()
                    Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA("Model"):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6))
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-247.35408, 17.3820152, -1518.88879)  
                    wait()
                end
                if MainMap() then
                    wait(2)
                    local pets = {}
                    table.insert(pets, "--------------------------------------------")
                    table.insert(pets, "🔽        PETS IN Main Map        🔽")
                    table.insert(pets, "--------------------------------------------")
                    -- get the pets' names
                    local playersArray = game:GetService("Workspace").Pets:GetChildren()
                    for i, pet in ipairs(playersArray) do
                        table.insert(pets, pet.Name)
                    end
        
                    -- join all the names together into a string
                    petListMainMap = table.concat(pets, "\n")
        
                    -- pint all pets into a Notification
                    OrionLib:MakeNotification({
                        Name = "📋LISTING PETS📋",
                        Content = petListMainMap,
                        Image = "rbxassetid://4483345998",
                        Time = 15
                    })
                    SetLocation("Cave", "MainDoor", {})
                    Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA('Model').Doors.MainDoor.WorkingParts.TouchToEnter.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))    
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(1907.20605, 4007.0249, -10136.4375, 0.986310959, 0.0369677879, 0.160699427, 1.95991046e-08, 0.974546075, -0.224187627, -0.164896742, 0.221118718, 0.96120524)  
                    wait(3)
                    local pets = {}
                        table.insert(pets, "--------------------------------------------")
                        table.insert(pets, "🔽      PETS IN NEON Cave       🔽")
                        table.insert(pets, "--------------------------------------------")
                        -- get the pets' names
                        local playersArray = game:GetService("Workspace").Pets:GetChildren()
                        for i, pet in ipairs(playersArray) do
                            table.insert(pets, pet.Name)
                        end

                        -- join all the names together into a string
                        petListCave = table.concat(pets, "\n")

                        -- pint all pets into a Notification
                        OrionLib:MakeNotification({
                            Name = "📋LISTING PETS📋",
                            Content = petListCave,
                            Image = "rbxassetid://4483345998",
                            Time = 15
                        })
                        GoToHome()
                        Player.Character.HumanoidRootPart.CFrame = Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA('Model'):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6))
            
                end
            end
        end
    end)
end

function FoundPetHunt(trigger)
    print("I was triggered by FoundPetHunt")
end
]]--
--Summon Tabs and sections in GUI
if development == true then
    
    local developmentTab = Window:CreateTab("⚠️  DEVELOPMENT") 
    local Section = developmentTab:CreateSection("⚠️  TOOLS  ⚠️")

    local Button = developmentTab:CreateButton({
        Name = "TurtleSpy",
        Callback = function(Value)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Poll0none/Tools/main/TurtleSpy.lua"))()
        end,
    })
    local Button = developmentTab:CreateButton({
        Name = "DarkDex",
        Callback = function(Value)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Poll0none/Tools/main/DarkDex.lua"))()
        end,
    })
    local Button = developmentTab:CreateButton({
        Name = "Gui Path-Finder",
        Callback = function(Value)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Poll0none/Tools/main/GuiPathFinder.lua"))()
        end,
    })
    
    local Section = developmentTab:CreateSection("🧭  TP DEBUG  🧭")

    local Input = developmentTab:CreateInput({
        Name = "GoToStore",
        PlaceholderText = "Store´s Name",
        RemoveTextAfterFocusLost = false,
        Callback = function(String)
            getgenv().devGoToStore = String
        end,
    })
    local Button = developmentTab:CreateButton({
        Name = "Execute GoToStore",
        Callback = function(Value)
            if devGoToStore then
                GoToStore(devGoToStore)
                Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA('Model').Doors.MainDoor.WorkingParts.TouchToEnter.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))    
            end
        end,
    })

    local Input = developmentTab:CreateInput({
        Name = "GoToStore Passive",
        PlaceholderText = "PassiveAPI Store´s Name",
        RemoveTextAfterFocusLost = false,
        Callback = function(String)
            getgenv().devGoToStorePassive = String
        end,
    })
    local Input = developmentTab:CreateInput({
        Name = "GoToStore Passive CFrame",
        PlaceholderText = "CFrame",
        RemoveTextAfterFocusLost = false,
        Callback = function(String)
            getgenv().devGoToStorePassiveCFrame = String
        end,
    })
    local Button = developmentTab:CreateButton({
        Name = "Execute GoToStore Passive",
        Callback = function(Value)
            if devGoToStorePassive then
                GoToStore(devGoToStorePassive, devGoToStorePassiveCFrame)
            end
        end,
    })

    local Section = developmentTab:CreateSection("🧳  PRINT INVENTORY  🧳")

    local devInventory = {
        "pets",
        "pets FG",
        "transport",
        "strollers",
        "toys",
        "gifts",
        "pet_accessories",
        "food",
        "potions",
    }

    local Dropdown = developmentTab:CreateDropdown({
        Name = "Choose Inventory to Print",
        Options = devInventory,
        CurrentOption = "",
        Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            local chosenOption = Value

            local playerInventory = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory
            local playerInventoryOption = playerInventory[chosenOption]

            if chosenOption == "pets FG"  then
                for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                    if v["properties"]["age"] == 6 and v.kind ~= "practice_dog" then
                        print(v.kind)
                        wait(0.2)
                    end 
                end
            elseif chosenOption == "potions" then
                for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food) do
                    local shouldIgnore = false  -- Flag to determine if the item should be ignored

                    for _, pattern in ipairs(IgnoreFoods) do
                        if v["id"]:find(pattern) then
                            shouldIgnore = true
                            break  -- Exit the loop if a pattern is found
                        end
                    end

                    if not shouldIgnore then
                        print(v.id)
                        wait(0.2)
                    end
                end
            else
                for i, v in pairs(playerInventoryOption) do
                    print(v.id)
                end
            end
        end,
    })

    local Input = developmentTab:CreateInput({
        Name = "Print Gui Path TextLabel",
        PlaceholderText = "CFrame",
        RemoveTextAfterFocusLost = false,
        Callback = function(String)
            local dialog = String

            -- Assuming you want to access the TextLabel.LocalizedText property
            local textLabel = dialog.TextLabel
            local localizedText = print(textLabel.LocalizedText)

            -- Now, you can access the localizedText as needed
            print(localizedText)
        end,
    })

    local Button = developmentTab:CreateButton({
        Name = "Print HeaderDialog(trade, minigame...) Info",
        Callback = function(Value)
            --PRINT INFO FROM DIALOGHEADER 
            NormalDialogGUI = game:GetService("Players").LocalPlayer.PlayerGui.DialogApp.Dialog.NormalDialog.Info.TextLabel.LocalizedText

            print(NormalDialogGUI)
            if string.find(NormalDialogGUI, "Avanza o Cae!") then
                print("Found TileSkip mini game!")
            end

        end,
    })

end

local eventTab = Window:CreateTab("🎃  Events")
local Section = eventTab:CreateSection("🎃  EVENT RELATED OPTIONS  🎃")

local GoToMiniGame = eventTab:CreateButton({
    Name = "Go-To Mini-Game TileSkip",
    Callback = function(Value)
        GoToStore("TileSkipMinigameLobby")
        wait(2)
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.Interiors.TileSkipMinigameLobby.JoinZone.EmitterPart.CFrame.Position)
    end,
})  

local GoToEventShop = eventTab:CreateButton({
    Name = "Go to Halloween Shop",
    Callback = function(Value)
        GoToStore("Halloween2023Shop")
        wait(2)
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.Interiors.Halloween2023Shop.Event.BuyCurrency.HumanoidRootPart.CFrame.Position)
    end,
})
local halloweenMiniGame = eventTab:CreateToggle({
    Name = "Auto TileSkip Mini-Game",
    CurrentValue = false,
    Flag = "MiniGame", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        getgenv().miniGames = State

        local function assetsCheckGuiVisibility(Gui, action)
            local guiElement = Gui
        
            if miniGames == true then
                -- Check if the GUI element is visible
                local isVisible = guiElement.Visible
        
                if isVisible then
        
                    -- Perform actions based on the action parameter
                    if action == "MiniGame starts" then
                        --Read dialog Info
                        NormalDialogGUI = game:GetService("Players").LocalPlayer.PlayerGui.DialogApp.Dialog.NormalDialog.Info.TextLabel.LocalizedText
                        --Use Dialog Info to determine what mini game is starting
                        if string.find(NormalDialogGUI, "Avanza o Cae!") then
                            getgenv().ToggleAutoFarm = false
                            spawn_cframe = CFrame.new(9999.80469, 1991.7373, 9914.625, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            GoToStore("TileSkipMinigameLobby")
                            wait(2)
                            Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.Interiors.TileSkipMinigameLobby.JoinZone.EmitterPart.CFrame.Position)
                            wait(70)
                            ReplicatedStorage.API["MinigameAPI/MessageServer"]:FireServer("TileSkipMinigameJoinZone","reached_goal")
                        end
                        
                    elseif action == "MiniGame ends" then
                        local Button = Player.PlayerGui.MinigameRewardsApp.Body.Button
                        local events = { "MouseButton1Click", "MouseButton1Down", "Activated" }
                        for i, v in ipairs(events) do
                            firesignal(Button[v])
                        end
                        GoToHome()
                        wait(5)
                        getgenv().ToggleAutoFarm = true
                    end
                else
                    wait(1)
                end
            end
        end

        while miniGames do
            wait(5)
            assetsCheckGuiVisibility(Player.PlayerGui.DialogApp.Dialog, "MiniGame starts") 
            wait(5)
            assetsCheckGuiVisibility(Player.PlayerGui.MinigameRewardsApp.Body, "MiniGame ends")
        end
    end,
})



local teleportTab = Window:CreateTab("🧭  Teleports")
local Section = teleportTab:CreateSection("🧭  HANDY TP LOCATIONS  🧭")
local Dropdown = teleportTab:CreateDropdown({
Name = "Choose location to TP",
Options = Stores,
CurrentOption = "Cave",
Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
    GoToStore(Value)
    Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA('Model').Doors.MainDoor.WorkingParts.TouchToEnter.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))    
end,
})

local Button = teleportTab:CreateButton({
Name = "TP Back home",
Callback = function(Value)
    while not Home() do
        GoToHome()
        Player.Character.HumanoidRootPart.CFrame = Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA('Model'):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6))             
    end
    if GoToHome() then end
end,
})

local Button = teleportTab:CreateButton({
Name = "TP to Main Map",
Callback = function(Value)
    while not MainMap() do
        GoToMainMap()
        Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA("Model"):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6))
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(-247.35408, 17.3820152, -1518.88879)  
        wait()
    end
    if MainMap() then end
end,
})

local Button = teleportTab:CreateButton({
    Name = "TP to Neighborhood",
    Callback = function(Value)
    while not Neighborhood() do
        GoToNeighborhood()
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(-5990.49268, 4023.15088, -4000.80444, -0.987853885, -0.0416535847, -0.14969869, 2.34350654e-08, 0.963400602, -0.2680659, 0.155385703, -0.264809936, -0.9516990)  
        wait()
    end
    if Neighborhood() then end
end,
})

local Button = teleportTab:CreateButton({
    Name = "TP to Cave",
    Callback = function(Value)
        SetLocation("Cave", "MainDoor", {})
        Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA('Model').Doors.MainDoor.WorkingParts.TouchToEnter.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))    
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(1907.20605, 4007.0249, -10136.4375, 0.986310959, 0.0369677879, 0.160699427, 1.95991046e-08, 0.974546075, -0.224187627, -0.164896742, 0.221118718, 0.96120524)  
end,
})

local Section = teleportTab:CreateSection("🔎  LOOP ALL HOUSES UNTIL YOU FIND...  🔎")

local Input = teleportTab:CreateInput({
Name = "This users house ",
PlaceholderText = "Input Placeholder",
RemoveTextAfterFocusLost = false,
Callback = function(String)
    for i,v in pairs(Players:GetPlayers()) do
        local allLetters = string.match(String,"%a+")
        local amountOfLetters = #allLetters
        if amountOfLetters >= 3 or v.Name == (String) or v.Name:find(String) or v.DisplayName == String or v.DisplayName:find(String) then
            
            GoToPersonsHouse(v.Name)
        
            Player.Character.HumanoidRootPart.CFrame = Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA('Model'):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6)) 
            
        end
        wait(2)
        if stopTPLoop then
            stopTPLoop = false
            Button:Set("Stop Loop")
            break
        else end
    end
end,
})

local Button = teleportTab:CreateButton({
Name = "Stay in this house",
Callback = function(Value)
    Value = true
    stopTPLoop = Value
    Input:Destroy()
-- The function that takes place when the button is pressed
end,
})
local Paragraph = teleportTab:CreateParagraph({Title = "🔴How does this feature work❔🔴", Content = "Can find inputted display name, also by Roblox user name"})

local petHuntTab = Window:CreateTab("🔎  PetHunt")

local Button = petHuntTab:CreateButton({
Name = "Loop map & print pets",
Callback = function(Value)
    PetHuntLoop()
end,
})

local autoTradeTab = Window:CreateTab("💎  AutoTrade")

local Section = autoTradeTab:CreateSection("💎  AUTO TRADE OPTIONS  💎")

local Toggle = autoTradeTab:CreateToggle({
Name = "Auto Accept Trades",
CurrentValue = false,
Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
    Trade = Value
    spawn(function()
        while Trade do wait()
            pcall(function()
                for i,v in pairs(Players:GetPlayers()) do
                    if v ~= Player then
                        wait(1.5)
                        ReplicatedStorage.API:FindFirstChild("TradeAPI/AcceptOrDeclineTradeRequest"):InvokeServer(v,true)
                    end 
                end 
                ReplicatedStorage.API:FindFirstChild("TradeAPI/AcceptNegotiation"):FireServer()
                ReplicatedStorage.API:FindFirstChild("TradeAPI/ConfirmTrade"):FireServer()
                for i,v in pairs(getconnections(Player.PlayerGui.DialogApp.Dialog.NormalDialog.Buttons.ButtonTemplate.MouseButton1Click)) do
                    v.Function()
                    v:Fire()
                end 
            end)
        end 
    end)
end,
})

local Section = autoTradeTab:CreateSection("♻️  AUTO TRANSFER TO MAIN ACCOUNT  ♻️")

local Dropdown = autoTradeTab:CreateDropdown({
Name = "Select What to Transfer",
Options = {"Everything-1fg", "Grownpets-1fg", "GrownPets", "Pets", "Eggs", "Pots+Pet-lures", "Vehicles", "Strollers", "Gifts", "Toys", "Clothes"},
CurrentOption = "",
Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Name)
        getgenv().autoTradeOffer = Name
end,
})

local Input = autoTradeTab:CreateInput({
Name = "AutoTransfer To: ",
PlaceholderText = "Username(Respect Capital letters)",
RemoveTextAfterFocusLost = false,
Callback = function(String)
    getgenv().autoTradeTo = ""
    for i,v in pairs(Players:GetPlayers()) do
        if v.Name == (String) or v.Name:find(String) or v.DisplayName == String or v.DisplayName:find(String) then
        autoTradeTo = v
        end 
    end
end,
})

local Toggle = autoTradeTab:CreateToggle({
Name = "Execute AutoTransfer Task",
CurrentValue = false,
Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(State)
        autoTradeExecute = State
        spawn(function()
            while autoTradeExecute and wait(1) do
                pcall(function()
                    if not Player.PlayerGui.TradeApp.Frame.Visible then
                        ReplicatedStorage.API:FindFirstChild("TradeAPI/SendTradeRequest"):FireServer(autoTradeTo)
                        wait(5)
                    end 
                    if Player.PlayerGui.TradeApp.Frame.Visible then
                        if autoTradeOffer == "Grownpets-1fg" then
                            local Key3 = {}
                            local Fgpet ={}
                            local Fgpetlist = {}
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                local key3 = tostring(v["id"]) .. " - " .. tostring(v["properties"]["age"]) .. " years old"
                                if not table.find(Fgpetlist, Key3) and v.properties.age == 6 and v.kind ~= "practice_dog" then
                                    Fgpet[key3] = v
                                    table.insert(Fgpetlist, key3)
                                    table.sort(Fgpetlist)
                                end
                            end
                            -- Get the first value from the table
                            local firstValue = Fgpetlist[1]
                            -- Extract the first word
                            local firstWord = string.match(firstValue, "^(%S+)")
                            print(Fgpetlist[1])
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                if v["properties"]["age"] == 6 and v["id"] ~= firstWord then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end 
                            end
                        end 
                        if autoTradeOffer == "GrownPets" then
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                if v["properties"]["age"] == 6 then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end 
                            end
                        end 
                        if autoTradeOffer == "Pets" then
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                if not v["id"]:find("egg") then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end
                            end
                        end 
                        if autoTradeOffer == "Eggs" then
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                if v["id"]:find("egg") then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end 
                            end
                        end 
                        if autoTradeOffer == "Pets+Eggs" then
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                if v["id"]:find("egg") then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end 
                            end
                        end 
                        if autoTradeOffer == "Vehicles" then
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.transport) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end 
                        end 
                        if autoTradeOffer == "Strollers" then
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.strollers) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end 
                        end 
                        if autoTradeOffer == "Toys" then
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.toys) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end 
                        end 
                        if autoTradeOffer == "Gifts" then
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.gifts) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end 
                        end
                        if autoTradeOffer == "Clothes" then
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pet_accessories) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end 
                        end
                        if autoTradeOffer == "Pots+Pet-lures" then                   
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food) do
                                local shouldIgnore = false  -- Flag to determine if the item should be ignored

                                for _, pattern in ipairs(IgnoreFoods) do
                                    if v["id"]:find(pattern) then
                                        shouldIgnore = true
                                        break  -- Exit the loop if a pattern is found
                                    end
                                end

                                if not shouldIgnore then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end
                            end
                        end
                        if autoTradeOffer == "Everything-1fg" then
                            --gifts
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.gifts) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end 
                            --toys
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.toys) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end 
                            --vehicles
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.transport) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end
                            --eggs
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                if v["id"]:find("egg") then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end 
                            end
                            --Clothes
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pet_accessories) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end
                            --Strollers
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.strollers) do
                                ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                wait(0.2)
                            end 
                            --Pots + Pet lures
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food) do
                                local shouldIgnore = false  -- Flag to determine if the item should be ignored

                                for _, pattern in ipairs(IgnoreFoods) do
                                    if v["id"]:find(pattern) then
                                        shouldIgnore = true
                                        break  -- Exit the loop if a pattern is found
                                    end
                                end

                                if not shouldIgnore then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end
                            end
                            --All pets -1 fullgrown
                            local Key3 = {}
                            local Fgpet ={}
                            local Fgpetlist = {}
                            for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                local key3 = tostring(v["id"]) .. " - " .. tostring(v["properties"]["age"]) .. " years old"
                                if not table.find(Fgpetlist, Key3) and v.properties.age == 6 and v.kind ~= "practice_dog" then
                                    Fgpet[key3] = v
                                    table.insert(Fgpetlist, key3)
                                    table.sort(Fgpetlist)
                                end
                            end
                            -- Get the first value from the table
                            local firstValue = Fgpetlist[1]
                            -- Extract the first word
                            local firstWord = string.match(firstValue, "^(%S+)")
                            print(Fgpetlist[1])
                            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                                if v["id"] ~= firstWord then
                                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                                    wait(0.2)
                                end 
                            end
                        end 
                        ReplicatedStorage.API:FindFirstChild("TradeAPI/AcceptNegotiation"):FireServer()
                        wait(5)
                        ReplicatedStorage.API:FindFirstChild("TradeAPI/ConfirmTrade"):FireServer()
                        for i,v in pairs(getconnections(Player.PlayerGui.DialogApp.Dialog.NormalDialog.Buttons.ButtonTemplate.MouseButton1Click)) do
                            v.Function()
                            v:Fire()
                        end 
                    end 
                end)
            end 
        end)
    end,
})


local Section = autoTradeTab:CreateSection("💰  MONEY TRANSFER OPTIONS  💰")
local Toggle = autoTradeTab:CreateToggle({
    Name = "Money Transfer until 0 or Toggled (HotDogs & Lemonades)",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        local brake = "\n"
        Rayfield:Notify({
            Title = "🔴 MONEY TRANSFER INFO 🔴",
            Content = brake.."Game limited to 3 transfers every 90s",
            Duration = 6.5,
            Image = "",
            Actions = { -- Notification Buttons
                Ignore = {
                    Name = "Close",
                    Callback = function()

                end
            },
            },
            })

        getgenv().autoTradeBuy = State
        spawn(function()
            while wait() and autoTradeBuy do 
                pcall(function()
                    ReplicatedStorage.API:FindFirstChild("RefreshmentStandAPI/BuyRefreshment"):InvokeServer("hotdog_stand",autoTradeTo)
                    ReplicatedStorage.API:FindFirstChild("RefreshmentStandAPI/BuyRefreshment"):InvokeServer("lemonade_stand",autoTradeTo)
                    for i,v in pairs(getconnections(Player.PlayerGui.DialogApp.Dialog.NormalDialog.Buttons.ButtonTemplate.MouseButton1Click)) do
                        v.Function()
                        v:Fire()
                        wait(30)
                    end 
                end)
            end 
        end)
    end,
})


local Input = autoTradeTab:CreateInput({
    Name = "Amount to Transfer(HotDogs 50$)",
    PlaceholderText = "💰BUCKS💰",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        Text = Text - Text % 50
        local moneyTransferTime = Text / 50 * 30 -29.9
        local moneyTransferIterations = Text / 50

        local first = "This transaction will take"
        local brake = "\n"
        local seconds = " Seconds"
        local total = "To transfer "..Text.." Bucks"

        Rayfield:Notify({
        Title = "🔴 MONEY TRANSFER INFO 🔴",
        Content = first..brake..moneyTransferTime..seconds..brake..total,
        Duration = 6.5,
        Image = "",
        Actions = { -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                print("The user tapped Okay!")
            end
        },
        },
        })

        spawn(function()
            for i = moneyTransferIterations, 1, -1 do
                pcall(function()
                    ReplicatedStorage.API:FindFirstChild("RefreshmentStandAPI/BuyRefreshment"):InvokeServer("hotdog_stand",autoTradeTo)
                    for i,v in pairs(getconnections(Player.PlayerGui.DialogApp.Dialog.NormalDialog.Buttons.ButtonTemplate.MouseButton1Click)) do
                        v.Function()
                        v:Fire()
                    end 
                end)
                wait(30)
            end
        end)
    end,
})

local Input = autoTradeTab:CreateInput({
    Name = "Amount to Transfer(Lemonades 20$)",
    PlaceholderText = "💰BUCKS💰",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        Text = Text - Text % 20
        print(text)
        local moneyTransferTime = Text / 20 * 30 -29.9
        local moneyTransferIterations = Text / 20

        local first = "This transaction will take"
        local brake = "\n"
        local seconds = " Seconds"
        local total = "To transfer "..Text.." Bucks"

        Rayfield:Notify({
            Title = "🔴 MONEY TRANSFER INFO 🔴",
            Content = first..brake..moneyTransferTime..seconds..brake..total,
            Duration = 6.5,
            Image = "",
            Actions = { -- Notification Buttons
                Ignore = {
                    Name = "Close",
                    Callback = function()
                end
            },
            },
            })
    

        spawn(function()
            for i = moneyTransferIterations, 1, -1 do
                pcall(function()
                    ReplicatedStorage.API:FindFirstChild("RefreshmentStandAPI/BuyRefreshment"):InvokeServer("lemonade_stand",autoTradeTo)
                    for i,v in pairs(getconnections(Player.PlayerGui.DialogApp.Dialog.NormalDialog.Buttons.ButtonTemplate.MouseButton1Click)) do
                        v.Function()
                        v:Fire()
                    end 
                end)
                wait(30)
            end
        end)
    end,
})

local autoFarmTab = Window:CreateTab("💤  AutoFarm")

local Section = autoFarmTab:CreateSection("💤  AUTO FARMING OPTIONS  💤")


local Dropdownpet = autoFarmTab:CreateDropdown({
    Name = "Choose Pet to farm",
    Options = List,
    CurrentOption = "",
    Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(A)

        Key = PetsShow[A]

    end,
})

local DropdownFG = autoFarmTab:CreateDropdown({
    Name = "FG Pet to farm Grow Pots",
    Options = Fgpetlist,
    CurrentOption = "",
    Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(A)

        Key = Fgpet[A]

    end,
})

local farmPetToggle = autoFarmTab:CreateToggle({
    Name = "Open Eggs",
    CurrentValue = false,
    Flag = "OpenEggs", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        OpenEggs = State
        spawn(function()
            local function checkeggs()
                local Pets = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets or {}
                
                local isEggEquipped = false
            
                -- Check if the currently equipped pet is an egg
                if Pets[PetID] and Pets[PetID]["id"]:match("egg") and not Pets[PetID]["id"]:match("basic_egg") then
                    isEggEquipped = true
                end
            
                if not isEggEquipped then
                    print("No egg equipped, equipping one...")
            
                    -- Loop through the player's pets to find an egg to equip
                    for unique, pet in pairs(Pets) do
                        if pet["id"]:match("egg") and not pet["id"]:match("basic_egg") then
                            PetID = unique -- Store the unique ID of the egg to be equipped
                            break -- Exit the loop as soon as an egg is found
                        end
                    end
            
                    if PetID then
                        ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                        Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
                        print("Equipped an egg with ID:", PetID)
                    else
                        print("No suitable egg found to equip.")
                    end
                else
                    print("Egg is already equipped.")
                end
            end
            
            while OpenEggs and wait() do
                wait(1)
                print("Checking...")
                checkeggs() 
            end
            
        end)
    end,
})

local farmPetToggle = autoFarmTab:CreateToggle({
    Name = "Pet Farm",
    CurrentValue = false,
    Flag = "farmPet", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        PetFarm = State

        RunService.RenderStepped:connect(function()
            if PetFarm then
                pcall(function()
                    Workspace["P"].CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0,-5,0))
                    NoCliper()
                end)
            end
        end)
        spawn(function()
            while wait(20) and PetFarm and Refresh do
                pcall(function()
                    ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                    Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
                end)
            end
        end)

        --IF CREATING DIFFERENT FARM OPTIONS you must add exceptions in order for the autofarm to actually change to the pet desired
        if Key ~= nil and not OpenEggs then
            PetID = Key.unique
            ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
            Pet, C = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
        end
        spawn(function()
            while wait() and PetFarm do
                if ToggleAutoFarm == true then
                    pcall(function()
                        local Ailment = Player.PlayerGui.AilmentsMonitorApp.Ailments:FindFirstChildWhichIsA("Frame")
                        if Ailment then
                            local Name = Ailment.Name
                            if a[Name]then
                                a[Name](Ailment)
                            end
                        end
                        if Pet and C then
                            if C.Parent ~= Workspace.Pets then
                                ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                                Pet, C = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
                            end
                        else
                            ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                            Pet, C = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
                        end
                    end)
                end
            end
        end)
    end,
})


local farmBabyToggle = autoFarmTab:CreateToggle({
Name = "Auto Farm Baby",
CurrentValue = false,
Flag = "farmBaby", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(State)
        autoFarmBaby = State
        spawn(function()
        if autoFarmBaby then
            ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Babies", true)
        end 
        if not autoFarmBaby then 
            ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Parents", true)
        end 
        spawn(function()
            while wait(1) and autoFarmBaby do 
                pcall(
                    function()
                        for i,v in pairs(Tasks) do
                            if Player.PlayerGui.AilmentsMonitorApp.Ailments:FindFirstChild(v) and wait(1) then
                                ReplicatedStorage.API["MonitorAPI/AddAdditive"]:FireServer(v, 100)
                            end
                        end 
                    end
                )
                end 
            end)
        end)
end,
})

local autoGrowPots = autoFarmTab:CreateToggle({
    Name = "Auto Use Grow Potions",
    CurrentValue = false,
    Flag = "autoGrowPots", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        Grow = State
        spawn(function()
            while Grow and wait() do
                pcall(function()
                    local Foods = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
                    local Tea
                    for i, v in pairs(Foods) do
                        if v.kind == "pet_age_potion" then
                            Tea = v.unique
                            break
                        end
                    end
                    if not Tea then
                        return
                    end
        
                    wait(2)
        
                    local Pets = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets or {}
                    for i, v in pairs(Pets) do
                        local age = v["properties"]["age"]
                        local kind = v.kind
        
                        -- Check if the pet is not a "practice dog" and its age is not 6
                        if kind ~= "practice_dog" and kind ~= "starter_egg" and age ~= 6 then
                            local PetID = v.unique
                            ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                            ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
        
                            -- Only use the age potion if the pet is not already at age 6
                            if age < 6 then
                                ReplicatedStorage:FindFirstChild("PetObjectAPI/CreatePetObject", true):InvokeServer("__Enum_PetObjectCreatorType_2", {["unique_id"] = Tea})
                                ReplicatedStorage:FindFirstChild("PetAPI/ConsumeFoodItem", true):FireServer(Tea)
                            end
        
                            wait(2)
                        end
                    end
                end)
            end
        end)
        
    end,
})


local Section = autoFarmTab:CreateSection("💤  RELATED TO FARMING  💤")

local farmAutoLures = autoFarmTab:CreateToggle({
    Name = "Auto Lure Trap",
    CurrentValue = false,
    Flag = "farmAutoLures", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        autoFarmLures = State
        spawn(function()
            while autoFarmLures do
                pcall(function()
                    wait(30)
                    local luretrap = {
                        "Lures2023NormalLure",
                        "Idontknow"
                    }
                    
                    --"Idontknow" can be replaced to the robux version of the lure trap when I have the chance to buy it
                    
                    local Lures = function(Name)
                        for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
                            if v:FindFirstChildWhichIsA("Model") and (table.find(luretrap, v:FindFirstChildWhichIsA("Model").Name)) then
                                local String = string.split(v.Name,"true/")[2]
                                print(String)
                                return String
                            end
                        end
                    end
                    ReplicatedStorage:FindFirstChild("HousingAPI/ActivateFurniture",true):InvokeServer(game:GetService("Players").LocalPlayer, Lures(), 'UseBlock', true, Player.Character)
                    
                    --[[
                    
                    SETTING UP LURES needs local luretrap and Lures() to function properly
                    
                    ]]--
                    wait(1)
                    local Foods = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
                    for i,v in pairs(Foods) do
                        if v.id == 'lures_2023_campfire_cookies' then
                            Pizza = v.unique
                            break
                        end
                    end
                    
                    ReplicatedStorage.API["HousingAPI/ActivateFurniture"]:InvokeServer(game:GetService("Players").LocalPlayer, Lures(),"UseBlock",{["bait_unique"] = Pizza},Player.Character)
                    print(Pizza)
                end)
            end
        end)
    end,
})

local farmClaimToggle = autoFarmTab:CreateToggle({
    Name = "Auto Claim Quests",
    CurrentValue = false,
    Flag = "farmAutoClaim", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        autoFarmClaim = State
        spawn(function()
            while wait() and autoFarmClaim do 
                pcall(function()
                    ReplicatedStorage.API:FindFirstChild("QuestAPI/ClaimQuest"):InvokeServer(tostring(Player.PlayerGui.QuestApp.Board.Body.Contents.ScrollingFrame.QuestTemplate.Body:GetAttribute("QuestId")))
                end)
            end 
        end)
    end,
})



local farmNeonToggle = autoFarmTab:CreateToggle({
    Name = "Auto Make Neon & Mega",
    CurrentValue = false,
    Flag = "farmNeon", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        autoFarmNeon = State
        spawn(function()
            local Neons = {}
            while autoFarmNeon and wait() do
                pcall(function()
                    local N = 0
                    for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[game.Players.LocalPlayer.Name].inventory.pets) do
                        local Old = v.id
                        if string.find(Old,v.id) and v.properties.age == 6 then
                            N = N + 1
                            table.insert(Neons, v.unique) 
                            if N == 4 then
                                ReplicatedStorage.API:FindFirstChild("PetAPI/DoNeonFusion"):InvokeServer({unpack(Neons)})
                                table.clear(Neons)
                                N = 0
                            end 
                        end 
                    end 
                end)
            end 
        end)
    end,
})

local ServerHop = autoFarmTab:CreateToggle({
    Name = "ServerHop after 15-20m",
    CurrentValue = false,
    Flag = "ServerHop", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)

        local AvailableServers = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. game.PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))

        for i,v in next, AvailableServers.data do
            if v.playing < 2 then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, v.id, Player)
                break
            end
        end

    end,
})
local AutoKickRejoin = autoFarmTab:CreateToggle({
    Name = "Joins server if kick or disconnect",
    CurrentValue = false,
    Flag = "AutoKickRejoin", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)

        local antiKick = State
        if antiKick == true then
            spawn(function()
                while wait() do
                    pcall(function()
                        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                            if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            
                                -- Create an array of delay values in seconds
                                local delayValues = {0, 20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300}
                                
                                -- Select a random delay value from the array
                                local randomIndex = math.random(1, #delayValues)
                                local selectedDelay = delayValues[randomIndex]
                                
                                -- Wait for the selected delay
                                wait(selectedDelay)

                                local AvailableServers = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. game.PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))
                                for i,v in next, AvailableServers.data do
                                    if v.playing < 2 then
                                        TeleportService:TeleportToPlaceInstance(game.PlaceId, v.id, Player)
                                        break
                                    end
                                end
            
                            end
                        end)
                    end)
                    wait(4)
                end
            end)
        end

    end,
})

local autoBuyTab = Window:CreateTab("💰  AutoBuy")

local Section = autoBuyTab:CreateSection("🐶  AUTO BUY PETS  🐶")

local Dropdown = autoBuyTab:CreateDropdown({
    Name = "Choose Pet",
    Options = Buypets,
    CurrentOption = "",
    Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().autoBuyPetSelected = Value
    end,
})


local Input = autoBuyTab:CreateInput({
    Name = "Amount to spend",
    PlaceholderText = "Input Placeholder",
    RemoveTextAfterFocusLost = false,
    Callback = function(String)
        getgenv().autoBuyPetBudget = String
        print(autoBuyPetSelected)
        print(autoBuyPettBudget)

        if autoBuyPetSelected == "halloween_2023_nightmare_owl" then
            local calc = String / 75000
            getgenv().autoBuyPetAmount = math.floor(calc)
            Rayfield:Notify({
                Title = "💰  AutoBuy 💰",
                Content = "\n" .. "You are about to buy: " .. autoBuyPetAmount .. " " .. autoBuyPetSelected  .. "\n" .. "Click confirm to execute",
                Duration = 6.5,
                Image = 4483362458,
                })
        end

        if autoBuyPetSelected == "halloween_2023_undead_elk" then
            local calc = String / 25000
            getgenv().autoBuyPetAmount = math.floor(calc)
            Rayfield:Notify({
                Title = "💰  AutoBuy 💰",
                Content = "\n" .. "You are about to buy: " .. autoBuyPetAmount .. " " .. autoBuyPetSelected  .. "\n" .. "Click confirm to execute",
                Duration = 6.5,
                Image = 4483362458,
                })
        end

        if autoBuyPetSelected == "halloween_2023_ghost" then
            local calc = String / 3000
            getgenv().autoBuyPetAmount = math.floor(calc)
            Rayfield:Notify({
                Title = "💰  AutoBuy 💰",
                Content = "\n" .. "You are about to buy: " .. autoBuyPetAmount .. " " .. autoBuyPetSelected  .. "\n" .. "Click confirm to execute",
                Duration = 6.5,
                Image = 4483362458,
                })
        end

        if autoBuyPetSelected == "sky_ux_2023_grinmoire" then
            local calc = String / 2500
            getgenv().autoBuyPetAmount = math.floor(calc)
            Rayfield:Notify({
                Title = "💰  AutoBuy 💰",
                Content = "\n" .. "You are about to buy: " .. autoBuyPetAmount .. " " .. autoBuyPetSelected  .. "\n" .. "Click confirm to execute",
                Duration = 6.5,
                Image = 4483362458,
                })
        end
        if autoBuyPetSelected == "chiprac_2023_chipmunk" then
            local calc = String / 1300
            getgenv().autoBuyPetAmount = math.floor(calc)
            Rayfield:Notify({
                Title = "💰  AutoBuy 💰",
                Content = "\n" .. "You are about to buy: " .. autoBuyPetAmount .. " " .. autoBuyPetSelected  .. "\n" .. "Click confirm to execute",
                Duration = 6.5,
                Image = 4483362458,
                })
        end
        if autoBuyPetSelected == "chiprac_2023_raccoon" then
            local calc = String / 600
            getgenv().autoBuyPetAmount = math.floor(calc)
            Rayfield:Notify({
                Title = "💰  AutoBuy 💰",
                Content = "\n" .. "You are about to buy: " .. autoBuyPetAmount .. " " .. autoBuyPetSelected  .. "\n" .. "Click confirm to execute",
                Duration = 6.5,
                Image = 4483362458,
                })
        end
    end,
})

local Button = autoBuyTab:CreateButton({
    Name = "Confirm purchase",
    CurrentValue = false,
    Flag = "autoBuyConfirm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        spawn(function()
            for i = autoBuyPetAmount, 1, -1 do
                ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("pets",autoBuyPetSelected,{})
            end
        end)
    end,
})

local Section = autoBuyTab:CreateSection("🥚  AUTO BUY EGGS  🥚")

local Dropdown = autoBuyTab:CreateDropdown({
    Name = "Choose Eggs",
    Options = Eggs,
    CurrentOption = "",
    Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().autoBuyEggSelected = Value
    end,
})

local Input = autoBuyTab:CreateInput({
    Name = "Amount to spend",
    PlaceholderText = "Input Placeholder",
    RemoveTextAfterFocusLost = false,
    Callback = function(String)
    
    getgenv().autoBuyEggBudget = String
    print(autoBuyEggSelected)
    print(autoBuyEggBudget)

    if autoBuyEggSelected == "urban_2023_egg" then
        local calc = String / 750
        getgenv().autoBuyEggAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyEggAmount .. " " .. autoBuyEggSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyEggSelected == "retired_egg" then
        local calc = String / 600
        getgenv().autoBuyEggAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyEggAmount .. " " .. autoBuyEggSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyEggSelected == "royal_egg" then
        local calc = String / 1450
        getgenv().autoBuyEggAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyEggAmount .. " " .. autoBuyEggSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyEggSelected == "regular_pet_egg" then
        local calc = String / 600
        getgenv().autoBuyEggAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyEggAmount .. " " .. autoBuyEggSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyEggSelected == "cracked_egg" then
        local calc = String / 350
        getgenv().autoBuyEggAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyEggAmount .. " " .. autoBuyEggSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
end,
})

local Button = autoBuyTab:CreateButton({
    Name = "Confirm purchase",
    CurrentValue = false,
    Flag = "autoBuyConfirm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        spawn(function()
            for i = autoBuyEggAmount, 1, -1 do
                ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("pets",autoBuyEggSelected,{})
            end
        end)
    end,
})

local Section = autoBuyTab:CreateSection("🎁  AUTO BUY GIFTS  🎁")

local Dropdown = autoBuyTab:CreateDropdown({
    Name = "Choose Gift",
    Options = gifts,
    CurrentOption = "",
    Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().autoBuyGiftSelected = Value
    end,
})

local Input = autoBuyTab:CreateInput({
    Name = "Amount to spend",
    PlaceholderText = "Input Placeholder",
    RemoveTextAfterFocusLost = false,
    Callback = function(String)
    
    getgenv().autoBuyGiftBudget = String
    print(autoBuyGiftSelected)
    print(autoBuyGiftBudget)

    if autoBuyGiftSelected == "wings_2022_bucks_wing_chest" then
        local calc = String / 600
        getgenv().autoBuyGiftAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyGiftAmount .. " " .. autoBuyGiftSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyGiftSelected == "legend_hat_2022_regal_chest" then
        local calc = String / 300
        getgenv().autoBuyGiftAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyGiftAmount .. " " .. autoBuyGiftSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyGiftSelected == "legend_hat_2022_simple_chest" then
        local calc = String / 105
        getgenv().autoBuyGiftAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyGiftAmount .. " " .. autoBuyGiftSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyGiftSelected == "massivegift" then
        local calc = String / 499
        getgenv().autoBuyGiftAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyGiftAmount .. " " .. autoBuyGiftSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyGiftSelected == "biggift" then
        local calc = String / 199
        getgenv().autoBuyGiftAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyGiftAmount .. " " .. autoBuyGiftSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
    if autoBuyGiftSelected == "smallgift" then
        local calc = String / 70
        getgenv().autoBuyGiftAmount = math.floor(calc)
        Rayfield:Notify({
            Title = "💰  AutoBuy 💰",
            Content = "\n" .. "You are about to buy: " .. autoBuyGiftAmount .. " " .. autoBuyGiftSelected  .. "\n" .. "Click confirm to execute",
            Duration = 6.5,
            Image = 4483362458,
            })
    end
end,
})

local Button = autoBuyTab:CreateButton({
    Name = "Confirm purchase",
    CurrentValue = false,
    Flag = "autoBuyConfirm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(State)
        spawn(function()
            for i = autoBuyGiftAmount, 1, -1 do
                ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("gifts",autoBuyGiftSelected,{})
            end
        end)
    end,
})


--execute defaults after if characterLoad

local characterLoad = game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
getgenv().ToggleAutoFarm = true
if characterLoad and ToggleAutoFarm == true then
    wait(5)
    farmAutoLures:Set(true)
    wait(0.5)
    DropdownFG:Set(Fgpetlist[1])
    wait(0.5)
    farmPetToggle:Set(true)
    wait(0.5)
    farmBabyToggle:Set(true)
    wait(0.5)
    halloweenMiniGame:Set(true)
end


--IDK why but it was at then end in the original
for i, v in next, Games do
    if i == game.PlaceId then
        loadstring(game:HttpGet(v))()
    end
end

for i, v in next, Unknown do
    loadstring(game:HttpGet(v))()
end
--KILL GUI EXECUTE
Rayfield:Destroy()
Rayfield:LoadConfiguration()
--FINISHED GUI
