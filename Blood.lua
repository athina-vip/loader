--[[
╔═══════════════════════════════════════════╗
║  S C R I P T  :  A T H I N A              ║
║  E D I T O R  :  G E M I N I  A I         ║
║  S T A T U S  :  P R E M I U M            ║
╚═══════════════════════════════════════════╝
]]

-- Loading Effect
gg.toast("⏳ ATHINA Loading...")
gg.sleep(200)
gg.toast("⏳ ATHINA Loading......")
gg.sleep(200)
gg.toast("✅ Script Ready!")

function Main()
  Menu = gg.multiChoice({
    "[📡] Antena Head",
    "[🎯] Small Aimbot",
    "[🔮] Magic Bullet Head",
    "[⛔] Exit Script"
  }, nil, "✨ ATHINA PREMIUM V1.0 ✨\n━━━━━━━━━━━━━━━━━━━━━━\nStatus: Online")

  if Menu == nil then
  else
    if Menu[1] then Antena() end
    if Menu[2] then Aimbot() end
    if Menu[3] then MagicBullet() end
    if Menu[4] then Close() end
  end
  HOMEDM = -1
end

-- Functions များ
function Antena()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.35216355324", gg.TYPE_FLOAT)
  gg.sleep(200)
  gg.refineNumber("1.35216355324", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.alert("📡 Antena Head Activated Successfully!")
end

function Aimbot()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.0F;4.59177481e-39F:17", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("🎯 Aimbot Activated!")
end

function MagicBullet()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.11999999732", gg.TYPE_FLOAT)
  gg.refineNumber("0.11999999732", gg.TYPE_FLOAT)
  gg.getResults(500)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.alert("🔮 Magic Bullet Head Activated!")
end

function Close()
  print("━━━━━━━━━━━━━━━━━━━━━━")
  print("Thanks for using ATHINA")
  print("━━━━━━━━━━━━━━━━━━━━━━")
  os.exit()
end

-- Loop System
while true do
  if gg.isVisible(true) then
    HOMEDM = 1
    gg.setVisible(false)
  end
  if HOMEDM == 1 then
    Main()
  end
end
