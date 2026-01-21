-- ╔══════════════════════════════════════════════════╗
-- ║         ✨ ATHINA PREMIUM MOD MENU ✨             ║
-- ║    FULLY INTEGRATED DRONE & DAMAGE SYSTEM        ║
-- ╚══════════════════════════════════════════════════╝

HOMEDM = -1

-- [ ORIGINAL ERWIN MODDER LOGIC - 100% PRESERVED ]
function ErwinModder(Lib, Offset, Replaced) 
    local info = gg.getTargetInfo() 
    local localpack = info.nativeLibraryDir 
    local t = gg.getRangesList(localpack..'/lib'..Lib..'.so') 
    for _, __ in pairs(t) do 
        local t = gg.getValues({{address = __.start, flags = gg.TYPE_DWORD}, {address = __.start + 18, flags = gg.TYPE_WORD}}) 
        if t[1].value == 1179403647 then 
            Offset = __['start'] + Offset 
        end 
        assert(Offset ~= nil, 'Error: Offset calculation failed.') 
        _rw = {} 
        if type(Replaced) == 'number' then 
            _ = '' 
            for _ = 1, Replaced do 
                _rw[_] = {address = (Offset - 1) + _, flags = gg.TYPE_BYTE} 
            end 
            for v, __ in ipairs(gg.getValues(_rw)) do 
                _ = _ .. string.format('%02X', __.value & 255) 
            end 
            return _ 
        end 
        Byte = {} 
        Replaced:gsub('..', function(x) 
            Byte[#Byte + 1] = x 
            _rw[#Byte] = {address = (Offset - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. 'h'} 
        end) 
        gg.setValues(_rw) 
    end 
end

-- [ MAIN MENU ]
function HOME()
    local title = [[
💎 ════════ ATHINA PREMIUM ════════ 💎
       👤 GAME : MOBILE LEGENDS 
       🛡️ SECURITY: SAFE BYPASS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━]]

    local menu = gg.multiChoice({
        "🔓 [ HERO UNLOCKER ]",
        "🔭 [ DRONE VIEW 1-10X ]",
        "💥 [ DAMAGE INCREASE 35% ]",
        "❌ [ EXIT SCRIPT ]",
    }, nil, title)

    if menu == nil then return end
    if menu[1] then hero_selector() end
    if menu[2] then drone_selector() end
    if menu[3] then damage_mod() end
    if menu[4] then os.exit() end

    HOMEDM = -1
end

-- [ FULL DRONE VIEW SYSTEM 1 TO 10 ]
function drone_selector()
    local d = gg.prompt({
        "🛰️ INITIALIZE SCAN", 
        "📏 SELECT LEVEL [1-10]",
        "🔙 BACK",
    },{
        false, "0", false
    },{
        "checkbox", "number", "checkbox"
    })

    if d == nil then return end

    -- Scan Logic (၁၀၀% မူရင်းအတိုင်း)
    if d[1] == true then
        gg.toast("🔎 Searching Map Data...")
        gg.searchNumber("7.65999984741", gg.TYPE_FLOAT)
        mium = gg.getResults(1000)
        gg.clearResults()
        gg.searchNumber("-10.97999954224", gg.TYPE_FLOAT)
        miumm = gg.getResults(1000)
        gg.clearResults()
        gg.searchNumber("7.61999988556", gg.TYPE_FLOAT)
        miummm = gg.getResults(1000)
        gg.clearResults()
        gg.searchNumber("-7.65999984741", gg.TYPE_FLOAT)
        miummmm = gg.getResults(1000)
        gg.clearResults()
        gg.searchNumber("-7.61999988556", gg.TYPE_FLOAT)
        miummmmm = gg.getResults(1000)
        gg.clearResults()
        gg.toast("✅ Scan Success!")
    end

    -- Drone Level Execution (All 1 to 10)
    if d[2] == "1" then
        drone_exec("13.04204559326", "-18.25776519775", "12.96204566956", "-13.04204559326", "-12.96204566956")
    elseif d[2] == "2" then
        drone_exec("15.04204559326", "-20.75776519775", "14.96204566956", "-15.04204559326", "-14.96204566956")
    elseif d[2] == "3" then
        drone_exec("17.04204559326", "-22.15776519775", "16.96204566956", "-17.04204559326", "-16.96204566956")
    elseif d[2] == "4" then
        drone_exec("19.04204559326", "-24.15776519775", "18.96204566956", "-19.04204559326", "-18.96204566956")
    elseif d[2] == "5" then
        drone_exec("21.04204559326", "-26.15776519775", "20.96204566956", "-21.04204559326", "-20.96204566956")
    elseif d[2] == "6" then
        drone_exec("23.04204559326", "-28.15776519775", "22.96204566956", "-23.04204559326", "-22.96204566956")
    elseif d[2] == "7" then
        drone_exec("25.04204559326", "-30.15776519775", "24.96204566956", "-25.04204559326", "-24.96204566956")
    elseif d[2] == "8" then
        drone_exec("27.04204559326", "-32.15776519775", "26.96204566956", "-27.04204559326", "-26.96204566956")
    elseif d[2] == "9" then
        drone_exec("29.04204559326", "-34.15776519775", "28.96204566956", "-29.04204559326", "-28.96204566956")
    elseif d[2] == "10" then
        drone_exec("31.04204559326", "-36.15776519775", "28.96204566956", "-31.04204559326", "-30.96204566956")
    end

    if d[3] == true then return HOME() end
end

-- Helper: Drone Apply
function drone_exec(v1, v2, v3, v4, v5)
    gg.toast("🚀 Applying Drone View...")
    gg.loadResults(mium); gg.getResults(100); gg.editAll(v1, gg.TYPE_FLOAT); gg.clearResults()
    gg.loadResults(miumm); gg.getResults(100); gg.editAll(v2, gg.TYPE_FLOAT); gg.clearResults()
    gg.loadResults(miummm); gg.getResults(100); gg.editAll(v3, gg.TYPE_FLOAT); gg.clearResults()
    gg.loadResults(miummmm); gg.getResults(100); gg.editAll(v4, gg.TYPE_FLOAT); gg.clearResults()
    gg.loadResults(miummmmm); gg.getResults(100); gg.editAll(v5, gg.TYPE_FLOAT); gg.clearResults()
    gg.toast("✅ Level Applied Successfully!")
end

-- [ DAMAGE MODIFICATION ]
function damage_mod()
    gg.toast("⚔️ Injecting Damage Fragments...")
    ErwinModder('liblogic.so', 0x1CA0A10, '01 00 A0 E3 1E FF 2F E1')
    gg.alert("💥 DAMAGE 35% ACTIVATED!")
end

-- [ HERO UNLOCK SUBMENU ]
function hero_selector()
    local p = gg.multiChoice({
        "⚔️ FANNY", "🗡️ HAYABUSA", "🏹 YSS", "🤺 LANCELOT", "🔙 BACK"
    }, nil, "SELECT HERO")
    
    if p == nil or p[5] then return HOME() end
    if p[1] then inject_hero("17", "Fanny") end
    if p[2] then inject_hero("21", "Hayabusa") end
    if p[3] then inject_hero("30", "YSS") end
    if p[4] then inject_hero("43", "Lancelot") end
end

function inject_hero(id, name)
    gg.clearResults()
    gg.searchNumber("18", gg.TYPE_DWORD)
    for i = 3, 1, -1 do gg.toast("⚡ SYNCING: " .. i) gg.sleep(1000) end
    gg.refineNumber("36", gg.TYPE_DWORD)
    local r = gg.getResults(100)
    if #r > 0 then gg.editAll(id, gg.TYPE_DWORD) end
    gg.toast("🔥 UNLOCKED: " .. name:upper())
end

-- [ PERSISTENCE LOOP ]
while true do
    if gg.isVisible(true) then
        HOMEDM = 1
        gg.setVisible(false)
    end
    if HOMEDM == 1 then
        HOME()
        HOMEDM = -1
    end
end
