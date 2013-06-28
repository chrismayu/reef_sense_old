class UserLivestock < ActiveRecord::Base
  attr_accessible :common_name, :description, :image, :livestock_type, :reef_tank_id, :scientific_name
end
