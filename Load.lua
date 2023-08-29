local keyList = {
    { key = "key1", expiry = "2023-09-01" },
    { key = "key2", expiry = "2023-05-10" },
    { key = "key3", expiry = "2023-08-31" },
    -- ... bạn có thể thêm nhiều khóa khác vào đây
}

local function AquaKey(inputKey)
    if not inputKey or inputKey == "" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xxhumggxx/Other/main/NTF.lua"))()
        return
    end
    
    local currentDate = os.date("%Y-%m-%d") -- lấy ngày hiện tại theo định dạng YYYY-MM-DD

    for _, keyData in ipairs(keyList) do
        if keyData.key == inputKey then
            if currentDate <= keyData.expiry then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
                return
            else
                game.Players.LocalPlayer:Kick("AquaHub | Key Expired!")
                return
            end
        end
    end

    game.Players.LocalPlayer:Kick("AquaHub | Invalid Key!")
end
