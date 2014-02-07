local frame = CreateFrame("Frame")

frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function()
  local L = {
    deDE = "Angelschwimmer",
    enUS = "Fishing Bobber",
    esES = "Corcho de pesca",
    frFR = "Flotteur",
    ptBR = "Flutador para Pesca",
    ruRU = "Поплавок"

    -- itIT = "",
    -- esMX = "",
    -- koKR = "",
    -- zhCN = "",
    -- zhTW = "",
  }
  local localized = L[GetLocale()]

  if not localized then
    print("|cFFFF0000HideFishingBobberTooltip does not work under your locale. " ..
          "You can help to fix this by leaving a comment on the Curse or " ..
          "WoWInterface addon page with the name of the fishing bobber in your language.")
    return
  end
  
  GameTooltip:HookScript("OnShow", function()
    local tooltipText = GameTooltipTextLeft1
    if tooltipText and tooltipText:GetText() == localized then
      GameTooltip:Hide()
    end
  end)
end)

