class Notification < ActiveRecord::Base
  attr_accessible :display_site_wide, :message, :check_parameter, :sign_type, :check_item, :message2, :priority, :reef_tank_arduino_id, :reef_tank_id, :sent_email

 belongs_to :reef_tank
 
  



end
