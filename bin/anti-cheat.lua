repeat wait() until game:IsLoaded()
local G = getgenv and getgenv() or _G or shared
G.Get = setmetatable({}, {__index = function(A, B) return game:GetService(B) end})

for i,v in pairs(game.GetChildren(game)) do
    G[v.ClassName] = v
end

G.Player = Players.LocalPlayer
G.wait = task.wait
G.spawn = task.spawn
G.Heartbeat = RunService.Heartbeat
G.Stepped = RunService.Stepped
G.RenderStepped = RunService.RenderStepped
G.Error = ScriptContext.Error
G.MessageOut = LogService.MessageOut
G.Kick = Player.Kick
G.Idled = Player.Idled

local Name = game.PlaceId .. ".json"
local Des = {}
if makefolder and not isfile("V.G Hub") then
    makefolder("V.G Hub")
end

G.Settings = {}
local Pcall = pcall(function()
    if isfile("V.G Hub//" .. Name) then
        readfile("V.G Hub//" .. Name)
    else
        writefile("V.G Hub//" .. Name, HttpService:JSONEncode(Des))
    end
end)

if isfile("V.G Hub//" .. Name) and readfile("V.G Hub//" .. Name) then
    Settings = HttpService:JSONDecode(readfile("V.G Hub//" .. Name))
end

local Hack = {
    "Kick",
    "kick",
}

local Uh = {
    Player.Idled,
    ScriptContext.Error,
    LogService.MessageOut,
}

local Hacker = nil
Hacker = hookmetamethod(game, "__namecall", newcclosure(function(...)
    local Self, Key = ...
    if table.find(Hack, getnamecallmethod()) and Self == Player then
        return
    end
    if table.find(Uh, getnamecallmethod()) then
        for i,v in next, getconnections(Self) do
            v:Disable()
        end
    end
    if type(Self) == "Instance" then
        return Hacker(...)
    end
    return Hacker(...)
end))


if setfflag then
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end
if setfpscap then
    setfpscap(100)
end

G.GetFunction = function(A)
    for i,v in next, getgc() do
        if type(v) == "function" and getinfo(v).name == A and islclosure(v) then
            return v 
        end
    end
end

G.Teleport = function(A, B, Toggle)
    if Toggle and A and B then
        A.CFrame = B
    end
    return A, B, Toggle
end

G.DisableConnection = function(A)
    for i,v in next, getconnections(A) do 
        v:Disable()
    end
    return A
end

G.FireConnection = function(A)
    for i,v in next, getconnections(A) do
        v:Fire()
    end
end

G.Tween = function(A, B, C)
    if A and B then
        local Time = (B.Position - A.Position).Magnitude / C 
        local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
        local Tween = TweenService:Create(A, Info, {CFrame = CFrame.new(B.Position)})
        Tween:Play()
        if Tween.Completed then
            Tween.Completed:Wait()
        end
    end
    return A, B, C
end

G.Save = function()
    pcall(function()
        writefile("V.G Hub//" .. Name, HttpService:JSONEncode(Settings))
    end)
end

G.ServerHop = function()
    spawn(function()
        while wait() do
            pcall(function()
                local Gay = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. game.PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))
                for i,v in next, Gay.data do
                    if v.playing < v.maxPlayers then
                        TeleportService:TeleportToPlaceInstance(game.PlaceId, v.id, Player)
                        break
                    end
                end
            end)
            wait(4)
        end
    end)
end

G.Rejoin = function()
    return TeleportService:Teleport(game.PlaceId, Player)
end

G.NoClip = function(A)
    return A:ChangeState(11)
end
G.NoClip2 = function(A)
    for i,v in next, A:GetChildren() do
        if v:IsA("BasePart") then
            v.CanCollide = false 
        end
    end
end
G.SendNotification = function(Title, Text, Icon, Duration)
    return StarterGui:SetCore("SendNotification", {Title = Title, Text = Text, Icon = Icon, Duration = Duration})
end

G.Mag = function(A, B)
    return (A.Position - B.Position).Magnitude
end

ScriptContext:SetTimeout(0)
if game.GameId ~= 111958650 then
	for i,v in next, Uh do 
		DisableConnection(v)
	end
end
local getconstants=debug.getconstants or getconstants;local getidentity=get_thread_context or getthreadcontext or getidentity or syn.get_thread_identity;local setidentity=set_thread_context or setthreadcontext or setidentity or syn.set_thread_identity;local hookfunc=hookfunction or hookfunc or detour_function;for a,b in next,getgc()do if type(b)=="function"and islclosure(b)then local c=getconstants(b)if table.find(c,"Detected")and table.find(c,"crash")then hookfunc(b,function()return task.wait(math.huge)end)end end end


--Credits to amity this is needed for fluxus users
if getexecutorname and getexecutorname():find('Fluxus') then
    getgenv().Fluxus = true
end


if Fluxus == true then
local UserInputService = game:GetService("UserInputService")

--- janky function to set clipboard
function setclipboard(text)
   local screenGui = Instance.new("ScreenGui")

   local textField = Instance.new("TextBox")
   textField.Text = text
   textField.Parent = screenGui
   textField.Size = UDim2.new(1, 0, 0.5, 0)
   textField.Position = UDim2.new(0, 0, 0.5, 0)
   textField.BackgroundTransparency = 0.5
   textField.BackgroundColor3 = Color3.new(0, 0, 0)
   textField.BorderSizePixel = 0
   textField.TextColor3 = Color3.new(1, 1, 1)
   textField.TextScaled = true
   textField.ZIndex = 1

   local prompt = Instance.new("TextLabel")
   prompt.Text = "Press Ctrl+C to copy"
   prompt.Size = UDim2.new(1, 0, 0.5, 0)
   prompt.BackgroundTransparency = 0.5
   prompt.BackgroundColor3 = Color3.new(0, 0, 0)
   prompt.BorderSizePixel = 0
   prompt.TextScaled = true
   prompt.TextColor3 = Color3.new(1, 1, 1)
   prompt.Parent = screenGui
   prompt.ZIndex = 2

   local onDeselect = function()
       textField:CaptureFocus()
       textField.Text = text
       textField.SelectionStart = #textField.Text + 1
       textField.CursorPosition = 0
   end

   UserInputService.InputEnded:Connect(function(input)
       if input:IsModifierKeyDown(Enum.ModifierKey.Ctrl) and input.KeyCode == Enum.KeyCode.C then
           screenGui:Destroy()
       end
   end)

   textField.FocusLost:Connect(function()
       onDeselect()
   end)
   textField:GetPropertyChangedSignal("Text"):Connect(function()
       if textField.Text ~= text then
           onDeselect()
       end
   end)

   screenGui.Parent = game.CoreGui
   onDeselect()
end
end
