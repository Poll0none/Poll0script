getgenv().testing = false
local autoFarmFailSafeAilmentCounter = 0
local autoFarmFailSafeTriggerCounter = 0

while testing do
    pcall(function()
        local sleepyAilment = Player.PlayerGui.AilmentsMonitorApp.Ailments:FindFirstChild("sleepy")
        
        if sleepyAilment then
            autoFarmFailSafeAilmentCounter = autoFarmFailSafeAilmentCounter + 1
            print("autoFailSafe: Sleepy is a visible task " .. autoFarmFailSafeAilmentCounter)
        elseif not sleepyAilment then
            autoFarmFailSafeAilmentCounter = 0
            autoFarmFailSafeTriggerCounter = 0
        end
    end)
    if autoFarmFailSafeAilmentCounter == 10 then
    	autoFarmFailSafeTriggerCounter = autoFarmFailSafeTriggerCounter + 1
    	print("failSafeCounter = 10")
    elseif autoFarmFailSafeAilmentCounter >= 30 then
    	autoFarmFailSafeTriggerCounter = autoFarmFailSafeTriggerCounter + 1
    	print("failSafeCounter > 30")
    end
    if autoFarmFailSafeTriggerCounter >= 2 then
    	print("The FailSafe has been triggered 2 or more times")
    end
	    
    print("autoFailSafe: " .. autoFarmFailSafeAilmentCounter)
    wait(1)
end
