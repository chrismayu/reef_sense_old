class Watcher < ActiveRecord::Base
  attr_accessible :ambeint_temp, :ato_pump,:waterlevelokay, :startingup, :chiller, :heater, :main_light, :main_pump, :params, :ph_level, :powerhead, :reef_tank_arduino_id, :reef_tank_id, :refuge_light, :skimmer, :temp, :updated_reason

 default_scope order: 'watchers.created_at DESC'

 
       belongs_to :reef_tank, :primary_key => :reef_tank_arduino_id , :foreign_key => :reef_tank_arduino_id
       has_many :update_codes, :foreign_key => :reef_tank_arduino_id, :primary_key =>  :reef_tank_arduino_id
       
       serialize :params
      

end
