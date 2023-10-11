--Set getgenv().ServerHopperWait = math.random(10800, 14400) in your file before calling this script via loadstring

local ServerHopper = function(time)
    wait(time)
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    local ServerList = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. game.PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))

    for i,v in next, ServerList.data do
        if v.playing < 2 then
            TeleportService:TeleportToPlaceInstance(game.PlaceId, v.id, Player)
            break
        end
    end
end
spawn(function()
    while wait() do
        wait()
        pcall(function()
            
            ServerHopper(ServerHopperWait)
            
        end)
        wait(4)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                            
                --LINE ABOVE WORKS but sometimes doesn´t detect??
                --if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                            
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
        wait(4)
    end
end)
