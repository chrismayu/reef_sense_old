class Watcher < ActiveRecord::Base
  attr_accessible :ambeint_temp, :ato_pump, :chiller, :heater, :main_light, :main_pump, :params, :ph_level, :powerhead, :reef_tank_arduino_id, :reef_tank_id, :refuge_light, :skimmer, :temp, :updated_reason
end