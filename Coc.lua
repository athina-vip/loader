--[[
    SCRIPT: ATHINA CLASH OF CLAN
    AUTHOR: ATHINA
    VERSION: 1.1.0
]]--

local title = "🛡️ ATHINA CLASH OF CLAN 🛡️"
local welcome = "🌟 Developer - ATHINA"

gg.toast("Loading ATHINA Script...")
gg.sleep(500)

-- Main Menu Function
function Main()
    local menu = gg.choice({
        "🏠 Change Town Hall (Lvl 2-5 to 9)",
        "🔄 Reset Data",
        "❌ Exit Script"
    }, nil, title.."\n"..welcome)

    if menu == nil then return end
    if menu == 1 then TH_SubMenu() end
    if menu == 2 then Reset() end
    if menu == 3 then os.exit() end
end

-- Town Hall Sub-Menu (Checkbox ပုံစံ)
function TH_SubMenu()
    local th_menu = gg.multiChoice({
        "🏠 Town Hall 2 ➔ 9",
        "🏠 Town Hall 3 ➔ 9",
        "🏠 Town Hall 4 ➔ 9",
        "🏠 Town Hall 5 ➔ 9",
        "🔙 Back to Main"
    }, nil, "Select Town Hall Level to Hack")

    if th_menu == nil then return end

    if th_menu[1] then TownHallHack("2") end
    if th_menu[2] then TownHallHack("3") end
    if th_menu[3] then TownHallHack("4") end
    if th_menu[4] then TownHallHack("5") end
    if th_menu[5] then Main() end
end

-- Modified Hack Function (One function for all levels)
function TownHallHack(lvl)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
    
    local search_val = ":town_hall_lvl"..lvl
    gg.searchNumber(search_val, gg.TYPE_BYTE)
    
    local count = gg.getResultCount()
    if count > 0 then
        local results = gg.getResults(10000)
        gg.editAll(":town_hall_lvl9", gg.TYPE_BYTE)
        gg.toast("✅ ATHINA: Town Hall "..lvl.." Updated Done")
    else
        gg.alert("❌ Town Hall "..lvl.." not found!")
    end
end

-- Reset Function
function Reset()
    gg.clearResults()
    gg.toast("🔄 Data Cleared")
end

-- Loop to keep script running
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        Main()
    end
    gg.sleep(100)
end
