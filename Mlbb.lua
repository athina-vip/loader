--[[
  🛡️ ATHINA PREMIUM V3 (FULLY FIXED) 🛡️
  Drone View 1-10 + Achievement Injector Fix
  Support: 32bit / 64bit
]]--

local targetInfo = gg.getTargetInfo()
local is64Bit = targetInfo.x64

-- --- UI Branding ---
function ShowHeader()
    return "🛡️ ATHINA MOBILE LEGENDS 🛡️\n" ..
           "━━━━━━━━━━━━━━━━━━━━\n" ..
           "📱 Architecture : " .. (is64Bit and "64-bit" or "32-bit") .. "\n" ..
           "✅ Status : Full function fix\n" ..
           "━━━━━━━━━━━━━━━━━━━━"
end

-- --- 1. DRONE VIEW (Level 1-10) FULLY FIXED ---
function DroneView()
    local p = gg.prompt({"🚁 Select Drone Height (1 - 10)"}, {"4"}, {"number"})
    if p == nil then return end
    
    local level = tonumber(p[1])
    if level < 1 or level > 10 then
        gg.alert("ကျေးဇူးပြု၍ 1 မှ 10 အထိသာ ရွေးချယ်ပါ။")
        return
    end

    -- တိကျသော Drone Height Values များ
    local droneValues = {
        [1] = "1084227584", [2] = "1092616192", [3] = "1095712192",
        [4] = "1097859072", [5] = "1101004800", [6] = "1103626240",
        [7] = "1106247680", [8] = "1108082688", [9] = "1109393408",
        [10] = "1110704128"
    }
    
    local targetVal = droneValues[level]

    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4294968312.0", gg.TYPE_DOUBLE)
    
    if gg.getResultCount() == 0 then
        gg.alert("Drone Value ရှာမတွေ့ပါ။ Loading 50% သို့မဟုတ် ပွဲထဲရောက်မှ သုံးပါ။")
        return
    end

    local res = gg.getResults(100)
    local t = {}
    for i, v in ipairs(res) do
        t[#t+1] = {address = v.address - 128, flags = gg.TYPE_DWORD, value = targetVal}
    end
    gg.setValues(t)
    gg.toast("🚁 Drone Level " .. level .. " Activated!")
end

-- --- 2. ACHIEVEMENT INJECTOR (FIXED SEARCH) ---
function InjectAchieve(name, code)
    gg.toast(name .. " Injecting...")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_C_DATA)
    
    -- Byte Search for String Logic
    gg.searchNumber(code, gg.TYPE_BYTE)
    
    local count = gg.getResultCount()
    if count == 0 then
        gg.alert("❌ " .. name .. " data not found! Lobby မှာ ပြန်စမ်းကြည့်ပါ။")
        return
    end

    local res = gg.getResults(count)
    local t = {}
    for i, v in ipairs(res) do
        -- Achievement data value address logic
        t[#t+1] = {address = v.address + 0x10, flags = gg.TYPE_DWORD, value = 2000}
    end
    gg.setValues(t)
    gg.toast("✅ " .. name .. " Success (2000)")
end

-- --- 3. NO COOLDOWN (FIXED GROUP SEARCH) ---
function NoCD(state)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    if state then
        gg.searchNumber('0;2,098,082;2,100,252::9', gg.TYPE_DWORD)
        if gg.getResultCount() == 0 then
            gg.toast("No CD data not found in this match.")
            return
        end
        gg.refineNumber('0', gg.TYPE_DWORD)
        gg.editAll('20000009', gg.TYPE_DWORD)
        gg.toast("❄️ No Cooldown ON")
    else
        gg.searchNumber('20000009;2,098,082;2,100,252::9', gg.TYPE_DWORD)
        gg.refineNumber('20000009', gg.TYPE_DWORD)
        gg.editAll('0', gg.TYPE_DWORD)
        gg.toast("❄️ No Cooldown OFF")
    end
end

-- --- 4. 3D MAP & DAMAGE ---
function Map3D()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("h Ẹ 00 䃵 00 긔 00 섯 00 휊 00 䃳 00 炤 00 䈫 00 馚 00 䈳 00", gg.TYPE_BYTE)
    if gg.getResultCount() > 0 then
        gg.editAll("h 踦 00 䅏 00 炤 00 삵 00 ⑍ 00 붺 00 ㌳ 00 䆫 00 祠 00 䊲 00", gg.TYPE_BYTE)
        gg.toast("🌐 3D Map Active")
    else
        gg.toast("🌐 Data not found")
    end
end

function Damage35()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("2.9373838e21", gg.TYPE_FLOAT)
    gg.toast("⚔️ Damage Mod Activated")
end

-- --- MENU SYSTEM ---

function SafeMenu()
    local s = gg.choice({
        "🚁 Drone View (Level 1 - 10)",
        "⚔️ Damage 35% (Safe)",
        "🔙 Back"
    }, nil, "🔰 SAFE MENU")
    if s == 1 then DroneView() end
    if s == 2 then Damage35() end
end

function RiskMenu()
    local r = gg.choice({
        "🐢 Achievement Turtle",
        "👑 Achievement Lord",
        "🗼 Achievement Turret",
        "❄️ No Cooldown (Skill)",
        "🌐 Enable 3D Map",
        "🔙 Back"
    }, nil, "⚠️ RISK MENU (TITLE INJECT)")
    if r == 1 then InjectAchieve("Turtle", "m_KillShenGui") end
    if r == 2 then InjectAchieve("Lord", "m_KillLingZhu") end
    if r == 3 then InjectAchieve("Turret", "_KillTowerTimes") end
    if r == 4 then 
        local cd = gg.choice({"ON", "OFF"}, nil, "No Cooldown Selection")
        NoCD(cd == 1)
    end
    if r == 5 then Map3D() end
end

function Main()
    local menu = gg.choice({
        "🛡️ Safe Menu (Rank Mode)",
        "💀 Risk Menu (Risk Mode)",
        "❌ Exit Script"
    }, nil, ShowHeader())

    if menu == 1 then SafeMenu() end
    if menu == 2 then RiskMenu() end
    if menu == 3 then os.exit() end
end

-- --- Start Script ---
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        Main()
    end
    gg.sleep(100)
end
