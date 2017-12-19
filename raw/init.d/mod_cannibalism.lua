--[[
@url https://github.com/ConnorWiseman/cannibalism
--]]



eventful = require 'plugins.eventful'



function trim(str)
  return str:match'^%s*(.*%S)' or ''
end



eventful.enableEvent(eventful.eventType.UNIT_DEATH, 1)
eventful.onUnitDeath.death_monitor = function(unit_id)
  if not dfhack.isWorldLoaded() then
    return
  end

  local unit = df.unit.find(unit_id)
  if not unit then
    return
  end

  if not dfhack.units.isDwarf(unit) then
    return
  end

  local unit_name = trim(dfhack.TranslateName(dfhack.units.getVisibleName(unit)))

  print("Cannibalism: "..unit_name.." has died!")

  for _, part in pairs(df.global.world.items.other.ANY_CORPSE) do
    if part.unit_id == unit_id then
      if part.flags.dead_dwarf == true then
        print("Cannibalism: setting "..unit_name.."'s dead_dwarf flag to false.")
        part.flags.dead_dwarf = false
      end
    end
  end
end



print "Cannibalism: mod enabled."
