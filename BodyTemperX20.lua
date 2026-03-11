print("ACS Body Temper x20 Loaded")

function OnGameStart()
    local player = CS.XiaWorld.MainPlayer.Instance
    if player == nil then return end

    local roles = player.AllRoles

    for i, role in pairs(roles) do
        if role.PropertyMgr ~= nil then
            local speed = role.PropertyMgr.BodyPractice_QuenchingSpeed
            role.PropertyMgr.BodyPractice_QuenchingSpeed = speed * 20
        end
    end
end
