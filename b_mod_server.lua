b_mod = {
}

local log = radiant.log.create_logger('Mod')
log:always("Bee Mod enabled")

function b_mod:_on_required_loaded()
  local BeeTrapper = require('jobs.trapper')
  local Trapper = radiant.mods.require('stonehearth.jobs.trapper')
  radiant.mixin(Trapper, BeeTrapper)

  local BeeTrappingGrounds = require('components.trapping.trapping_grounds_component')
  local TrappingGrounds = radiant.mods.require('stonehearth.components.trapping.trapping_grouds_component')
  radiant.mixin(TrappingGrounds, BeeTrappingGrounds)

  local BeeHiveTrap = require('components.trapping.bee_hive_component')
  local BaitTrap = radiant.mods.require('stonehearth.components.trapping.bait_trap_component')
  radiant.mixin(BaitTrap, BeeHiveTrap)

end