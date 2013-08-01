class ReefTank < ActiveRecord::Base
  include Tokenable
  attr_accessible :measurement_type, :send_email_okay, :setup_date, :size, :user_id, :arduino_board_type, :parameter_setup, :reef_tank_arduino_id, :reef_tank_id
  
  belongs_to :user
  
  validates :user_id, presence: true
  
  has_many :demos
  has_many :todo_lists
  has_many :watchers, :foreign_key => :reef_tank_arduino_id, :primary_key =>  :reef_tank_arduino_id
 # has_many :update_codes, through: :watchers
   has_many :update_codes, :foreign_key => :reef_tank_arduino_id, :primary_key =>  :reef_tank_arduino_id
  has_many :maintainence_logs
  has_many :user_equipments
  has_many :notifications
  has_many :user_livestocks
 
  

end
