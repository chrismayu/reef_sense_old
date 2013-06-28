class Arduino < ActiveRecord::Base
  attr_accessible :arduino_board_type, :parameter_setup, :reef_tank_arduino_id, :reef_tank_id
end
