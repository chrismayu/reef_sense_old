class ReefTank < ActiveRecord::Base
  attr_accessible :measurement_type, :send_email_okay, :setup_date, :size, :user_id
end
