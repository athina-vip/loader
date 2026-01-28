--[[
ATHINA PREMIUM SCRIPT
Focused Version: Fixed Search & Custom Edit
]]

local function MAIN()
    local menu = gg.choice({
        "💀  BULLET TRACK 🔰",
        "❌  EXIT"
    }, nil, "⭐ ATHINA BLOODSTRIKE ⭐")

    if menu == 1 then BRUTAL_FIXED_SEARCH() end
    if menu == 2 then os.exit() end
end

--- ### FIXED SEARCH & CUSTOM EDIT ### ---
function BRUTAL_FIXED_SEARCH()
    -- Search Value ကို ပုံသေထားပြီး Edit Value ကိုပဲ တောင်းပါမယ်
    local prompt = gg.prompt({
        "✍️ ပြောင်းလဲလိုသည့် တန်ဖိုးကိုရိုက်ထည့်ပါ (ဥပမာ-999999999)"
    }, {
        [1] = "999999999"
    })

    if not prompt then return end

    gg.clearResults()
    gg.setRanges(4) -- Anonymous Range
    
    -- Search Value ကို ပုံသေ (0.11999999732) သုံးထားပါတယ်
    gg.searchNumber("0.11999999732", 16) 
    local count = gg.getResultCount()
    
    if count > 0 then
        gg.getResults(500)
        -- User ရိုက်ထည့်လိုက်တဲ့ တန်ဖိုးကို Edit လုပ်မယ်
        gg.editAll(prompt[1], 16)
        gg.toast("တန်ဖိုး " .. prompt[1] .. " သို့ ပြောင်းလဲပြီးပါပြီ ✅")
    else
        gg.alert("တန်ဖိုး ရှာမတွေ့ပါ! ဂိမ်းထဲရောက်မှ နှိပ်ပါ ❌")
    end
    gg.clearResults()
end

-- RUN SCRIPT
gg.toast("ATHINA FIXED SEARCH READY")
while true do
    if gg.isVisible() then
        gg.setVisible(false)
        MAIN()
    end
    gg.sleep(100)
end
