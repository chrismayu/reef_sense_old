class AlarmHistory < ActiveRecord::Base
  attr_accessible :actual_value, :alarm_value, :arduino_id, :reef_tank_arduino_id, :reef_tank_id,:email_sent, :message_sent, :parameter, :sent_to_email, :sign
end
