class UpdateCode < ActiveRecord::Base
  attr_accessible :display_site_wide, :message, :priority, :reef_tank_arduino_id, :reef_tank_id, :sent_email
end
