function split(A0_14, A1_15)
    local L2_16
    L2_16 = _____
    L2_16 = L2_16[36]
    L2_16 = L2_16("1")
    while true do
      if not string.find(A0_14, A1_15, L2_16) then
        break
      end
      L2_16 = string.find(A0_14, A1_15, L2_16) + string.len(A1_15)
    end
    return {
      [1] = string.sub(A0_14, L2_16, string.len(A0_14)),
      [1] = string.sub(A0_14, L2_16, string.find(A0_14, A1_15, L2_16) - 1)
    }
  end
  
  function xgxc(A0_119, A1_120)
    for i = 1, #A1_120 do
      xgpy = A0_119 + A1_120[i]["offset"]
      xglx = A1_120[i]["type"]
      xgsz = A1_120[i]["value"]
      gg.setValues({
        [1] = {
          address = xgpy,
          flags = xglx,
          value = xgsz
        }
      })
      xgsl = xgsl + 1
    end
  end
  
  function xqmnb(A0_147)
    gg.clearResults()
    gg.setRanges(A0_147[1]["memory"])
    gg.searchNumber(A0_147[3]["value"], A0_147[3]["type"])
    if gg.getResultCount() == 0 then
      gg.toast(A0_147[2]["name"] .. "开启失败")
    else
      gg.refineNumber(A0_147[3]["value"], A0_147[3]["type"])
      gg.refineNumber(A0_147[3]["value"], A0_147[3]["type"])
      gg.refineNumber(A0_147[3]["value"], A0_147[3]["type"])
      if gg.getResultCount() == 0 then
        gg.toast(A0_147[2]["name"] .. "开启失败")
      else
        sl = gg.getResults(999999)
        sz = gg.getResultCount()
        xgsl = 0
        if 999999 < sz then
          sz = 999999
        end
        for i = 1, sz do
          pdsz = true
          for i = 4, #A0_147 do
            if pdsz == (true) then
              pysz = {}
              pysz[1] = {}
              pysz[1].address = sl[i].address + A0_147[i]["offset"]
              pysz[1].flags = A0_147[i]["type"]
              szpy = gg.getValues(pysz)
              pdpd = A0_147[i]["lv"] .. ";" .. szpy[1].value
              szpd = split(pdpd, ";")
              tzszpd = szpd[1]
              pyszpd = szpd[2]
              if tzszpd == pyszpd then
                pdjg = true
                pdsz = true
              else
                pdjg = false
                pdsz = false
              end
            end
          end
          if pdjg == (true) then
            szpy = sl[i].address
            xgxc(szpy, qmxg)
            xgjg = true
          end
        end
        if xgjg == (true) then
          gg.toast(A0_147[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ")
        else
          gg.toast(A0_147[2]["name"] .. "开启失败")
        end
      end
    end
  end
  
  function PS()
    local L0_449, L1_450
  end
function setvalue(address,flags,value) GU('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value) HOWLSC('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Successfully Opened, Modified In Total" .. xgsl .. "Article Data") else gg.toast(qmnb[2]["name"] .. "Failed To Open") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if(count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if(v.isUseful) then  data[#data+1] = v.address end end if(#data > 0) then gg.toast("found"..#data.."Article data") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type  t[#t].value = w[1]  if(w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("No data found") return false  end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
local army = gg.getRangesList('libUE4.so')
function Python(address,flags,value)  local Hex={}  Hex[1]={}  Hex[1].address=address  Hex[1].flags=flags  Hex[1].value = value  gg.setValues(Hex) end
MainRanges = gg.setRanges
CodeApp = gg.REGION_CODE_APP

gg.alert("PUBG 🇲🇲👑ATHINA👑🇲🇲\n❑ Select Memory Ranges : All Hijau + B (Merah)\n❑ Hide GG From The Game : 2,3\n❑ Bypass Mode For PTRACE Protection : \n    Nothing\n❑ Freeze Interval : 0\n❑ Data In Ram : No\n❑ Prevent Unload : Level 2\n❑ 𝑴𝒂𝒌𝒆 𝑩𝒚 🇲🇲👑ATHINA👑🇲🇲")
gg.toast("🇲🇲👑ATHINA👑🇲🇲")

on = ' [❌] '
off = ' '

micro = off
fspeed2 = off
microspd = off
fjump = off
sitscoppp = off
function HOME()
MN = gg.multiChoice({
"╔➡️ 🇲🇲👑နံရံဖောက်🐉အရောင်👑🇲🇲 \n╚❑ ⟦ 🇲🇲လေ့ကျင့်ခန်း🇲🇲 ⟧ ",
"╔➡️ 🇲🇲👑အစုံဟက်👑🇲🇲  \n╚❑ ⟦ LOBBY ⟧ ",
"╔➡️ 🇲🇲👑တိုင်ထောင်👑🇲🇲  \n╚❑ ⟦ GAME ⟧ ",
"╔➡️ 🇲🇲👑ဘေးဖောက်ပစ်👑🇲🇲  \n╚❑ ⟦ GAME ⟧ ",
"╔➡️ 🇲🇲👑မှော်ပစ်ချက်👑🇲🇲  \n╚❑ ⟦ GAME ⟧ ",
"╔➡️ 🇲🇲👑အင်တာနက်ပိတ်ဖွင့်👑🇲🇲  \n╚❑ ⟦ GAME ⟧ ",
"╔➡️ 🇲🇲👑သေနတ်ပြင်းအား👑🇲🇲  \n╚❑ ⟦ LOBBY ⟧ ",
"╔➡️ 🇲🇲👑ထိုင် SCOPE👑🇲🇲  \n╚❑ ⟦ GAME ⟧ ",
"╔➡️ 🇲🇲👑MICRO အမြန်👑🇲🇲  \n╚❑ ⟦ NO USE ⟧ ",
"╔➡️ 🇲🇲👑ဘော့ကိုချိန်👑🇲🇲  \n╚❑ ⟦ GAME ⟧ ",
"╔➡️ 🇲🇲👑ဘေးဖောက်ပစ် 100%👑🇲🇲  \n╚❑ ⟦ GAME ⟧ ",
"╔➡️ 🇲🇲👑စက်ရှင်း👑🇲🇲  \n╚❑ ⟦ EVERY END GAME ⟧ ",
" ıllıllı  🇲🇲👑ထွက်ရန်👑🇲🇲  ıllıllı"
}, nill, (os.date("          ╔═════ ▓▓ ☠︎︎ ▓▓ ════╗\n                            🇲🇲👑ATHINA👑🇲🇲\n          ╚═════ ▓▓ ☠︎︎ ▓▓ ════╝ \nDate   : %A, %d %B %Y\nTime   : %H:%M:%S \n☢️ 🇲🇲👑ATHINA👑🇲🇲")))
if MN == nil then
else
if MN[1] == true then
WH()
end
if MN[2] == true then
O()
end
if MN[3] == true then
ANTENA()
end
if MN[4] == true then
HEAD()
end
if MN[5] == true then
WH450()
end
if MN[6] == true then
OD()
end
if MN[7] == true then
LJ()
end
if MN[8] == true then
ST()
end
if MN[9] == true then
ASU()
end
if MN[10] == true then
ABOT()
end
if MN[11] == true then
HEAD1()
end
if MN[12] == true then
LOG()
end
if MN[13] == true then
CLOSE()
end
end
PUBGMH = -1
end

function LOG()
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Anticheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Anticheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
    os.remove("/data/data/com.pubg.krmobile/app_appcache")
  os.remove("/data/data/com.pubg.krmobile/app_bugly")
  os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
  os.remove("/data/data/com.pubg.krmobile/app_databases")
  os.remove("/data/data/com.pubg.krmobile/app_geolocation")
  os.remove("/data/data/com.pubg.krmobile/app_tbs")
  os.remove("/data/data/com.pubg.krmobile/app_textures")
  os.remove("/data/data/com.pubg.krmobile/app_webview")
  os.remove("/data/data/com.pubg.krmobile/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.pubg.krmobile/cache")
  os.remove("/data/data/com.pubg.krmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.pubg.krmobile/app_appcache")
  os.remove("/data/data/com.pubg.krmobile/app_bugly")
  os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
  os.remove("/data/data/com.pubg.krmobile/app_databases")
  os.remove("/data/data/com.pubg.krmobile/app_geolocation")
  os.remove("/data/data/com.pubg.krmobile/app_tbs")
  os.remove("/data/data/com.pubg.krmobile/app_textures")
  os.remove("/data/data/com.pubg.krmobile/app_webview")
  os.remove("/data/data/com.pubg.krmobile/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.pubg.krmobile/cache")
  os.remove("/data/data/com.pubg.krmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.vng.pubgmobile/app_appcache")
  os.remove("/data/data/com.vng.pubgmobile/app_bugly")
  os.remove("/data/data/com.vng.pubgmobile/app_crashrecord")
  os.remove("/data/data/com.vng.pubgmobile/app_databases")
  os.remove("/data/data/com.vng.pubgmobile/app_geolocation")
  os.remove("/data/data/com.vng.pubgmobile/app_tbs")
  os.remove("/data/data/com.vng.pubgmobile/app_textures")
  os.remove("/data/data/com.vng.pubgmobile/app_webview")
  os.remove("/data/data/com.vng.pubgmobile/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.vng.pubgmobile/cache")
  os.remove("/data/data/com.vng.pubgmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.vng.pubgmobile/app_appcache")
  os.remove("/data/data/com.vng.pubgmobile/app_bugly")
  os.remove("/data/data/com.vng.pubgmobile/app_crashrecord")
  os.remove("/data/data/com.vng.pubgmobile/app_databases")
  os.remove("/data/data/com.vng.pubgmobile/app_geolocation")
  os.remove("/data/data/com.vng.pubgmobile/app_tbs")
  os.remove("/data/data/com.vng.pubgmobile/app_textures")
  os.remove("/data/data/com.vng.pubgmobile/app_webview")
  os.remove("/data/data/com.vng.pubgmobile/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.vng.pubgmobile/cache")
  os.remove("/data/data/com.vng.pubgmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/app_databases")
  os.remove("/data/data/com.tencent.ig/app_geolocation")
  os.remove("/data/data/com.tencent.ig/app_tbs")
  os.remove("/data/data/com.tencent.ig/app_textures")
  os.remove("/data/data/com.tencent.ig/app_webview")
  os.remove("/data/data/com.tencent.ig/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/app_databases")
  os.remove("/data/data/com.tencent.ig/app_geolocation")
  os.remove("/data/data/com.tencent.ig/app_tbs")
  os.remove("/data/data/com.tencent.ig/app_textures")
  os.remove("/data/data/com.tencent.ig/app_webview")
  os.remove("/data/data/com.tencent.ig/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.pubg.krmobile/app_appcache")
  os.remove("/data/data/com.pubg.krmobile/app_bugly")
  os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
  os.remove("/data/data/com.pubg.krmobile/cache")
  os.remove("/data/data/com.pubg.krmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.vng.pubgmobile/app_appcache")
  os.remove("/data/data/com.vng.pubgmobile/app_bugly")
  os.remove("/data/data/com.vng.pubgmobile/app_crashrecord")
  os.remove("/data/data/com.vng.pubgmobile/cache")
  os.remove("/data/data/com.vng.pubgmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.rekoo.pubgm/app_appcache")
  os.remove("/data/data/com.rekoo.pubgm/app_bugly")
  os.remove("/data/data/com.rekoo.pubgm/app_crashrecord")
  os.remove("/data/data/com.rekoo.pubgm/cache")
  os.remove("/data/data/com.rekoo.pubgm/code_cache")
    os.remove("/data/data/com.pubg.krmobile/app_appcache")
  os.remove("/data/data/com.pubg.krmobile/app_bugly")
  os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
  os.remove("/data/data/com.pubg.krmobile/app_databases")
  os.remove("/data/data/com.pubg.krmobile/app_geolocation")
  os.remove("/data/data/com.pubg.krmobile/app_tbs")
  os.remove("/data/data/com.pubg.krmobile/app_textures")
  os.remove("/data/data/com.pubg.krmobile/app_webview")
  os.remove("/data/data/com.pubg.krmobile/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.pubg.krmobile/cache")
  os.remove("/data/data/com.pubg.krmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.pubg.krmobile/app_appcache")
  os.remove("/data/data/com.pubg.krmobile/app_bugly")
  os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
  os.remove("/data/data/com.pubg.krmobile/app_databases")
  os.remove("/data/data/com.pubg.krmobile/app_geolocation")
  os.remove("/data/data/com.pubg.krmobile/app_tbs")
  os.remove("/data/data/com.pubg.krmobile/app_textures")
  os.remove("/data/data/com.pubg.krmobile/app_webview")
  os.remove("/data/data/com.pubg.krmobile/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.pubg.krmobile/cache")
  os.remove("/data/data/com.pubg.krmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.vng.pubgmobile/app_appcache")
  os.remove("/data/data/com.vng.pubgmobile/app_bugly")
  os.remove("/data/data/com.vng.pubgmobile/app_crashrecord")
  os.remove("/data/data/com.vng.pubgmobile/app_databases")
  os.remove("/data/data/com.vng.pubgmobile/app_geolocation")
  os.remove("/data/data/com.vng.pubgmobile/app_tbs")
  os.remove("/data/data/com.vng.pubgmobile/app_textures")
  os.remove("/data/data/com.vng.pubgmobile/app_webview")
  os.remove("/data/data/com.vng.pubgmobile/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.vng.pubgmobile/cache")
  os.remove("/data/data/com.vng.pubgmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.vng.pubgmobile/app_appcache")
  os.remove("/data/data/com.vng.pubgmobile/app_bugly")
  os.remove("/data/data/com.vng.pubgmobile/app_crashrecord")
  os.remove("/data/data/com.vng.pubgmobile/app_databases")
  os.remove("/data/data/com.vng.pubgmobile/app_geolocation")
  os.remove("/data/data/com.vng.pubgmobile/app_tbs")
  os.remove("/data/data/com.vng.pubgmobile/app_textures")
  os.remove("/data/data/com.vng.pubgmobile/app_webview")
  os.remove("/data/data/com.vng.pubgmobile/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.vng.pubgmobile/cache")
  os.remove("/data/data/com.vng.pubgmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/app_databases")
  os.remove("/data/data/com.tencent.ig/app_geolocation")
  os.remove("/data/data/com.tencent.ig/app_tbs")
  os.remove("/data/data/com.tencent.ig/app_textures")
  os.remove("/data/data/com.tencent.ig/app_webview")
  os.remove("/data/data/com.tencent.ig/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/app_databases")
  os.remove("/data/data/com.tencent.ig/app_geolocation")
  os.remove("/data/data/com.tencent.ig/app_tbs")
  os.remove("/data/data/com.tencent.ig/app_textures")
  os.remove("/data/data/com.tencent.ig/app_webview")
  os.remove("/data/data/com.tencent.ig/app_webview_imsdk_inner_webview")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/Tencent")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/.backups")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.pubg.krmobile/app_appcache")
  os.remove("/data/data/com.pubg.krmobile/app_bugly")
  os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
  os.remove("/data/data/com.pubg.krmobile/cache")
  os.remove("/data/data/com.pubg.krmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.vng.pubgmobile/app_appcache")
  os.remove("/data/data/com.vng.pubgmobile/app_bugly")
  os.remove("/data/data/com.vng.pubgmobile/app_crashrecord")
  os.remove("/data/data/com.vng.pubgmobile/cache")
  os.remove("/data/data/com.vng.pubgmobile/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.rekoo.pubgm/app_appcache")
  os.remove("/data/data/com.rekoo.pubgm/app_bugly")
  os.remove("/data/data/com.rekoo.pubgm/app_crashrecord")
  os.remove("/data/data/com.rekoo.pubgm/cache")
  os.remove("/data/data/com.rekoo.pubgm/code_cache")
gg.toast("🇲🇲👑ATHINA👑🇲🇲")
end

function HEAD1()
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("8", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("280", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("🇲🇲👑ATHINA👑🇲🇲")
  end

function ABOT()
gg.searchNumber("999", 16, false, 536870912, 0, -1)
gg.clearResults()
gg.setRanges(32)
gg.clearResults()
gg.clearResults()
gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
gg.getResults(300)
gg.editAll("1.0e20", 16)
gg.toast("🇲🇲👑ATHINA👑🇲🇲")
end

function ASU()
if micro == off then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
mc1 = gg.getResults(500)
gg.editAll("1.123", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇲🇲👑ATHINA👑🇲🇲")
micro = on
else
    gg.clearResults()
    gg.setValues(mc1)
    gg.clearResults()
    gg.toast("🇲🇲👑ATHINA👑🇲🇲")
    micro = off
end
end

function ST()
if sitscoppp == off then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38787841797;0.53867292404;-3.42232513428;1.77635705e-15:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("18.38787841797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
sitscoppps1 = gg.getResults(2805)
gg.editAll("130.5419921875", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇲🇲👑ATHINA👑🇲🇲")
sitscoppp = on
else
    gg.clearResults()
    gg.setValues(sitscoppps1)
    gg.clearResults()
    gg.toast("🇲🇲👑ATHINA👑🇲🇲")
    sitscoppp = off
end
end

function LJ()
so=gg.getRangesList("libUE4.so")[1].start
py = 0x1422EFC 
setvalue(so+py,16,2)
gg.toast("🇲🇲👑ATHINA👑🇲🇲")
end

function OD()
gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('220676386071773185', gg.TYPE_QWORD)
    gg.getResults(69)
    gg.editAll('220676386036121600', gg.TYPE_QWORD)
    gg.toast("PH0️⃣9️⃣9️⃣5️⃣5️⃣3️⃣5️⃣6️⃣6️⃣3️⃣6️⃣") 
    gg.sleep(6000)
    gg.editAll('220676386071773185', gg.TYPE_QWORD)
    gg.clearResults()
    gg.toast(" 🇲🇲👑ATHINA🇲🇲👑 ") 
    end

function WH450()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("69.5;35;33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" PUBG RK ") 
end

function HEAD()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("160", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(56)
gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" 🇲🇲👑ATHINA🇲🇲👑 ") 
end

function ANTENA()
gg.clearResults ()
  gg.setRanges (gg.REGION_ANONYMOUS)
  gg.searchNumber ("88.50576019287F; 87.27782440186F; -100.91194152832F; 1F :: 13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber ("88.50576019287F; 87.27782440186F; 1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults (1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll ("1.96875; 1.96875; 999; 1.96875; 1.96875; 999", gg.TYPE_FLOAT)
  gg.clearResults ()
gg.toast(" 🇲🇲👑ATHINA🇲🇲👑 ") 
end

function WH()
 MN1 = gg.multiChoice({
       "🇲🇲👑Wh All Snap👑🇲🇲",
       "🇲🇲👑Color Green👑🇲🇲",
       "🇲🇲👑Wh 625 & Warna👑🇲🇲",
       "🇲🇲👑Wh 636 & Warna👑🇲🇲",
       "🇲🇲👑Wh 660 & Warna👑🇲🇲",
       "🇲🇲👑Wh 665 & Warna👑🇲🇲",
       "🇲🇲👑Wh 710 - 855 & Warna👑🇲🇲",
       "🇲🇲👑Wh Mtk p22👑🇲🇲",
       "🇲🇲👑Colour Mtk p22👑🇲🇲",
       "🇲🇲👑WH EXY 7870👑🇲🇲",
       "🇲🇲👑Colour Exy👑🇲🇲",
      "🇲🇲👑နောက်သို့👑🇲🇲",
}, nil, (os.date("          ╔═════ ▓▓ ☠︎︎ ▓▓ ════╗\n                     🇲🇲👑ATHINA👑🇲🇲\n          ╚═════ ▓▓ ☠︎︎ ▓▓ ════╝ \nDate   : %A, %d %B %Y\nTime   : %H:%M:%S \n🇲🇲👑ATHINA👑🇲🇲🇲🇲👑ATHINA👑🇲🇲🇲🇲👑ATHINA👑🇲🇲")))
if MN1 == nil then
else
if MN1[1] == true then WH665()end
if MN1[2] == true then C3()end
if MN1[3] == true then Wh625()end
if MN1[4] == true then Wh636()end
if MN1[5] == true then Wh660()end
if MN1[6] == true then Wh665()end
if MN1[7] == true then Wh710()end
if MN1[8] == true then Wh720()end
if MN1[9] == true then Wh845()end
if MN1[10] == true then wh7570()end
if MN1[11] == true then exyc()end
if MN1[12] == true then HOME()end
end
PUBGMH = -1
end
function wh7570()
gg.searchNumber("0.5;1.4012985e-45;1.4012985e-45;5.8294016e-43;2.8025969e-45:305", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == GG.TYPE_FLOAT then
		v.value = "5.0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end

function exyc()
gg.clearResults()
gg.searchNumber("256;3;19;8;56:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(5, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("13", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ═════》PUBG RK《═════ ") 
end
function C1()
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2147086191", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
   if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
  gg.toast(" ═════》PUBG RK《═════ ") 
end
function Wh625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504")
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("980")
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" ═════》PUBG RK《═════ ") 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineAddress("0E8")
revert = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
end
function Wh636()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('1.8948778e-40;4.7408166e21;2.0:93', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber('2.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('504', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('130', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('3.37670946121;3.37548875809;2.0:149', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('2.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress('980', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('130', gg.TYPE_FLOAT)
gg.clearResults()

gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('768;32769;-2134900717', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('32769', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('10', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('0;32770;-2134900716', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('32770', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('5', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('537133071;8200;1194380048:9', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('8200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('0E8', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('7', gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ═════》🇲🇲👑ATHINA👑🇲🇲《═════ ") 
end

function Wh660()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('1.8948778e-40;4.7408166e21;2.0:93', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber('2.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('504', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('130', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('3.37670946121;3.37548875809;2.0:149', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('2.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress('980', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('130', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" ═════》🇲🇲👑ATHINA🇲🇲👑《═════ ") 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('768;32769;-2134900717', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('32769', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('10', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('0;32770;-2134900716', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('32770', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('5', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber('537133071;8200;1194380048:9', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('8200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('0E8', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll('7', gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
end
function Wh665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.0F;1.1202056e-19F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.0F;4.53595472e-29F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD) 
gg.searchNumber("8200;8201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(2805) 
gg.editAll("7", gg.TYPE_DWORD) 
gg.clearResults()
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
end
function Wh710()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("6;7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
end
function Wh720()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineAddress('B8', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, i in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
if i.flags == gg.TYPE_FLOAT then
end
end
gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('56', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress('DC', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('61', gg.TYPE_DWORD)
gg.processResume()
gg.clearResults()
gg.setVisible(false)
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
end
function Wh845()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('16;29;29;56:21', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('56', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('32', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('64;32;65;33:29', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('65', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('32', gg.TYPE_DWORD)
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
end
function C2()
 gg.clearResults()
  if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("8204", 4, false, 536870912, 0, -1)
  gg.refineAddress("E70", -1, 4, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("8564", 4)
  gg.clearResults()
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
end
function C3()
if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber('537133066;8200;1194344459;8201:13', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber('8201', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll('7', gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ═════》👑🇲🇲ATHINA🇲🇲👑《═════ ") 
end
function C4()
gg.clearResults()
  if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("8201;", 4, false, 536870912, 0, -1)
  gg.searchNumber("201,851,904", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("683128", 4)
  gg.clearResults()
if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber(" 3,846;201,851,904;16", 4, false, 536870912, 0, -1)
  gg.searchNumber("201,851,904", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("683128", 4)
  gg.clearResults()
gg.toast(" ═════》🇲🇲👑PUBG HACK👑🇲🇲《═════ ") 
end
function C5()
  gg.clearResults()
  if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("1,194,344,475D;8,201D;1,194,379,806D:9", 4, false, 536870912, 0, -1)
  gg.searchNumber("8201", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("6", 4)
  gg.clearResults()
gg.toast(" ═════》👑🇲🇲PUBG HACK🇲🇲👑《═════ ") 
end
function C6()
gg.clearResults()
  if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("1,194,344,475D;8,201D;1,194,379,806D:9", 4, false, 536870912, 0, -1)
  gg.searchNumber("8201", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
gg.toast(" ═════》👑🇲🇲👑🇲🇲👑《═════ ") 
end
function C7()
 gg.clearResults()
  if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("4.7223693e21F;2.8130226e-40F;4.7223665e21F;4.6498306e-40F;4.7961574e21F;5.8013756e-42F;4.7961557e21F;2.2960275e-41F;6.50000238419F;-6.488152e-40F;4.7604163e21F;5.6051939e-45F;1.1202011e-19F;9.8090893e-45F;1.1202015e-19F::57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResults(2)[1] ~= nil then
    gg.searchNumber("4.7604163e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5)
    gg.editAll("-4.7604163e21", gg.TYPE_FLOAT)
    gg.toast(" ═════》👑🇲🇲PUBG ATHINA🇲🇲👑《═════ ") 
  end
  gg.clearResults()
  if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("4.72236986e21F;3.7313215e-40F;4.7777084e21F;5.56817155e-40F;4.75926222e21F;9.76354705e-41F;4.72236705e21F;2.81302259e-40F;4.72236648e21F;9.76410757e-41F;4.75926504e21F;5.80137564e-42F;4.75926335e21F;-8.32416129e-40F;4.79615796e21F::57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResults(2)[1] ~= nil then
    gg.searchNumber("4.79615796e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5)
    gg.editAll("-4.79615796e21", gg.TYPE_FLOAT)
    gg.toast(" ═════》PUBG RK《═════ ") 
    gg.clearResults()
  end
end

function WH665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-2145644340", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-2147483636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.clearResults()
gg.searchNumber("5129670486053101577", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll("5129670486053093383", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.clearResults()
gg.searchNumber("5129822240132571145", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll("5129822240132562951", gg.TYPE_QWORD)
gg.clearResults()
gg.toast(" ═════》🇲🇲PUBG🇲🇲《═════ ") 
end

function O()
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1C113E8
setvalue(so+py,16,1.40129846e-45)
gg.clearResults()
MainRanges(CodeApp)
Dump=army[1].start  Load=0x136DAB8  Python(Dump+Load,16,0)
gg.clearResults()
MainRanges(CodeApp)
Dump=army[1].start  Load=0x258B74C  Python(Dump+Load,16,0)
gg.clearResults()
MainRanges(CodeApp)
Dump=army[1].start  Load=0x5217A10  Python(Dump+Load,16,0)
gg.clearResults()
Dump=army[1].start  Load=0x136BDDC  Python(Dump+Load,16,0)
gg.clearResults()
Dump=army[1].start  Load=0x136B754  Python(Dump+Load,16,0)
gg.clearResults()
Dump=army[1].start  Load=0x136D4F8  Python(Dump+Load,16,0)
gg.clearResults()
Dump=army[1].start  Load=0x376E57C  Python(Dump+Load,16,0)
gg.clearResults()
Dump=army[1].start  Load=0x381CCE0  Python(Dump+Load,16,0)
gg.clearResults()
MainRanges(CodeApp)
Dump=army[1].start  Load=0x2559FE8  Python(Dump+Load,16,0)
gg.clearResults()
MainRanges(CodeApp)
Dump=army[1].start  Load=0x3AD36A0  Python(Dump+Load,4,-1222130000)
gg.clearResults()
gg.toast(" ═════》🇲🇲👑PUBG👑🇲🇲《═════ ") 
end

function CLOSE()
print("𝙲𝚁𝙴𝙰𝚃𝙾𝚁 - ATHINA🇲🇲👑 OR 🇲🇲 ˚*•̩̩͙✩•̩̩͙*˚＊■■■REVOKE■■■🇲🇲👑")
  print("PH🇲🇲👑0️⃣9️⃣9️⃣5️⃣5️⃣3️⃣5️⃣6️⃣6️⃣3️⃣6️⃣👑🇲🇲")
  print("🇲🇲👑I LIVE IN MANDALAY👑🇲🇲")
  print("🇲🇲👑WAIT FOR NEW UPDATE SCRIPT 👑🇲🇲")
  print("🇲🇲👑လိုတာရှိရင်ပြောပါ👑🇲🇲")
  os.exit()
end

while true do
if gg.isVisible(true) then
gg.setVisible(false)
HOME()
end
if PUBG == 1 then
HOME()
end
end