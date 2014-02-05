
GameTooltip:HookScript("OnShow", function()
  local tooltipText = GameTooltipTextLeft1
  local bobberText = "Fishing Bobber"

  if tooltipText and tooltipText:GetText() == bobberText then
    GameTooltip:Hide()
  end
end)
