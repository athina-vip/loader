gg.setVisible(true)
gg.setRanges(gg.REGION_ANONYMOUS)

-- [ Script Start Alert ]
gg.alert("Welcome to ATHINA PUBG SKIN HACK")

-- [ Function for Searching and Replacing ]
local function SearchReplace(searchValue, replaceValue)
    gg.clearResults()
    gg.searchNumber(searchValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local count = gg.getResultCount()
    if count > 0 then
        local results = gg.getResults(500)
        gg.editAll(replaceValue, gg.TYPE_DWORD)
        gg.toast("Applied: " .. searchValue)
    else
        gg.toast("Not Found: " .. searchValue)
    end
    gg.clearResults()
end

-- [ Main Menu ]
function Main()
    local menu = gg.choice({
        "👗 OUTFIT (ဝတ်စုံ)",
        "🎒 BAG (ကျောပိုးအိတ်)",
        "🪖 HELMET (ဦးထုပ်)",
        "🔫 GUN (သေနတ်)",
        "🗼 ANTENA (အင်တင်နာ)",
        "❌ EXIT (ထွက်ရန်)"
    }, nil, "🛡️ ATHINA PUBG SKIN HACK 🛡️\nDon't Open Inventory | Start Match First")

    if menu == 1 then Outfit() end
    if menu == 2 then Bag() end
    if menu == 3 then Helmet() end
    if menu == 4 then Gun() end
    if menu == 5 then ANTENA() end
    if menu == nil or menu == 6 then os.exit() end
end

-- [ Antena Function ]
function ANTENA()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287F; 87.27782440186F; -100.91194152832F; 1F :: 13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88.50576019287F; 87.27782440186F; 1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1000)
    gg.editAll("1.96875; 1.96875; 999; 1.96875; 1.96875; 999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.alert("ATHINA: Antena Applied!")
end

-- [ Skin Functions ]
function Outfit()
    SearchReplace("1400129", "1407102")
    gg.alert("ATHINA: Outfit Skin Applied!")
end

function Bag()
    local bags = {"502001", "502002", "502003", "502004", "502005", "502006"}
    for i, v in ipairs(bags) do
        SearchReplace(v, "1502003349")
    end
    gg.alert("ATHINA: Bag Skins Applied!")
end

function Helmet()
    local helmets = {"501001", "501002", "501003", "501004", "501005", "501006"}
    local replaces = {"1501001487", "1501002487", "1501003487", "1501000487", "1501000487", "1501000487"}
    for i, v in ipairs(helmets) do
        SearchReplace(v, replaces[i])
    end
    gg.alert("ATHINA: Helmet Skins Applied!")
end

function Gun()
    SearchReplace("101004", "1101004046")
    gg.alert("ATHINA: Gun Skin Applied!")
end

-- [ Loop ]
while true do
    if gg.isVisible() then
        gg.setVisible(false)
        Main()
    end
    gg.sleep(100)
end
