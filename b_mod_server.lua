b_mod = {
}

local log = radiant.log.create_logger('Mod')
log:always("Bee Mod enabled")

function b_mod:_on_required_loaded()
  local BeeTrapper = require('jobs.trapper')
  local BeeTrappingGrounds = require('components.trapping.trapping_grounds_component')

end