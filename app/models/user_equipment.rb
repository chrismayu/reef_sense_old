class UserEquipment < ActiveRecord::Base
  attr_accessible :description, :equipment_name, :equipment_type, :image, :reef_tank_arduino_id, :reef_tank_id
end
