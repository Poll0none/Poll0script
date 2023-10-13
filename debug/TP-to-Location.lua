

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
    set_thread_identity(7)
end

local Home = function()
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


        GoToStore("ChickatriceMinigame")
        wait(2)
Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.StaticMap.TeleportLocations.chickatrice_minigame.CFrame.Position)
