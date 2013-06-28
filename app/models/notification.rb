class Notification < ActiveRecord::Base
  attr_accessible :display_site_wide, :message, :message2, :priority, :reef_tank_arduino_id, :reef_tank_id, :sent_email
end
