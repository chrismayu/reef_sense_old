class ReefTank < ActiveRecord::Base
  attr_accessible :measurement_type, :send_email_okay, :setup_date, :size, :user_id
  
  belongs_to :user
  
  has_many :todo_lists
  has_many :watchers
  has_many :arduinos
  has_many :maintainence_logs
  has_many :user_equipments
  has_many :notifications
  has_many :user_livestocks
  has_many :update_codes

end
