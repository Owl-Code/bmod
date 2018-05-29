b_mod = {
}

local log = radiant.log.create_logger('Mod')
log:always("Bee Mod enabled")

function b_mod:_on_required_loaded()
  local BeeTrapper = require('jobs.trapper')
  local BeeTrappingGrounds = require('components.trapping.trapping_grounds_component')

end

radiant.events.listen_once(radiant,'radiant:required_loaded', b_mod, b_mod._on_required_loaded)

return b_mod