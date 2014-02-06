local L = {
  enUS = "Fishing Bobber",
  deDE = "Angelschwimmer",
  esES = "Corcho de pesca",
  frFR = "Flotteur",
  ruRU = "поплавок",
  ptBR = "Flutador para Pesca"
}

GameTooltip:HookScript("OnShow", function()
  local tooltipText = GameTooltipTextLeft1

  if tooltipText and tooltipText:GetText() == L[GetLocale()] then
    GameTooltip:Hide()
  end
end)
