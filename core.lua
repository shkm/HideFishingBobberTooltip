local L = {
  enUS = "Fishing Bobber",
  deDE = "Angelschwimmer",
  esES = "Corcho de pesca",
  frFR = "Flotteur",
  ruRU = "поплавок",
  ptBR = "Flutador para Pesca"
}

GameTooltip:HookScript("OnShow", function()
  local localized = L[GetLocale()]

  -- don't do anything if we don't have a string for this locale
  if not localized then return end

  local tooltipText = GameTooltipTextLeft1
  if tooltipText and tooltipText:GetText() == localized then
    GameTooltip:Hide()
  end
end)
