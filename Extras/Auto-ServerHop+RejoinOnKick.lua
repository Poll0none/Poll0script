pcall(function()
    repeat
        wait()
    until game:IsLoaded()
end)

game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(p1)
    if p1.Name == "ErrorPrompt" then
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end
end)
